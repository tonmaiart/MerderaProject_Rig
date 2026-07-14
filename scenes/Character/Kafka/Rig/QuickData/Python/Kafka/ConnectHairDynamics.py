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
from tmlib.menu import General

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om
import maya.mel as mel

System.reload_scripts()


@Misc.undoable_jump_point
def run():
    # if cmds.objExists("Dynamics"):
    #     mc.delete("Dynamics")

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
    Utility.add_attribute_divider(ctrl_main, name="Blend Dynamics")
    for hair_data in dict_hair_data:
        name = hair_data["name"]

        mc.addAttr(ctrl_main, ln="blend{}".format(name), k=1, dv=0, min=0, max=1)

    Utility.add_attribute_divider(ctrl_main, name="Base Goal")
    for hair_data in dict_hair_data:
        name = hair_data["name"]
        value = hair_data["base_goal"]
        mc.addAttr(ctrl_main, ln="baseGoal{}".format(name), k=1, dv=value, min=0, max=1)

    Utility.add_attribute_divider(ctrl_main, name="Tip Goal")
    for hair_data in dict_hair_data:
        name = hair_data["name"]
        value = hair_data["tip_goal"]
        mc.addAttr(ctrl_main, ln="tipGoal{}".format(name), k=1, dv=value, min=0, max=1)

    # create dynamic and connect attribute
    for hair_data in dict_hair_data:
        name = hair_data["name"]
        list_hair_root = hair_data["hair_root"]

        for ctrl in list_hair_root:
            # print("Adding Dynamic for : ", ctrl)

            mc.setAttr(f"DynParticle{ctrl}Shape.startFrame", -50)

            # connect attribute
            mc.connectAttr(f"{ctrl_main}.blend{name}", f"{ctrl}.blend", f=1)
            mc.connectAttr(f"{ctrl_main}.tipGoal{name}", f"{ctrl}.tipGoal", f=1)
            mc.connectAttr(f"{ctrl_main}.baseGoal{name}", f"{ctrl}.baseGoal", f=1)

    # parent dynamic group
    mc.parent("Dynamics", "Group")
    mc.setAttr("Dynamics.v", False)

    Utility.lock_attribute(ctrl_main, r=1, t=1, s=1, v=1, l=1, k=0)
    return
