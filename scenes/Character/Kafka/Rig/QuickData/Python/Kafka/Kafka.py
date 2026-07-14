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
    Attribute,
)

import maya.cmds as mc
import maya.api.OpenMaya as om

System.reload_scripts()

from tmlib.menu import General


@Misc.undoable_jump_point
def run():
    # =====================
    # Add Foot Ik Attribute
    # =====================

    try:
        mc.addAttr("IKLeg_L", ln="toeRoll", min=0, max=90, k=1)
        mc.connectAttr("IKLeg_L.toeRoll", "RollToesEnd_L.rx")

        mc.addAttr("IKLeg_L", ln="toeSpin", min=-90, max=90, k=1)
        mc.connectAttr("IKLeg_L.toeSpin", "RollToesEnd_L.ry")

        mc.addAttr("IKLeg_L", ln="heelRoll", min=-90, max=0, k=1)
        mc.connectAttr("IKLeg_L.heelRoll", "RollHeel_L.rx")

        mc.addAttr("IKLeg_L", ln="heelSpin", min=-90, max=90, k=1)
        mc.connectAttr("IKLeg_L.heelSpin", "RollHeel_L.ry")

        mc.addAttr("IKLeg_L", ln="toeX", k=1)
        mc.addAttr("IKLeg_L", ln="toeY", k=1)
        mc.addAttr("IKLeg_L", ln="toeZ", k=1)

        mc.connectAttr("IKLeg_L.toeX", "IKToes_L.rx")
        mc.connectAttr("IKLeg_L.toeY", "IKToes_L.ry")
        mc.connectAttr("IKLeg_L.toeZ", "IKToes_L.rz")

        #

        mc.addAttr("IKLeg_R", ln="toeRoll", min=0, max=90, k=1)
        mc.connectAttr("IKLeg_R.toeRoll", "RollToesEnd_R.rx")

        mc.addAttr("IKLeg_R", ln="toeSpin", min=-90, max=90, k=1)
        mc.connectAttr("IKLeg_R.toeSpin", "RollToesEnd_R.ry")

        mc.addAttr("IKLeg_R", ln="heelRoll", min=-90, max=0, k=1)
        mc.connectAttr("IKLeg_R.heelRoll", "RollHeel_R.rx")

        mc.addAttr("IKLeg_R", ln="heelSpin", min=-90, max=90, k=1)
        mc.connectAttr("IKLeg_R.heelSpin", "RollHeel_R.ry")

        mc.addAttr("IKLeg_R", ln="toeX", k=1)
        mc.addAttr("IKLeg_R", ln="toeY", k=1)
        mc.addAttr("IKLeg_R", ln="toeZ", k=1)

        mc.connectAttr("IKLeg_R.toeX", "IKToes_R.rx")
        mc.connectAttr("IKLeg_R.toeY", "IKToes_R.ry")
        mc.connectAttr("IKLeg_R.toeZ", "IKToes_R.rz")

    except:
        pass

    # spine ik
    mc.setAttr("IKSpine3_M.v", 0)
    Utility.lock_attribute("IKSpine3_M", r=1, s=1, t=1)

    mc.setAttr("FKIKSpine_M.FKIKBlend", 10)
    mc.setAttr("IKSpine2_M.followEnd", 10)

    # set pole leg follow ik
    mc.setAttr("PoleLeg_L.follow", 0)
    mc.setAttr("PoleLeg_R.follow", 0)

    # set control spine detail
    mc.setAttr("FKRoot_MShape.v", False)

    # Constraint Cloth Dtl Controller
    dict_constraint = {
        "Wrist_L": "FKOffsetClothDtlAMain_L",
        "Wrist_L": "FKOffsetClothDtlBMain_L",
        "ElbowPart4_L": "FKOffsetClothDtlCMain_L",
        "ElbowPart1_L": "FKOffsetClothDtlDMain_L",
        "ShoulderPart4_L": "FKOffsetClothDtlEMain_L",
    }

    for source, target in dict_constraint.items():
        for side in ["_L", "_R"]:
            source = source.replace("_L", side)
            target = target.replace("_L", side)

            mc.parentConstraint(source, target, mo=True)

    # hide and lock list
    list_hide = [
        "EyeRegion_R",
        "ctrlEye_R",
        "ctrlNose_R",
        "ctrlCheek_L",
        "NoseRegion_M",
        "ctrlBrow_L",
        "upperTeeth_M",
        "ctrlPhonemes_M",
        "EyeBrowRegion_L",
        "ctrlNose_L",
        "ctrlEye_L",
        "ctrlMouthCorner_R",
        "ctrlCheek_R",
        "ctrlMouthCorner_L",
        "LipRegion_M",
        "EyeBrowRegion_R",
        "ctrlBox",
        "Eye_L",
        "ctrlEmotions_M",
        "lowerTeeth_M",
        "ctrlBox2",
        "ctrlBrow_R",
        "ctrlMouth_M",
        "ctrlLips_M",
        "EyeRegion_L",
        "upperTeeth_M",
        "lowerTeeth_M",
        "LipRegion_M",
        "EyeRegion_R",
        "EyeBrowRegion_R",
        "EyeBrowRegion_L",
        "EyeRegion_L",
        "Eye_L",
        "ctrlEmotions_M",
        "NoseCorner_L",
        "Nostril_L",
        "NoseSide_L",
        "Nose_M",
        "NoseUnder_M",
        "SmileBulge_L",
        "SmilePull_L",
        "ChinCrease_M",
        "FrownBulge_L",
        "lowerLidOuter_L",
        "NoseCrease_M",
        "BendShoulder0_L",
        "IKToes_L",
        "RollToesEnd_L",
        "RollHeel_L",
        "RollToes_L",
        "BendHip0_L",
        "BendNeck0_M",
        "FKHairBase_M",
        "FKTailWorld_M",
        "CheekBone_R",
        "upperLip_L",
        "lowerLip_L",
    ]

    list_hide = Utility.get_both_side(list_hide)

    for obj in list_hide:
        Utility.lock_attribute(obj, t=1, r=1, s=1)
        shapes = mc.listRelatives(obj, s=True, f=True) or []

        if not shapes:
            shapes = [obj]

        for s in shapes:
            try:
                mc.setAttr(s + ".v", 0)
            except:
                pass

    # list unlock
    list_unlock = [
        "LipRegion_M",
        "EyeRegion_L",
        "EyeBrowRegion_L",
        "lowerTeeth_M",
        "upperTeeth_M",
    ]
    list_unlock = Utility.get_both_side(list_unlock)
    mc.select(list_unlock)
    General.unlock_attribute()
    for obj in list_unlock:
        Utility.lock_attribute(obj, v=1)

    # Lock Hair Root Attribute # ---------
    Utility.lock_attribute("FKHairBase_M", t=1, r=1, s=1, v=1)
    Utility.lock_attribute("FKTailWorld_M", t=1, r=1, s=1, v=1)

    # ==============================
    # Connect Hair Global Attribute
    # ==============================

    if not Attribute.is_attr_exists("FKIKSpline_M.Global"):
        mc.addAttr("FKIKSpline_M", ln="Global", dv=10, k=1, min=0, max=10)

    mc.connectAttr("FKIKSpline_M.Global", "FKHairBase_M.Global", f=True)

    # ==============================
    # Connect Tail Global Attribute
    # ==============================

    if not Attribute.is_attr_exists("FKIKSplineTailB_M.Global"):
        mc.addAttr("FKIKSplineTailB_M", ln="Global", dv=10, k=1, min=0, max=10)

    mc.connectAttr("FKIKSplineTailB_M.Global", "FKTailWorld_M.Global", f=True)

    # ==============================
    # Connect Gum Top
    # ==============================

    if not Attribute.is_attr_exists("upperTeeth_M.GumVis"):
        mc.addAttr("upperTeeth_M", ln="GumVis", k=1, dv=1, at="enum", en="Hide:Show")

    mc.connectAttr(
        "upperTeeth_M.GumVis", "Kafka_Model_Proxy:Kafka_GumTop_Geo.v", f=True
    )

    # ==============================
    # Connect Gum Low
    # ==============================

    if not Attribute.is_attr_exists("lowerTeeth_M.GumVis"):
        mc.addAttr("lowerTeeth_M", ln="GumVis", k=1, dv=1, at="enum", en="Hide:Show")

    mc.connectAttr(
        "lowerTeeth_M.GumVis", "Kafka_Model_Proxy:Kafka_GumBottom_Geo.v", f=True
    )

    # ------------------------------------
    # Set Rotate Order for Arm Limb ,Leg
    # ------------------------------------
    list_yzx = ["FKShoulder_R", "FKElbow_R", "FKWrist_R"]
    list_yzx = Utility.get_both_side(list_yzx)
    Utility.set_rotate_order(list_yzx, "yzx")

    # -------------------------------
    # Set-up Skirt Rig
    # ================================

    # create world vector
    leg_l_data = Create.create_world_vector("Hip_L", "HipPart1_L")
    leg_r_data = Create.create_world_vector("Hip_R", "HipPart1_R")

    list_config = [
        {
            "skirt_grp": "FKExtraSkirtA1_L",
            "leg_data": leg_l_data,
            "axis": "z",
            "invert_collision": True,
            "invert_direction": True,
            "intensity": 0.7,
        },
        {
            "skirt_grp": "FKExtraSkirtB1_L",
            "leg_data": leg_l_data,
            "axis": "y",
            "invert_collision": False,
            "invert_direction": True,
            "intensity": 0.8,
        },
        {
            "skirt_grp": "FKExtraSkirtC1_L",
            "leg_data": leg_l_data,
            "axis": "z",
            "invert_collision": False,
            "invert_direction": True,
            "intensity": 0.8,
        },
        {
            "skirt_grp": "FKExtraSkirtA1_R",
            "leg_data": leg_r_data,
            "axis": "z",
            "invert_collision": True,
            "invert_direction": True,
            "intensity": 0.7,
        },
        {
            "skirt_grp": "FKExtraSkirtB1_R",
            "leg_data": leg_r_data,
            "axis": "y",
            "invert_collision": True,
            "invert_direction": True,
            "intensity": 0.8,
        },
        {
            "skirt_grp": "FKExtraSkirtC1_R",
            "leg_data": leg_r_data,
            "axis": "z",
            "invert_collision": False,
            "invert_direction": True,
            "intensity": 0.8,
        },
    ]

    for dict_config in list_config:
        skirt_grp = dict_config["skirt_grp"]
        leg_data = dict_config["leg_data"]
        axis = dict_config["axis"]
        invert_collision = dict_config["invert_collision"]
        invert_direction = dict_config["invert_direction"]
        intensity = dict_config["intensity"]

        attr_output = "{}.rz".format(skirt_grp)

        if Attribute.is_attr_connected(attr_output):
            continue

        Create.create_skirt_auto_rot_simple(
            leg_data=leg_data,
            skirtA="Root_M",
            attr_output=attr_output,
            axis=axis,
            invert_collision=invert_collision,
            invert_direction=invert_direction,
            intensity=intensity,
        )

    mc.parentConstraint(
        "FKExtraSkirtA1_R", "FKExtraSkirtA1_L", "FKExtraSkirtFront1_M", mo=True
    )
    mc.parentConstraint(
        "FKExtraSkirtC1_R", "FKExtraSkirtC1_L", "FKExtraSkirtBack1_M", mo=True
    )

    # connect arm vis show/hide
    if not Attribute.is_attr_exists("FKIKArm_L.armVis"):
        mc.addAttr("FKIKArm_L", ln="armVis", k=1, dv=1, at="enum", en="Hide:Show")
        mc.connectAttr(
            "FKIKArm_L.armVis", "Kafka_Model_Proxy:Kafka_L_Arm_Geo.v", f=True
        )
    if not Attribute.is_attr_exists("FKIKArm_R.armVis"):
        mc.addAttr("FKIKArm_R", ln="armVis", k=1, dv=1, at="enum", en="Hide:Show")
        mc.connectAttr(
            "FKIKArm_R.armVis", "Kafka_Model_Proxy:Kafka_R_Arm_Geo.v", f=True
        )

    # connect specular geo vis
    dict_connect = {
        "FKEyeSpec1_L": "Kafka_Model_Proxy:Kafka_L_EyeSpec1_Geo",
        "FKEyeSpec2_L": "Kafka_Model_Proxy:Kafka_L_EyeSpec2_Geo",
        "FKEyeSpec3_L": "Kafka_Model_Proxy:Kafka_L_EyeSpec3_Geo",
        "FKEyeSpec1_R": "Kafka_Model_Proxy:Kafka_R_EyeSpec1_Geo",
        "FKEyeSpec2_R": "Kafka_Model_Proxy:Kafka_R_EyeSpec2_Geo",
        "FKEyeSpec3_R": "Kafka_Model_Proxy:Kafka_R_EyeSpec3_Geo",
    }
    for ctrl, geo in dict_connect.items():
        if not Attribute.is_attr_exists("{}.geoVis".format(ctrl)):
            mc.addAttr(ctrl, ln="geoVis", k=1, dv=1, at="enum", en="Hide:Show")
            mc.connectAttr("{}.geoVis".format(ctrl), "{}.v".format(geo), f=True)

    # =================================
    # Teeth
    # =================================
    mc.setAttr("FKteethUpBase_MShape.v", False)
    mc.setAttr("FKteethLowBase_MShape.v", False)

    mc.parentConstraint("upperTeeth_M", "FKExtrateethUpBase_M", mo=True)
    mc.parentConstraint("lowerTeeth_M", "FKExtrateethLowBase_M", mo=True)

    # ===================
    # Scalable Cloth Arm
    # ===================

    for side in ["_L", "_R"]:
        for letter in "ABCDE":
            driver = "FKClothDtl{}Main{}".format(letter, side)
            mc.setAttr(driver + ".sx", l=1, k=0)

            dict_data = {
                "A": [
                    ("FKExtraClothDtlA1{}".format(side), "tz", 1, "sz"),
                    ("FKExtraClothDtlA2{}".format(side), "ty", 1, "sy"),
                    ("FKExtraClothDtlA3{}".format(side), "tz", -1, "sz"),
                    ("FKExtraClothDtlA4{}".format(side), "ty", -1, "sy"),
                ],
                "B": [
                    ("FKExtraClothDtlB1{}".format(side), "tz", 1, "sz"),
                    ("FKExtraClothDtlB2{}".format(side), "ty", 1, "sy"),
                    ("FKExtraClothDtlB3{}".format(side), "tz", -1, "sz"),
                    ("FKExtraClothDtlB4{}".format(side), "ty", -1, "sy"),
                ],
                "C": [
                    ("FKExtraClothDtlC1{}".format(side), "ty", 1, "sy"),
                    ("FKExtraClothDtlC2{}".format(side), "tz", 1, "sz"),
                    ("FKExtraClothDtlC3{}".format(side), "ty", -1, "sy"),
                    ("FKExtraClothDtlC4{}".format(side), "tz", -1, "sz"),
                ],
                "D": [
                    ("FKExtraClothDtlD1{}".format(side), "ty", 1, "sy"),
                    ("FKExtraClothDtlD2{}".format(side), "tz", 1, "sz"),
                    ("FKExtraClothDtlD3{}".format(side), "ty", -1, "sy"),
                    ("FKExtraClothDtlD4{}".format(side), "tz", -1, "sz"),
                ],
                "E": [
                    ("FKExtraClothDtlE1{}".format(side), "ty", 1, "sy"),
                    ("FKExtraClothDtlE2{}".format(side), "tz", 1, "sz"),
                    ("FKExtraClothDtlE3{}".format(side), "ty", -1, "sy"),
                    ("FKExtraClothDtlE4{}".format(side), "tz", -1, "sz"),
                ],
            }

            ctrl_guide = dict_data[letter]

            for driven_data in ctrl_guide:
                grp_target, attr, conversion_value, driver_attr = driven_data

                if side == "_L":
                    conversion_value *= -1

                node_adl = mc.createNode("addDoubleLinear")
                mc.connectAttr(
                    "{}.{}".format(driver, driver_attr), node_adl + ".input1"
                )
                mc.setAttr(node_adl + ".input2", -1)

                Connection.connect_conversion(
                    input1="{}.output".format(node_adl),
                    conversion=conversion_value * 10,
                    output="{}.{}".format(grp_target, attr),
                )

    # ================ Fix Eye Rig =================== #

    # aim global eye ctrl
    mc.setAttr("AimEye_M.rx", l=0, k=1)
    mc.setAttr("AimEye_M.ry", l=0, k=1)
    mc.setAttr("AimEye_M.rz", l=0, k=1)

    # Utility.lock_attribute("AimEye_M", r=0)

    mc.aimConstraint(
        "FKHead_M",
        "AimEye_M",
        maintainOffset=True,
        weight=1.0,
        aimVector=(0, 0, -1),
        upVector=(0, 1, 0),
        worldUpType="objectrotation",
        worldUpVector=(1, 0, 0),
        worldUpObject="FKHead_M",
        # skip='y'
    )
    Utility.lock_attribute("AimEye_M", r=1)

    # re offset aim constraint of both eye
    for side in ["L", "R"]:
        locator_aim_name = "EyeAimLoc_{}".format(side)

        constraint_name = "EyeAim_{}_aimConstraint1".format(side)

        if mc.objExists(constraint_name):
            mc.delete(constraint_name)

        if not mc.objExists(locator_aim_name):
            locator_aim = mc.spaceLocator()[0]
            mc.rename(locator_aim, locator_aim_name)
            locator_aim = locator_aim_name

            mc.matchTransform(locator_aim, "EyeAim_{}".format(side), pos=True)

            world_z_pos_aim_ctrl = mc.xform("AimEye_{}".format(side), q=1, t=1, ws=1)
            mc.setAttr(locator_aim + ".tz", world_z_pos_aim_ctrl[2])
            # mc.xform(locator_aim,ws=1,a=1,t=(0,0,world_z_pos_aim_ctrl[2]))

            mc.parent(locator_aim, "AimEye_{}".format(side))
            mc.setAttr(locator_aim + ".v", False)

        mc.aimConstraint(
            locator_aim_name,
            "EyeAim_{}".format(side),
            maintainOffset=False,
            weight=1.0,
            aimVector=(0, 0, 1),
            upVector=(0, 1, 0),
            worldUpType="objectrotation",
            worldUpVector=(0, 1, 0),
            worldUpObject="AimEyeUpVec",
        )

    return
