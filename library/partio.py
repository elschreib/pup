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


def generate_dict(data_path, variants, base_keys):
    """
    generate a tree dict from folder and files
    :return: updates dict
    """
    dataIO_dict = {}
    for variant in variants:
        dataIO_dict[variant] = {}
        for base_key in base_keys:
            # first level is the kind of data you need
            if os.path.isdir(data_path+variant+os.sep+base_key):
                # second level is versions
                versions = utilsLib.version_control(version_up=False, folder_path=data_path+variant+os.sep+base_key)
                if versions:
                    # third level is files

                    for version in versions:
                        path = data_path+os.sep+variant+os.sep+base_key+os.sep+version
                        onlyfiles = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
                        if onlyfiles:
                            if not base_key in dataIO_dict[variant].keys():
                                dataIO_dict[variant][base_key] = {}
                            dataIO_dict[variant][base_key][version] = onlyfiles
                        # else:
                        #     os.rmdir(path)
                        #     utilsLib.print_warning("deleted:"+path)

    return dataIO_dict


class PartIO(object):

    def __init__(self, data_path):

        self.data_path = data_path

        self.variants = os.listdir(data_path)
        self.skinWeights = "skinWeights"
        self.partDict = "partDict"
        self.controlShapes = "controlShapes"

        self.base_keys = [self.skinWeights, self.partDict, self.controlShapes]

        self.dataIO_dict = generate_dict(self.data_path, self.variants, self.base_keys)

    def get_dict(self):
        return self.dataIO_dict



    def create_dict(self):
        self.dataIO_dict = {}


    def create_dict_from_asset(self, path_dict):

        variants = utilsLib.listdir_with_ignore(path_dict, ignore_list=["_", "."])

        self.dataIO_dict = {}




    def add_variants(self, variant):

        self.dataIO_dict[variant] = {}



        self.dataIO_dict["follows"] = {}



        self.dataIO_dict["inputs"] = {}
        self.dataIO_dict["follows"] = {}



    def add_input_key(self, key, value, constraint="parentC", maintainOffset="true"):





















































