import maya.cmds as cmds
import pymel.core as pm
import maya.mel as mel

from ..library import attributesLib
from ..library import utilsLib
from ..library import coreLib

class PartSetup(object):

    def __init__(self, part_name, side, name):
        self.side = side
        self.name = name
        self.part_name = part_name
        self.side_name = self.side+"_"+self.name
        self.namespace = self.side_name+"_"+self.part_name

        self.part_dict = {}

    def build_guides(self):

        print " "
        print " "
        print "BUILDING PART --------- {0} {1}".format(self.side_name, self.part_name)
        print " "
        print " "

        self.packSetup()

        # self.get_part_info(self.prefix, self.part_name)
        self.build_part()

        # connect joints
        bindJoints = []
        utilsLib.ad_from_SEL(my_SEL=self.bindjoints_SEL, jnts_list=bindJoints, type="joint")
        all_joints = set(pm.listRelatives(self.pack_GRP, ad=True, type="joint"))
        none_bind = set(all_joints - set(bindJoints))

        if bindJoints:
            [pm.connectAttr(self.pack_GRP.internal_vis, x + ".visibility") for x in none_bind]


    def packSetup(self):
        # if prefix and not prefix.endswith("_"):
        #     prefix += "_"

        self.pack_GRP = pm.group(em=1, name=self.side_name + "_pack_GRP")
        self.pack_GRP.addAttr("primary_vis", at="long", min=0, max=1, dv=1)
        self.pack_GRP.primary_vis.set(cb=True)
        self.pack_GRP.addAttr("internal_vis", at="long", min=0, max=1, dv=0)
        self.pack_GRP.internal_vis.set(cb=True)
        self.pack_GRP.addAttr("bindJoint_vis", at="long", min=0, max=1, dv=0)
        self.pack_GRP.bindJoint_vis.set(cb=True)

        if hasattr(self, "static_GRP"):
            self.static_GRP = self.static_GRP
        else:
            self.static_GRP = pm.group(em=1, name=self.side_name + "_static_GRP")

        self.static_GRP.inheritsTransform.set(0)
        # pm.connectAttr(self.pack_GRP.internal_vis, self.static_GRP.visibility)

        self.rootspace_GRP = pm.group(em=1, name=self.side_name + "_rootspace_GRP")

        self.part_in = pm.group(em=1, name=self.side_name + "_part_in", p=self.rootspace_GRP)
        self.part_out = pm.group(em=1, name=self.side_name + "_part_out", p=self.rootspace_GRP)

        self.global_in = pm.spaceLocator(name=self.side_name + "_global_in")
        self.global_in.v.set(False)
        self.global_in.setParent(self.static_GRP)

        # PARENT
        pm.parent(self.rootspace_GRP, self.static_GRP, self.pack_GRP)

        # ATTRIBUTES
        attributesLib.lock_and_hide([self.pack_GRP, self.static_GRP], t=True, r=True, s=True, v=False)
        self.bindjoints_SEL = pm.sets(em=1, name=self.side_name + "_bindjoints_SEL")
        self.control_SEL = pm.sets(em=1, name=self.side_name + "_control_SEL")

        self.pack_GRPs = [self.pack_GRP, self.rootspace_GRP, self.static_GRP]


        coreLib.add_input_dict(base_key="inputs", key="part_input", value=self.part_in, contraint_type="parentC", maintainOffset="True")











