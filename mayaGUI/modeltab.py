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

class ModelWidget(generictab.GenericWidget):
    def __init__(self, parent=None, info=None):
        super(ModelWidget, self).__init__(parent)
        # set project info
        self.get_project_info(info)

        # create generic setup
        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.sculptImport_btn = QtWidgets.QPushButton("Import")
        self.sculptExport_btn = QtWidgets.QPushButton("Export")
        self.sculptReference_btn = QtWidgets.QPushButton("Reference")
        self.sculptDelete_btn = QtWidgets.QPushButton("Delete")
        self.sculptRefresh_btn = QtWidgets.QPushButton("Refresh")
        for btn in [self.sculptImport_btn,self.sculptReference_btn,self.sculptDelete_btn,self.sculptRefresh_btn]:
            btn.setStyleSheet("padding: 0px;")

        self.sculpt_lst = QtWidgets.QListWidget()
        self.sculpt_lst.setFixedHeight(100)

        self.sculptFiles_cmb = QtWidgets.QComboBox()
        self.sculpt_files()
        self.sculptFiles_cmb.setFixedWidth(200)

        # self.sculptFiles_cmb.addItems(os.listdir(self.project_dict["sculpt_scene"]))
        self.sculptFilesOpen_btn = QtWidgets.QPushButton("Open")
        self.sculptFilesOpen_btn.setStyleSheet("padding: 0px;")


    def create_layout(self):
        sculptExport_layout = QtWidgets.QHBoxLayout()
        sculptExport_layout.addWidget(self.sculpt_lst)
        self.sculpt_exports()

        sculptExport_layout2 = QtWidgets.QVBoxLayout()
        sculptExport_layout2.addWidget(self.sculptImport_btn)
        sculptExport_layout2.addWidget(self.sculptExport_btn)
        sculptExport_layout2.addWidget(self.sculptReference_btn)
        sculptExport_layout2.addWidget(self.sculptDelete_btn)
        sculptExport_layout2.addWidget(self.sculptRefresh_btn)

        sculptExport_layout.addLayout(sculptExport_layout2)

        sep1 = QtWidgets.QHBoxLayout()
        self.add_separator(sep1)

        sculptScene_layout = QtWidgets.QHBoxLayout()
        sculptScene_layout.addWidget(self.sculptFiles_cmb)
        sculptScene_layout.addWidget(self.sculptFilesOpen_btn)
        sculptScene_formLayout = QtWidgets.QFormLayout()
        sculptScene_formLayout.addRow("File:", sculptScene_layout)

        self.main_layout.addLayout(self.add_sepNameSep("Sculpt Exports"))
        self.main_layout.addLayout(sculptExport_layout)
        self.main_layout.addLayout(sep1)
        self.main_layout.addLayout(sculptScene_formLayout)


    def create_connections(self):
        # self.sculpt_lst.itemSelectionChanged.connect(self.import_stuff)

        self.sculptImport_btn.clicked.connect(self.sculpt_import)
        self.sculptExport_btn.clicked.connect(self.sculptBtn_export)
        self.sculptReference_btn.clicked.connect(self.sculpt_reference)
        self.sculptDelete_btn.clicked.connect(self.sculpt_delete)
        self.sculptRefresh_btn.clicked.connect(self.sculpt_exports)

        self.sculptFilesOpen_btn.clicked.connect(self.open_file)

    def open_file(self):
        selected_file = self.sculptFiles_cmb.currentText()
        path = self.project_dict["sculpt_scene"]+selected_file
        os.startfile(path)

    def sculpt_files(self):
        self.sculptFiles_cmb.clear()
        # utilsLib.check_create_dir(self.project_dict["sculpt_scene"])
        if os.path.isdir(self.project_dict["sculpt_scene"]):
            files = os.listdir(self.project_dict["sculpt_scene"])[::-1]
        else:
            files="None"
        self.sculptFiles_cmb.addItems(files)

    def refresh_widgets(self):
        self.sculpt_exports()
        self.sculpt_files()
        self.refresh_generic()

    def sculpt_exports(self):
        self.sculpt_lst.clear()
        if os.path.isdir(self.project_dict["sculpt_export"]):
            items = os.listdir(self.project_dict["sculpt_export"])
        else:
            items = ["None"]
        for item in items:
            self.sculpt_lst.addItem(item)


    def sculpt_import(self):
        self.item = (self.sculpt_lst.selectedItems())[0].text()
        cmds.file(self.project_dict["sculpt_export"]+self.item, i=True, ignoreVersion=True)


    def sculptBtn_export(self):
        objects = cmds.ls(selection=True)
        for object in objects:
            save_obj(object, str(self.project_dict["sculpt_export"]+object))
        self.refresh_widgets()


    def sculpt_reference(self):
        self.item = (self.sculpt_lst.selectedItems())[0].text()
        generictab.load_referenced(self.project_dict["sculpt_export"]+self.item)


    def sculpt_delete(self):
        self.item = (self.sculpt_lst.selectedItems())[0].text()
        os.remove(self.project_dict["sculpt_export"]+self.item)
        self.refresh_widgets()
        utilsLib.print_it("DELETED ---{0}--- from {1}".format(self.item, self.project_dict["sculpt_export"]))



def save_obj(objects, path):
    cmds.select(objects)
    cmds.file(path, pr=1, typ="OBJexport", es=1, op="groups=1;ptgroups=1;materials=0;smoothing=1;normals=1")



