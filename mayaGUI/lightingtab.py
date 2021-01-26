
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





class LightingWidget(generictab.GenericWidget):
    def __init__(self, parent=None, info=None):
        super(LightingWidget, self).__init__(parent)
        # set project info
        self.get_project_info(info)

        # create generic setup
        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        pass

    def create_layout(self):
        layout1 = QtWidgets.QVBoxLayout()
        layout1.addStretch()


        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.addLayout(layout1)


    def create_connections(self):
        pass

    def refresh_widgets(self):
        self.refresh_generic()
