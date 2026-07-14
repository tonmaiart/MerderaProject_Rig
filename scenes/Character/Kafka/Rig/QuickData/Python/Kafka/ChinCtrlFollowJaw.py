import pymel.core as pm
from tmlib.core import BlendShape,Connection,Create,Misc,Transform,Utility,SkinWeight,File,Controller,QuickData,System

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om

System.reload_scripts()

@Misc.undoable_jump_point
def run():
    group_parent_name= "JawParent"

    if mc.objExists(group_parent_name):
        return
    
    list_group_chin = ['FKOffsetJawChinDtl_M', 'FKOffsetJawLineDtl_R', 'FKOffsetJawLineDtl_L']

    mc.group(em=True,n=group_parent_name,p="FKXHead_M")
    mc.matchTransform(group_parent_name,list_group_chin[0])
    
    mc.parentConstraint("Jaw_M",group_parent_name,mo=True)
    mc.parent(list_group_chin,group_parent_name)
    
    return
        