import pymel.core as pm
from tmlib.core import BlendShape,Connection,Create,Misc,Transform,Utility,SkinWeight,File,Controller,QuickData,System

import maya.cmds as mc
import maya.api.OpenMaya as om

System.reload_scripts()

@Misc.undoable_jump_point
def run():
    Utility.lock_attribute('FKDoorSideB_L',r=1,s=1,l=1,k=0)
    mc.setAttr('FKDoorSideB_L.translateX',l=1,k=0)
    mc.setAttr('FKDoorSideB_L.translateZ',l=1,k=0)

    Utility.lock_attribute('FKDoorSideA_R',r=1,s=1,l=1,k=0)
    mc.setAttr('FKDoorSideA_R.translateX',l=1,k=0)
    mc.setAttr('FKDoorSideA_R.translateZ',l=1,k=0)

    # set limit translate y
    mc.transformLimits('FKDoorSideB_L',ty=(0,130),ety=(1,1))
    mc.transformLimits('FKDoorSideA_R',ty=(0,130),ety=(1,1))
