from PySide2 import QtCore
from PySide2 import QtWidgets
from PySide2 import QtGui
from shiboken2 import wrapInstance

import maya.OpenMayaUI as omui
import maya.OpenMaya as om
import os
import maya.cmds as cmds
import re

# from pup.extras import transferpoints


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QWidget)


class GuideTransferUI(QtWidgets.QDialog):

    def __init__(self, parent=maya_main_window()):
        super(GuideTransferUI, self).__init__(parent)

        self.setWindowTitle("Transfer Points")
        self.setMinimumSize(400, 80)
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.sourceMesh_LE = QtWidgets.QLineEdit()

        self.sourceMeshInsert_btn = QtWidgets.QPushButton("<<")

        self.targetMesh_LE = QtWidgets.QLineEdit()
        self.targetMeshInsert_btn = QtWidgets.QPushButton("<<")

        self.point_lst = QtWidgets.QListWidget()
        self.point_lst.setFixedHeight(100)
        self.point_lst.setSelectionMode(QtWidgets.QAbstractItemView.MultiSelection)

        self.pointAdd_btn = QtWidgets.QPushButton("+")
        self.pointMinus_btn = QtWidgets.QPushButton("-")
        self.pointClear_btn = QtWidgets.QPushButton("clr")

        self.run_btn = QtWidgets.QPushButton("Run")
        self.translate_CB = QtWidgets.QCheckBox("translate")
        self.translate_CB.setChecked(1)
        self.rotate_CB = QtWidgets.QCheckBox("rotate")
        self.rotate_CB.setChecked(1)

    def create_layout(self):
        sourceMesh_layout = QtWidgets.QHBoxLayout()

        sourceMesh_layout.addWidget(self.sourceMesh_LE)
        sourceMesh_layout.addWidget(self.sourceMeshInsert_btn)

        targetMesh_layout = QtWidgets.QHBoxLayout()
        targetMesh_layout.addWidget(self.targetMesh_LE)
        targetMesh_layout.addWidget(self.targetMeshInsert_btn)

        self.Mesh_formLayout = QtWidgets.QFormLayout()
        self.Mesh_formLayout.addRow("Source mesh:", sourceMesh_layout)
        self.Mesh_formLayout.addRow("Target mesh:", targetMesh_layout)

        self.pointList_layout = QtWidgets.QHBoxLayout()
        self.pointList_layout.addWidget(self.point_lst)

        pointBtn_layout = QtWidgets.QVBoxLayout()
        pointBtn_layout.addWidget(self.pointAdd_btn)
        pointBtn_layout.addWidget(self.pointMinus_btn)
        pointBtn_layout.addWidget(self.pointClear_btn)
        self.pointList_layout.addLayout(pointBtn_layout)

        self.runBtn_layout = QtWidgets.QHBoxLayout()
        self.runBtn_layout.addWidget(self.run_btn)
        self.runBtn_layout.addStretch()
        self.runBtn_layout.addWidget(self.translate_CB)
        self.runBtn_layout.addWidget(self.rotate_CB)

        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.addLayout(self.Mesh_formLayout)
        self.main_layout.addLayout(self.pointList_layout)
        self.main_layout.addLayout(self.runBtn_layout)

    def create_connections(self):

        # add selection to line edits
        self.sourceMeshInsert_btn.clicked.connect(lambda: self.selection_to_LE(self.sourceMesh_LE))
        self.targetMeshInsert_btn.clicked.connect(lambda: self.selection_to_LE(self.targetMesh_LE))

        self.pointAdd_btn.clicked.connect(self.add_selected)
        self.pointMinus_btn.clicked.connect(self.minus_selected)
        self.pointClear_btn.clicked.connect(self.clear_list)

        self.run_btn.clicked.connect(self.run)

    def selection_to_LE(self, LE):

        selection = cmds.ls(selection=True, type="transform")

        if selection:
            if len(selection) > 1:
                print "Only select one mesh"
            else:
                LE.setText(selection[0])
        cmds.select(cl=True)

    def add_selected(self):
        selection = cmds.ls(selection=True)

        if selection:
            for sel in selection:
                if sel in self.get_items():
                    print "item already in list: " + sel
                else:
                    self.point_lst.addItem(sel)
        cmds.select(cl=True)

    def minus_selected(self):
        listItems = self.point_lst.selectedItems()
        if not listItems:
            return
        for item in listItems:
            self.point_lst.takeItem(self.point_lst.row(item))

    def clear_list(self):
        self.point_lst.clear()

    def get_items(self):
        items = []
        for index in xrange(self.point_lst.count()):
            items.append(self.point_lst.item(index).text())
        return items

    def run(self):

        source_mesh = cmds.ls(self.sourceMesh_LE.text())
        target_mesh = cmds.ls(self.targetMesh_LE.text())
        translate_check = 1 if self.translate_CB.isChecked() else 0
        rotate_check = 1 if self.rotate_CB.isChecked() else 0

        # add points only if they exist in scene
        points = []
        points_check = self.get_items()
        for node in points_check:
            node = cmds.ls(node)
            if node:
                points.append(node[0])

        # forloop for function
        if source_mesh and target_mesh and points:
            for point in points:
                print point
        # transferpoints.transfer_transform(source_mesh[0], target_mesh[0], point,
        #                                        translate=translate_check, rotate=rotate_check)


# if __name__ == "pup.mayaGUI.guide_transfer_GUI":

try:
    open_guideTransferUI.close()
    open_guideTransferUI.deleteLater()
except:
    pass

open_guideTransferUI = GuideTransferUI()
open_guideTransferUI.show()
