import pymel.core as pm
from tmlib.core import (
    BlendShape,
    Connection,
    Create,
    Misc,
    Transform,
    Utility,
    SkinWeight,
    File,
    Controller,
    QuickData,
    System,
)

import maya.cmds as mc, cmds
import maya.api.OpenMaya as om

System.reload_scripts()


@Misc.undoable_jump_point
def run():
    cmds.polyCube()
    return
