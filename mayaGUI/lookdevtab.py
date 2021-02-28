
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





class LookdevWidget(generictab.GenericWidget):
    def __init__(self, parent=None, info=None):
        super(LookdevWidget, self).__init__(parent)
        # set project info
        self.get_project_info(info)

        # create generic setup
        self.create_widgets()
        self.create_layout()
        self.create_connections()

        print self.project_dict["asset"]

    def create_widgets(self):
        self.loadGuide_btn = QtWidgets.QPushButton("load")

        transferGuide_layout = QtWidgets.QHBoxLayout()
        transferGuide_layout.addWidget(self.loadGuide_btn)
        self.main_layout.addLayout(transferGuide_layout)


        self.loadGuide_btn.clicked.connect(self.refresh_widgets)



    def create_layout(self):
        pass

    def create_connections(self):
        pass

    def refresh_widgets(self):
        self.refresh_generic()
        print "refresh"