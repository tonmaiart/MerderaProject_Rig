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

import maya.cmds as mc
import maya.cmds as cmds

import maya.api.OpenMaya as om

System.reload_scripts()


@Misc.undoable_jump_point
def run():
    # Add Eyelashes Blend Shape
    blend_shape_node = "eyelashes_bsn"

    if not mc.objExists(blend_shape_node):
        node_bsn = mc.blendShape(
            "BlinkUp_L",
            "BlinkUp_R",
            "BlinkLow_L",
            "BlinkLow_R",
            "Kafka_Model_Proxy:Kafka_Eyelashes_Geo",
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
