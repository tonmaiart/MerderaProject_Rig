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
    Deformer,
)

import maya.cmds as mc
import maya.api.OpenMaya as om

System.reload_scripts()


@Misc.undoable_jump_point
def run():

    # Main Configuration #
    finalize_vis = True

    # ========================
    # Eye Rigging Deform Setup
    # ========================
    grp_main_geo = "Jacob_Model_Proxy:Jacob_Eyeball_Grp"
    grp_custom_rig = "CustomRig_Grp"
    grp_starter_rig = "Starter_Grp"
    for side in ["L", "R"]:
        eyeframe_mesh = "Eyeframe_{}_Mesh".format(side)
        eyebase_mesh = "Jacob_Model_Proxy:Jacob_Eyeball_{}_Mesh".format(side)
        eyebackground_mesh = "Jacob_Model_Proxy:Jacob_FaceBackground_Geo"
        bool_mesh, bool_node = mc.polyBooleanCmd(
            [eyeframe_mesh, eyebase_mesh], operation=3
        )

        # add latice
        mc.select(bool_mesh)
        lattice_def, lattice_main, lattice_base = mc.lattice(
            divisions=(3, 3, 2), ldivisions=(4, 4, 4), oc=True
        )

        # list bind lattice dtl
        list_joint_bind = ["EyelidDeform{}_{}".format(i + 1, side) for i in range(9)]
        mc.skinCluster(list_joint_bind, lattice_main, tsb=True)
        mc.setAttr("{}.outsideLattice".format(lattice_def), 1)

        mc.parent(bool_mesh,grp_main_geo)
        mc.parent(lattice_main, lattice_base, grp_custom_rig)

        # create dummy connection
        # for ctrl in self.
        # Shrinkwrap Def
        shrinkwrap_deformer = Deformer.create_shrink_wrap(
            mesh=bool_mesh, target=eyebackground_mesh
        )

        mc.setAttr("{}.projection".format(shrinkwrap_deformer), 3)
        mc.setAttr("{}.offset".format(shrinkwrap_deformer), 0.1)
        mc.setAttr("{}.targetSmoothLevel".format(shrinkwrap_deformer), 1)

        # Finalize Rename
        mc.rename(bool_mesh, "EyeframeBool_{}_Geo".format(side))

        # trun it off for now
        mc.setAttr("{}.envelope".format(lattice_def),False)

    # boolean frame eye > eye lattice > shrinkwrap to surface >

    # ==============================================
    # Re-constraint Eye Ball controller
    # ==============================================
    dict_constraint = {
        # dtl
        "FKEyelidDtl1_R": ["BendEyelidOuter2_R"],
        "FKEyelidDtl2_R": ["BendEyelidOuter1_R"],
        "FKEyelidDtl3_R": ["BendEyelidInner2_R"],
        "FKEyelidDtl4_R": ["BendEyelidInner1_R"],
        # mid
        "FKEyelidA2_R": ["BendEyelidUpper1_R"],
        "FKEyelidB1_R": ["BendEyelidOuter20_R"],
        "FKEyelidB3_R": ["BendEyelidInner20_R"],
        "FKEyelidC2_R": ["BendEyelidLower1_R"],
        # corner
        "FKEyelidA3_R": ["FKEyelidUpper2_R", "FKEyelidInner3_R"],
        "FKEyelidC3_R": ["FKEyelidLower2_R", "BendEyelidInner10_R"],
        "FKEyelidA1_R": ["BendEyelidUpper10_R", "FKEyelidOuter3_R"],
        "FKEyelidC1_R": ["BendEyelidLower10_R", "BendEyelidOuter10_R"],
        # "FKEyeBallTop_R": ["BendOffsetEyelidUpper10_R", "FKOffsetEyelidUpper2_R"],
        # "FKEyeBallBot_R": ["BendOffsetEyelidLower10_R", "FKOffsetEyelidLower2_R"],
    }

    dict_point_between = {
        "FKExtraEyelidDtl4_R": ["FKEyelidC3_R", "FKEyelidB3_R"],
        "FKExtraEyelidDtl3_R": ["FKEyelidB3_R", "FKEyelidA3_R"],
        "FKExtraEyelidA2_R": ["FKEyelidA1_R", "FKEyelidA3_R"],
        "FKExtraEyelidDtl1_R": ["FKEyelidA1_R", "FKEyelidB1_R"],
        "FKExtraEyelidDtl2_R": ["FKEyelidB1_R", "FKEyelidC1_R"],
        "FKExtraEyelidC2_R": ["FKEyelidC1_R", "FKEyelidC3_R"],
        "FKExtraEyelidB3_R": ["FKEyelidA3_R", "FKEyelidC3_R"],
        "FKExtraEyelidB1_R": ["FKEyelidA1_R", "FKEyelidC1_R"],
    }
    for side in ["_L", "_R"]:
        for obj_parent, target_parents in dict_constraint.items():
            for target_parent in target_parents:
                obj_parent = obj_parent.replace("_R", side)
                target_parent = target_parent.replace("_R", side)

                mc.parentConstraint(obj_parent, target_parent, mo=True)

        # point between constraint
        for obj_target, list_parent in dict_point_between.items():
            obj_target = obj_target.replace("_R", side)
            list_parent = [obj.replace("_R", side) for obj in list_parent]

            mc.pointConstraint(list_parent, obj_target, mo=True)

    # ==============================================================================
    # connection eyeball rotate and move position of eyeball rig
    # ==============================================================================

    list_connection = [
        ["FKEyeballMover_R.tz", "FKEyeball_R.ry", -0.085],
        ["FKEyeballMover_R.tx", "FKEyeball_R.ty", -0.5],
        ["FKEyeballMover_L.tz", "FKEyeball_L.ry", 0.085],
        ["FKEyeballMover_L.tx", "FKEyeball_L.ty", -0.5],
    ]

    for source, target, value in list_connection:
        node_uc = mc.createNode("unitConversion")
        mc.connectAttr(source, "{}.input".format(node_uc), f=True)
        mc.setAttr("{}.conversionFactor".format(node_uc), value)
        mc.connectAttr("{}.output".format(node_uc), target, f=True)

    mc.setAttr("FKEyeballMover_R.ty", l=1, k=0)
    mc.setAttr("FKEyeballMover_L.ty", l=1, k=0)

    # Conenct to eye rotate and hide
    mc.connectAttr("FKEyeballMover_R.ry", "FKEyeballMain_R.rz", f=True)
    mc.setAttr("FKEyeballMain_RShape.v", False)

    mc.connectAttr("FKEyeballMover_L.ry", "FKEyeballMain_L.rz", f=True)
    mc.setAttr("FKEyeballMain_LShape.v", False)

    # Set Main Eye Control Position to perfect shrink wrap effect
    mc.setAttr("FKExtraEyeballMain_R.ty", 1.6)
    mc.setAttr("FKExtraEyeballMain_R.tz", -0.16)
    mc.setAttr("FKExtraEyeballMain_R.rx", -17.6)

    mc.setAttr("FKExtraEyeballMain_L.ty", -1.6)
    mc.setAttr("FKExtraEyeballMain_L.tz", 0.16)
    mc.setAttr("FKExtraEyeballMain_L.rx", -17.6)

    #    mc.setAttr("FKExtraEyeballMain_R.tz", -2)

    # ======================
    # Lock Z Axis of ctrl
    # ======================
    list_lock_z_axis_ctrl = [
        "FKEyelidC1_R",
        "FKEyelidDtl2_R",
        "FKEyelidB1_R",
        "FKEyelidDtl1_R",
        "FKEyelidA1_R",
        "FKEyelidA2_R",
        "FKEyelidA3_R",
        "FKEyelidDtl3_R",
        "FKEyelidB3_R",
        "FKEyelidDtl4_R",
        "FKEyelidC3_R",
        "FKEyelidC2_R",

    ]

    list_lock_z_axis_ctrl = Utility.get_both_side(list_lock_z_axis_ctrl)
    [mc.setAttr("{}.tz".format(ctrl), l=1, k=0) for ctrl in list_lock_z_axis_ctrl]
    [Utility.lock_attribute(ctrl,r=1,s=1,v=1,l=1,k=0) for ctrl in list_lock_z_axis_ctrl]

    # ======================
    # Lock Axis for main Ctrl
    # ======================
    list_lock_x_axis_ctrl = [
        "FKEyeBallTop_R",
        "FKEyeBallBot_R"]

    list_lock_x_axis_ctrl = Utility.get_both_side(list_lock_x_axis_ctrl)
    [mc.setAttr("{}.tx".format(ctrl), l=1, k=0) for ctrl in list_lock_x_axis_ctrl]
    [Utility.lock_attribute(ctrl,r=1,s=1,v=1,l=1,k=0) for ctrl in list_lock_x_axis_ctrl]

    # ======================
    # Lock Axis for Aim Ctrl
    # ======================
    list_aim_ctrl = ["FKEyeballMover_R"]
    list_aim_ctrl = Utility.get_both_side(list_aim_ctrl)

    [mc.setAttr("{}.rx".format(ctrl), l=1, k=0) for ctrl in list_aim_ctrl]
    [mc.setAttr("{}.rz".format(ctrl), l=1, k=0) for ctrl in list_aim_ctrl]

    [Utility.lock_attribute(ctrl,s=1,v=1,l=1,k=0) for ctrl in list_aim_ctrl]


    # Hide controller shape
    list_hide = [
        "FKEyelidOuter1_RShape",
        "FKEyelidOuter2_RShape",
        "FKEyelidOuter3_RShape",
        "FKEyelidInner3_RShape",
        "FKEyelidInner2_RShape",
        "FKEyelidInner1_RShape",
        "FKEyelidLower1_RShape",
        "FKEyelidUpper1_RShape",
        "BendEyelidInner10_RShape",
        "BendEyelidOuter10_RShape",
        "BendMidEyelidOuter2_RShape",
        "BendMidEyelidInner2_RShape",
        "FKEyeball_RShape",
        "FKEyelidUpper2_RShape",
        "FKEyelidLower2_RShape",
        "BendEyelidUpper10_RShape",
        "BendEyelidLower10_RShape",
        "BendEyelidOuter2_RShape",
        "BendEyelidOuter1_RShape",
        "BendEyelidUpper1_RShape",
        "BendEyelidInner2_RShape",
        "BendEyelidInner1_RShape",
        "BendEyelidLower1_RShape",
        "BendEyelidInner20_RShape",
        "BendEyelidOuter20_RShape",
        "FKEyeballBase_RShape",
        "FKEyelidB2_RShape",
        # tmp
        "FKEyelidDeform1_RShape",
        "FKEyelidDeform2_RShape",
        "FKEyelidDeform3_RShape",
        "FKEyelidDeform5_RShape",
        "FKEyelidDeform4_RShape",
        "FKEyelidDeform8_RShape",
        "FKEyelidDeform7_RShape",
        "FKEyelidDeform6_RShape",
        "FKEyelidDeform9_RShape",
        "FKEyelidDeformMain_RShape",
        # Body
        "BendArmUp0_RShape",
    ]

    list_hide = Utility.get_both_side(list_hide, sides=["_LShape", "_RShape"])

    [mc.setAttr("{}.v".format(obj), False) for obj in list_hide]


    # List Lock All Attr
    list_lock = ['FKEyelidUpper2_R', 'FKEyelidUpper1_R', 'FKEyelidLower1_R', 'FKEyelidLower2_R', 'FKEyelidOuter3_R', 'FKEyelidOuter2_R', 'FKEyelidOuter1_R', 'FKEyelidInner3_R', 'FKEyelidInner2_R', 'FKEyelidInner1_R', 'FKEyeballBase_R', 'FKEyelidB2_R', 'FKEyelidDeformMain_R', 'FKEyelidDeform1_R', 'FKEyelidDeform2_R', 'FKEyelidDeform3_R', 'FKEyelidDeform5_R', 'FKEyelidDeform4_R', 'FKEyelidDeform8_R', 'FKEyelidDeform7_R', 'FKEyelidDeform6_R', 'FKEyelidDeform9_R', 'FKEyeballMain_R', 'FKEyeball_R']
    list_lock = Utility.get_both_side(list_lock)
    [Utility.lock_attribute(obj,r=1,t=1,s=1,l=1,k=0) for obj in list_lock]

    # Add Resulation Number
    attr_boolean_res = "Main.BoolRes"
    if not Attribute.is_attr_exists(attr_boolean_res):
        obj,attr_name = attr_boolean_res.split(".")
        mc.addAttr(obj,ln=attr_name,k=1,dv=6)

    mc.connectAttr(attr_boolean_res,"Eyeframe_L_nurbsTessellate.uNumber",f=True)    
    mc.connectAttr(attr_boolean_res,"Eyeframe_R_nurbsTessellate.uNumber",f=True)    
    
    # ====================
    # Clean Up Visiblity
    # ====================
    if finalize_vis is True:
        mc.setAttr("{}.v".format(grp_custom_rig), False)
        mc.setAttr("{}.v".format(grp_starter_rig), False)

        mc.setAttr("Main.jointVis", 0)

        mc.setAttr("Jacob_Model_Proxy:Jacob_Eyeball_L_Mesh.v", 0)
        mc.setAttr("Jacob_Model_Proxy:Jacob_Eyeball_R_Mesh.v", 0)

    # ===
    mc.setAttr("IKArm_L.followRoot",10)
    mc.setAttr("IKArm_R.followRoot",10)

    
    
    return  
