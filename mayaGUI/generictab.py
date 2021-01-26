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
from ..shelf import alembic
from . import projectinfo




class GenericWidget(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(GenericWidget, self).__init__(parent)
        self.project_dict = None

        self.create_generic_widgets()
        self.create_generic_layout()
        self.create_generic_connections()

    def create_generic_widgets(self):
        self.open_btn = QtWidgets.QPushButton("open")
        self.save_btn = QtWidgets.QPushButton("save")
        self.versionUp_btn = QtWidgets.QPushButton("version+")
        self.folder_btn = QtWidgets.QPushButton("folder")

        self.publish_btn = QtWidgets.QPushButton("publish")
        self.load_btn = QtWidgets.QPushButton("import")
        self.reference_btn = QtWidgets.QPushButton("ref")
        # self.update_btn = QtWidgets.QPushButton("update")
        self.variantsType_cmb = QtWidgets.QComboBox()
        self.variantsType_cmb.addItems(["abc","obj"])
        self.variants_le = QtWidgets.QLineEdit()
        self.variants_le.setPlaceholderText("variant...")

        for btn in [self.publish_btn,self.load_btn,self.reference_btn]:
            btn.setStyleSheet("padding: 0px;")


    def create_generic_layout(self):
        layout1 = QtWidgets.QHBoxLayout()
        layout1.addWidget(self.open_btn)
        layout1.addWidget(self.save_btn)
        layout1.addWidget(self.versionUp_btn)
        self.add_separator(layout1)
        layout1.addWidget(self.folder_btn)

        layout2 = QtWidgets.QHBoxLayout()
        layout2.addWidget(self.publish_btn)
        layout2.addWidget(self.load_btn)
        layout2.addWidget(self.reference_btn)
        self.add_separator(layout2)
        layout2.addWidget(self.variantsType_cmb)
        layout2.addWidget(self.variants_le)



        self.div1 = QtWidgets.QFrame()
        self.div1.setFrameShape(QtWidgets.QFrame.HLine)
        self.div1.setFrameShadow(QtWidgets.QFrame.Sunken)
        layout2.addWidget(self.div1)

        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.addLayout(layout1)
        self.main_layout.addLayout(layout2)
        self.main_layout.addWidget(self.div1)



    def create_generic_connections(self):
        self.open_btn.clicked.connect(lambda: self.open_scene(self.project_dict))
        self.save_btn.clicked.connect(lambda: self.save_scene(self.project_dict))
        self.versionUp_btn.clicked.connect(self.version_up)
        self.folder_btn.clicked.connect(lambda: self.open_folder(self.project_dict))

        self.publish_btn.clicked.connect(lambda: self.publish_from_step(self.project_dict, self.variants_le.text()))
        self.load_btn.clicked.connect(lambda: self.load_publish(self.project_dict, self.variants_le.text()))
        self.reference_btn.clicked.connect(lambda: self.ref_publish(self.project_dict, self.variants_le.text()))

    def add_variants(self, path, ignore_files=""):
        if os.path.isdir(path):
            variants = os.listdir(path)
            variantsClean = utilsLib.remove_items_with(variants)

            if not variantsClean:
                variantsClean = ["none"]
        else:
            variantsClean = ["none"]

        return variantsClean

    def get_project_info(self, dict):
        self.project_dict = dict
        # return self.project_dict

    def add_separator(self, layout, width=None):

        separator = QtWidgets.QFrame()
        separator.setFrameShape(QtWidgets.QFrame.HLine)
        if width:
            separator.setFixedWidth(width)
        separator.setFrameShadow(QtWidgets.QFrame.Sunken)
        layout.addWidget(separator)


    def add_sepNameSep(self, name):
        label =  QtWidgets.QLabel(name)
        layout1 = QtWidgets.QHBoxLayout()
        layout1.addStretch()
        self.add_separator(layout1,width=150)
        layout1.addStretch()
        layout1.addWidget(label)
        layout1.addStretch()
        self.add_separator(layout1,width=150)
        layout1.addStretch()
        return layout1



    def refresh_generic(self):
        pass
        # self.variants_cmb.clear()
        # self.variants_cmb.addItems(self.add_variants(self.project_dict["publish"]))












    def load_referenced(self, full_path, namespace=None):
        if namespace:
            cmds.file(full_path, reference=True, ignoreVersion=True, ns=namespace)
        else:
            cmds.file(full_path, reference=True, ignoreVersion=True)


    def get_files(self, path, ignore_files=None, wildcard=None):
        projects = os.listdir(path)
        if wildcard:
            projects_full = utilsLib.import_latest(path, wildcard)
            projects = []
            if projects_full:
                for i in [projects_full]:
                    projects.append(i.split("/")[-1])
        if ignore_files:
            for ignore_file in ignore_files:
                if ignore_file in projects:
                    projects.remove(ignore_file)

        if not projects:
            projects = ["none"]

        return projects


    def load_publish(self, dict, variant):
        folder_publish = dict["publish"] + variant + "/"

        latest_publish = utilsLib.import_latest(folder_publish, "v*")
        if latest_publish:
            full_path = utilsLib.import_latest(latest_publish, "*v*.abc")
            cmds.file(full_path, i=True, ignoreVersion=True)
            print "LOADED LATEST PUBLISH FOR --- %s ---"%variant
        else:
            print "NO LATEST PUBLISH FOR --- %s ---"%variant


    def version_up(self):
        """
        versions up latest scene
        :return:
        """

        path = "/".join(cmds.file(loc=True, q=True).split("/")[:-1])
        stream = (cmds.file(loc=True, q=True).split("/")[-1]).split("_")[1]

        # # for saving rigs after build
        # if cmds.file(loc=True, q=True).split("/")[-1] == self.asset_name+"_temp.ma":
        #     stream = "rigging"

        latest_scene = utilsLib.version_up_path(path, "*%s*"%stream)
        cmds.file(rename=latest_scene)
        cmds.file(save=True, type='mayaAscii')

        utilsLib.print_it("SAVED:   "+latest_scene)


    def open_scene(self, dict=None, step=None, full_path=None):

        if full_path:
            cmds.file(full_path, o=True, f=True, iv=True)
        else:
            count = 0
            # this is for if guide so it saves guide
            step = step if step else dict["step"]

            latest_scene = utilsLib.version_by_integer(dict["scene"], "*%s*.m*" % step, count )
            if latest_scene:
                cmds.file(latest_scene, o=True, f=True, iv=True)
            else:
                cmds.file(new=True, f=True)
                cmds.file(rename=dict["scene"] + dict["asset"] + "_%s_v001" % step)
                cmds.file(save=True, type='mayaAscii')


    def save_scene(self, dict=None):
        count = 0
        latest_scene = utilsLib.version_by_integer(dict["scene"], "*%s*.m*"%dict["step"], count)


        if latest_scene:
            result = QtWidgets.QMessageBox.question(self,
                                                    "Modified",
                                                    "would you like to overwrite %s?"%os.path.basename(latest_scene))

            if result == QtWidgets.QMessageBox.StandardButton.Yes:
                cmds.file(rename=latest_scene)
                cmds.file(save=True, type='mayaAscii')

        else:
            cmds.file(rename=dict["scene"]+dict["asset"]+"_%s_v001"%dict["step"])
            cmds.file(save=True, type='mayaAscii')

    def import_scene(self, path):
        cmds.file(path, i=True, ignoreVersion=True)

    def open_folder(self, dict):
        print "open folder"
        print dict
        if os.path.isdir(dict["scene"]):
            os.startfile(dict["scene"])


    def publish_from_step(self, dict, variant):
        """
        publish to current step("model", eg.) from variant entered
        :param dict: project dictionary
        :param variant: variant stream
        :return:
        """
        # folder to variant publish
        step_variant_fld = dict["publish"] + variant + "/"

        # get scene name
        current_scene = os.path.basename(cmds.file(q=True, sn=True))

        if dict["step"] not in current_scene:
            utilsLib.print_warning("WRONG STEP TO PUBLISH CURRENT SCENE INFO.... CHANGE TO MATCHING TAB")
            return

        if current_scene:
            if "." in current_scene:
                current_scene = current_scene.split(".")[0]

            versionNumber = re.findall(r'\d+', current_scene)[0]




            if os.path.isdir(step_variant_fld + "v"+versionNumber):
                print "VERSION EXISTS, version up please"

            else:
                os.makedirs(step_variant_fld + "v"+versionNumber)
                objects = cmds.ls(selection=True)
                self.save_alembic(objects, step_variant_fld + "v"+versionNumber+"/"+current_scene)
                self.save_obj(objects, step_variant_fld + "v"+versionNumber+"/"+current_scene)
        else:
            print "SAVE YOUR SCENE IN THE RIGHT STEP BEFORE PUBLISHING"


    def ref_publish(self, dict, variant):
        folder_publish = dict["publish"] + variant + "/"

        latest_publish = utilsLib.import_latest(folder_publish, "v*")
        if latest_publish:
            full_path = utilsLib.import_latest(latest_publish, "*v*.abc")
            cmds.file(full_path, reference=True, ignoreVersion=True, ns=dict["asset"]+"_"+dict["step"])
            print "REFERENCED LATEST PUBLISH FOR --- %s ---" % variant
        else:
            print "NO LATEST PUBLISH FOR --- %s ---" % variant


    def save_alembic(self, objects, path):

        root = ""
        for x in objects:
            root = root + "-root %s " % x

        save_name = path
        if not save_name.endswith(".abc"):
            save_name = save_name+".abc"

        command = " -uvWrite -worldSpace -writeUvSets " + root + " -file " + save_name
        cmds.AbcExport(j=command)


    def save_obj(self, objects, path):
        cmds.select(objects)
        cmds.file(path, pr=1, typ="OBJexport", es=1, op="groups=1;ptgroups=1;materials=0;smoothing=1;normals=1")



