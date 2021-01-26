from PySide2 import QtCore
from PySide2 import QtWidgets
from PySide2 import QtGui
from shiboken2 import wrapInstance

import maya.OpenMayaUI as omui
import maya.OpenMaya as om
import os
import maya.cmds as cmds
import re


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QWidget)


class GuideTransferUI(QtWidgets.QDialog):

    def __init__(self, parent=maya_main_window()):
        super(GuideTransferUI, self).__init__(parent)

        self.setWindowTitle("Kanto")
        self.setMinimumSize(400, 80)
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.sourceMesh_LE = QtWidgets.QLineEdit()

        self.sourceMeshInsert_btn = QtWidgets.QPushButton("<<")

    def create_layout(self):
        sourceMesh_layout = QtWidgets.QHBoxLayout()
        sourceMesh_layout.addWidget(self.sourceMesh_LE)
        sourceMesh_layout.addWidget(self.sourceMeshInsert_btn)

        self.sourceMesh_formLayout = QtWidgets.QFormLayout()
        self.sourceMesh_formLayout.addRow("Source mesh:", sourceMesh_layout)

        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.addLayout(self.sourceMesh_formLayout)

    def create_connections(self):
        pass


if __name__ == "__main__":

    try:
        open_guideTransferUI.close()
        open_guideTransferUI.deleteLater()
    except:
        pass

    open_guideTransferUI = GuideTransferUI()
    open_guideTransferUI.show()


