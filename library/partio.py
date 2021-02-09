import os

from . import coreLib
from . import utilsLib


"""
breakdown

anim -
     |- skinWeights-
     |             |- v001-
     |             |      |- files
     |- controlShapes-
     |               |- v001-
     |                      |- files
render-
      |-etc...



"""




class PartIO(object):

    def __init__(self, file_path):

        self.file_name = "partio_dict.json"

        self.inputs = "inputs"
        self.follows = "follows"
        self.variants = "variants"


        self.base_keys = [self.inputs, self.follows, self.variants]

        self.file_path = file_path


    def create_dict(self):

        if not os.path.isfile(self.file_path+self.file_name):
            print "creating dict"
            self.dataIO_dict = {}

            for base_key in self.base_keys:
                self.dataIO_dict[base_key]={}
            self.save_dict(self.dataIO_dict)

            return self.dataIO_dict

        else:
            utilsLib.print_warning("FILE ALREADY EXISTS: use get first")
            return False

    def get_dict(self):
        self.dataIO_dict = utilsLib.loadJson(self.file_path+self.file_name)

        return self.dataIO_dict

    def add_input(self, slot, driver, constraint, mo="true"):
        self.dataIO_dict[self.inputs][slot] = (driver, constraint, mo)
        self.save_dict(self.dataIO_dict)


# ======================================== MODEL LOADER
    def add_variant(self, variant):
        print self.self.dataIO_dict
        self.dataIO_dict[self.variants][variant] = {}
        self.save_dict(self.dataIO_dict)

    def add_model_load(self, variant, projectAdd, assetAdd, variantAdd):
        if not variant in self.dataIO_dict.keys():
            self.add_variant(variant)
        self.dataIO_dict[self.variants][variant] = [projectAdd,assetAdd,variantAdd]
        self.save_dict(self.dataIO_dict)



    def save_dict(self, data):
        utilsLib.saveJson(data,self.file_path+self.file_name,version=0)




















































