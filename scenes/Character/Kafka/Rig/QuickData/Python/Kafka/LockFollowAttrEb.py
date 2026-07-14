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
    list_follow_attr = [
        ["EyeBrowMid1_L.followEyeBrowInner_L", 3],
        ["EyeBrowMid2_L.followEyeBrowOuter_L", 3],
        ["EyeBrowMid1_R.followEyeBrowInner_R", 3],
        ["EyeBrowMid2_R.followEyeBrowOuter_R", 3],
    ]

    for pair in list_follow_attr:
        attr, value = pair

        try:
            mc.setAttr(attr, value)
            mc.setAttr(attr, l=1, k=0)
        except:
            pass

    return
