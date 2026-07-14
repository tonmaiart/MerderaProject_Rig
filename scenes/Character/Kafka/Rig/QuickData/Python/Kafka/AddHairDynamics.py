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
    Attribute
)

from UkoreMaya.menu import General
from tmlib.ui import uitools

# from tmlib.menu import General

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om
import maya.mel as mel

System.reload_scripts()


@uitools.undoable
def run():
    if cmds.objExists("Dynamics"):
        mc.delete("Dynamics")

    dict_hair_data = [
        {
            "name": "HairTop",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKHairFrontA1_M",
            ],
        },
        {
            "name": "HairFront",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKHairFrontB1_M",
                "FKHairFrontC1_R",
                "FKHairFrontD1_R",
                "FKHairFrontE1_R",
                "FKHairFrontC1_L",
                "FKHairFrontD1_L",
                "FKHairFrontE1_L",
            ],
        },
        {
            "name": "HairScale",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKHairScaleC1_L",
                "FKHairScaleB1_R",
                "FKHairScaleA1_R",
            ],
        },
        {
            "name": "HairMain",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKHair1_M",
            ],
        },
        {
            "name": "HairBackDetail",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKHairBackF1_R",
                "FKHairBackD1_R",
                "FKHairBackB1_R",
                "FKHairBackA1_R",
                "FKHairBackMid1_M",
                "FKHairBackA1_L",
                "FKHairBackB1_L",
                "FKHairBackE1_L",
                "FKHairBackF1_L",
                "FKHairBackD1_L",
                "FKHairBackC1_L",
                "FKHairBackC1_R",
                "FKHairBackE1_R",
            ],
        },
        {
            "name": "ChestCloth",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKTopClothFrontA1_R",
                "FKTopClothFrontB1_R",
                "FKTopClothFrontB1_L",
                "FKTopClothFrontA1_L",
                "FKTopClothBackA1_L",
                "FKTopClothBackB1_L",
                "FKTopClothBackB1_R",
                "FKTopClothBackA1_R",
            ],
        },
        {
            "name": "Skirt",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKSkirtB1_R",
                "FKSkirtA1_R",
                "FKSkirtFront1_M",
                "FKSkirtA1_L",
                "FKSkirtB1_L",
                "FKSkirtC1_L",
                "FKSkirtBack1_M",
                "FKSkirtC1_R",
            ],
        },
        {
            "name": "Zipper",
            "tip_goal": 0.6,
            "base_goal": 0.85,
            "hair_root": [
                "FKZipHandle_L",
                "FKZipHandle_R",
            ],
        },
    ]

    # connect attr
    ctrl_main = "FKDynamicControl_M"

    # =================
    # create attribute
    # =================

    # create dynamic and connect attribute
    Utility.add_attribute_divider(ctrl_main, name="Pre Roll")

    if Attribute.is_attr_exists("{}.DynamicFrameStart".format(ctrl_main)):
        cmds.deleteAttr("{}.DynamicFrameStart".format(ctrl_main))
    mc.addAttr(ctrl_main, ln="DynamicFrameStart", k=1, dv=0)

    Utility.add_attribute_divider(ctrl_main, name="Blend Dynamics")
    for hair_data in dict_hair_data:
        name = hair_data["name"]

        if Attribute.is_attr_exists("{}.blend{}".format(ctrl_main,name)):
            cmds.deleteAttr("{}.blend{}".format(ctrl_main,name))

        mc.addAttr(ctrl_main, ln="blend{}".format(name), k=1, dv=0, min=0, max=1)

    Utility.add_attribute_divider(ctrl_main, name="Base Goal")
    for hair_data in dict_hair_data:
        name = hair_data["name"]
        value = hair_data["base_goal"]

        if Attribute.is_attr_exists("{}.baseGoal{}".format(ctrl_main,name)):
            cmds.deleteAttr("{}.baseGoal{}".format(ctrl_main,name))

        mc.addAttr(ctrl_main, ln="baseGoal{}".format(name), k=1, dv=value, min=0, max=1)

    Utility.add_attribute_divider(ctrl_main, name="Tip Goal")
    for hair_data in dict_hair_data:
        name = hair_data["name"]
        value = hair_data["tip_goal"]

        if Attribute.is_attr_exists("{}.tipGoal{}".format(ctrl_main,name)):
            cmds.deleteAttr("{}.tipGoal{}".format(ctrl_main,name))
        
        mc.addAttr(ctrl_main, ln="tipGoal{}".format(name), k=1, dv=value, min=0, max=1)

    # =======================================
    # create dynamic and connect attribute
    # =======================================

    for hair_data in dict_hair_data:
        name = hair_data["name"]
        list_hair_root = hair_data["hair_root"]

        for ctrl in list_hair_root:
            print("Adding Dynamic for : ", ctrl)

            # create hair dynamic
            mc.select(cl=1)
            mc.select(ctrl)

            try:
                mel.eval("asDynRemove asSelectorface")
            except:
                pass

            mc.select(ctrl)
            General.sort_by_type("anim_curve")
            mel.eval("asDynAdd asSelectorface")
            mc.connectAttr(
                ctrl_main + ".DynamicFrameStart", f"DynParticle{ctrl}Shape.startFrame"
            )

            # connect attribute
            mc.connectAttr(f"{ctrl_main}.blend{name}", f"{ctrl}.blend", f=1)
            mc.connectAttr(f"{ctrl_main}.tipGoal{name}", f"{ctrl}.tipGoal", f=1)
            mc.connectAttr(f"{ctrl_main}.baseGoal{name}", f"{ctrl}.baseGoal", f=1)

            # lock and hide attribute
            mc.setAttr(f"{ctrl}.blend", l=0,k=0,cb=0)
            mc.setAttr(f"{ctrl}.tipGoal", l=0,k=0,cb=0)
            mc.setAttr(f"{ctrl}.baseGoal", l=0,k=0,cb=0)
            mc.setAttr(f"{ctrl}.conserve", l=0,k=0,cb=0)


    # =====================
    # parent dynamic group / Cleanup
    # =====================
    if cmds.objExists("Dynamics"):
        mc.parent("Dynamics", "Group")
        mc.setAttr("Dynamics.v", False)

    Utility.lock_attribute(ctrl_main, r=1, t=1, s=1, v=1, l=1, k=0)
    
    # # =================
    # # fix translate
    # # =================
    # for joint in ["Rope1_R","Rope1_L","HairY1_R"]:
    #     for each_node in cmds.ls("parBlendTdyn{}*".format(joint)):
    #         Attribute.break_connection("{}.weight".format(each_node))
    #         cmds.setAttr("{}.weight".format(each_node),False)
    return
