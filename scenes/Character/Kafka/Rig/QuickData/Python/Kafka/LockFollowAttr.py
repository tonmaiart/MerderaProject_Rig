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
        ["Lip_R.followJawFollow_R", 5],
        ["Lip_L.followJawFollow_L", 5],
        ["upperLip_M.followJawFollow_M", 0],
        ["lowerLip_M.followJawFollow_M", 10],
        ["Cheek_R.followJawFollow_R", 5],
        ["Cheek_L.followJawFollow_L", 5],
        ["lowerTeeth_M.followJawFollow_M", 10],
        ["Tongue0_M.followJawFollow_M", 10],
        ["upperLip_M.fractionMode", 10],
        ["lowerLip_M.fractionMode", 10],
    ]

    for pair in list_follow_attr:
        attr, value = pair

        try:
            mc.setAttr(attr, value)
            mc.setAttr(attr, l=1, k=0)
        except:
            pass

    return
