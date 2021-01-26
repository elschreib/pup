import math
import numpy
from scipy.linalg import svd

import maya.cmds as cmds
from maya.api import OpenMaya
from commsrigging2.lib import api2lib as apilib

EPSILON = 0.000001


def get_dag(node):
    sel.OpenMaya.MSelectionList()
    sel.add(node)
    return sel.getDagPath(0)
    
    
    



def calculate_weights(mesh, eta):
    eta = OpenMaya.MVector(eta)
    mesh_dag = get_dag(mesh)
    mesh_dag.extendToShape()
    mesh_fn = OpenMaya.MFnMesh(mesh_dag)

    # query points
    points = [OpenMaya.MVector(point) for point in mesh_fn.getPoints(OpenMaya.MSpace.kWorld)]

    # process vertices
    d = []  # distance between eta and vertex
    u = []  # unit sphere vector between eta and vertex
    weights = [0.0] * len(points)
    weights_total = 0

    for i, point in enumerate(points):
        vector = point - eta
        distance = vector.length()

        if distance < EPSILON:
            weights[i] = 1.0
            return weights

        d.append(distance)
        u.append(vector.normal())

    # process triangles
    triangles_map, _ = mesh_fn.getTriangles()
    triangles_num = sum(triangles_map)

    for polygon_id, triangles in enumerate(triangles_map):
        for triangle_id in range(triangles):
            vid = mesh_fn.getPolygonTriangleVertices(polygon_id, triangle_id)
            vpos = [points[i] for i in vid]
            length = [(u[vid[(i + 1) % 3]] - u[vid[(i + 2) % 3]]).length() for i in range(3)]
            theta = [2.0 * math.asin(length[i] / 2.0) for i in range(3)]

            v0 = vpos[1] - vpos[0]
            v1 = vpos[2] - vpos[0]
            vd = 4 * (vpos[1] - vpos[0]) ^ (vpos[2] - vpos[0])
            determinant = (vpos[0] - eta) * (v0 ^ v1)
            distance_square = determinant * determinant / (vd.x * vd.x + vd.y * vd.y + vd.z * vd.z)
            distance = math.sqrt(distance_square)

            if distance < EPSILON:
                v2 = eta - vpos[0]

                d00 = v0 * v0
                d01 = v0 * v1
                d11 = v1 * v1
                d20 = v2 * v0
                d21 = v2 * v1

                denom = d00 * d11 - d01 * d01

                v = (d11 * d20 - d01 * d21) / denom
                w = (d00 * d21 - d01 * d20) / denom

                weights = [0.0] * len(points)
                weights[vid[1]] = v
                weights[vid[2]] = w
                weights[vid[0]] = 1.0 - v - w

                return weights

    w = [0.0] * 3
    normals = [(vpos[(i + 1) % 3] - eta) ^ (vpos[(i + 2) % 3] - eta) for i in range(3)]

    for i in range(3):
        for j in range(3):
            w[i] += theta[j] * (normals[i] * normals[j]) / (2.0 * normals[j].length())
            w[i] /= determinant

    weights_total += sum(w)
    weights[vid[0]] += w[0]
    weights[vid[1]] += w[1]
    weights[vid[2]] += w[2]

    return [
        w / weights_total
        for w in weights
    ]


def calculate_coordinate(mesh, weights):
    mesh_dag = get_dag(mesh)
    mesh_dag.extendToShape()
    mesh_fn = OpenMaya.MFnMesh(mesh_dag)

    eta = OpenMaya.MVector(0, 0, 0)
    points = mesh_fn.getPoints(OpenMaya.MSpace.kWorld)

    for point, weight in zip(points, weights):
        eta += OpenMaya.MVector(point) * weight

    return eta


def transfer_transform(source_mesh, target_mesh, source_node, target_node=None, translate=True, rotate=True):
    # if no target node is provided the transforms will be
    # applied to the source node.
    if target_node is None:
        target_node = source_node

    # get matrix
    matrix = cmds.xform(source_node, query=True, worldSpace=True, matrix=True)
    matrix = OpenMaya.MMatrix(matrix)

    # calculate translate
    source_position = OpenMaya.MVector([matrix.getElement(3, i) for i in range(3)])
    weights = calculate_weights(source_mesh, source_position)
    target_position = calculate_coordinate(target_mesh, weights)

    # set translate
    if translate:
        for i, value in enumerate(target_position):
            matrix.setElement(3, i, value)

    # calculate rotate
    if rotate:
        for row in range(3):
            vector = OpenMaya.MVector([matrix.getElement(row, i) for i in range(3)])
            vector_length = vector.length()
            vector = source_position + (vector.normal() / 1000.0)
            weights = calculate_weights(source_mesh, vector)
            target_vector = calculate_coordinate(target_mesh, weights)
            target_vector = (target_vector - target_position).normal() * vector_length

            for i, value in enumerate(target_vector):
                matrix.setElement(row, i, value)

    matrix = numpy.array(list(matrix))
    matrix = matrix.reshape((4, 4))

    A = matrix[:]
    A = numpy.delete(A, 3, 0)
    A = numpy.delete(A, 3, 1)

    U, s, VT = svd(A)
    B = U.dot(VT)

    matrix_identity = numpy.identity(4)
    matrix[:3, :3] = B

    matrix = OpenMaya.MMatrix(matrix.flatten())
    matrix = OpenMaya.MTransformationMatrix(matrix)

    if translate:
        position = matrix.translation(OpenMaya.MSpace.kWorld)
    cmds.xform(target_node, worldSpace=True, translation=position)
    if rotate:
        rotation_order = cmds.getAttr("{}.rotateOrder".format(target_node))
        rotation = matrix.rotation()
        rotation.reorderIt(rotation_order)
        rotation = [math.degrees(value) for value in rotation.asVector()]
        cmds.xform(target_node, worldSpace=True, rotation=rotation)


