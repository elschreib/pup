
from PySide2 import QtCore
from PySide2 import QtWidgets
from PySide2 import QtGui
from shiboken2 import wrapInstance

import maya.OpenMayaUI as omui
import maya.OpenMaya as om
import os
import maya.cmds as cmds
import re

from ..library import utilsLib
from . import projectinfo

from . import generictab

from ..tool import characterSetup




class RiggingWidget(generictab.GenericWidget):
    def __init__(self, parent=None, info=None):
        super(RiggingWidget, self).__init__(parent)
        # set project info
        self.get_project_info(info)

        # create generic setup
        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.buildRig_btn = QtWidgets.QPushButton("buildRig")

        # create publish step

        self.saveControl_btn = QtWidgets.QPushButton("save")
        self.saveControlUp_btn = QtWidgets.QPushButton("version up")
        self.loadControl_btn = QtWidgets.QPushButton("load")

        self.saveWeights_btn = QtWidgets.QPushButton("save")
        self.saveWeightsUp_btn = QtWidgets.QPushButton("version up")
        self.loadWeights_btn = QtWidgets.QPushButton("load")

    def create_layout(self):
        # build rig
        rigBuild_layout = QtWidgets.QHBoxLayout()
        rigBuild_layout.addWidget(self.buildRig_btn)

        # publish rig steps
        control_layout = QtWidgets.QHBoxLayout()
        control_layout.addWidget(self.saveControl_btn)
        control_layout.addWidget(self.saveControlUp_btn)
        control_layout.addWidget(self.loadControl_btn)
        control_formLayout = QtWidgets.QFormLayout()
        control_formLayout.addRow("controls:", control_layout)

        skinWeights_layout = QtWidgets.QHBoxLayout()
        skinWeights_layout.addWidget(self.saveWeights_btn)
        skinWeights_layout.addWidget(self.saveWeightsUp_btn)
        skinWeights_layout.addWidget(self.loadWeights_btn)
        skinWights_formLayout = QtWidgets.QFormLayout()
        skinWights_formLayout.addRow("skin weights:", skinWeights_layout)

        # main_layout from generic tabs
        self.main_layout.addLayout(rigBuild_layout)
        self.add_separator(self.main_layout)
        self.main_layout.addLayout(control_formLayout)
        self.main_layout.addLayout(skinWights_formLayout)
    def create_connections(self):
        self.buildRig_btn.clicked.connect(lambda: self.build_rig(self.project_dict))

    def refresh_widgets(self):
        self.refresh_generic()



    def build_rig(self, dict):
        """
        build rig
        :param path: path only goes up till asset e.g  "E:/Files/3D/goblin"
        :return:
        """

        guides_scene = utilsLib.import_latest(dict["scene"], "*guides*.m?")
        print guides_scene
        utilsLib.print_it("BUILDING: {0} {1}".format(dict["project"], dict["asset"]))

        cmds.file(new=True, f=True)
        self.import_scene(guides_scene)

        char = characterSetup.CharacterSetup(dict["base_path"] + "/" + dict["project"] + "/" + dict["asset"])
        char.build_character()



















