import maya.cmds as cmds
import pymel.core as pm
import maya.mel as mel
import glob, json, os, re


print "utilsLib"

def version_checker(string):
    version = None
    if len(string) == 4:
        if string[0].isalpha() and unicode(string[1]).isnumeric() and unicode(string[2]).isnumeric() and unicode(
                string[3]).isnumeric():
            version = string
    if version:
        return version
    else:
        return None

def version_control(version_up=False, folder_path=None):
    """
    checks for versions in folder and returns all, or all + new version
    :param version_up:
    :param folder_path:
    :return:
    """
    print folder_path
    if not os.path.isdir(folder_path):
        print_error("PATH DOESNT EXIST: " + folder_path)
    if not folder_path.endswith("/"):
        folder_path = folder_path+"/"


    versions = glob.glob(folder_path + "v*")
    version_folders = []

    if versions:
        for version in versions:
            versionFolder = (version).split("/")[-1]
            if versionFolder:
                if "\\" in versionFolder:
                    version_folder = versionFolder.split("\\")[-1]
                    if version_checker(version_folder):
                        version_folders.append(version_folder)
        version_folders = sorted(version_folders)
        if version_up:
            numbers = re.findall(r'\d+', version_folders[-1])[0]
            padding = len(numbers)
            version_folder = "v" + str(int(numbers) + 1).zfill(padding)
            os.mkdir(folder_path + version_folder)
            if version_checker(version_folder):
                version_folders.append(version_folder)

    else:
        version_folder = "v001"
        os.mkdir(folder_path+"v001")
        if version_checker(version_folder):
            version_folders.append(version_folder)

    if version_folders:
        return version_folders

    else:
        print_error("FAILED TO GET VERSION")

def listdir_with_ignore(path, ignore_list=["", ""]):
    """
    returns items in directory if they dont contain ignore list
    :param path:
    :param ignore_list:
    :return:
    """


    list = os.listdir(path)

    new_list = []
    if list:
        for i in list:
            for ignore in ignore_list:
                if not ignore in i:
                    new_list.append(i)
        return new_list
    else:
        print print_warning("NO ITEMS IN DIRECTORY")
        return







def import_latest(folder_path, wild_card):
    """

    :param folder_path: folder path (file not included)
    :param wild_card: wild card file where number should be. e.g "character_blends_v*.mel"
    :return: path
    """

    if not folder_path.endswith("/"):
        folder_path = folder_path + "/"


    # get latest
    try:
        all_files = glob.glob(folder_path + wild_card)
        versionFolder = (sorted(all_files)[-1]).split("/")[-1]
        if versionFolder:
            if "\\" in versionFolder:
                versionFolder = versionFolder.split("\\")[-1]

        path = folder_path + versionFolder
        return path

    except:
        print "WRONG PATH:  "+folder_path+wild_card


def version_up_path(folder_path, wild_card):

    """
    versions up a file path eg. e:/path/to/folder/my_maya_v001.ma = my_maya_v002.ma

    :param folder_path: path to file
    :param wild_card: file wildcard = eg. *model* == project_model_v001.ma
    :return: path/new_fileName.ma
    """

    scene_file = import_latest(folder_path, wild_card)
    if scene_file:
        split_end = scene_file.split("/")[-1]
        scene_path = "/".join(scene_file.split("/")[:-1])+"/"


        numbers = re.findall(r'\d+', split_end)[0]
        padding = len(numbers)

        new_num = str(int(numbers) + 1).zfill(padding)

        new_file = split_end.replace(numbers, new_num)

        new_path = scene_path + new_file

        return new_path

    else:
        print_error("No file found at PATH = {0} WILDCARD = {1}".format(folder_path, wild_card))


def version_by_integer(folder_path, wild_card, integer, endswith=None):

    """
    versions up a file path eg. e:/path/to/folde/my_maya_v001.ma = my_maya_v002.ma

    :param folder_path: path to file
    :param wild_card: file wildcard = eg. *model* == project_model_v001.ma
    :return: path/new_fileName.ma
    """

    if not folder_path.endswith("/"):
        folder_path = folder_path + "/"

    scene_file = import_latest(folder_path, wild_card)
    if scene_file:
        split_end = scene_file.split("/")[-1]
        scene_path = "/".join(scene_file.split("/")[:-1])+"/"


        numbers = re.findall(r'\d+', split_end)[0]
        padding = len(numbers)

        new_num = str(int(numbers) + integer).zfill(padding)

        new_file = split_end.replace(numbers, new_num)

        new_path = scene_path + new_file

        print new_path
        return new_path

    else:
        print_warning("No file found at PATH = {0}           WILDCARD = {1}".format(folder_path, wild_card))


def saveJson(my_data,path,version=0):
    """
    saves a json, ensures a unique name, returns that name.

    :param my_data:
    :param path:
    :param version:
    :return:
    """
    if not ".json" in path:
        path+=".json"
    if version:
        path = uniqueFile(path)
    with open(path, 'w') as outfile:
        json.dump(my_data, outfile, sort_keys = True, indent = 4)
    try:
        os.system("chmod 777 " + path)
    except:
        pass
    return path


def loadJson(path):
    """
    loads a json, essentially just here to wrap the json.load and open() commands into one.

    :param path:
    :return:
    """
    with open(path) as json_file:
        return json.load(json_file)


def load_plugin(name):
    """
    Loads a plugin if not already loaded.
    :param name: name of pluggin
    :return:
    """
    if not pm.pluginInfo(name,q=1,l=1):
        try:
            pm.loadPlugin(name)
            return True
        except:
            print "tried"
    return True



def get_history(node=None, historyType=None):
    """
        Description:
            Return a type of history from a given node.

        Args:
            node: an object
            historyType: A string describing the type of history you want to find, eg "skinCluster"

        Example:
            Find the skin cluster associated with a piece of geometry.

                theSkinCluster = get_history(node='C_body_PLY', historyType='skinCluster')

            "theSkinCluster" variable will contain the name of the skin cluster found on the geometry.

        Return:
            If found, will return the history node, otherwise will return the nodes entire history.

    """

    if node:
        historyNodes = pm.listHistory(node)

        if historyNodes:
            if historyType:
                for historyNode in historyNodes:
                    if pm.objectType(historyNode) == historyType:
                        return historyNode
            else:
                return historyNodes




def ad_from_SEL(my_SEL, jnts_list, type="joint"):
    child_SEL = pm.sets(my_SEL, q=True)

    for child in child_SEL:
        if pm.objectType(child) == type:
            jnts_list.append(child)
        else:
            ad_from_SEL(child, jnts_list)


def load_python_part(part_name, *kwargs):
    ns = "GenericControl"
    module_path = "pup.assets.parts.{0}.{1}".format(part_name.lower(), ns)
    components = module_path.split('.')
    # mod = pup
    mod = __import__(components[0])

    pass_check = 0
    for comp in components[1:]:
        try:
            mod = getattr(mod, comp)
            pass_check = 1
        except:
            pass_check = 0

    if pass_check:
        part = mod(part_name, *kwargs)
        return part

    else:
        print_error("PART NO WORK")


def check_create_dir(path):
    if not os.path.isdir(path):
        os.makedirs(path)





# ======================== PRINT
def print_it(string):
    print "*" * 90
    print string
    print "*" * 90


def print_error(string):
    cmds.error(string)


def print_warning(string):
    cmds.warning(string)


# ========================= LIST
# def flatlist(a):
#     """
#     Returns a as a flat list.
#     """
#     result = []
#     for b in a:
#         if hasattr(b, "__iter__") and not isinstance(b, basestring):
#             if type(b.__iter__) != _instancemethod:
#                 result.extend(flatlist(b))
#             else:
#                 result.append(b)
#         else:
#             result.append(b)
#     return result
#
#
# def aslist(a):
#     """
#     ensures that a will be of type list, and be completely flat.
#     """
#     if hasattr(a,"__iter__"):
#         try:
#             return list(numpy.concatenate(numpy.array(a)).ravel())
#         except:
#             return flatlist(a)
#     else:
#         return [a]

def remove_items_with(list):
    "removes items from list if they contain letters from removeIf"
    newList = []
    for i in list:
        if any(not c.isalnum() for c in i):
            pass
        else:
            newList.append(i)
    return newList


# ========================= DICTS
def merge_two_dicts(x, y):
    z = x.copy()   # start with x's keys and values
    z.update(y)    # modifies z with y's keys and values & returns None
    return z


def guide_namespaces():
    """
    get all namespaces for guides and return only parts for python builds
    requires two "_" so its side_name_pythonPart
    :return:
    """
    scene_ns = cmds.namespaceInfo(listOnlyNamespaces=True, recurse=True)

    # guide_ns_dict = {}

    prefixs = []
    parts = []

    for ns in scene_ns:
        if ns.count("_") == 2:
            prefix, part = "_".join(ns.split("_")[:-1]), ns.split("_")[-1]

            prefixs.append(prefix)
            parts.append(part)

            # guide_ns_dict[part] = prefix

    return prefixs, parts
