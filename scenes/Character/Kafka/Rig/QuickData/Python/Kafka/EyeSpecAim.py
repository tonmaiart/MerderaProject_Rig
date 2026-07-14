import pymel.core as pm
from tmlib.core import BlendShape,Connection,Create,Misc,Transform,Utility,SkinWeight,File,Controller,QuickData,System

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om

System.reload_scripts()

@Misc.undoable_jump_point
def run():
    # constarint parent and craete group for eye spec aim
    
    for side in ["L","R"]:
        group_parent_name= "EyeSpecParent_{}".format(side)

        if mc.objExists(group_parent_name):
            continue
        
        list_group_eyespec_offset = [f"FKOffsetEyeSpec{i+1}_{side}" for i in range(3)]

        mc.group(em=True,n=group_parent_name,p="FKXHead_M")
        mc.matchTransform(group_parent_name,list_group_eyespec_offset[0])
        
        mc.parentConstraint("EyeJoint_{}".format(side),group_parent_name,mo=True)
        mc.parent(list_group_eyespec_offset,group_parent_name)
    return
        