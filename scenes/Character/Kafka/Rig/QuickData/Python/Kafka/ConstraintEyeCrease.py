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

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om

System.reload_scripts()


@Misc.undoable_jump_point
def run():
    for side in "LR":
        target1 = "FKHead_M"
        target2 = "upperLid_{}".format(side)
        offset_target = "FKOffsetEyeCrease_{}".format(side)
        control = "FKEyeCrease_{}".format(side)

        Connection.create_switch_float(
            target1=target1,
            target2=target2,
            object=offset_target,
            controller=control,
            attr_name="followEyelid",
            typ="parent",
        )
