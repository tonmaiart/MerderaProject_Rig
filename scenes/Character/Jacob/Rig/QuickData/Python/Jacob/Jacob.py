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


@Misc.undoable_jump_point
def run():

    # Main Configuration #
    finalize_vis = True

    grp_custom_rig = "CustomRig_Grp"
    grp_starter_rig = "Starter_Grp"

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
    # Lock Axis for main Ctrl
    # ======================
    list_lock_x_axis_ctrl = [
        "FKEyeBallTop_R",
        "FKEyeBallBot_R"]

    list_lock_x_axis_ctrl = Selection.get_both_side(list_lock_x_axis_ctrl)
    [mc.setAttr("{}.tx".format(ctrl), l=1, k=0) for ctrl in list_lock_x_axis_ctrl]
    [Utility.lock_attribute(ctrl,r=1,s=1,v=1,l=1,k=0) for ctrl in list_lock_x_axis_ctrl]

    # ======================
    # Lock Axis for Aim Ctrl
    # ======================
    list_aim_ctrl = ["FKEyeballMover_R"]
    list_aim_ctrl = Selection.get_both_side(list_aim_ctrl)

    [mc.setAttr("{}.rx".format(ctrl), l=1, k=0) for ctrl in list_aim_ctrl]
    [mc.setAttr("{}.rz".format(ctrl), l=1, k=0) for ctrl in list_aim_ctrl]

    [Utility.lock_attribute(ctrl,s=1,v=1,l=1,k=0) for ctrl in list_aim_ctrl]


    # Hide controller shape
    list_hide = [
        "FKEyeball_RShape",
        # Body
        "BendArmUp0_RShape",
    ]

    list_hide = Selection.get_both_side(list_hide, sides=["_LShape", "_RShape"])

    [mc.setAttr("{}.v".format(obj), False) for obj in list_hide]


    # List Lock All Attr
    list_lock = ['FKEyeballMain_R', 'FKEyeball_R']
    list_lock = Selection.get_both_side(list_lock)
    [Utility.lock_attribute(obj,r=1,t=1,s=1,l=1,k=0) for obj in list_lock]

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

    print("Jacob Eyeball Rig is done")

    return
