import pymel.core as pm
from tmlib.core import BlendShape,Connection,Create,Misc,Transform,Utility,SkinWeight,File,Controller,QuickData,System

import maya.cmds as mc
import maya.api.OpenMaya as om

System.reload_scripts()

@Misc.undoable_jump_point
def run():
    insert_rubik_move_attr(base_target_grps=['FKOffsetCubeMain22_M', 'FKOffsetCubeMain3_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain26_M', 'FKOffsetCubeMain13_M', 'FKOffsetCubeMain6_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain19_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain14_M', 'FKOffsetCubeMain15_M', 'FKOffsetCubeMain1_M', 'FKOffsetCubeMain23_M', 'FKOffsetCubeMain24_M', 'FKOffsetCubeMain25_M', 'FKOffsetCubeMain8_M', 'FKOffsetCubeMain4_M', 'FKOffsetCubeMain18_M', 'FKOffsetCubeMain9_M', 'FKOffsetCubeMain7_M', 'FKOffsetCubeMain21_M', 'FKOffsetCubeMain20_M', 'FKOffsetCubeMain5_M', 'FKOffsetCubeMain12_M', 'FKOffsetCubeMain11_M'],
                     dict_move_axis={
                         "1":[['FKOffsetCubeMain9_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain15_M', 'FKOffsetCubeMain14_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain12_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain13_M'],
                        "rz",
                        -90,],
                        "2":[['FKOffsetCubeMain3_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain22_M', 'FKOffsetCubeMain4_M', 'FKOffsetCubeMain20_M', 'FKOffsetCubeMain14_M', 'FKOffsetCubeMain13_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain26_M'],
                        "rx",
                        90,],
                        "3":[['FKOffsetCubeMain17_M', 'FKOffsetCubeMain9_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain22_M', 'FKOffsetCubeMain15_M', 'FKOffsetCubeMain12_M'],
                        "rz",
                        90,],
                        "4":[['FKOffsetCubeMain4_M', 'FKOffsetCubeMain3_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain20_M', 'FKOffsetCubeMain26_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain1_M', 'FKOffsetCubeMain23_M', 'FKOffsetCubeMain25_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain12_M', 'FKOffsetCubeMain13_M', 'FKOffsetCubeMain14_M', 'FKOffsetCubeMain5_M', 'FKOffsetCubeMain21_M'],
                        "rx",
                        -90,],
                        "5":[['FKOffsetCubeMain22_M', 'FKOffsetCubeMain12_M', 'FKOffsetCubeMain19_M', 'FKOffsetCubeMain8_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain16_M'],
                        "ry",
                        -90,],
                        "6":[['FKOffsetCubeMain4_M', 'FKOffsetCubeMain13_M', 'FKOffsetCubeMain3_M', 'FKOffsetCubeMain14_M', 'FKOffsetCubeMain26_M', 'FKOffsetCubeMain20_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain19_M'],
                        "rx",
                        -90,],
                        "7":[['FKOffsetCubeMain14_M', 'FKOffsetCubeMain8_M', 'FKOffsetCubeMain22_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain10_M', 'FKOffsetCubeMain13_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain12_M'],
                        "ry",
                        90,],
                        "8":[['FKOffsetCubeMain12_M', 'FKOffsetCubeMain11_M', 'FKOffsetCubeMain16_M', 'FKOffsetCubeMain2_M', 'FKOffsetCubeMain17_M', 'FKOffsetCubeMain3_M', 'FKOffsetCubeMain4_M', 'FKOffsetCubeMain13_M',  'FKOffsetCubeMain14_M', 'FKOffsetCubeMain1_M', 'FKOffsetCubeMain5_M', 'FKOffsetCubeMain19_M', 'FKOffsetCubeMain25_M', 'FKOffsetCubeMain26_M', 'FKOffsetCubeMain21_M', 'FKOffsetCubeMain23_M', 'FKOffsetCubeMain20_M'],
                        "rx",
                        90,]
                        },
                     rot_pivot = "FKRoot_M",
                     driver_obj="FKSolver_M",
                     attr_auto_move="MoveOLL"
                     )
    


    # clean up
    mc.setAttr("FKRoot_M.legLock",0)
    Utility.lock_attribute("FKSolver_M",r=1,s=1,t=1,v=1,k=0,l=1)

def insert_rubik_variation_attr(dict_transform=[]):
    
    pass
def insert_rubik_move_attr(base_target_grps=['FKOffsetCube22_L', 'FKOffsetCube3_L', 'FKOffsetCube17_L', 'FKOffsetCube26_L', 'FKOffsetCube27_M', 'FKOffsetCube13_L', 'FKOffsetCube6_R', 'FKOffsetCube10_R', 'FKOffsetCube2_L', 'FKOffsetCube19_R', 'FKOffsetCube16_M', 'FKOffsetCube14_M', 'FKOffsetCube15_R', 'FKOffsetCube1_M', 'FKOffsetCube23_M', 'FKOffsetCube24_R', 'FKOffsetCube25_M', 'FKOffsetCube8_R', 'FKOffsetCube4_L', 'FKOffsetCube18_R', 'FKOffsetCube9_R', 'FKOffsetCube7_R', 'FKOffsetCube21_M', 'FKOffsetCube20_L', 'FKOffsetCube5_M', 'FKOffsetCube12_M', 'FKOffsetCube11_L'],
                     dict_move_axis={
                         "1":[['FKOffsetCube9_R', 'FKOffsetCube10_R', 'FKOffsetCube15_R', 'FKOffsetCube14_M', 'FKOffsetCube16_M', 'FKOffsetCube11_L', 'FKOffsetCube12_M', 'FKOffsetCube17_L', 'FKOffsetCube13_L'],
                        "rz",
                        -90,],
                        "2":[['FKOffsetCube3_L', 'FKOffsetCube2_L', 'FKOffsetCube22_L', 'FKOffsetCube4_L', 'FKOffsetCube20_L', 'FKOffsetCube14_M', 'FKOffsetCube13_L', 'FKOffsetCube10_R', 'FKOffsetCube26_L'],
                        "rx",
                        90,],
                        "3":[['FKOffsetCube17_L', 'FKOffsetCube9_R', 'FKOffsetCube10_R', 'FKOffsetCube16_M', 'FKOffsetCube2_L', 'FKOffsetCube11_L', 'FKOffsetCube22_L', 'FKOffsetCube15_R', 'FKOffsetCube12_M'],
                        "rz",
                        90,],
                        "4":[['FKOffsetCube4_L', 'FKOffsetCube3_L', 'FKOffsetCube2_L', 'FKOffsetCube17_L', 'FKOffsetCube20_L', 'FKOffsetCube26_L', 'FKOffsetCube10_R', 'FKOffsetCube16_M', 'FKOffsetCube1_M', 'FKOffsetCube23_M', 'FKOffsetCube25_M', 'FKOffsetCube27_M', 'FKOffsetCube11_L', 'FKOffsetCube12_M', 'FKOffsetCube13_L', 'FKOffsetCube14_M', 'FKOffsetCube5_M', 'FKOffsetCube21_M'],
                        "rx",
                        -90,],
                        "5":[['FKOffsetCube22_L', 'FKOffsetCube12_M', 'FKOffsetCube19_R', 'FKOffsetCube8_R', 'FKOffsetCube2_L', 'FKOffsetCube11_L', 'FKOffsetCube17_L', 'FKOffsetCube10_R', 'FKOffsetCube16_M'],
                        "ry",
                        -90,],
                        "6":[['FKOffsetCube4_L', 'FKOffsetCube13_L', 'FKOffsetCube3_L', 'FKOffsetCube14_M', 'FKOffsetCube26_L', 'FKOffsetCube20_L', 'FKOffsetCube10_R', 'FKOffsetCube2_L', 'FKOffsetCube19_R'],
                        "rx",
                        -90,],
                        "7":[['FKOffsetCube14_M', 'FKOffsetCube8_R', 'FKOffsetCube22_L', 'FKOffsetCube11_L', 'FKOffsetCube17_L', 'FKOffsetCube10_R', 'FKOffsetCube13_L', 'FKOffsetCube16_M', 'FKOffsetCube12_M'],
                        "ry",
                        90,],
                        "8":[['FKOffsetCube12_M', 'FKOffsetCube11_L', 'FKOffsetCube16_M', 'FKOffsetCube2_L', 'FKOffsetCube17_L', 'FKOffsetCube3_L', 'FKOffsetCube4_L', 'FKOffsetCube13_L', 'FKOffsetCube27_M', 'FKOffsetCube14_M', 'FKOffsetCube1_M', 'FKOffsetCube5_M', 'FKOffsetCube19_R', 'FKOffsetCube25_M', 'FKOffsetCube26_L', 'FKOffsetCube21_M', 'FKOffsetCube23_M', 'FKOffsetCube20_L'],
                        "rx",
                        90,]
                    
                        },
                     rot_pivot = "FKRoot_M",
                     driver_obj="FKRoot_M",
                     attr_auto_move="MoveOLL"
                     ):
    
    # create recent base grps
    dict_recent_offset_grps = {value:value for value in base_target_grps}
    dict_recent_frz_grps = {value:value for value in base_target_grps}
    list_attr_move = []

    # create auto move
    mc.addAttr(driver_obj,ln=attr_auto_move,k=1,min=0,max=len(dict_move_axis.keys()),dv=0)

    # iterate each dict move axis
    for key in dict_move_axis:
        grps,axis,value = dict_move_axis[key]
        attr_move_name = "Move{}".format(key)

        list_attr_move.append("{}.{}".format(driver_obj,attr_move_name) )
        
        # create attr for each move
        mc.addAttr(driver_obj,ln=attr_move_name,min=0,max=1,dv=0)

        for grp in grps:
            # create group offset
            grp_offset,grp_frz = insert_move_grp(dict_recent_offset_grps[grp],suffix = key,pivot=rot_pivot)
            dict_recent_offset_grps[grp] = grp_offset
            dict_recent_frz_grps[grp] = grp_frz

            # connect grp frz attribute
            create_connect_attr(driver_obj,driver_attr=attr_move_name,target_value=value,target_axis_attr=axis,target_grp=dict_recent_frz_grps[grp])
        

    # connect step connect
    for i,attr_move_each in enumerate(list_attr_move):
        node_setRange = mc.createNode("setRange")
        mc.connectAttr("{}.{}".format(driver_obj,attr_auto_move),"{}.valueX".format(node_setRange))
        
        mc.setAttr("{}.oldMinX".format(node_setRange),i)
        mc.setAttr("{}.oldMaxX".format(node_setRange),i+1)

        mc.setAttr("{}.minX".format(node_setRange),0)
        mc.setAttr("{}.maxX".format(node_setRange),1)

        mc.connectAttr("{}.outValueX".format(node_setRange),attr_move_each)
        
    

def step_connect(attr,list_attr):
    pass

def insert_move_grp(grp,suffix,pivot):
    grp_frz = Create.create_freeze_group([grp],typ=suffix)[0]
    grp_offset = Create.create_freeze_group([grp_frz],typ=suffix+"Off")[0]

    return grp_offset,grp_frz


def create_connect_attr(driver_obj,driver_attr,target_value,target_axis_attr,target_grp):

    Connection.connect_conversion(
        input1="{}.{}".format(driver_obj,driver_attr),
        conversion=target_value,
        output="{}.{}".format(target_grp,target_axis_attr)
    )