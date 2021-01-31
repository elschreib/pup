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
from os import listdir
from os.path import isfile, join


# class
#     """
#     virtual void keyPressEvent(QKeyEvent *event) {
#     if (event->matches(QKeySequence::Copy)) {
#         int itemsCount = count();
#         QStringList strings;
#     for (int i = 0; i < itemsCount; ++i)
#         strings << item(i)->text();
#
#     QApplication::clipboard()->setText(strings.join("\n"));
#     }
#     """






class Widget(QtWidgets.QWidget):
    def __init__(self, attr, value, guide_node, parent=None):
        super(Widget, self).__init__(parent)
        self.attr = attr
        self.value = value
        self.guide_node = guide_node

        self.departmentNameLine = QtWidgets.QLineEdit(self.attr)
        self.departmentNameLine.setFixedSize(100, 20)
        self.departmentPathLine = QtWidgets.QLineEdit(self.value)
        self.setContentsMargins(0, 0, 0, 0)
        layout = QtWidgets.QHBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.addWidget(self.departmentNameLine)
        layout.addWidget(self.departmentPathLine)

        self.departmentPathLine.returnPressed.connect(self.change_attr)

    def change_attr(self):
        cmds.setAttr(self.guide_node+"."+self.attr, self.departmentPathLine.text(), type="string")

class GuidesWidget(generictab.GenericWidget):
    def __init__(self, parent=None, info=None):
        super(GuidesWidget, self).__init__(parent)
        # set project info
        self.get_project_info(info)

        # for guide attrs in scene
        self.widgets = []

        # create generic setup
        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.guidesLib_cmb = QtWidgets.QComboBox()
        self.guidesLib_cmb.addItems(self.get_files(self.project_dict["guides"], ignore_files=[".mayaSwatches", "__init__.py"]))
        self.loadGuide_btn = QtWidgets.QPushButton("load")
        self.refreshGuide_btn = QtWidgets.QPushButton("refresh")

        self.guidesInScene_lst = QtWidgets.QListWidget()
        self.guidesInScene_lst.setFixedHeight(100)
        self.guidesInScene_lst.setFixedWidth(200)

        self.guideOutputs_lst = QtWidgets.QListWidget()
        self.guideOutputs_lst.setFixedHeight(100)
        self.guideOutputs_lst.setFixedWidth(200)

        self.transferGuide_btn = QtWidgets.QPushButton("Transfer guide")


    def create_layout(self):
        # guides lib
        self.mainLayout = QtWidgets.QFormLayout(self)

        guidesLib_layout = QtWidgets.QHBoxLayout()
        guidesLib_layout.addWidget(self.guidesLib_cmb)
        guidesLib_layout.addWidget(self.loadGuide_btn)
        guidesLib_layout.addWidget(self.refreshGuide_btn)
        guidesLib_formLayout = QtWidgets.QFormLayout()
        guidesLib_formLayout.addRow("Library:", guidesLib_layout)


        header_layout = QtWidgets.QHBoxLayout()
        sep1 = self.add_sepNameSep("Guides",width=50)
        sep2 = self.add_sepNameSep("Outputs", width=50)
        header_layout.addLayout(sep1)
        header_layout.addLayout(sep2)

        guidesInScene_layout = QtWidgets.QHBoxLayout()
        guidesInScene_layout.addWidget(self.guidesInScene_lst)
        guidesInScene_layout.addWidget(self.guideOutputs_lst)
        self.get_guides_in_scene(self.guidesInScene_lst)


        transferGuide_layout = QtWidgets.QHBoxLayout()
        transferGuide_layout.addWidget(self.transferGuide_btn)

        self.guideAttr_layout = QtWidgets.QVBoxLayout()


        self.main_layout.addLayout(guidesLib_formLayout)
        self.main_layout.addLayout(header_layout)
        self.main_layout.addLayout(guidesInScene_layout)
        self.main_layout.addLayout(transferGuide_layout)
        self.main_layout.addLayout(self.guideAttr_layout)
        # self.mainLayout.insertRow(
        #     self.mainLayout.count() - 1, "sys.path.append :", self.sysAppendWidget
        # )

    def create_connections(self):
        self.loadGuide_btn.clicked.connect(self.namespace_text)
        self.transferGuide_btn.clicked.connect(self.transfer_guide_UI)
        self.refreshGuide_btn.clicked.connect(self.refresh_widgets)

        self.guidesInScene_lst.itemClicked.connect(lambda: self.create_guideAttr_widgets())

    def refresh_widgets(self):
        self.refresh_generic()
        self.guidesLib_cmb.clear()
        self.guidesLib_cmb.addItems(self.get_files(self.project_dict["guides"], ignore_files=[".mayaSwatches", "__init__.py"]))
        self.get_guides_in_scene(self.guidesInScene_lst)


    def namespace_text(self):
        # result = QtWidgets.QMessageBox.detailedText("something")

        # get guide name:
        self.guide_part = self.guidesLib_cmb.currentText()

        path = self.project_dict["guides"]+self.guide_part
        if "." in self.guide_part:
            self.guide_part = self.guide_part.split(".")[0]

        text, ok = QtWidgets.QInputDialog.getText(self, 'namespace', 'Enter part name:')

        if ok:
            self.load_referenced(path, namespace=text+"_"+self.guide_part)
            self.organise_guide(namespace=text+"_"+self.guide_part)


    def get_guides_in_scene(self, lst):
        guides_GRP = cmds.ls("guides_GRP")

        lst.clear()

        if guides_GRP:
            children = cmds.listRelatives(guides_GRP)
            if children:

                guides = []

                for child in children:
                    if ":guide" in child:
                        ns = child.split(":")[0]
                        guides.append(ns)

                for item in guides:
                    lst.addItem(item)

    def get_guide_outputs(self, side, name, guide):
        python_part = guide.split("_")[-1].lower()+".py"
        self.guideOutputs_lst.clear()

        if isfile(self.project_dict["python_parts"]+python_part):

            part_instance = utilsLib.load_python_part(guide.split("_")[-1], side, name)
            outputs = part_instance.outputs
            outputs = [side+"_"+name+x for x in outputs]

            if outputs:
                for output in outputs:
                    self.guideOutputs_lst.addItem(output)



    def transfer_guide_UI(self):
        from . import transferUI
        reload(transferUI)


    def organise_guide(self, namespace=None):
        """
        organises guide groups
        :param namespace:
        :return:
        """

        # create guides_GRP if not
        guides_GRP = cmds.ls("guides_GRP")
        if not guides_GRP:
            guides_GRP = cmds.group(em=True, n="guides_GRP")

        # parent to guides_GRP
        ns_guide_GRP = cmds.ls(namespace+":guide")
        if ns_guide_GRP:
            cmds.parent(ns_guide_GRP, guides_GRP)
        else:
            utilsLib.print_error("NO GUIDE TOP GROUP TO PARENT")



    def get_guide_dict(self, guide):
        """
        get guide information and add to a dict
        :param guide: gah
        :return:
        """
        if cmds.ls(guide):
            attrs = cmds.listAttr(guide, ud=True)
        else:
            utilsLib.print_error("OPEN GUIDES SCENE TO EDIT INFO")

        guide_dict = {}
        for attr in attrs:
            if attr.endswith("_input"):
                guide_dict[attr] = cmds.getAttr(guide + "." + attr)
            else:
                print attr

        return guide_dict


    def create_guideAttr_widgets(self):

        guide = (self.guidesInScene_lst.selectedItems())[0].text()
        guide_node = guide+":guide"
        side = guide.split("_")[0]
        name = guide.split("_")[1]
        guide_dict = self.get_guide_dict(guide_node)
        self.get_guide_outputs(side, name, guide)

        cmds.select(guide_node)


        if self.widgets:
            self.delete(self.widgets)
            self.widgets = []
        for key in guide_dict.keys():
            widget = Widget(key, guide_dict[key], guide_node)
            # widget.departmentMinusBtn.clicked.connect(partial(self.delete, widget))

            self.guideAttr_layout.addWidget(widget)
            self.widgets.append(widget)





    def delete(self, widgets):
        if widgets:
            for widget in widgets:
                widget.deleteLater()
