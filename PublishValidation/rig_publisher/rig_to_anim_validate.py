from tmlib.ui.interface_template import ToolkitWindow

from tmlib.ui import uitools
import maya.cmds as cmds

from tmlib.core import Scene

def validate():
    result = Scene.clean_up_scene()
    return result

