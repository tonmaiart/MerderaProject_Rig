from tmlib.ui.interface_template import ToolkitWindow

from tmlib.ui import uitools
import maya.cmds as cmds

from tmlib.core import Scene


import os
from UkoreMaya.core import Pipeline

def validate(context):
    result = Scene.clean_up_scene()

    if result == False:
        return False
    
    folder_name = context["ticket"]["folder_name"]
    version = context["version"]
    ma_path = os.path.join(context["version_dir"], "{}_v{:03d}.ma".format(folder_name, version))
    Pipeline.export_maya_common(export_file_path=ma_path)

    print("Exported Maya Ascii file to: {}".format(ma_path)
          )
    
    return True

