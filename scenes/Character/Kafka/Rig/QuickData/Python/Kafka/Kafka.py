import pymeltm.core as pm
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
    Selection,
)

import maya.cmds as mc
import maya.api.OpenMaya as om

System.reload_scripts()

from UkoreMaya.menu import General


def run():
    def build_skirt_rig():
        # -------------------------------
        # Set-up Skirt Rig
        # ================================

        list_config = [
            {
                "skirt_grp": "FKExtraSkirtA1_L",
                "leg": "L",
                "axis": "z",
                "invert_collision": True,
                "invert_direction": True,
                "intensity": 0.7,
            },
            {
                "skirt_grp": "FKExtraSkirtB1_L",
                "leg": "L",
                "axis": "y",
                "invert_collision": False,
                "invert_direction": True,
                "intensity": 0.8,
            },
            {
                "skirt_grp": "FKExtraSkirtC1_L",
                "leg": "L",
                "axis": "z",
                "invert_collision": False,
                "invert_direction": True,
                "intensity": 0.8,
            },
            {
                "skirt_grp": "FKExtraSkirtA1_R",
                "leg": "R",
                "axis": "z",
                "invert_collision": True,
                "invert_direction": True,
                "intensity": 0.7,
            },
            {
                "skirt_grp": "FKExtraSkirtB1_R",
                "leg": "R",
                "axis": "y",
                "invert_collision": True,
                "invert_direction": True,
                "intensity": 0.8,
            },
            {
                "skirt_grp": "FKExtraSkirtC1_R",
                "leg": "R",
                "axis": "z",
                "invert_collision": False,
                "invert_direction": True,
                "intensity": 0.8,
            },
        ]

        # world vector per leg, created only when a skirt on that side still
        # needs it (avoids piling up Hip_*_vecPointA locators on re-run)
        dict_leg_data = {}

        for dict_config in list_config:
            skirt_grp = dict_config["skirt_grp"]
            side = dict_config["leg"]
            axis = dict_config["axis"]
            invert_collision = dict_config["invert_collision"]
            invert_direction = dict_config["invert_direction"]
            intensity = dict_config["intensity"]

            attr_output = "{}.rz".format(skirt_grp)

            if Attribute.is_attr_connected(attr_output):
                continue

            if side not in dict_leg_data:
                dict_leg_data[side] = Create.create_world_vector(
                    "Hip_{}".format(side), "HipPart1_{}".format(side)
                )
            leg_data = dict_leg_data[side]

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


    def lock_facial_ctrl_attribute():
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


    def parent_extra_chin_dtl_ctrl():
        group_parent_name= "JawParent"

        if mc.objExists(group_parent_name):
            return
        
        list_group_chin = ['FKOffsetJawChinDtl_M', 'FKOffsetJawLineDtl_R', 'FKOffsetJawLineDtl_L']

        mc.group(em=True,n=group_parent_name,p="FKXHead_M")
        mc.matchTransform(group_parent_name,list_group_chin[0])
        
        mc.parentConstraint("Jaw_M",group_parent_name,mo=True)
        mc.parent(list_group_chin,group_parent_name)
        
        return

        
    def add_eyelashes_blendshape():
        # Add Eyelashes Blend Shape
        blend_shape_node = "eyelashes_bsn"

        if not mc.objExists(blend_shape_node):
            node_bsn = mc.blendShape(
                "BlinkUp_L",
                "BlinkUp_R",
                "BlinkLow_L",
                "BlinkLow_R",
                "Kafka_Eyelashes_Geo",
                at=True,
            )[0]

            mc.rename(node_bsn, blend_shape_node)
            node_bsn = blend_shape_node

            # connect attr
            Connection.connect_conversion(
                "upperLid_L.ty", conversion=-0.5, output=node_bsn + ".BlinkUp_L", clamp=1
            )
            Connection.connect_conversion(
                "lowerLid_L.ty", conversion=1, output=node_bsn + ".BlinkLow_L", clamp=1
            )

            Connection.connect_conversion(
                "upperLid_R.ty", conversion=-0.5, output=node_bsn + ".BlinkUp_R", clamp=1
            )
            Connection.connect_conversion(
                "lowerLid_R.ty", conversion=1, output=node_bsn + ".BlinkLow_R", clamp=1
            )

        return

    def eye_spec_aim():
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

    def simplifly_foot_ik_attributes():
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

    # simplifly_foot_ik_attributes()
    
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

        # Fingers
"Fingers_L",
        'FKOffsetMiddleFinger1_L', 'FKOffsetThumbFinger1_L', 'FKOffsetIndexFinger1_L', 'FKOffsetCup_L',
        # Facial
        "ctrlBoxOffset",
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
        "FKTailWorld_M",
        "CheekBone_R",
        "upperLip_L",
        "lowerLip_L",
        "middleFace_M",
        "upperFace_M",
        "lowerFace_M",
    ]

    list_hide = Selection.get_both_side(list_hide)

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
    list_unlock = Selection.get_both_side(list_unlock)
    mc.select(list_unlock)
    General.unlock_attribute()
    for obj in list_unlock:
        Utility.lock_attribute(obj, v=1)

    # Lock Hair Root Attribute # ---------
    Utility.lock_attribute("FKHairBase_M", t=1, r=1, s=1, v=1)
    Utility.lock_attribute("FKTailWorld_M", t=1, r=1, s=1, v=1)

    # ==============================
    # Connect Tail Global Attribute
    # ==============================

    if not Attribute.is_attr_exists("FKIKSplineTailB_M.Global"):
        mc.addAttr("FKIKSplineTailB_M", ln="Global", dv=10, k=1, min=0, max=10)

    mc.connectAttr("FKIKSplineTailB_M.Global", "FKTailWorld_M.Global", f=True)

    # ------------------------------------
    # Set Rotate Order for Arm Limb ,Leg
    # ------------------------------------
    list_yzx = ["FKShoulder_R", "FKElbow_R", "FKWrist_R"]
    list_yzx = Selection.get_both_side(list_yzx)
    Utility.set_rotate_order(list_yzx, "yzx")

    # eye spec vis : AimEye_M.<side>_Spec<i> drives joint scale and
    # controller shape visibility per spec (Hide = 0, Show = 1)
    for side in "LR":
        for i in range(1, 4):
            attr_name = "{}_Spec{}".format(side, i)
            vis_attr = "AimEye_M.{}".format(attr_name)

            if Attribute.is_attr_exists(vis_attr):
                continue

            mc.addAttr("AimEye_M", ln=attr_name, k=1, dv=1, at="enum", en="Hide:Show")

            # joint scale
            joint = "EyeSpec{}_{}".format(i, side)
            md_name = "{}_vis_md".format(joint)

            if mc.objExists(md_name):
                # built by the old single eyeSpecVis attr: just re-drive it
                node_md = md_name
            else:
                node_md = mc.createNode("multiplyDivide", n=md_name)

                # keep existing scale input (FK scale) and multiply it by vis,
                # per axis: split a compound source (e.g. ctrl.scale) into X/Y/Z
                src = mc.listConnections(joint + ".s", s=1, d=0, p=1)
                if src:
                    src_node, src_attr = src[0].split(".", 1)
                    src_children = mc.attributeQuery(
                        src_attr, node=src_node, listChildren=True
                    )
                    mc.disconnectAttr(src[0], joint + ".s")
                    for axis, child in zip("XYZ", src_children):
                        mc.connectAttr(
                            "{}.{}".format(src_node, child),
                            "{}.input1{}".format(node_md, axis),
                            f=True,
                        )
                else:
                    for axis in "XYZ":
                        attr_scale = "{}.s{}".format(joint, axis.lower())
                        src_axis = mc.listConnections(attr_scale, s=1, d=0, p=1)
                        if src_axis:
                            mc.connectAttr(
                                src_axis[0], "{}.input1{}".format(node_md, axis), f=True
                            )
                        else:
                            mc.setAttr(
                                "{}.input1{}".format(node_md, axis), mc.getAttr(attr_scale)
                            )

            # md output -> joint scale, per axis (drop any compound .s link first,
            # e.g. one made by the old eyeSpecVis setup)
            src_compound = mc.listConnections(joint + ".s", s=1, d=0, p=1)
            if src_compound:
                mc.disconnectAttr(src_compound[0], joint + ".s")

            for axis in "XYZ":
                mc.connectAttr(vis_attr, "{}.input2{}".format(node_md, axis), f=True)
                mc.connectAttr(
                    "{}.output{}".format(node_md, axis),
                    "{}.s{}".format(joint, axis.lower()),
                    f=True,
                )

            # controller shape vis
            control = "FKEyeSpec{}_{}".format(i, side)
            for shape in mc.listRelatives(control, s=True, f=True) or []:
                mc.setAttr(shape + ".v", l=False)
                mc.connectAttr(vis_attr, shape + ".v", f=True)

    # old single attr is replaced by the per-spec attrs above
    if Attribute.is_attr_exists("AimEye_M.eyeSpecVis"):
        mc.deleteAttr("AimEye_M.eyeSpecVis")

    # =================================
    # Teeth
    # =================================
    mc.setAttr("FKteethUpBase_MShape.v", False)
    mc.setAttr("FKteethLowBase_MShape.v", False)

    mc.parentConstraint("upperTeeth_M", "FKExtrateethUpBase_M", mo=True)
    mc.parentConstraint("lowerTeeth_M", "FKExtrateethLowBase_M", mo=True)

    # =================================
    # Hair Constraint
    # =================================
    # FKHairBackD1 + FKHairBackA1 drive position of FKExtraHairBackB1 (both sides)
    for side in ["_L", "_R"]:
        list_source = ["FKHairBackD1" + side, "FKHairBackA1" + side]
        target = "FKExtraHairBackB1" + side

        if mc.listRelatives(target, typ="pointConstraint"):
            continue

        mc.pointConstraint(list_source, target, mo=True)

    # =================================
    # Eye Crease Parent
    # =================================
    # new offset group above FKOffsetEyeCrease, upperLid2 point constraint it
    # (both sides)
    for side in ["_L", "_R"]:
        offset = "FKOffsetEyeCrease" + side
        grp_follow = "FKOffsetEyeCreaseFollow" + side

        # build follow group + constraint only once
        if not mc.objExists(grp_follow):
            offset_parent = mc.listRelatives(offset, p=True)
            grp_follow = mc.group(em=True, n=grp_follow, p=offset_parent[0])
            mc.matchTransform(grp_follow, offset)
            mc.parent(offset, grp_follow)

            mc.pointConstraint("upperLid2" + side, grp_follow, mo=True)

    # re-orient FKOffsetEyeCrease_L (separate from the follow group setup)
    mc.setAttr("FKOffsetEyeCrease_L.r", 0, 0, 180, typ="double3")
    mc.setAttr("FKOffsetEyeCrease_L.s", 1, 1, -1, typ="double3")

    # FKHairSide1 / FKHairSide2 : lock every attr, keep translate only (both sides)
    for side in ["_L", "_R"]:
        for ctrl in ["FKHairSide1" + side, "FKHairSide2" + side]:
            Utility.lock_attribute(ctrl, r=1, s=1, v=1)

            for attr in mc.listAttr(ctrl, ud=True, k=True) or []:
                mc.setAttr("{}.{}".format(ctrl, attr), l=1, k=0)

    # =================================
    # Geo Display Mode
    # =================================
    # Main.DisplayMode drives drawing override of geo grp (default : Reference)
    if not Attribute.is_attr_exists("Main.DisplayMode"):
        mc.addAttr(
            "Main", ln="DisplayMode", at="enum", en="Normal:Template:Reference", dv=2, k=1
        )

    mc.setAttr("geo.overrideEnabled", True)
    mc.connectAttr("Main.DisplayMode", "geo.overrideDisplayType", f=True)

    # turn off and lock smooth mesh preview of every mesh under geo
    for shape in mc.listRelatives("geo", ad=True, typ="mesh", f=True) or []:
        mc.setAttr(shape + ".displaySmoothMesh", l=False)
        mc.setAttr(shape + ".displaySmoothMesh", 0)
        mc.setAttr(shape + ".displaySmoothMesh", l=True)

    # =================================
    # Attach Zip Slider to Coat
    # =================================
    # closest point on coat geo -> skin weights there -> multi-target
    # parentConstraint (maintain offset) using those weights
    def attach_by_skin_weight(target, geo, exclude_keyword=None, min_weight=0.01):
        if mc.listRelatives(target, typ="parentConstraint"):
            return

        shape = mc.listRelatives(geo, s=True, ni=True, typ="mesh", f=True)[0]
        skin_cluster = mc.ls(mc.listHistory(shape, pdo=True) or [], type="skinCluster")[0]

        sel = om.MSelectionList()
        sel.add(shape)
        fn_mesh = om.MFnMesh(sel.getDagPath(0))

        pos = om.MPoint(mc.xform(target, q=True, ws=True, t=True))
        closest_point, face_id = fn_mesh.getClosestPoint(pos, om.MSpace.kWorld)

        # blend weights of the face vertices by inverse distance to closest point
        list_vtx = fn_mesh.getPolygonVertices(face_id)
        list_factor = [
            1.0
            / max(closest_point.distanceTo(fn_mesh.getPoint(v, om.MSpace.kWorld)), 1e-6)
            for v in list_vtx
        ]
        total_factor = sum(list_factor)

        dict_weight = {}
        for vtx_id, factor in zip(list_vtx, list_factor):
            vtx = "{}.vtx[{}]".format(shape, vtx_id)
            influences = mc.skinPercent(skin_cluster, vtx, q=True, t=None, ib=1e-4)
            values = mc.skinPercent(skin_cluster, vtx, q=True, v=True, ib=1e-4)

            for inf, value in zip(influences, values):
                dict_weight[inf] = (
                    dict_weight.get(inf, 0) + value * factor / total_factor
                )

        # drop self influence (avoid cycle) and tiny weights, then normalize
        dict_weight = {
            inf: w
            for inf, w in dict_weight.items()
            if w >= min_weight and not (exclude_keyword and exclude_keyword in inf)
        }
        total_weight = sum(dict_weight.values())

        list_influence = list(dict_weight)
        constraint = mc.parentConstraint(list_influence, target, mo=True)[0]
        list_alias = mc.parentConstraint(constraint, q=True, wal=True)

        for inf, alias in zip(list_influence, list_alias):
            mc.setAttr(
                "{}.{}".format(constraint, alias), dict_weight[inf] / total_weight
            )

    list_coat_geo = [
        geo
        for geo in mc.ls("Kafka_Coat_Geo", "*:Kafka_Coat_Geo", type="transform")
        if mc.ls(mc.listHistory(geo, pdo=True) or [], type="skinCluster")
    ]

    for side in ["_L", "_R"]:
        attach_by_skin_weight(
            target="FKExtraZipSlider" + side,
            geo=list_coat_geo[0],
            exclude_keyword="ZipSlider",
        )

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

    # Body
    build_skirt_rig()

    # Facial
    add_eyelashes_blendshape()
    eye_spec_aim()
    parent_extra_chin_dtl_ctrl()
    lock_facial_ctrl_attribute()

    return  
