
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
from ..library import partio
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
        self.variantCreate_LE = QtWidgets.QLineEdit()
        self.variantCreate_LE.setPlaceholderText("new variant")
        self.variants_CB = QtWidgets.QComboBox()
        self.buildRig_btn = QtWidgets.QPushButton("buildRig")

        # create publish step

        self.saveControl_btn = QtWidgets.QPushButton("save")
        self.saveControlUp_btn = QtWidgets.QPushButton("version up")
        self.loadControl_btn = QtWidgets.QPushButton("load")

        self.saveWeights_btn = QtWidgets.QPushButton("save")
        self.saveWeightsUp_btn = QtWidgets.QPushButton("version up")
        self.loadWeights_btn = QtWidgets.QPushButton("load")



        self.modelLoadProject_CB = QtWidgets.QComboBox()
        self.modelLoadAsset_CB = QtWidgets.QComboBox()
        self.modelLoadvariant_CB = QtWidgets.QComboBox()
        self.modelLoadPlus_btn = QtWidgets.QPushButton("+")
        self.modelLoadMinus_btn = QtWidgets.QPushButton("-")
        for btn in [self.modelLoadProject_CB,self.modelLoadAsset_CB,self.modelLoadvariant_CB
                    ,self.modelLoadPlus_btn,self.modelLoadMinus_btn]:
            btn.setStyleSheet("padding: 0px;")
        self.add_model_project()

    def create_layout(self):
        # build rig
        rigBuild_layout = QtWidgets.QHBoxLayout()
        rigBuild_layout.addWidget(self.variantCreate_LE)
        rigBuild_layout.addWidget(self.variants_CB)
        rigBuild_layout.addWidget(self.buildRig_btn)
        rigBuild_layout.addStretch()

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

        # model loader
        modelLoader_layout = QtWidgets.QHBoxLayout()
        modelLoader_layout.addWidget(self.modelLoadProject_CB)
        modelLoader_layout.addWidget(self.modelLoadAsset_CB)
        modelLoader_layout.addWidget(self.modelLoadvariant_CB)
        modelLoader_layout.addWidget(self.modelLoadPlus_btn)
        modelLoader_layout.addWidget(self.modelLoadMinus_btn)




        # main_layout from generic tabs
        self.main_layout.addLayout(rigBuild_layout)
        self.add_separator(self.main_layout)
        self.main_layout.addLayout(control_formLayout)
        self.main_layout.addLayout(skinWights_formLayout)
        self.main_layout.addLayout(modelLoader_layout)

    def create_connections(self):
        self.buildRig_btn.clicked.connect(lambda: self.build_rig(self.project_dict))

        self.variantCreate_LE.returnPressed.connect(self.variant_enter_pressed)
        self.variants_CB.currentTextChanged.connect(self.variant_changed)

        self.modelLoadProject_CB.currentTextChanged.connect(self.add_model_asset)
        self.modelLoadAsset_CB.currentTextChanged.connect(self.add_model_variant)
        # self.modelLoadvariant_CB.currentTextChanged.connect()

        self.modelLoadPlus_btn.clicked.connect(self.add_model_add)


    def refresh_widgets(self):
        self.refresh_generic()
        self.get_variants()

    def build_rig(self, dict):
        """
        build rig
        :param path: path only goes up till asset e.g  "E:/Files/3D/goblin"
        :return:
        """

        guides_scene = utilsLib.import_latest(dict["scene"], "*guides*.m?")
        utilsLib.print_it("BUILDING: {0} {1}".format(dict["project"], dict["asset"]))

        cmds.file(new=True, f=True)
        self.import_scene(guides_scene)

        char = characterSetup.CharacterSetup(dict["base_path"] + "/" + dict["project"] + "/" + dict["asset"])
        char.build_character()



    def get_variants(self):
        files = utilsLib.listdir_with_ignore(self.project_dict["data"], ignore_list=["."])
        self.variants_CB.clear()
        self.variants_CB.addItems(files)



    def variant_changed(self):
        self.project_dict["variant"] = self.variants_CB.currentText()

    def variant_enter_pressed(self):
        # name from line edit
        self.variantCreate_LE_str = self.variantCreate_LE.text()
        # create folder with name
        self.create_folder(self.project_dict["data"],self.variantCreate_LE_str)

        pio = partio.PartIO(self.project_dict["data"])
        pio.get_dict()
        pio.add_variant(self.variantCreate_LE_str)
        # # refresh projects to add new project
        self.get_variants()





    def add_model_project(self):
        self.modelLoadProject_CB.clear()
        print "try"
        print self.project_dict["base_folder"]
        self.modelLoadProject_CB.addItems(self.get_files(self.project_dict["base_folder"]))
        self.add_model_asset()

    def add_model_asset(self):
        self.modelLoadAsset_CB.clear()
        self.modelLoadAsset_CB.addItems(self.get_files(self.project_dict["base_folder"]+(self.modelLoadProject_CB.currentText())))
        dict = projectinfo.project_info(self.modelLoadProject_CB.currentText(), self.modelLoadAsset_CB.currentText(), step="model")
        self.add_model_variant(dict)

    def add_model_variant(self, dict):
        self.modelLoadvariant_CB.clear()
        self.modelLoadvariant_CB.addItems(self.get_files(dict["publish"]))

    def add_model_add(self):
        pio = partio.PartIO(self.project_dict["data"])
        pio.get_dict()
        pio.add_model_load(self.project_dict["variant"],
                           self.modelLoadProject_CB.currentText(),
                           self.modelLoadAsset_CB.currentText(),
                           self.modelLoadvariant_CB.currentText())




    def create_folder(self, path, name):
        if os.path.isdir(path + name):
            utilsLib.print_error("---%s--- IS ALREADY THERE" % name)
        else:
            os.makedirs(path + name)
            utilsLib.print_it("---%s--- HAS BEEN CREATED" % name)

    def get_files(self, path, ignore_files=""):

        projects = os.listdir(path)
        projectsClean = utilsLib.remove_items_with(projects)

        return projectsClean












