
from tmlib.core import Selection, Attribute,BlendShape,Connection,Create,Misc,Transform,Utility,SkinWeight,File,Controller,QuickData,System,Geometry,Visualized

import maya.cmds as cmds
import maya.api.OpenMaya as om
import maya.mel as mel

System.reload_scripts()

def run():
    list_subtract_all = []

    # Kelly
    list_mesh = BlendShape.create_split_shape(

        split_weight_mesh = "Kelly_Fat_weight_geo",
        target_mesh = "Kelly_Fat_ball_ref_geo",
        base_mesh = "Kelly_Fat_body_ref_geo",
        use_custom_influences = True,
        custom_influences = ['jnt_headPush', 'jnt_legPush_L', 'jnt_armPush_L', 'jnt_legPush_R', 'jnt_armPush_R'],
    )

    list_subtract = []
    for mesh in list_mesh:
        result = BlendShape.create_operated_corrective_shape(
            object_A = "Kelly_Fat_body_ref_geo",
            object_B = mesh,
            operation="sub",
        )
        list_subtract.append(result)

    # BlendShape.add_or_create_blend_shape_node(
    #     list_target_mesh = list_subtract,
    #     input_mesh = "Body_Test_Bsn",
    # )

    cmds.parent(list_subtract, "SubtractResult")
    cmds.delete(list_mesh)
    list_subtract_all += list_subtract

    # Bubble
    list_mesh = BlendShape.create_split_shape(

        split_weight_mesh = "Bubbles_weight_geo",
        target_mesh = "Bubbles_ball_ref_geo",
        base_mesh = "Bubbles_body_ref_geo",
        use_custom_influences = True,
        custom_influences = ['jnt_headPush', 'jnt_legPush_L', 'jnt_armPush_L', 'jnt_legPush_R', 'jnt_armPush_R'],
    )

    list_subtract = []
    for mesh in list_mesh:
        result = BlendShape.create_operated_corrective_shape(
            object_A = "Bubbles_body_ref_geo",
            object_B = mesh,
            operation="sub",
        )
        list_subtract.append(result)

    # BlendShape.add_or_create_blend_shape_node(
    #     list_target_mesh = list_subtract,
    #     input_mesh = "Body_Test_Bsn",
    # )

    cmds.parent(list_subtract, "SubtractResult")
    cmds.delete(list_mesh)
    list_subtract_all += list_subtract


    # final morph
    morph_dict =[["Kelly_Fat_body_ref_geo1","Body_HeadPush_geo"],
    ["Kelly_Fat_body_ref_geo2","Body_LeftLegPush_geo"],
    ["Kelly_Fat_body_ref_geo3","Body_LeftArmPush_geo"],
    ["Kelly_Fat_body_ref_geo4","Body_RightLegPush_geo"],
    ["Kelly_Fat_body_ref_geo5","Body_RightArmPush_geo"],
    ["Bubbles_body_ref_geo1","Bubbles_HeadPush_geo"],
    ["Bubbles_body_ref_geo2","Bubbles_LeftLegPush_geo"],
    ["Bubbles_body_ref_geo3","Bubbles_LeftArmPush_geo"],
    ["Bubbles_body_ref_geo4","Bubbles_RightLegPush_geo"],
    ["Bubbles_body_ref_geo5","Bubbles_RightArmPush_geo"]]

    for each_list in morph_dict:
        source = each_list[0]
        target = each_list[1]
        Utility.morph_shape(
            source = source,
            list_target= [target],
        )

    cmds.delete(list_subtract_all)
    return
        