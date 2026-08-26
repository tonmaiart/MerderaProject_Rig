//Maya ASCII 2025ff03 scene
//Name: BedroomDoor_rig_wip_v001.ma
//Last modified: Wed, Jan 21, 2026 03:56:14 PM
//Codeset: 1252
file -rdi 1 -ns "BedroomDoor_Model_Hi" -rfn "BedroomDoor_Model_HiRN" -typ "mayaAscii"
		 "G:/My Drive/Projects/KafkaProj//publish/Prop/BedroomDoor/Model/Hi/v001/v001.ma";
file -r -ns "BedroomDoor_Model_Hi" -dr 1 -rfn "BedroomDoor_Model_HiRN" -typ "mayaAscii"
		 "G:/My Drive/Projects/KafkaProj//publish/Prop/BedroomDoor/Model/Hi/v001/v001.ma";
requires maya "2025ff03";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "561388B9-45B5-9C11-DBF8-7FB054A271E2";
createNode transform -s -n "persp";
	rename -uid "5761A0AB-43B1-E52A-9237-B7A45218786D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -83.288443289621299 251.98907863769443 389.07558963020193 ;
	setAttr ".r" -type "double3" -21.338352729605919 -20.199999999999534 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B68B6BCD-4370-986E-A3ED-AF92326CC34B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 454.19990374145948;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.3936042785644531 113.56809997558594 1.52587890625e-05 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DDA85035-466A-971B-6839-DBA0C0E61318";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "68E3DC65-4455-73DB-6D7B-9487936A0A66";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2187C968-4C40-51D7-C68E-DCBAC35055B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "03DD33C2-414E-1D32-209C-BC9991F4C78F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1FF10CCC-4E2F-E2A1-DDA9-1AA08D92641C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DE308853-4C13-DABF-EDE0-B7ABAA0A4C79";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "44D0AE7D-4CAE-F105-9316-2E81A9B7CCC5";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FitSkeleton" -p "Group";
	rename -uid "40872EB1-4517-064D-A2BE-8B95E2907D8F";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useOffsetParentMatrix" -ln "useOffsetParentMatrix" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "subControllers" -ln "subControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraControllers" -ln "extraControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	addAttr -ci true -sn "run" -ln "run" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	setAttr -l on ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".run" -type "string" "";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "1C632E79-4B0E-58D1-567C-FAA0BA686FC8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736734 1.439471202296542e-16 -2.3508348746736738
		2.0357196969332738e-16 2.0357196969332738e-16 -3.3245825626631631
		-2.3508348746736734 1.4394712022965413e-16 -2.3508348746736729
		-3.3245825626631644 1.0553206857018082e-32 -1.723469471257449e-16
		-2.3508348746736734 -1.4394712022965418e-16 2.3508348746736734
		-3.3302570908809675e-16 -2.035719696933275e-16 3.3245825626631653
		2.3508348746736734 -1.4394712022965413e-16 2.3508348746736729
		3.3245825626631644 -2.7761037630330301e-32 4.533721502339877e-16
		2.3508348746736734 1.439471202296542e-16 -2.3508348746736738
		2.0357196969332738e-16 2.0357196969332738e-16 -3.3245825626631631
		-2.3508348746736734 1.4394712022965413e-16 -2.3508348746736729
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "D9BE04A1-4518-53DE-80BC-AB98CD16EFCC";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "DoorSideA" -p "Root";
	rename -uid "DEA3FCC1-4D17-2CDA-3803-80AC605EAACF";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.5447960291394498 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -51.37127685546875 130.65057373046875 3.6890869140625 ;
	setAttr ".r" -type "double3" -2.9236847773671236e-15 -2.9236847773671134e-15 1.9083328088781102e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "DoorSideAEnd" -p "DoorSideA";
	rename -uid "0B9E6E1D-4614-4206-43F8-C1892D3FC6E2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.5447960291394498 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "DoorSideB" -p "Root";
	rename -uid "69619E52-47FB-342A-FEB0-958D93783963";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.5447960291394498 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 67.996528625488281 130.65057373046875 3.6890869140624951 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "DoorSideBEnd" -p "DoorSideB";
	rename -uid "85930D0F-42F3-BA32-FFEB-48858F3C23DC";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.5447960291394498 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "FE012AB1-437B-C8B5-4244-53AFD197DD26";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "704E4CAB-4ADD-5C19-C451-F7B84ED0D3DA";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "256F210B-418F-FF71-15A6-BC9BE622FE5E";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkIkVis" -ln "fkIkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimVis" -ln "aimVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimFKVis" -ln "aimFKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimLRVis" -ln "aimLRVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fingerVis" -ln "fingerVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendVis" -ln "bendVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "arrowVis" -ln "arrowVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "drvSysVis" -ln "drvSysVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "jointVis" -ln "jointVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "height" -ln "height" -at "double";
	addAttr -ci true -sn "version" -ln "version" -at "double";
	setAttr ".sech" no;
	setAttr -cb on ".fkVis";
	setAttr -cb on ".ikVis";
	setAttr -cb on ".fkIkVis";
	setAttr -cb on ".aimVis";
	setAttr -cb on ".aimFKVis";
	setAttr -cb on ".aimLRVis";
	setAttr -cb on ".fingerVis";
	setAttr -cb on ".bendVis";
	setAttr -cb on ".arrowVis";
	setAttr -cb on ".drvSysVis";
	setAttr -cb on ".jointVis";
	setAttr -l on ".height" 139.35343993843998;
	setAttr -l on ".version" 6.64;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "5A85619A-43C0-C60A-8093-68A6984F40C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		104.133774 6.3763546460000006e-15 -104.133774
		9.0175272210000004e-15 9.0175272210000004e-15 -147.2673954
		-104.133774 6.3763546460000006e-15 -104.133774
		-147.2673954 4.6747020360000005e-31 -7.6343677819999997e-15
		-104.133774 -6.3763546460000006e-15 104.133774
		-1.475187572e-14 -9.0175272210000004e-15 147.2673954
		104.133774 -6.3763546460000006e-15 104.133774
		147.2673954 -1.229717003e-30 2.008280271e-14
		104.133774 6.3763546460000006e-15 -104.133774
		9.0175272210000004e-15 9.0175272210000004e-15 -147.2673954
		-104.133774 6.3763546460000006e-15 -104.133774
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "8532CD2D-457C-8F9E-9364-908ED0DCD515";
createNode transform -n "FKParentConstraintToRoot_M" -p "FKSystem";
	rename -uid "6ECBDA5B-4870-FD9B-424A-F0BB055F2C1C";
createNode parentConstraint -n "FKParentConstraintToRoot_M_parentConstraint1" -p
		 "FKParentConstraintToRoot_M";
	rename -uid "1DCF3D9E-49B1-06EA-CC8C-318E2360FE38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetDoorSideA_R" -p "FKParentConstraintToRoot_M";
	rename -uid "8D0E4991-42F8-22C5-134A-35874297BD3D";
	setAttr ".t" -type "double3" -51.37127685546875 130.65057373046875 3.6890869140625 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "FKExtraDoorSideA_R" -p "FKOffsetDoorSideA_R";
	rename -uid "04DC5D92-4039-7652-94C6-1EA17495C082";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKDoorSideA_R" -p "FKExtraDoorSideA_R";
	rename -uid "067B3EB7-4ACD-D1F4-D705-4D86499D599F";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 0 -1 ;
	setAttr ".mxtl" -type "double3" 1 130 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKDoorSideA_RShape" -p "FKDoorSideA_R";
	rename -uid "0F2D80C7-4E91-5C53-00F1-1BAAA158BB1C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		43.931926475154533 -2.9341314279836084 -14.139880051740779
		-84.491118553744698 -2.9341314279836084 -14.139880051740779
		-84.491118553744698 -2.9341314279836084 5.4791183277338487
		43.931926475154533 -2.9341314279836084 5.4791183277338487
		43.931926475154533 -2.9341314279836084 -14.139880051740779
		10.145304108463666 -36.507644775244103 -14.139880051740796
		-50.704496187053742 -36.507644775244103 -14.139880051740796
		-84.491118553744698 -2.9341314279836084 -14.139880051740779
		-84.491118553744698 -2.9341314279836084 5.4791183277338487
		-50.704496187053742 -36.507644775244103 5.4791183277338291
		10.145304108463666 -36.507644775244103 5.4791183277338291
		43.931926475154533 -2.9341314279836084 5.4791183277338487
		43.931926475154533 -2.9341314279836084 -14.139880051740779
		10.145304108463666 -36.507644775244103 -14.139880051740796
		10.145304108463666 -36.507644775244103 5.4791183277338291
		-50.704496187053742 -36.507644775244103 5.4791183277338291
		-50.704496187053742 -36.507644775244103 -14.139880051740796
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXDoorSideA_R" -p "FKDoorSideA_R";
	rename -uid "EF0B913A-4C2F-CADD-9645-9895E1A57747";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetDoorSideB_L" -p "FKParentConstraintToRoot_M";
	rename -uid "6D1D39A3-4275-EF39-6AC7-55B2E67900B4";
	setAttr ".t" -type "double3" 67.996528625488281 130.65057373046875 3.6890869140624951 ;
	setAttr ".r" -type "double3" -180 0 90 ;
createNode transform -n "FKExtraDoorSideB_L" -p "FKOffsetDoorSideB_L";
	rename -uid "3C42EE81-44B8-E21E-E69D-16A03D5C0957";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKDoorSideB_L" -p "FKExtraDoorSideB_L";
	rename -uid "D7B0F49B-4FAF-36E1-FB04-568DF0BBA9E2";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 0 -1 ;
	setAttr ".mxtl" -type "double3" 1 130 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKDoorSideB_LShape" -p "FKDoorSideB_L";
	rename -uid "3D6BD8C5-492D-6DAD-3FE7-44B76969DD87";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		43.931926475154533 -2.9341314279836084 -5.4791183277338327
		-84.491118553744698 -2.9341314279836084 -5.4791183277338327
		-84.491118553744698 -2.9341314279836084 14.139880051740796
		43.931926475154533 -2.9341314279836084 14.139880051740796
		43.931926475154533 -2.9341314279836084 -5.4791183277338327
		10.145304108463666 -36.507644775244103 -5.4791183277338487
		-50.704496187053742 -36.507644775244103 -5.4791183277338487
		-84.491118553744698 -2.9341314279836084 -5.4791183277338327
		-84.491118553744698 -2.9341314279836084 14.139880051740796
		-50.704496187053742 -36.507644775244103 14.139880051740775
		10.145304108463666 -36.507644775244103 14.139880051740775
		43.931926475154533 -2.9341314279836084 14.139880051740796
		43.931926475154533 -2.9341314279836084 -5.4791183277338327
		10.145304108463666 -36.507644775244103 -5.4791183277338487
		10.145304108463666 -36.507644775244103 14.139880051740775
		-50.704496187053742 -36.507644775244103 14.139880051740775
		-50.704496187053742 -36.507644775244103 -5.4791183277338487
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXDoorSideB_L" -p "FKDoorSideB_L";
	rename -uid "2969E4EC-46B2-6ED5-AFFA-ACA3D7470531";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "CA7C21F5-4D13-9D42-8CDD-BBABDCEC5BDF";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "702B7E0B-4433-4463-A440-9B96EB57549F";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "A2D5F5F8-4ADA-766E-6293-EF99D921C4B9";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "A30DB571-4D90-480A-F6BB-C6B8F92B5CD1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-47.829171909999999 1.5606351770000001e-14 47.829171909999999
		-67.64066468 -1.1147394120000001e-14 -7.7171275860000008e-15
		-47.829171909999999 2.229478824e-15 -47.829171909999999
		-2.1082783069999999e-14 3.1212703529999998e-14 -67.64066468
		47.829171909999999 -1.5606351770000001e-14 -47.829171909999999
		67.64066468 1.1147394120000001e-14 -2.2776895530000001e-14
		47.829171909999999 -2.229478824e-15 47.829171909999999
		3.632979732e-14 -3.1212703529999998e-14 67.64066468
		-47.829171909999999 1.5606351770000001e-14 47.829171909999999
		-67.64066468 -1.1147394120000001e-14 -7.7171275860000008e-15
		-47.829171909999999 2.229478824e-15 -47.829171909999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "C9A4897F-4D27-5B81-F447-CE97EE519ACC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKHSRoot_M" -p "FKRoot_M";
	rename -uid "3820B267-4774-235A-928D-4584E62EFFE5";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "96C39D9A-4D19-4A29-461E-00BD027FDBE3";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "A8450B2D-4510-12F7-15D3-D7ADE4C144DD";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "4B4CD4CF-4FE9-8EE6-D085-498AD354D966";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "93F97393-4564-9908-CA5B-3A9EC767A68D";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "F398A077-4C6B-248C-FDE9-22A1C057846C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "IKHandleFollowMain_scaleConstraint1" -p "IKHandleFollowMain";
	rename -uid "A23029FA-4349-F864-7CD1-D49D8D3A4A35";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "IKPoleVector" -p "IKSystem";
	rename -uid "545FA146-48A5-B9DD-1843-EEA31C9F2293";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "C401E608-4B3B-6C97-2482-ECA35B9B3940";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "83C82896-4F36-40F3-B05D-C68F40682F6A";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "1EDA6DA8-4D16-5528-45B5-C0A9F3F8BD6F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "IKStatic_scaleConstraint1" -p "IKStatic";
	rename -uid "01774B4F-4D84-64BD-B9BF-52B95CB67CAB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "IKCurve" -p "IKSystem";
	rename -uid "66838950-4162-B197-044C-EE9F1A806A00";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "6439993C-4CE5-61E8-31B1-B7857D9D4AC1";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "A78FAB32-4593-13EC-1387-A7B3B7131307";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "A9D43DE4-4E51-AD4A-9A3F-8D8B3F73A139";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "0D42136A-41FA-2494-8399-358503999AA4";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "DDEF5440-4AC3-0800-5BA5-B9AF5655B3B4";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "6815B89A-42B7-7F03-4C1F-25910FD0232A";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "6AC908D3-4F6A-9C37-19B2-9FB14FF016CA";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "A9224878-4D66-50B5-93E4-64AD621811E3";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "BB865D57-474C-3513-3E53-B58FD30EAD31";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "2617A701-4075-234D-1B71-45BA4437555D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "RootFollowMain_scaleConstraint1" -p "RootFollowMain";
	rename -uid "5C940380-45F9-39D7-6697-E0B135DA5B32";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "RootOffsetX_M" -p "RootFollowMain";
	rename -uid "942259D0-4841-A632-DBD6-D4B630257BC8";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "9C5B8A42-48FB-A0E3-96E0-3A900D156741";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "5CF4FC34-448F-62A8-43DD-EFB5903DE084";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "2AF3ECEB-4462-547C-6485-E8A59CF79D44";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 39 0 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		-1.213333719e-12 0 0
		-1.013700695e-05 0 -83.985087239999999
		-8.1580481630000001 0 -83.985089070000001
		-8.1580481630000001 0 -95.814773549999998
		-22.766815699999999 0 -95.814773549999998
		0 0 -118.5815241
		22.766815699999999 0 -95.814773549999998
		8.1580481630000001 0 -95.814773549999998
		8.1580481630000001 0 -83.985089070000001
		1.0137006710000001e-05 0 -83.98509095
		0 0 0
		83.985061299999998 0 4.2586623079999997e-09
		83.985072779999996 0 -8.1580873490000005
		95.814822399999997 0 -8.1580873490000005
		95.814822399999997 0 -22.766754630000001
		118.5815078 0 5.2660775319999999e-14
		95.814822399999997 0 22.766754630000001
		95.814822399999997 0 8.1580873490000005
		83.985072779999996 0 8.1580873490000005
		83.985084270000002 0 -4.258662249e-09
		0 0 0
		-3.1128650480000001e-05 0 83.985087530000001
		8.1580481630000001 0 83.985089070000001
		8.1580481630000001 0 95.814773549999998
		22.766815699999999 0 95.814773549999998
		0 0 118.5815241
		-22.766815699999999 0 95.814773549999998
		-8.1580481630000001 0 95.814773549999998
		-8.1580481630000001 0 83.985089070000001
		3.1128650719999996e-05 0 83.985090600000007
		0 0 0
		-83.985054469999994 0 -4.0055534880000001e-10
		-83.985072779999996 0 8.1580873490000005
		-95.814822399999997 0 8.1580873490000005
		-95.814822399999997 0 22.766754630000001
		-118.5815078 0 0
		-95.814822399999997 0 -22.766754630000001
		-95.814822399999997 0 -8.1580873490000005
		-83.985072779999996 0 -8.1580873490000005
		-83.985091100000005 0 4.0055534880000001e-10
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "D8B1C70B-4C92-9BF0-4E11-E0AB4CC7F5DC";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "FCD5812A-47AE-805B-CF34-07B229829447";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "8B36E1CA-4C7B-0A05-054C-25AE9DC9324F";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "08DA0A4D-4032-A472-6A1D-3586AB20E832";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "20105307-41E1-3DC4-B0D5-A0B2439D2B2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "GlobalFollowMain_scaleConstraint1" -p "GlobalFollowMain";
	rename -uid "D5941740-44BA-3A74-CE44-1483733D84AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "ConstraintSystem" -p "MotionSystem";
	rename -uid "5DDB42A2-45C6-D72F-A241-F0BCB54AA890";
	setAttr -l on ".v" no;
createNode pointConstraint -n "DoorSideA_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "63E8C0C9-4DFA-DEE3-0336-A3AE52CF0DE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideA_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -51.37127685546875 130.65057373046875 3.6890869140625 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -51.37127685546875 130.65057373046875 3.6890869140625 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "DoorSideA_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "B73A000D-4229-370B-2806-4B82BA6C63DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideA_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -51.37127685546875 130.65057373046875 3.6890869140625 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -2.5044781672654157e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.5044781672654157e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "DoorSideB_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "AF0FA8C7-4D53-B49C-3667-21BE11FEC65B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideB_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 67.996528625488281 130.65057373046875 3.6890869140624951 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -180 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 67.996528625488281 130.65057373046875 3.6890869140624951 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "DoorSideB_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "E16BE13D-4E22-3F3E-82FF-168231B5A789";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideB_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 67.996528625488281 130.65057373046875 3.6890869140624951 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -180 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.0089563204974072e-06 2.1894844384831494e-13 2.504478167265408e-06 ;
	setAttr ".rsrr" -type "double3" -5.0089563204974072e-06 2.1894844384831494e-13 2.504478167265408e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "5AFA846C-40D9-05B0-56AC-C58E448EE09C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "F422A6C9-438F-3A14-F57C-01867A282C24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "33C53CB3-424E-EB77-5FBD-1991B3C3AC64";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "C22E7721-406C-3263-B29D-6AA8FC0BCFA2";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "B6B2A991-4E0C-3568-8790-E8AA82341677";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKDoorSideB_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraDoorSideB_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKDoorSideA_R;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraDoorSideA_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;";
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "A93521F4-46E3-F0B9-8B98-ADB595DC75BF";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "E2583097-4EAA-CB77-4941-379FE4B31C5B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "DoorSideA_R" -p "Root_M";
	rename -uid "BEF21B5D-4209-A2CD-767D-289857A4DD02";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90.000002504478161 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -51.37127685546875 130.65057373046875 3.6890869140625 1;
createNode joint -n "DoorSideAEnd_R" -p "DoorSideA_R";
	rename -uid "585FFBBB-47C9-AD1A-10B3-0F89A911BC5A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "DoorSideB_L" -p "Root_M";
	rename -uid "DFA00175-4595-709E-E595-9ABABD2F55FA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180.00000500895632 0 90.000002504478161 ;
	setAttr ".bps" -type "matrix" 0 1 -3.8213712374045827e-15 0 1 0 -1.2246464306165476e-16 0
		 -1.2246464306165476e-16 -3.8213712374045827e-15 -1 0 67.996528625488281 130.65057373046875 3.6890869140624951 1;
createNode joint -n "DoorSideBEnd_L" -p "DoorSideB_L";
	rename -uid "B8456BC7-4E1F-424C-D087-35B97E55A3DD";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "Geometry" -p "Group";
	rename -uid "D40700C6-4447-BC1F-275D-42806AAF9B0A";
	setAttr -l on ".it" no;
createNode transform -n "deleteThis";
	rename -uid "DC219F78-4DBE-5FF9-BAA1-89AD9563BCEE";
createNode transform -n "ControllerGallery" -p "deleteThis";
	rename -uid "50BE5A01-4333-A1E7-901B-948A45CCA318";
	setAttr ".t" -type "double3" -92.902293292293322 0 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "Circle" -p "ControllerGallery";
	rename -uid "2FA926E8-43FB-565C-7A89-0A8EDF361922";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "CircleShape" -p "Circle";
	rename -uid "D3ED07ED-4D72-9202-0A9C-AA82A2580DA9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4599487752171312 3.3432543955391176e-16 -5.4599487752171374
		0 4.7280757086348658e-16 -7.7215336077744414
		-5.4599487752171312 3.3432543955390629e-16 -5.459948775217125
		-7.7215336077744352 0 0
		-5.4599487752171312 -3.3432543955390629e-16 5.459948775217125
		0 -4.7280757086348658e-16 7.7215336077744414
		5.4599487752171312 -3.3432543955390629e-16 5.459948775217125
		7.7215336077744352 0 0
		5.4599487752171312 3.3432543955391176e-16 -5.4599487752171374
		0 4.7280757086348658e-16 -7.7215336077744414
		-5.4599487752171312 3.3432543955390629e-16 -5.459948775217125
		;
createNode transform -n "HalfCircle" -p "ControllerGallery";
	rename -uid "DB3CB863-4C62-3442-D82E-4B84A8498AA3";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "HalfCircleShape" -p "HalfCircle";
	rename -uid "AD5A3E52-48BE-B0D4-22A0-4E85204D223E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		0 4.2664686042695801e-16 -6.9676719969219985
		-1.3593253735822701 4.1844896063701313e-16 -6.8337901332588791
		-2.6664126353762283 3.9417030195866521e-16 -6.437289547208275
		-3.8710311549341117 3.547438996293017e-16 -5.793407533932033
		-4.9268881181071578 3.0168488817985469e-16 -4.9268881181071604
		-5.793407533932033 2.370322956644855e-16 -3.8710311549341054
		-6.4372895472082785 1.6327068495597716e-16 -2.6664126353762283
		-6.8337901332588791 8.3234673387866087e-17 -1.3593253735822701
		-6.9676719969219985 0 0
		-3.4838359984609992 -3.547438996293017e-16 3.7405594802840768e-06
		0 -4.2664686042695801e-16 1.5483203824971689e-05
		3.4838359984609992 -3.9417030195866797e-16 1.017937945496926e-05
		6.9676719969219922 0 0
		6.8337901332588729 8.3234673387866087e-17 -1.3593253735822701
		6.437289547208275 1.6327068495597995e-16 -2.6664126353762283
		5.7934075339320295 2.3703229566448822e-16 -3.8710311549341054
		4.9268881181071551 3.0168488817985197e-16 -4.9268881181071489
		3.8710311549341085 3.547438996293017e-16 -5.793407533932033
		2.6664126353762283 3.9417030195866797e-16 -6.437289547208275
		1.3593253735822732 4.1844896063701313e-16 -6.8337901332588666
		3.0942679516074982e-15 4.2664686042695801e-16 -6.967671996921986
		;
createNode transform -n "Square" -p "ControllerGallery";
	rename -uid "690C5633-4664-403D-8423-3CA19E9E596C";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "SquareShape" -p "Square";
	rename -uid "41A6FD93-4BD9-ECC0-898F-90B13A520E34";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-6.9729031189530408 0 -6.9729031189530408
		-6.9729031189530408 0 6.9729031189530408
		6.9729031189530408 0 6.9729031189530408
		6.9729031189530408 0 -6.9729031189530408
		-6.9729031189530408 0 -6.9729031189530408
		;
createNode transform -n "Triangle" -p "ControllerGallery";
	rename -uid "F1822EC2-4557-289C-3FAE-B4ADBA163BE9";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "TriangleShape" -p "Triangle";
	rename -uid "8CDBB952-457A-C972-3361-4681246E0C3E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-6.9729031189530408 0 6.9729031189530408
		0 0 -6.9729031189530408
		6.9729031189530408 0 6.9729031189530408
		-6.9729031189530408 0 6.9729031189530408
		;
createNode transform -n "Sphere" -p "ControllerGallery";
	rename -uid "2D2B1F62-444D-1BA8-85F1-26BE33E96F9E";
	setAttr ".t" -type "double3" 34.838359984609994 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "SphereShape" -p "Sphere";
	rename -uid "264C8BAC-4726-3AB5-349E-328DBA15EF57";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 110 0 no 3
		111 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110
		111
		0 6.9729031189530408 0
		-3.2508447173483309e-08 6.8870552641161398 1.0908025521354192
		-6.4216425793493468e-08 6.6316251141528699 2.1547458289260897
		-9.4343183981944982e-08 6.2129022073811013 3.1656323218538347
		-1.2214688956304764e-07 5.6411971805939034 4.098569976696175
		-1.469429419410442e-07 4.9305869955851191 4.9305874112025334
		-1.6812077397518755e-07 4.0985695610787589 5.6411980118287364
		-1.8515891487612922e-07 3.1656319062364262 6.2129030386159263
		-1.9763783141791841e-07 2.1547454133086767 6.6316259453877002
		-2.0525024422735283e-07 1.0908017209005931 6.8870560953509647
		-2.0780870874045998e-07 0 6.9729039501878765
		-2.0525024422735283e-07 -1.0908017209005931 6.8870560953509647
		-1.9763783141791841e-07 -2.1547454133086767 6.6316259453877002
		-1.8515891487612922e-07 -3.1656319062364262 6.2129030386159263
		-1.6812077397518755e-07 -4.0985695610787589 5.6411980118287364
		-1.469429419410442e-07 -4.9305869955851191 4.9305874112025334
		-1.2214688956304764e-07 -5.6411971805939034 4.098569976696175
		-9.4343183981944982e-08 -6.2129022073811013 3.1656323218538471
		-6.4216425793493468e-08 -6.6316251141528699 2.1547458289260897
		-3.2508447173483309e-08 -6.8870552641161398 1.0908025521354192
		0 -6.9729031189530408 0
		0 -6.8870552641161398 -1.0908029677528366
		0 -6.6316251141528699 -2.154746660160912
		0 -6.2129022073811013 -3.1656333608973664
		0 -5.6411971805939034 -4.0985716391658196
		0 -4.9305869955851191 -4.9305894892895967
		0 -4.0985695610787589 -5.6411996742983819
		0 -3.1656319062364262 -6.2129051167029887
		0 -2.1547454133086767 -6.6316284390921805
		0 -1.0908017209005931 -6.887058589055445
		0 0 -6.9729064438923558
		0 1.0908017209005931 -6.887058589055445
		0 2.1547454133086767 -6.6316284390921805
		0 3.1656319062364262 -6.2129051167030012
		0 4.0985695610787589 -5.6411996742983819
		0 4.9305869955851191 -4.9305894892895967
		0 5.6411971805939034 -4.098571639165832
		0 6.2129022073811013 -3.1656333608973788
		0 6.6316251141528699 -2.154746660160912
		0 6.8870552641161398 -1.0908029677528366
		0 6.9729031189530408 0
		-1.0908027599441279 6.8870552641161398 0
		-2.1547460367347981 6.6316251141528699 0
		-3.1656327374712525 6.2129022073811013 0
		-4.0985703923135857 5.6411971805939034 0
		-4.9305882424373628 4.9305869955851191 0
		-5.641198427446148 4.0985695610787589 0
		-6.2129038698507548 3.1656319062364262 0
		-6.6316267766225234 2.1547454133086767 0
		-6.8870569265857942 1.0908017209005931 0
		-6.9729047814226988 0 0
		-6.8870569265857942 -1.0908017209005931 0
		-6.6316267766225234 -2.1547454133086767 0
		-6.2129038698507548 -3.1656319062364262 0
		-5.641198427446148 -4.0985695610787589 0
		-4.9305882424373628 -4.9305869955851191 0
		-4.0985703923135857 -5.6411971805939034 0
		-3.1656327374712525 -6.2129022073811013 0
		-2.1547460367347981 -6.6316251141528699 0
		-1.0908027599441279 -6.8870552641161398 0
		0 -6.9729031189530408 0
		1.0908024482310648 -6.8870552641161398 0
		2.1547456211173808 -6.6316251141528699 0
		3.1656319062364235 -6.2129022073811013 0
		4.0985695610787571 -5.6411971805939034 0
		4.9305869955851165 -4.9305869955851191 0
		5.6411971805939016 -4.0985695610787589 0
		6.2129022073811031 -3.1656319062364262 0
		6.6316251141528717 -2.1547454133086767 0
		6.8870552641161424 -1.0908017209005931 0
		6.9729031189530408 0 0
		6.8870552641161424 1.0908017209005931 0
		6.6316251141528717 2.1547454133086767 0
		6.2129022073811031 3.1656319062364262 0
		5.6411971805939016 4.0985695610787589 0
		4.9305869955851165 4.9305869955851191 0
		4.0985695610787571 5.6411971805939034 0
		3.1656319062364235 6.2129022073811013 0
		2.1547456211173808 6.6316251141528699 0
		1.0908024482310648 6.8870552641161398 0
		0 6.9729031189530408 0
		0 6.8870552641161398 -1.0908029677528366
		0 6.6316251141528699 -2.154746660160912
		0 6.2129022073811013 -3.1656333608973788
		0 5.6411971805939034 -4.098571639165832
		0 4.9305869955851191 -4.9305894892895967
		0 4.0985695610787589 -5.6411996742983819
		0 3.1656319062364262 -6.2129051167030012
		0 2.1547454133086767 -6.6316284390921805
		0 1.0908017209005931 -6.887058589055445
		0 0 -6.9729064438923558
		2.1547466601609182 0 -6.6316284390921805
		4.0985720547832374 0 -5.6412005055332166
		5.6412009211506273 0 -4.0985720547832374
		6.6316292703270037 0 -2.1547468679696209
		6.9729031189530408 0 0
		6.6316251141528717 0 2.1547456211173808
		5.6411971805939016 0 4.098569976696175
		4.0985695610787571 0 5.6411975962113186
		2.1547454133086781 0 6.6316255297702833
		-2.0780870874045998e-07 0 6.9729039501878765
		-2.1547460367347981 0 6.6316259453877002
		-4.0985703923135857 0 5.6411980118287364
		-5.641198427446148 0 4.0985703923135794
		-6.6316267766225234 0 2.1547460367347981
		-6.9729047814226988 0 0
		-6.6316267766225234 0 -2.1547460367347981
		-5.6411988430635587 0 -4.0985708079309973
		-4.0985712235484142 0 -5.6411992586809765
		-2.1547466601609182 0 -6.6316280234747635
		0 0 -6.9729064438923558
		;
createNode transform -n "HalfSphere" -p "ControllerGallery";
	rename -uid "D97C6107-4BA8-B02B-96F2-DEB6AF875446";
	setAttr ".t" -type "double3" 52.257539976914991 3.0942679516074984e-14 -104.51507995382998 ;
createNode nurbsCurve -n "HalfSphereShape" -p "HalfSphere";
	rename -uid "5FC8E5A1-4794-D979-944A-758971066583";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 65 0 no 3
		66 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65
		66
		-2.0780870874045998e-07 0 6.9729039501878765
		2.1547454133086781 0 6.6316255297702833
		4.0985695610787571 0 5.6411975962113186
		5.6411971805939016 0 4.098569976696175
		6.6316251141528655 0 2.1547456211173808
		6.9729031189530408 0 0
		6.6316292703270037 0 -2.1547468679696209
		5.6412009211506211 0 -4.0985720547832374
		4.0985720547832374 0 -5.6412005055332166
		2.1547466601609182 0 -6.6316284390921805
		0 0 -6.9729064438923558
		-2.1547466601609182 0 -6.6316280234747635
		-4.0985712235484142 0 -5.6411992586809765
		-5.6411988430635587 0 -4.0985708079309973
		-6.6316267766225234 0 -2.1547460367347981
		-6.9729047814226988 0 0
		-6.6316267766225234 0 2.1547460367347981
		-5.6411984274461417 0 4.0985703923135794
		-4.0985703923135794 0 5.6411980118287364
		-2.1547460367347981 0 6.6316259453877002
		-2.0780870874045998e-07 0 6.9729039501878765
		-2.0525024422735283e-07 1.0908017209005931 6.8870560953509647
		-1.9763783141791841e-07 2.1547454133086767 6.6316259453877002
		-1.8515891487612922e-07 3.1656319062364262 6.2129030386159263
		-1.6812077397518755e-07 4.0985695610787589 5.6411980118287364
		-1.469429419410442e-07 4.9305869955851191 4.9305874112025334
		-1.2214688956304764e-07 5.6411971805939034 4.098569976696175
		-9.4343183981944982e-08 6.2129022073811013 3.1656323218538347
		-6.4216425793493468e-08 6.6316251141528699 2.1547458289260897
		-3.2508447173483309e-08 6.8870552641161398 1.0908025521354192
		0 6.9729031189530408 0
		0 6.8870552641161398 -1.0908029677528366
		0 6.6316251141528699 -2.154746660160912
		0 6.2129022073811013 -3.1656333608973788
		0 5.6411971805939034 -4.098571639165832
		0 4.9305869955851191 -4.9305894892895967
		0 4.0985695610787589 -5.6411996742983819
		0 3.1656319062364262 -6.2129051167030012
		0 2.1547454133086767 -6.6316284390921805
		0 1.0908017209005931 -6.887058589055445
		0 0 -6.9729064438923558
		-2.1547466601609182 0 -6.6316280234747635
		-4.0985712235484142 0 -5.6411992586809765
		-5.6411988430635587 0 -4.0985708079309973
		-6.6316267766225234 0 -2.1547460367347981
		-6.9729047814226988 0 0
		-6.8870569265857879 1.0908017209005931 0
		-6.6316267766225234 2.1547454133086767 0
		-6.2129038698507486 3.1656319062364262 0
		-5.6411984274461417 4.0985695610787589 0
		-4.9305882424373566 4.9305869955851191 0
		-4.0985703923135794 5.6411971805939034 0
		-3.1656327374712525 6.2129022073811013 0
		-2.1547460367347981 6.6316251141528699 0
		-1.0908027599441279 6.8870552641161398 0
		0 6.9729031189530408 0
		1.0908024482310648 6.8870552641161398 0
		2.1547456211173808 6.6316251141528699 0
		3.1656319062364235 6.2129022073811013 0
		4.0985695610787571 5.6411971805939034 0
		4.9305869955851165 4.9305869955851191 0
		5.6411971805939016 4.0985695610787589 0
		6.2129022073811031 3.1656319062364262 0
		6.6316251141528655 2.1547454133086767 0
		6.8870552641161424 1.0908017209005931 0
		6.9729031189530408 0 0
		;
createNode transform -n "Box" -p "ControllerGallery";
	rename -uid "562187F0-4611-93A9-7B93-A6B65D62FA77";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "BoxShape" -p "Box";
	rename -uid "18E83F8F-4ABD-52FF-2DFC-98B02538D29B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-6.9729031189530382 6.9729031189530399 6.9729031189530284
		-6.9729031189530382 -6.9729031189530426 6.9729031189530284
		6.9729031189530408 -6.9729031189530426 6.9729031189530284
		6.9729031189530408 6.9729031189530399 6.9729031189530284
		-6.9729031189530382 6.9729031189530399 6.9729031189530284
		-6.9729031189530408 6.9729031189530408 -6.9729031189530533
		-6.9729031189530408 -6.9729031189530408 -6.9729031189530533
		-6.9729031189530382 -6.9729031189530426 6.9729031189530284
		6.9729031189530408 -6.9729031189530426 6.9729031189530284
		6.9729031189530346 -6.9729031189530408 -6.9729031189530533
		6.9729031189530346 6.9729031189530408 -6.9729031189530533
		6.9729031189530408 6.9729031189530399 6.9729031189530284
		-6.9729031189530382 6.9729031189530399 6.9729031189530284
		-6.9729031189530408 6.9729031189530408 -6.9729031189530533
		6.9729031189530346 6.9729031189530408 -6.9729031189530533
		6.9729031189530346 -6.9729031189530408 -6.9729031189530533
		-6.9729031189530408 -6.9729031189530408 -6.9729031189530533
		;
createNode transform -n "Pyramid" -p "ControllerGallery";
	rename -uid "DDA1FB01-4928-B8B1-6B4E-DDB707F0474D";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "PyramidShape" -p "Pyramid";
	rename -uid "34C73E5F-4A5E-00BD-39F6-46B389CE7AAE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 8.6766358323015318 -1.2377071806429993e-14
		-5.7844230837178454 7.0838751801658676e-16 -5.7844230837178641
		-5.7844230837178436 -7.0838751801659228e-16 5.7844230837178392
		0 8.6766358323015318 -1.2377071806429993e-14
		5.7844230837178454 7.0838751801658676e-16 -5.7844230837178641
		5.7844230837178454 -7.0838751801659228e-16 5.7844230837178392
		0 8.6766358323015318 -1.2377071806429993e-14
		-5.7844230837178436 -7.0838751801659228e-16 5.7844230837178392
		5.7844230837178454 -7.0838751801659228e-16 5.7844230837178392
		5.7844230837178454 7.0838751801658676e-16 -5.7844230837178641
		-5.7844230837178454 7.0838751801658676e-16 -5.7844230837178641
		;
createNode transform -n "Diamond" -p "ControllerGallery";
	rename -uid "963B8A1C-459F-78C9-25BA-02AABBB20452";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "DiamondShape" -p "Diamond";
	rename -uid "51EA32C0-4C97-7ADB-1B6B-9D91724176AE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0 -8.6766358323015318 0
		-5.7844230837178463 7.0838751801658952e-16 -5.7844230837178516
		0 8.6766358323015318 0
		5.7844230837178463 -7.0838751801658952e-16 5.7844230837178516
		0 -8.6766358323015318 0
		5.7844230837178463 7.0838751801658952e-16 -5.7844230837178516
		0 8.6766358323015318 0
		-5.7844230837178463 -7.0838751801658952e-16 5.7844230837178516
		5.7844230837178463 -7.0838751801658952e-16 5.7844230837178516
		5.7844230837178463 7.0838751801658952e-16 -5.7844230837178516
		-5.7844230837178463 0 -5.7844230837178516
		-5.7844230837178463 0 5.7844230837178516
		0 -8.6766358323015318 0
		;
createNode transform -n "CirclePin" -p "ControllerGallery";
	rename -uid "5D4363EB-45E0-78CF-B0C2-F2A5FB3C53B4";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "CirclePinShape" -p "CirclePin";
	rename -uid "FDB9140A-4980-A3EA-C23F-ABB01D865578";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 41 0 no 3
		42 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41
		42
		0 12.546130667938424 -1.2377071806429993e-14
		-0.65421598081143173 12.597618471797261 -1.2377071806429993e-14
		-1.2923228136076679 12.750814349387076 -1.2377071806429993e-14
		-1.8986086231938202 13.001946109592687 -1.2377071806429993e-14
		-2.4581439904584341 13.344829881589714 -1.2377071806429993e-14
		-2.9571520548487626 13.771022916876799 -1.2377071806429993e-14
		-3.3833450901358453 14.270030731997906 -1.2377071806429993e-14
		-3.7262291114020942 14.82956609926252 -1.2377071806429993e-14
		-3.9773608716077029 15.435851784214066 -1.2377071806429993e-14
		-4.1305567491975177 16.073958866279519 -1.2377071806429993e-14
		-4.1820445530563548 16.7281742239179 -1.2377071806429993e-14
		-4.1305567491975177 17.382389581556282 -1.2377071806429993e-14
		-3.9773608716077029 18.020496663621735 -1.2377071806429993e-14
		-3.7262291114020942 18.626782348573283 -1.2377071806429993e-14
		-3.3833450901358453 19.186317715837895 -1.2377071806429993e-14
		-2.9571520548487626 19.685325530959002 -1.2377071806429993e-14
		-2.4581439904584341 20.111518566246083 -1.2377071806429993e-14
		-1.8986086231938202 20.454402338243113 -1.2377071806429993e-14
		-1.2923228136076679 20.705534098448723 -1.2377071806429993e-14
		-0.65421598081143173 20.858729976038536 -1.2377071806429993e-14
		0 20.910217779897376 -1.2377071806429993e-14
		0.65421579385951545 20.858729976038536 -1.2377071806429993e-14
		1.2923225643384451 20.705534098448723 -1.2377071806429993e-14
		1.8986081246553779 20.454402338243113 -1.2377071806429993e-14
		2.4581434919199947 20.111518566246083 -1.2377071806429993e-14
		2.9571513070411006 19.685325530959002 -1.2377071806429993e-14
		3.3833443423281833 19.186317715837895 -1.2377071806429993e-14
		3.7262281143252109 18.626782348573283 -1.2377071806429993e-14
		3.9773598745308227 18.020496663621735 -1.2377071806429993e-14
		4.130555752120638 17.382389581556282 -1.2377071806429993e-14
		4.1820435559794742 16.7281742239179 -1.2377071806429993e-14
		4.130555752120638 16.073958866279519 -1.2377071806429993e-14
		3.9773598745308227 15.435851784214066 -1.2377071806429993e-14
		3.7262281143252109 14.82956609926252 -1.2377071806429993e-14
		3.3833443423281833 14.270030731997906 -1.2377071806429993e-14
		2.9571513070411006 13.771022916876799 -1.2377071806429993e-14
		2.4581434919199947 13.344829881589714 -1.2377071806429993e-14
		1.8986081246553779 13.001946109592687 -1.2377071806429993e-14
		1.2923225643384451 12.750814349387076 -1.2377071806429993e-14
		0.65421579385951545 12.597618471797261 -1.2377071806429993e-14
		0 12.546130667938424 -1.2377071806429993e-14
		0 -2.7482620193874924e-30 -1.2377071806429993e-14
		;
createNode transform -n "SquarePin" -p "ControllerGallery";
	rename -uid "8DFEE9E5-45A3-8521-8E1F-29BD0D26F777";
	setAttr ".t" -type "double3" 34.838359984609994 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "SquarePinShape" -p "SquarePin";
	rename -uid "DA7DA84A-4F85-59D8-035F-0C8DDAC0FED3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 12.551225614115474 -1.2377071806429993e-14
		4.1837418713718248 12.551225614115474 -1.2377071806429993e-14
		4.1837418713718248 20.918709356859125 -1.2377071806429993e-14
		-4.1837418713718248 20.918709356859125 -1.2377071806429993e-14
		-4.1837418713718248 12.551225614115474 -1.2377071806429993e-14
		0 12.551225614115474 -1.2377071806429993e-14
		0 -2.7482620193874924e-30 -1.2377071806429993e-14
		;
createNode transform -n "SpherePin" -p "ControllerGallery";
	rename -uid "DFD1FF55-4F1A-F4DA-2790-93A4DE37F92E";
	setAttr ".t" -type "double3" 52.257539976914991 3.0942679516074984e-14 -87.095899961524978 ;
createNode nurbsCurve -n "SpherePinShape" -p "SpherePin";
	rename -uid "F02053F5-4346-18E5-82AE-A596B752934B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 111 0 no 3
		112 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110 111
		112
		0 5.4965240387749827e-30 0
		0 12.551225614115474 0
		0.65448146893864012 12.602734327017613 0
		1.2928473726704273 12.755992416995577 0
		1.8993791437418579 13.007226161058641 0
		2.4591417366472541 13.350249177130957 0
		2.9583521973510747 13.776615288136227 0
		3.3847183083563457 14.275825748840045 0
		3.7277413244286572 14.83558834174544 0
		3.9789750684917244 15.442120237502092 0
		4.1322331584696856 16.080486452946943 0
		4.1837418713718248 16.734967485487299 0
		4.1322331584696856 17.38944851802766 0
		3.9789750684917244 18.027814733472507 0
		3.7277413244286572 18.634346629229157 0
		3.3847183083563457 19.194109222134557 0
		2.9583521973510747 19.693319682838371 0
		2.4591417366472541 20.11968579384364 0
		1.8993791437418579 20.462708809915959 0
		1.2928473726704273 20.713942553979024 0
		0.65448146893864012 20.867200643956984 0
		0 20.918709356859125 0
		-0.65448165596647423 20.867200643956984 0
		-1.2928476220408789 20.713942553979024 0
		-1.8993796424827489 20.462708809915959 0
		-2.4591422353881516 20.11968579384364 0
		-2.9583529454624173 19.693319682838371 0
		-3.3847190564676883 19.194109222134557 0
		-3.7277423219104517 18.634346629229157 0
		-3.9789760659735065 18.027814733472507 0
		-4.1322341559514797 17.38944851802766 0
		-4.1837428688536189 16.734967485487299 0
		-4.1322341559514797 16.080486452946943 0
		-3.9789760659735065 15.442120237502092 0
		-3.7277423219104517 14.83558834174544 0
		-3.3847190564676883 14.275825748840045 0
		-2.9583529454624173 13.776615288136227 0
		-2.4591422353881516 13.350249177130957 0
		-1.8993796424827489 13.007226161058641 0
		-1.2928476220408789 12.755992416995577 0
		-0.65448165596647423 12.602734327017613 0
		0 12.551225614115474 0
		0 12.602734327017615 -0.65448178065169704
		0 12.755992416995579 -1.2928479960965473
		0 13.007226161058643 -1.8993800165384296
		0 13.350249177130957 -2.4591429834994942
		0 13.776615288136229 -2.9583536935737604
		0 14.275825748840045 -3.3847198045790314
		0 14.835588341745444 -3.7277430700218006
		0 15.442120237502094 -3.9789770634553134
		0 16.080486452946946 -4.1322351534332746
		0 16.734967485487303 -4.1837438663354138
		0 17.389448518027663 -4.1322351534332746
		0 18.027814733472511 -3.9789770634553134
		0 18.63434662922916 -3.7277430700218006
		0 19.194109222134557 -3.3847198045790314
		0 19.693319682838371 -2.9583536935737604
		0 20.11968579384364 -2.4591429834994942
		0 20.462708809915959 -1.8993800165384296
		0 20.713942553979024 -1.2928479960965595
		0 20.867200643956984 -0.65448178065170937
		0 20.918709356859125 0
		-1.9505070779504348e-08 20.867200643956984 0.65448153128125153
		-3.8529855476096082e-08 20.713942553979024 1.2928474973556439
		-5.6605906676045444e-08 20.462708809915959 1.8993793931123035
		-7.3288132500121395e-08 20.11968579384364 2.4591419860176997
		-8.8165768877748058e-08 19.693319682838371 2.9583524467215203
		-1.0087246686052691e-07 19.194109222134557 3.3847188070972369
		-1.1109534645026317e-07 18.634346629229157 3.7277418231695481
		-1.1858269513762949e-07 18.027814733472507 3.9789755672326153
		-1.2315014406099734e-07 17.38944851802766 4.1322336572105769
		-1.2468522276886162e-07 16.734967485487299 4.1837423701127161
		-1.2315014406099734e-07 16.080486452946943 4.1322336572105769
		-1.1858269513762949e-07 15.442120237502092 3.9789755672326153
		-1.1109534645026317e-07 14.83558834174544 3.7277418231695481
		-1.0087246686052691e-07 14.275825748840045 3.3847188070972369
		-8.8165768877748058e-08 13.776615288136227 2.9583524467215203
		-7.3288132500121395e-08 13.350249177130957 2.4591419860176997
		-5.6605906676045444e-08 13.007226161058641 1.8993793931123035
		-3.8529855476096082e-08 12.755992416995577 1.2928474973556561
		-1.9505070779504348e-08 12.602734327017613 0.65448153128125153
		0 12.551225614115474 0
		0.65448146893864012 12.602734327017613 0
		1.2928473726704273 12.755992416995577 0
		1.8993791437418579 13.007226161058641 0
		2.4591417366472541 13.350249177130957 0
		2.9583521973510747 13.776615288136227 0
		3.3847183083563457 14.275825748840045 0
		3.7277413244286572 14.83558834174544 0
		3.9789750684917244 15.442120237502092 0
		4.1322331584696856 16.080486452946943 0
		4.1837418713718248 16.734967485487299 0
		3.9789750684917244 16.734967485487299 1.292847372670421
		3.3847183083563457 16.734967485487299 2.4591419860176997
		2.4591417366472541 16.734967485487299 3.3847185577267913
		1.2928472479852045 16.734967485487299 3.9789753178621696
		-1.2468522276886162e-07 16.734967485487299 4.1837423701127161
		-1.2928476220408789 16.734967485487299 3.9789755672326153
		-2.4591422353881516 16.734967485487299 3.3847188070972369
		-3.3847190564676883 16.734967485487299 2.4591422353881454
		-3.9789760659735065 16.734967485487299 1.2928476220408789
		-4.1837428688536189 16.734967485487299 0
		-3.9789760659735065 16.734967485487299 -1.2928476220408789
		-3.384719305838134 16.734967485487299 -2.4591424847586034
		-2.4591427341290486 16.734967485487299 -3.3847195552085858
		-1.2928479960965473 16.734967485487303 -3.9789768140848678
		0 16.734967485487303 -4.1837438663354138
		1.2928479960965473 16.734967485487303 -3.9789770634553134
		2.4591432328699461 16.734967485487299 -3.3847203033199347
		3.3847205526903741 16.734967485487299 -2.4591432328699523
		3.9789775621962042 16.734967485487299 -1.2928481207817824
		4.1837418713718248 16.734967485487299 0
		;
createNode transform -n "CircelDumbbell" -p "ControllerGallery";
	rename -uid "E5C7E4BD-4EB8-150A-C511-C59F27FAB27F";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "CircelDumbbellShape" -p "CircelDumbbell";
	rename -uid "1CEF6A0A-4786-74F9-F9B4-C19AC5746C41";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 81 0 no 3
		82 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		
		82
		0 7.3358094383321744 0
		-0.65225079832843458 7.3871423450684244 0
		-1.2884408929485915 7.5398784195750803 0
		-1.8929056115950507 7.7902554930255237 0
		-2.4507601880787444 8.1321099591781607 0
		-2.9482691942153458 8.557022240471154 0
		-3.3731820989344614 9.0545312466077537 0
		-3.7150361494696833 9.6123862387088632 0
		-3.9654136385375405 10.21685023002485 0
		-4.1181492974267844 10.8530407922146 0
		-4.1694822041630308 11.50529081126038 0
		-4.1181492974267844 12.157540830306161 0
		-3.9654136385375405 12.793731392495911 0
		-3.7150361494696833 13.398195383811899 0
		-3.3731820989344614 13.956050375913005 0
		-2.9482691942153458 14.453559382049606 0
		-2.4507601880787444 14.878471663342602 0
		-1.8929056115950507 15.220325298260413 0
		-1.2884408929485915 15.470703202945682 0
		-0.65225079832843458 15.62343927745234 0
		0 15.67477135295376 0
		0.65225064247190312 15.62343927745234 0
		1.2884406851398829 15.470703202945682 0
		1.8929049881689306 15.220325298260413 0
		2.4507595646526243 14.878471663342602 0
		2.9482685707892258 14.453559382049606 0
		3.3731812676996324 13.956050375913005 0
		3.7150353182348543 13.398195383811899 0
		3.9654123916853004 12.793731392495911 0
		4.1181480505745442 12.157540830306161 0
		4.1694813729282076 11.50529081126038 0
		4.1181480505745442 10.8530407922146 0
		3.9654123916853004 10.21685023002485 0
		3.7150353182348543 9.6123862387088632 0
		3.3731812676996324 9.0545312466077537 0
		2.9482685707892258 8.557022240471154 0
		2.4507595646526243 8.1321099591781607 0
		1.8929049881689306 7.7902554930255237 0
		1.2884406851398829 7.5398784195750803 0
		0.65225064247190312 7.3871423450684244 0
		0 7.3358094383321744 0
		0 -7.3358094383321744 0
		0.65225064247190312 -7.3871423450684244 0
		1.2884406851398829 -7.5398784195750803 0
		1.8929049881689306 -7.7902554930255237 0
		2.4507595646526243 -8.1321099591781607 0
		2.9482685707892258 -8.557022240471154 0
		3.3731812676996324 -9.0545312466077537 0
		3.7150353182348543 -9.6123862387088632 0
		3.9654123916853004 -10.21685023002485 0
		4.1181480505745442 -10.8530407922146 0
		4.1694813729282076 -11.50529081126038 0
		4.1181480505745442 -12.157540830306161 0
		3.9654123916853004 -12.793731392495911 0
		3.7150353182348543 -13.398195383811899 0
		3.3731812676996324 -13.956050375913005 0
		2.9482685707892258 -14.453559382049606 0
		2.4507595646526243 -14.878471663342602 0
		1.8929049881689306 -15.220325298260413 0
		1.2884406851398829 -15.470703202945682 0
		0.65225064247190312 -15.62343927745234 0
		0 -15.67477135295376 0
		-0.65225079832843458 -15.62343927745234 0
		-1.2884408929485915 -15.470703202945682 0
		-1.8929056115950507 -15.220325298260413 0
		-2.4507601880787444 -14.878471663342602 0
		-2.9482691942153458 -14.453559382049606 0
		-3.3731820989344614 -13.956050375913005 0
		-3.7150361494696833 -13.398195383811899 0
		-3.9654136385375405 -12.793731392495911 0
		-4.1181492974267844 -12.157540830306161 0
		-4.1694822041630308 -11.50529081126038 0
		-4.1181492974267844 -10.8530407922146 0
		-3.9654136385375405 -10.21685023002485 0
		-3.7150361494696833 -9.6123862387088632 0
		-3.3731820989344614 -9.0545312466077537 0
		-2.9482691942153458 -8.557022240471154 0
		-2.4507601880787444 -8.1321099591781607 0
		-1.8929056115950507 -7.7902554930255237 0
		-1.2884408929485915 -7.5398784195750803 0
		-0.65225079832843458 -7.3871423450684244 0
		0 -7.3358094383321744 0
		;
createNode transform -n "SquareDumbbell" -p "ControllerGallery";
	rename -uid "5DCA2C5C-4A44-82BC-D37D-DF8DEE545796";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "SquareDumbbellShape" -p "SquareDumbbell";
	rename -uid "D5DE0B3E-4B3A-B37D-896B-FD91883B66F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 7.321548773641589 0
		-4.1837420376187904 7.321548773641589 0
		-4.1837420376187904 15.689032017644342 0
		4.1837420376187904 15.689032017644342 0
		4.1837420376187904 7.321548773641589 0
		0 7.321548773641589 0
		0 -7.321548773641589 0
		4.1837420376187904 -7.321548773641589 0
		4.1837420376187904 -15.689032017644342 0
		-4.1837420376187904 -15.689032017644342 0
		-4.1837420376187904 -7.321548773641589 0
		0 -7.321548773641589 0
		;
createNode transform -n "SphereDumbbell" -p "ControllerGallery";
	rename -uid "10047B52-4FA8-A346-6A46-22ABA13C0C4C";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "SphereDumbbellShape" -p "SphereDumbbell";
	rename -uid "B96FE57E-4659-BF77-9704-FDA84F58A19E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 200 0 no 3
		201 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127
		 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148
		 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169
		 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190
		 191 192 193 194 195 196 197 198 199 200
		201
		0 7.3354944003327729 0
		-0.65230004899192684 7.3868314632431558 0
		-1.2885381474233399 7.5395791750373906 0
		-1.8930483761765748 7.7899753668888518 0
		-2.4509451378277349 8.1318547700862975 0
		-2.9484917573402534 8.5567994695375393 0
		-3.3734366646002036 9.0543467124761801 0
		-3.7153162756063556 9.6122432663186324 0
		-3.9657128830752297 10.216753806784928 0
		-4.1184601792520503 10.852990918124982 0
		-4.1697968265450207 11.50529081126038 0
		-3.9657128830752297 11.50529081126038 -1.2885381474233475
		-3.3734368724089099 11.50529081126038 -2.4509453456364501
		-2.4509455534451483 11.50529081126038 -3.3734370802176166
		-1.2885384591364 11.50529081126038 -3.965713298692648
		0 11.50529081126038 -4.1697980733972591
		1.2885384591364 11.50529081126038 -3.9657137143100654
		2.4509459690625621 11.50529081126038 -3.3734379114524513
		3.3734381192611509 11.50529081126038 -2.4509459690625639
		3.9657141299274703 11.50529081126038 -1.2885385630407526
		4.1697959953101931 11.50529081126038 0
		3.9657116362229896 11.50529081126038 1.2885378357102721
		3.3734358333653764 11.50529081126038 2.4509447222103238
		2.4509445144016149 11.50529081126038 3.3734360411740854
		1.2885377318059263 11.50529081126038 3.9657120518403954
		-1.2426960454315523e-07 11.50529081126038 4.1697964109276011
		-1.2885381474233399 11.50529081126038 3.9657120518403954
		-2.4509451378277349 11.50529081126038 3.3734364567914903
		-3.3734366646002036 11.50529081126038 2.4509451378277287
		-3.9657128830752297 11.50529081126038 1.2885381474233353
		-4.1697968265450207 11.50529081126038 0
		-4.1184601792520503 12.157590704395776 0
		-3.9657128830752297 12.793827815735833 0
		-3.7153162756063556 13.398338356202128 0
		-3.3734366646002036 13.956234910044582 0
		-2.9484917573402534 14.453782152983219 0
		-2.4509451378277349 14.878726021199638 0
		-1.8930483761765748 15.22060625563191 0
		-1.2885381474233399 15.471002447483372 0
		-0.65230004899192684 15.623750159277604 0
		0 15.675087222187988 0
		0.65229984118322004 15.623750159277604 0
		1.2885378357102797 15.471002447483372 0
		1.8930477527504548 15.22060625563191 0
		2.4509445144016149 14.878726021199638 0
		2.9484909261054271 14.453782152983219 0
		3.3734358333653764 13.956234910044582 0
		3.7153154443715293 13.398338356202128 0
		3.9657116362229896 12.793827815735833 0
		4.1184589323998102 12.157590704395776 0
		4.1184589323998102 10.852990918124982 0
		3.9657116362229896 10.216753806784928 0
		3.7153154443715293 9.6122432663186324 0
		3.3734358333653764 9.0543467124761801 0
		2.9484909261054271 8.5567994695375393 0
		2.4509445144016149 8.1318547700862975 0
		1.8930477527504548 7.7899753668888518 0
		1.2885378357102797 7.5395791750373906 0
		0.65229984118322004 7.3868314632431558 0
		0 7.3354944003327729 0
		-1.9440050160384775e-08 7.3868314632431558 0.65229989313539183
		-3.8401419988580933e-08 7.5395791750373906 1.2885379396146264
		-5.6417219422771179e-08 7.7899753668888518 1.8930481683678604
		-7.3043838572550263e-08 8.1318547700862975 2.4509447222103238
		-8.7871877136988254e-08 8.5567994695375393 2.9484911339141271
		-1.0053622226015855e-07 9.0543467124761801 3.3734364567914903
		-1.1072502864514379e-07 9.6122432663186324 3.7153158599889435
		-1.1818741667935221e-07 10.216753806784928 3.9657120518403954
		-1.227396408438626e-07 10.852990918124982 4.1184593480172236
		-1.2426960454315523e-07 11.50529081126038 4.1697964109276011
		-1.227396408438626e-07 12.157590704395776 4.1184593480172236
		-1.1818741667935221e-07 12.793827815735833 3.9657120518403954
		-1.1072502864514379e-07 13.398338356202128 3.7153158599889435
		-1.0053622226015855e-07 13.956234910044582 3.3734364567914903
		-8.7871877136988254e-08 14.453782152983219 2.9484911339141271
		-7.3043838572550263e-08 14.878726021199638 2.4509447222103238
		-5.6417219422771179e-08 15.22060625563191 1.8930481683678604
		-3.8401419988580933e-08 15.471002447483372 1.2885379396146264
		-1.9440050160384775e-08 15.623750159277604 0.65229989313539183
		0 15.675087222187988 0
		0 15.623750159277604 -0.65230015289627774
		0 15.471002447483372 -1.2885384591363984
		0 15.22060625563191 -1.8930487917939864
		0 14.878726021199638 -2.450945761253855
		0 14.453782152983219 -2.9484923807663792
		0 13.956234910044582 -3.3734372880263255
		0 13.398338356202128 -3.7153171068411837
		0 12.793827815735833 -3.9657137143100654
		0 12.157590704395776 -4.1184610104868806
		0 11.50529081126038 -4.1697980733972591
		0 10.852990918124982 -4.1184610104868806
		0 10.216753806784928 -3.9657137143100654
		0 9.6122432663186324 -3.7153171068411837
		0 9.0543467124761801 -3.3734372880263255
		0 8.5567994695375393 -2.9484923807663792
		0 8.1318547700862975 -2.450945761253855
		0 7.7899753668888518 -1.8930487917939864
		0 7.5395791750373906 -1.2885384591363984
		0 7.3868314632431558 -0.65230015289627774
		0 7.3354944003327729 0
		0 -7.3358094383321744 0
		0 -7.3871423450684244 -0.65225095418496615
		0 -7.5398784195750803 -1.2884413085660029
		0 -7.7902554930255237 -1.8929058194037593
		0 -8.1321099591781607 -2.4507608115048582
		0 -8.557022240471154 -2.9482700254501681
		0 -9.0545312466077537 -3.373182722360581
		0 -9.6123862387088632 -3.7150369807045118
		0 -10.21685023002485 -3.9654144697723628
		0 -10.8530407922146 -4.1181501286616129
		0 -11.50529081126038 -4.169483451015271
		1.2884413085660043 -11.50529081126038 -3.9654144697723628
		2.4507610193135729 -11.50529081126038 -3.3731833457866949
		3.3731835535954073 -11.50529081126038 -2.4507610193135672
		3.9654148853897802 -11.50529081126038 -1.2884414124703572
		4.1694813729282059 -11.50529081126038 0
		3.9654123916852995 -11.50529081126038 1.2884406851398891
		3.3731812676996329 -11.50529081126038 2.4507597724613395
		2.4507595646526261 -11.50529081126038 3.3731814755083414
		1.2884404773311771 -11.50529081126038 3.9654128073027177
		-1.2426022806549686e-07 -11.50529081126038 4.1694817885456255
		-1.2884408929485907 -11.50529081126038 3.9654132229201227
		-2.4507601880787462 -11.50529081126038 3.3731818911257587
		-3.3731820989344601 -11.50529081126038 2.4507601880787444
		-3.9654136385375405 -11.50529081126038 1.2884408929485978
		-4.1694822041630317 -11.50529081126038 0
		-3.9654136385375405 -11.50529081126038 -1.2884408929485853
		-3.3731823067431668 -11.50529081126038 -2.4507603958874533
		-2.4507606036961596 -11.50529081126038 -3.3731825145518726
		-1.2884413085660043 -11.50529081126038 -3.9654144697723628
		0 -11.50529081126038 -4.169483451015271
		0 -12.157540830306161 -4.1181501286616129
		0 -12.793731392495911 -3.9654144697723628
		0 -13.398195383811899 -3.7150369807045118
		0 -13.956050375913005 -3.373182722360581
		0 -14.453559382049606 -2.9482700254501681
		0 -14.878471663342602 -2.4507608115048582
		0 -15.220325298260413 -1.8929058194037593
		0 -15.470703202945682 -1.2884413085660029
		0 -15.62343927745234 -0.65225095418495382
		0 -15.67477135295376 0
		-1.9438583924529013e-08 -15.62343927745234 0.65225069442408024
		-3.8398524675961844e-08 -15.470703202945682 1.2884407890442433
		-5.6412964706687071e-08 -15.220325298260413 1.8929051959776455
		-7.3038326640505377e-08 -14.878471663342602 2.4507597724613395
		-8.7865250432170232e-08 -14.453559382049606 2.9482687785979405
		-1.0052863561211922e-07 -13.956050375913005 3.3731818911257587
		-1.1071668023570947e-07 -13.398195383811899 3.7150357338522721
		-1.1817849849716721e-07 -12.793731392495911 3.9654132229201351
		-1.2273037584348155e-07 -12.157540830306161 4.1181488818093728
		-1.2426022806549686e-07 -11.50529081126038 4.1694817885456255
		-1.2273037584348155e-07 -10.8530407922146 4.1181488818093728
		-1.1817849849716721e-07 -10.21685023002485 3.9654132229201227
		-1.1071668023570947e-07 -9.6123862387088632 3.7150357338522721
		-1.0052863561211922e-07 -9.0545312466077537 3.3731818911257587
		-8.7865250432170232e-08 -8.557022240471154 2.9482687785979405
		-7.3038326640505377e-08 -8.1321099591781607 2.4507597724613395
		-5.6412964706687071e-08 -7.7902554930255237 1.8929051959776455
		-3.8398524675961844e-08 -7.5398784195750803 1.2884407890442433
		-1.9438583924529013e-08 -7.3871423450684244 0.65225069442408024
		0 -7.3358094383321744 0
		0.6522506424719019 -7.3871423450684244 0
		1.2884406851398837 -7.5398784195750803 0
		1.8929049881689313 -7.7902554930255237 0
		2.4507595646526261 -8.1321099591781607 0
		2.9482685707892267 -8.557022240471154 0
		3.3731812676996329 -9.0545312466077537 0
		3.7150353182348574 -9.6123862387088632 0
		3.9654123916852995 -10.21685023002485 0
		4.1181480505745442 -10.8530407922146 0
		4.1694813729282059 -11.50529081126038 0
		4.1181480505745442 -12.157540830306161 0
		3.9654123916852995 -12.793731392495911 0
		3.7150353182348574 -13.398195383811899 0
		3.3731812676996329 -13.956050375913005 0
		2.9482685707892267 -14.453559382049606 0
		2.4507595646526261 -14.878471663342602 0
		1.8929049881689313 -15.220325298260413 0
		1.2884406851398837 -15.470703202945682 0
		0.6522506424719019 -15.62343927745234 0
		0 -15.67477135295376 0
		-0.65225079832843191 -15.62343927745234 0
		-1.2884408929485907 -15.470703202945682 0
		-1.8929056115950522 -15.220325298260413 0
		-2.4507601880787462 -14.878471663342602 0
		-2.9482691942153463 -14.453559382049606 0
		-3.3731820989344601 -13.956050375913005 0
		-3.7150361494696846 -13.398195383811899 0
		-3.9654136385375405 -12.793731392495911 0
		-4.1181492974267844 -12.157540830306161 0
		-4.1694822041630317 -11.50529081126038 0
		-4.1181492974267844 -10.8530407922146 0
		-3.9654136385375405 -10.21685023002485 0
		-3.7150361494696846 -9.6123862387088632 0
		-3.3731820989344601 -9.0545312466077537 0
		-2.9482691942153463 -8.557022240471154 0
		-2.4507601880787462 -8.1321099591781607 0
		-1.8929056115950522 -7.7902554930255237 0
		-1.2884408929485907 -7.5398784195750803 0
		-0.65225079832843191 -7.3871423450684244 0
		0 -7.3358094383321744 0
		;
createNode transform -n "Cross" -p "ControllerGallery";
	rename -uid "9B6FEB2C-41CC-6E91-AEE2-75AA19AE888D";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "CrossShape" -p "Cross";
	rename -uid "4AD35478-4C6A-40A5-2A53-E18A041D514E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-3.4864515594765204 0 -6.9729031189530408
		3.4864515594765204 0 -6.9729031189530408
		3.4864515594765204 0 -3.4864515594765204
		6.9729031189530408 0 -3.4864515594765204
		6.9729031189530408 0 3.4864515594765204
		3.4864515594765204 0 3.4864515594765204
		3.4864515594765204 0 6.9729031189530408
		-3.4864515594765204 0 6.9729031189530408
		-3.4864515594765204 0 3.4864515594765204
		-6.9729031189530408 0 3.4864515594765204
		-6.9729031189530408 0 -3.4864515594765204
		-3.4864515594765204 0 -3.4864515594765204
		-3.4864515594765204 0 -6.9729031189530408
		;
createNode transform -n "CrossThin" -p "ControllerGallery";
	rename -uid "BAAEA251-4E50-6858-3B1D-3FBF470F70B7";
	setAttr ".t" -type "double3" 34.838359984609994 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "CrossThinShape" -p "CrossThin";
	rename -uid "912836D4-4BA9-C5EC-F2D2-3CBE50B942D1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-1.3945806237906082 0 -6.9729031189530408
		-1.3945806237906082 0 -1.3945806237906082
		-6.9729031189530408 0 -1.3945806237906082
		-6.9729031189530408 0 1.3945806237906082
		-1.3945806237906082 0 1.3945806237906082
		-1.3945806237906082 0 6.9729031189530408
		1.3945806237906082 0 6.9729031189530408
		1.3945806237906082 0 1.3945806237906082
		6.9729031189530408 0 1.3945806237906082
		6.9729031189530408 0 -1.3945806237906082
		1.3945806237906082 0 -1.3945806237906082
		1.3945806237906082 0 -6.9729031189530408
		-1.3945806237906082 0 -6.9729031189530408
		;
createNode transform -n "Locator" -p "ControllerGallery";
	rename -uid "9E924C12-4E5C-34F1-D421-7BA555664CEF";
	setAttr ".t" -type "double3" 52.257539976914991 3.0942679516074984e-14 -69.676719969219988 ;
createNode nurbsCurve -n "LocatorShape" -p "Locator";
	rename -uid "097E363D-4858-631A-A9EA-E8B0758D72CB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 6.9729031189530408 0
		0 -6.9729031189530408 0
		0 0 0
		0 0 -6.9729031189530408
		0 0 6.9729031189530408
		0 0 0
		6.9729031189530408 0 0
		-6.9729031189530408 0 0
		;
createNode transform -n "FourArrows" -p "ControllerGallery";
	rename -uid "B796ADB3-4D76-8D87-47C8-DC931483A0C7";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "FourArrowsShape" -p "FourArrows";
	rename -uid "62BA0657-4180-08FF-DBD2-CEBABAE4AEA1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -6.9729031189530408
		2.7891612475812164 0 -4.1837418713718248
		1.3945806237906082 0 -4.1837418713718248
		1.3945806237906082 0 -1.3945806237906082
		4.1837418713718248 0 -1.3945806237906082
		4.1837418713718248 0 -2.7891612475812164
		6.9729031189530408 0 0
		4.1837418713718248 0 2.7891612475812164
		4.1837418713718248 0 1.3945806237906082
		1.3945806237906082 0 1.3945806237906082
		1.3945806237906082 0 4.1837418713718248
		2.7891612475812164 0 4.1837418713718248
		0 0 6.9729031189530408
		-2.7891612475812164 0 4.1837418713718248
		-1.3945806237906082 0 4.1837418713718248
		-1.3945806237906082 0 1.3945806237906082
		-4.1837418713718248 0 1.3945806237906082
		-4.1837418713718248 0 2.7891612475812164
		-6.9729031189530408 0 0
		-4.1837418713718248 0 -2.7891612475812164
		-4.1837418713718248 0 -1.3945806237906082
		-1.3945806237906082 0 -1.3945806237906082
		-1.3945806237906082 0 -4.1837418713718248
		-2.7891612475812164 0 -4.1837418713718248
		0 0 -6.9729031189530408
		;
createNode transform -n "FourArrowsThin" -p "ControllerGallery";
	rename -uid "A45C30C5-4E1C-4DD6-AB9C-F192CE81B92E";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "FourArrowsThinShape" -p "FourArrowsThin";
	rename -uid "BD8444B9-4F08-BA99-73F5-EEBB49AC828A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -6.9659302158340912
		2.3219767386113639 0 -4.6439534772227278
		0.58049418465284097 0 -4.6439534772227278
		0.58049418465284097 0 -0.58049418465284097
		4.6439534772227278 0 -0.58049418465284097
		4.6439534772227278 0 -2.3219767386113639
		6.9659302158340912 0 0
		4.6439534772227278 0 2.3219767386113639
		4.6439534772227278 0 0.58049418465284097
		0.58049418465284097 0 0.58049418465284097
		0.58049418465284097 0 4.6439534772227278
		2.3219767386113639 0 4.6439534772227278
		0 0 6.9659302158340912
		-2.3219767386113639 0 4.6439534772227278
		-0.58049418465284097 0 4.6439534772227278
		-0.58049418465284097 0 0.58049418465284097
		-4.6439534772227278 0 0.58049418465284097
		-4.6439534772227278 0 2.3219767386113639
		-6.9659302158340912 0 0
		-4.6439534772227278 0 -2.3219767386113639
		-4.6439534772227278 0 -0.58049418465284097
		-0.58049418465284097 0 -0.58049418465284097
		-0.58049418465284097 0 -4.6439534772227278
		-2.3219767386113639 0 -4.6439534772227278
		0 0 -6.9659302158340912
		;
createNode transform -n "FourArrowsCurved" -p "ControllerGallery";
	rename -uid "CF251508-46EB-4B67-A596-3EB67BE90AAB";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "FourArrowsCurvedShape" -p "FourArrowsCurved";
	rename -uid "CC498E16-4AFA-5677-66A2-58A1B201294E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		6.9388463291763438 -1.3912158462005835 0
		4.643953477222726 0.58086468268069746 3.0959689848151495
		4.643953477222726 0.58086466457110031 1.5479844924075779
		3.0959689848151508 1.1687715128198515 1.5479844924075779
		1.5479844924075754 1.3912158462005833 1.5479844924075779
		1.5479844924075754 1.1687715128198515 3.0959689848151495
		1.5479844924075754 0.58086466457110031 4.6439534772227278
		3.0959689848151508 0.58086468268069746 4.6439534772227278
		0 -1.3912158462005835 6.9388463291763429
		-3.0959689848151508 0.58086468268069746 4.6439534772227278
		-1.5479844924075754 0.58086466457110031 4.6439534772227278
		-1.5479844924075754 1.1687715128198515 3.0959689848151495
		-1.5479844924075754 1.3912158462005833 1.5479844924075779
		-3.0959689848151508 1.1687715128198515 1.5479844924075779
		-4.643953477222726 0.58086466457110031 1.5479844924075779
		-4.643953477222726 0.58086468268069746 3.0959689848151495
		-6.9388463291763438 -1.3912158462005835 0
		-4.643953477222726 0.58086468268069746 -3.0959689848151495
		-4.643953477222726 0.58086466457110031 -1.5479844924075779
		-3.0959689848151508 1.1687715128198515 -1.5479844924075779
		-1.5479844924075754 1.3912158462005833 -1.5479844924075779
		-1.5479844924075754 1.1687715128198515 -3.0959689848151495
		-1.5479844924075754 0.58086466457110031 -4.6439534772227278
		-3.0959689848151508 0.58086468268069746 -4.6439534772227278
		0 -1.3912158462005835 -6.9388463291763429
		3.0959689848151508 0.58086468268069746 -4.6439534772227278
		1.5479844924075754 0.58086466457110031 -4.6439534772227278
		1.5479844924075754 1.1687715128198515 -3.0959689848151495
		1.5479844924075754 1.3912158462005833 -1.5479844924075779
		3.0959689848151508 1.1687715128198515 -1.5479844924075779
		4.643953477222726 0.58086466457110031 -1.5479844924075779
		4.643953477222726 0.58086468268069746 -3.0959689848151495
		6.9388463291763438 -1.3912158462005835 0
		;
createNode transform -n "FourArrowsCurvedThin" -p "ControllerGallery";
	rename -uid "A9403400-4E10-6BF9-7CAC-36BD5106B72A";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "FourArrowsCurvedThinShape" -p "FourArrowsCurvedThin";
	rename -uid "955C7CD1-4388-5E3D-43C3-2C875E89F251";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 40 0 no 3
		41 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40
		41
		0 -2.0062277740055672 -7.0123635364148287
		2.6557965868401889 -0.31792198344682743 -5.3115931736803716
		0.66394914671004646 -0.31792198344682743 -5.3115931736803716
		0.67112945069560215 0.69039223819211248 -4.0267767041736127
		0.6516566046273784 1.5813661082393617 -2.6066264185095136
		0.6516566046273784 2.0062277740055672 -0.6516566046273784
		2.6066264185095136 1.5813661082393617 -0.6516566046273784
		4.0267767041736189 0.69039223819211248 -0.67112945069560215
		5.3115931736803743 -0.31792198344682743 -0.66394914671004646
		5.3115931736803743 -0.31792198344682743 -2.6557965868401858
		7.0123635364148322 -2.0062277740055672 0
		5.3115931736803743 -0.31792198344682743 2.6557965868401858
		5.3115931736803743 -0.31792198344682743 0.66394914671004646
		4.0267767041736189 0.69039223819211248 0.67112945069560215
		2.6066264185095136 1.5813661082393617 0.6516566046273784
		0.6516566046273784 2.0062277740055672 0.6516566046273784
		0.6516566046273784 1.5813661082393617 2.6066264185095136
		0.67112945069560215 0.69039223819211248 4.0267767041736127
		0.66394914671004646 -0.31792198344682743 5.3115931736803716
		2.6557965868401889 -0.31792198344682743 5.3115931736803716
		0 -2.0062277740055672 7.0123635364148287
		-2.6557965868401889 -0.31792198344682743 5.3115931736803716
		-0.66394914671004646 -0.31792198344682743 5.3115931736803716
		-0.67112945069560215 0.69039223819211248 4.0267767041736127
		-0.6516566046273784 1.5813661082393617 2.6066264185095136
		-0.6516566046273784 2.0062277740055672 0.6516566046273784
		-2.6066264185095136 1.5813661082393617 0.6516566046273784
		-4.0267767041736189 0.69039223819211248 0.67112945069560215
		-5.3115931736803743 -0.31792198344682743 0.66394914671004646
		-5.3115931736803743 -0.31792198344682743 2.6557965868401858
		-7.0123635364148322 -2.0062277740055672 0
		-5.3115931736803743 -0.31792198344682743 -2.6557965868401858
		-5.3115931736803743 -0.31792198344682743 -0.66394914671004646
		-4.0267767041736189 0.69039223819211248 -0.67112945069560215
		-2.6066264185095136 1.5813661082393617 -0.6516566046273784
		-0.6516566046273784 2.0062277740055672 -0.6516566046273784
		-0.6516566046273784 1.5813661082393617 -2.6066264185095136
		-0.67112945069560215 0.69039223819211248 -4.0267767041736127
		-0.66394914671004646 -0.31792198344682743 -5.3115931736803716
		-2.6557965868401889 -0.31792198344682743 -5.3115931736803716
		0 -2.0062277740055672 -7.0123635364148287
		;
createNode transform -n "TwoArrow" -p "ControllerGallery";
	rename -uid "F817A594-4D2B-E3F6-557C-798E2FF67E5B";
	setAttr ".t" -type "double3" 34.838359984609994 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "TwoArrowShape" -p "TwoArrow";
	rename -uid "60DF9C0D-4F87-6860-E5BF-F8B9C47A7AD1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 -8.4472391775292657
		3.3788956710117062 0 -5.0683435065175599
		1.6894478355058531 0 -5.0683435065175599
		1.6894478355058531 0 5.0683435065175599
		3.3788956710117062 0 5.0683435065175599
		0 0 8.4472391775292781
		-3.3788956710117062 0 5.0683435065175599
		-1.6894478355058531 0 5.0683435065175599
		-1.6894478355058531 0 -5.0683435065175599
		-3.3788956710117062 0 -5.0683435065175599
		0 0 -8.4472391775292657
		;
createNode transform -n "TwoArrowsThin" -p "ControllerGallery";
	rename -uid "9FF6E450-48BA-4C3D-70F9-2E9D5FB667DF";
	setAttr ".t" -type "double3" 52.257539976914991 3.0942679516074984e-14 -52.257539976914991 ;
createNode nurbsCurve -n "TwoArrowsThinShape" -p "TwoArrowsThin";
	rename -uid "8352918A-4C68-2440-8F9B-AAAC43286FD5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 -8.4472391775292657
		3.3788956710117062 0 -5.0683435065175599
		0.9010388092705558 0 -5.0683435065175599
		0.9010388092705558 0 5.0683435065175599
		3.3788956710117062 0 5.0683435065175599
		0 0 8.4472391775292781
		-3.3788956710117062 0 5.0683435065175599
		-0.9010388092705558 0 5.0683435065175599
		-0.9010388092705558 0 -5.0683435065175599
		-3.3788956710117062 0 -5.0683435065175599
		0 0 -8.4472391775292657
		;
createNode transform -n "TwoArrowsCurved" -p "ControllerGallery";
	rename -uid "4F00728D-40C9-08AA-41D4-1EBC314C3F1A";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "TwoArrowsCurvedShape" -p "TwoArrowsCurved";
	rename -uid "B51A8C88-42E5-A80B-2CAC-16BFE8123928";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		0 -3.8688518951273894 -8.4500469411864838
		0 2.6916700826239124 -7.9862255163614613
		0 -0.5207789763042957 -7.2767799488902112
		0 1.3209589790504093 -6.1499128236561162
		0 3.2063379321086858 -3.3286298255499229
		0 3.8688518951273778 0
		0 3.2063379321086858 3.3286298255499229
		0 1.3209589790504093 6.1499128236561162
		0 -0.5065453681887373 7.2920153810745543
		0 2.6916700826239124 7.9862255163614613
		0 -3.8688518951273894 8.4500469411864909
		0 -0.68523995670189419 2.6950300464237982
		0 -1.4322693394301358 6.0776736019585806
		0 0.20143599487432132 5.0322239481597828
		0 1.7461331138377607 2.7230965330274266
		0 2.286694262330824 0
		0 1.7461331138377607 -2.7230965330274328
		0 0.20143599487432132 -5.0322239481597828
		0 -1.4444607677131951 -6.0539534905456254
		0 -0.68523995670189419 -2.6950300464237982
		0 -3.8688518951273894 -8.4500469411864838
		;
createNode transform -n "TwoArrowsCurvedThin" -p "ControllerGallery";
	rename -uid "C931B982-4F1B-E65C-6B6D-10B06931F95C";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "TwoArrowsCurvedThinShape" -p "TwoArrowsCurvedThin";
	rename -uid "E670AAA8-40DE-8613-2B5A-6FB0FC80A870";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 -3.3773630588766177 -8.4500458471131541
		0 0.87165887066229963 -8.1496465042935
		0 -1.4183287757376333 -7.7401411086265117
		0 -0.71799868400513245 -7.3739587019217838
		0 0.58904457976303937 -6.4454924787972487
		0 2.098369933123168 -4.5806490950475842
		0 3.0516586983105585 -2.3778897248108763
		0 3.3773630588765933 8.1585387258213296e-08
		0 3.0516586983105585 2.3778897248108763
		0 2.098369933123168 4.580649095047578
		0 0.58904457976303937 6.4454924787972487
		0 -0.71799868400513245 7.3739587019217838
		0 -1.4183287757376333 7.7401411086265117
		0 0.87165887066229963 8.1496465042934947
		0 -3.3773630588766177 8.4500458471131541
		0 -1.3154449954985832 4.7227215467538564
		0 -1.8038518025148271 7.0030264052981863
		0 -1.1703695485896453 6.6717569372790457
		0 0.01271905724332238 5.8314173933146627
		0 1.3777758626825103 4.1445659440552554
		0 2.2406004372085313 2.1513341172097036
		0 2.5350603379930479 7.3814288011148649e-08
		0 2.2406004372085313 -2.1513341172097036
		0 1.3777758626825103 -4.1445659440552554
		0 0.01271905724332238 -5.8314173933146627
		0 -1.1703695485896453 -6.6717569372790457
		0 -1.8038518025148271 -7.0030264052981863
		0 -1.3154449954985832 -4.7227215467538564
		0 -3.3773630588766177 -8.4500458471131541
		;
createNode transform -n "OneArrow" -p "ControllerGallery";
	rename -uid "FD09313A-4545-DF9A-84AA-93A1D6E40CDE";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "OneArrowShape" -p "OneArrow";
	rename -uid "DBBBDB33-4E55-600E-A2A0-AEBD7FBB9AFF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0 -6.9729031189530408
		5.5783224951624337 0 -1.3945806237906082
		2.7891612475812169 0 -1.3945806237906082
		2.7891612475812169 0 6.9729031189530408
		-2.7891612475812169 0 6.9729031189530408
		-2.7891612475812169 0 -1.3945806237906082
		-5.5783224951624337 0 -1.3945806237906082
		0 0 -6.9729031189530408
		;
createNode transform -n "OneArrowThin" -p "ControllerGallery";
	rename -uid "B36120B8-4EA7-A020-9696-75B13C9B4068";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "OneArrowThinShape" -p "OneArrowThin";
	rename -uid "B34974A2-4527-ABE4-EAEE-A08118B268BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0 -6.9676719969219985
		4.5245412578091173 0 -1.3945806237906082
		1.3945806237906082 0 -1.3945806237906082
		1.3945806237906082 0 6.9729031189530408
		-1.3945806237906082 0 6.9729031189530408
		-1.3945806237906082 0 -1.3945806237906082
		-4.5245412578091173 0 -1.3945806237906082
		0 0 -6.9676719969219985
		;
createNode transform -n "CircleOneArrows" -p "ControllerGallery";
	rename -uid "9ACDD48A-4329-3A02-0A65-A985F61475AE";
	setAttr ".t" -type "double3" 34.838359984609994 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "CircleOneArrowsShape" -p "CircleOneArrows";
	rename -uid "C7BE9E86-457A-9E87-F449-0EA00459553D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		3.8298515215095543 -5.756941726595442e-18 -1.2443941248327073
		4.0269415329057381 0 0
		3.8298491169218662 0 1.2443933980443052
		3.2578642683235777 0 2.3669770364595268
		2.3669768288067194 0 3.2578644759763851
		1.2443932942179017 0 3.8298491169218662
		-1.2001220980005676e-07 0 4.026941948211352
		-1.2443936056971123 0 3.8298495322274806
		-2.3669772441123338 0 3.257864683629192
		-3.257864891281999 0 2.3669772441123338
		-3.8298499475330949 0 1.2443936056971123
		-4.0269423635169668 0 0
		-3.8298499475330949 0 -1.2443936056971123
		-3.2578650989348064 0 -2.3669774517651412
		-2.3669778670707551 0 -3.2578653065876133
		-1.2443940210027267 0 -3.8298507781443236
		-1.2443940210027267 2.8958095990102915e-16 -4.7346474027083829
		-2.3669778670707551 6.0866131135546042e-16 -4.7346472671991764
		0 0 -6.949227165090238
		2.3669782823763694 -5.9546409399167717e-16 -4.7346474416106465
		1.2443940210027267 -2.7355352420632629e-16 -4.7378379000284294
		1.2443940210027267 0 -3.8298511934499375
		2.3669782823763694 0 -3.257866137198842
		3.2578663448516494 0 -2.3669782823763694
		3.8298516960015436 5.756941726595442e-18 -1.2443941248255532
		;
createNode transform -n "CircleTwoArrows" -p "ControllerGallery";
	rename -uid "84FD0C98-4306-4F39-F77D-7290C0462F54";
	setAttr ".t" -type "double3" 52.257539976914991 3.0942679516074984e-14 -34.838359984609994 ;
createNode nurbsCurve -n "CircleTwoArrowsShape" -p "CircleTwoArrows";
	rename -uid "37E42549-4E35-564C-8110-A9AEDBC805F6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		3.2578662524735358 0 -2.3669786403678179
		3.8298516087555519 0 -1.2443941248291301
		4.0269415329057381 0 0
		3.8298491169218662 0 1.2443933980443052
		3.2578642683235777 0 2.3669770364595268
		2.3669768288067194 0 3.2578644759763851
		1.2443932942179017 0 3.8298491169218662
		1.2443932942179017 -3.2858176601712331e-16 4.6076110448561822
		2.3669782823721306 -5.2625938675827423e-16 4.6076109596650072
		0 0 6.9676719969219985
		-2.3669778670607795 5.0988569130158438e-16 4.6076108999660823
		-1.2443936056971123 2.5935064538647375e-16 4.607610590616285
		-1.2443936056971123 0 3.8298495322274806
		-2.3669772441123338 0 3.257864683629192
		-3.257864891281999 0 2.3669772441123338
		-3.8298499475330949 0 1.2443936056971123
		-4.0269423635169668 0 0
		-3.8298499475330949 0 -1.2443936056971123
		-3.2578650989348064 0 -2.3669774517651412
		-2.3669778670707551 0 -3.2578653065876133
		-1.2443940210027267 0 -3.8298507781443236
		-1.2443940210027267 3.1012459194915811e-16 -4.7139465482365557
		-2.3669778670807311 5.5697039719391249e-16 -4.7139465482377556
		0 0 -6.9676719969219985
		2.3669782823806087 -5.3980137899584097e-16 -4.7139465482355964
		1.2290735007180469 -2.7615895213472498e-16 -4.7139465354087227
		1.2443940210027267 0 -3.8298511934499375
		2.3669782823763694 0 -3.257866137198842
		3.2578664372297625 0 -2.3669779243849214
		;
createNode transform -n "CircleThreeArrows" -p "ControllerGallery";
	rename -uid "116E7746-4F4F-E66F-470D-C097EA4D5B93";
	setAttr ".t" -type "double3" -34.838359984609994 3.0942679516074984e-14 -17.419179992304997 ;
createNode nurbsCurve -n "CircleThreeArrowsShape" -p "CircleThreeArrows";
	rename -uid "890A2FE0-4DDD-1969-423F-6C94A454A4F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0 0 6.9676719969219985
		2.3669768287997326 0 4.609460420925596
		1.2290727739332219 0 4.6094598932038222
		1.2443932942179017 0 3.8298491169218662
		2.3669768288067194 0 3.2578644759763851
		3.2578642683235777 0 2.3669770364595268
		3.8298491169218662 0 1.2443933980443052
		5.0776387308993636 0 1.2290728777596256
		5.0776389068066212 0 2.3669770364595268
		7.3468433083284017 0 0
		5.0776399622501751 0 -2.3378369103802039
		5.0776404899719489 0 -1.2443941248291301
		3.8298516087555519 0 -1.2443941248291301
		3.2578663448516494 0 -2.3669782823763694
		2.3669782823763694 0 -3.257866137198842
		1.2443940210027267 0 -3.8298511934499375
		1.2290735007180469 0 -4.7280163492454488
		2.3669768288137063 0 -4.7280163492419298
		0 0 -6.9676719969219985
		-2.3669772441151684 0 -4.7280163492507272
		-1.2443940210027267 0 -4.7280163492436911
		-1.2443940210027267 0 -3.8298507781443236
		-2.3669778670707551 0 -3.2578653065876133
		-3.2578650989348064 0 -2.3669774517651412
		-3.8298499475330949 0 -1.2443936056971123
		-4.0269423635169668 0 0
		-3.8298499475330949 0 1.2443936056971123
		-3.257864891281999 0 2.3669772441123338
		-2.3669772441123338 0 3.257864683629192
		-1.2443936056971123 0 3.8298495322274806
		-1.2443936056971123 0 4.609460420925596
		-2.3669772441094996 0 4.6094598932038222
		0 0 6.9676719969219985
		;
createNode transform -n "CircleFourArrows" -p "ControllerGallery";
	rename -uid "E806E5DB-4763-1D01-F28F-37B78C8389CD";
	setAttr ".t" -type "double3" -17.419179992304997 3.0942679516074984e-14 -17.419179992304997 ;
createNode nurbsCurve -n "CircleFourArrowsShape" -p "CircleFourArrows";
	rename -uid "5A661B9C-42C7-E330-8A76-66BFC608D49E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 36 0 no 3
		37 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36
		37
		-7.3916082269426653 0 0
		-5.1957422157538886 0 2.3378355187575446
		-5.1957413128544836 0 1.2290730854124325
		-3.8298499475330949 0 1.2443936056971123
		-3.257864891281999 0 2.3669772441123338
		-2.3669772441123338 0 3.257864683629192
		-1.2443936056971123 0 3.8298495322274806
		-1.2462822926019617 0 4.6093750728276612
		-2.3378366175638474 0 4.6093751543027377
		0 0 6.9676719969219985
		2.3669784175045612 0 4.6093752406558846
		1.2170374804047446 0 4.609374893165846
		1.2443932942179017 0 3.8298491169218662
		2.3669768288067194 0 3.2578644759763851
		3.2578642683235777 0 2.3669770364595268
		3.8298491169218662 0 1.2443933980443052
		5.0686977098081583 0 1.2443933980443052
		5.0686983976865028 0 2.3378358101691776
		7.3568152461832499 0 0.0037939117614427314
		5.0686981238719158 0 -2.3669781366736657
		5.068697813933734 0 -1.2443941248291301
		3.8298516087555519 0 -1.2443941248291301
		3.2578663448516494 0 -2.3669782823763694
		2.3669782823763694 0 -3.257866137198842
		1.2443940210027267 0 -3.8298511934499375
		1.2443940210027267 0 -4.7285397674011467
		2.3669781472481781 0 -4.7285393995156495
		0 0 -6.9676719969219985
		-2.3378363725853317 0 -4.7285396880337398
		-1.2443940210027267 0 -4.728540236237853
		-1.2443940210027267 0 -3.8298507781443236
		-2.3669778670707551 0 -3.2578653065876133
		-3.2578650989348064 0 -2.3669774517651412
		-3.8298499475330949 0 -1.2443936056971123
		-5.1957381632652133 0 -1.2443936056971123
		-5.1957385197406039 0 -2.3669784280790731
		-7.3916082269426653 0 0
		;
createNode transform -n "SphereFourArrows" -p "ControllerGallery";
	rename -uid "864A7B5F-486C-97F6-040B-96AC6846C650";
	setAttr ".t" -type "double3" 0 3.0942679516074984e-14 -17.419179992304997 ;
createNode nurbsCurve -n "SphereFourArrowsShape" -p "SphereFourArrows";
	rename -uid "AEFB20A8-4911-8700-A7E7-588D63B92007";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 132 0 no 3
		133 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127
		 128 129 130 131 132
		133
		0 0 -8.2355913824930749
		2.7451971274976921 0 -5.4903942549953841
		1.372598563748846 0 -5.4903942549953841
		1.3359845164342228 0 -4.1117375837244987
		2.5411938255748177 0 -3.4976532211936564
		3.4976535484466553 0 -2.5411938255748185
		4.1117382382304974 0 -1.3359845982474741
		5.4903942549953841 0 -1.3725985637488469
		5.4903942549953841 0 -2.7451971274976907
		8.2355913824930767 0 0
		5.4903942549953841 0 2.7451971274976907
		5.4903942549953841 0 1.3725985637488469
		4.1117356202065034 0 1.3359838619282256
		3.4976509304226622 0 2.5411925165628197
		2.5411921893098208 0 3.4976512576756611
		1.3359836983017248 0 4.1117356202065043
		1.372598563748846 0 5.4903942549953841
		2.7451971274976921 0 5.4903942549953841
		0 0 8.2355913824930749
		-2.7451971274976921 0 5.4903942549953841
		-1.372598563748846 0 5.4903942549953841
		-1.3359841073679739 0 4.1117359474595032
		-2.5411926801893201 0 3.4976515849286609
		-3.4976519121816589 0 2.541192680189321
		-4.1117366019655011 0 1.335984107367973
		-5.4903942549953841 0 1.3725985637488469
		-5.4903942549953841 0 2.7451971274976907
		-8.2355913824930767 0 0
		-5.4903942549953841 0 -2.7451971274976907
		-5.4903942549953841 0 -1.3725985637488469
		-4.1117366019655011 0 -1.335984107367973
		-3.4976522394346587 0 -2.5411930074423208
		-2.5411931710688185 0 -3.4976522394346601
		-1.3359845164342228 0 -4.1117372564714989
		-1.372598563748846 0 -5.4903942549953841
		-2.7451971274976921 0 -5.4903942549953841
		0 0 -8.2355913824930749
		0 2.7451971274976921 -5.4903942549953841
		0 1.3359836983017248 -5.4903942549953841
		0 1.3359836983017248 -4.1117375837244987
		0 1.9627528779628352 -3.8521209071097875
		0 2.5411921893098208 -3.4976525666876599
		0 3.0570590909360056 -3.057060727201002
		0 3.4976509304226622 -2.5411934983218187
		0 3.8521192708447898 -1.9627536960953336
		0 4.1117356202065034 -1.335984516434225
		0 5.4903942549953841 -1.3725985637488469
		0 5.4903942549953841 -2.7451971274976938
		0 8.2355913824930767 0
		0 5.4903942549953841 2.7451971274976907
		0 5.4903942549953841 1.3725985637488438
		-3.9815421757943175e-08 4.1117356202065034 1.335984025554724
		-5.8494594036425208e-08 3.8521192708447898 1.9627530415893342
		-7.5733428874904538e-08 3.4976509304226622 2.5411925165628197
		-9.1107460586309599e-08 3.0570590909360056 3.0570594181890036
		-1.0423812062807864e-07 2.5411921893098208 3.4976515849286609
		-1.1480210038557022e-07 1.9627528779628352 3.8521195980977887
		-1.2253927052636455e-07 1.3359836983017248 4.1117359474595032
		-1.2253927052636455e-07 1.3359836983017248 5.4903942549953841
		-1.2253927052636455e-07 2.7451971274976921 5.4903942549953815
		-1.2253927052636455e-07 0 8.2355913824930749
		-1.2253927052636455e-07 -2.7451971274976921 5.4903942549953841
		-1.2253927052636455e-07 -1.3359836983017248 5.4903942549953841
		-1.2253927052636455e-07 -1.3359836983017248 4.1117359474595032
		-1.1480210038557022e-07 -1.9627528779628352 3.8521195980977887
		-1.0423812062807864e-07 -2.5411921893098208 3.4976515849286609
		-9.1107460586309599e-08 -3.0570590909360056 3.0570594181890063
		-7.5733428874904538e-08 -3.4976509304226622 2.5411925165628229
		-5.8494594036425208e-08 -3.8521192708447898 1.9627530415893342
		-3.9815421757943175e-08 -4.1117356202065034 1.335984025554724
		-3.9815421757943175e-08 -5.4903942549953841 1.3725985637488469
		-3.9815421757943175e-08 -5.4903942549953841 2.7451971274976938
		-3.9815421757943175e-08 -8.2355913824930784 0
		-2.7451971274976921 -5.4903942549953841 0
		-1.372598563748846 -5.4903942549953841 0
		-1.3359841073679739 -4.1117356202065034 0
		-1.9627533688423335 -3.8521192708447898 0
		-2.5411926801893201 -3.4976509304226622 0
		-3.0570597454420039 -3.0570590909360056 0
		-3.4976519121816589 -2.5411921893098208 0
		-3.8521202526037865 -1.9627528779628352 0
		-4.1117366019655011 -1.3359836983017248 0
		-5.4903942549953841 -1.3359836983017248 0
		-5.4903942549953841 -2.7451971274976921 0
		-8.2355913824930767 0 0
		-5.4903942549953841 2.7451971274976921 0
		-5.4903942549953841 1.3359836983017248 0
		-4.1117366019655011 1.3359836983017248 0
		-3.8521202526037865 1.9627528779628352 0
		-3.4976519121816589 2.5411921893098208 0
		-3.0570597454420039 3.0570590909360056 0
		-2.5411926801893201 3.4976509304226622 0
		-1.9627533688423335 3.8521192708447898 0
		-1.3359841073679739 4.1117356202065034 0
		-1.372598563748846 5.4903942549953841 0
		-2.7451971274976921 5.4903942549953841 0
		0 8.2355913824930767 0
		2.7451971274976921 5.4903942549953841 0
		1.372598563748846 5.4903942549953841 0
		1.3359838619282247 4.1117356202065034 0
		1.9627528779628352 3.8521192708447898 0
		2.5411921893098208 3.4976509304226622 0
		3.0570590909360056 3.0570590909360056 0
		3.4976509304226622 2.5411921893098208 0
		3.8521192708447898 1.9627528779628352 0
		4.1117356202065034 1.3359836983017248 0
		5.4903942549953841 1.3359836983017248 0
		5.4903942549953841 2.7451971274976921 0
		8.2355913824930767 0 0
		5.4903942549953841 -2.7451971274976921 0
		5.4903942549953841 -1.3359836983017248 0
		4.1117356202065034 -1.3359836983017248 0
		3.8521192708447898 -1.9627528779628352 0
		3.4976509304226622 -2.5411921893098208 0
		3.0570590909360056 -3.0570590909360056 0
		2.5411921893098208 -3.4976509304226622 0
		1.9627528779628352 -3.8521192708447898 0
		1.3359838619282247 -4.1117356202065034 0
		1.372598563748846 -5.4903942549953841 0
		2.7451971274976921 -5.4903942549953841 0
		0 -8.2355913824930784 0
		0 -5.4903942549953841 -2.7451971274976907
		0 -5.4903942549953841 -1.3725985637488438
		0 -4.1117356202065034 -1.3359845164342219
		0 -3.8521192708447898 -1.9627536960953305
		0 -3.4976509304226622 -2.5411934983218187
		0 -3.0570590909360056 -3.057060727201002
		0 -2.5411921893098208 -3.4976525666876568
		0 -1.9627528779628352 -3.8521209071097844
		0 -1.3359836983017248 -4.1117375837244987
		0 -1.3359836983017248 -5.4903942549953841
		0 -2.7451971274976921 -5.4903942549953815
		0 0 -8.2355913824930749
		;
createNode transform -n "Gear" -p "ControllerGallery";
	rename -uid "5F3D41A5-4790-B60C-BB8F-71A78ECD106A";
	setAttr ".t" -type "double3" 17.419179992304997 3.0942679516074984e-14 -17.419179992304997 ;
createNode nurbsCurve -n "GearShape" -p "Gear";
	rename -uid "AED468F8-42A5-F60B-AE27-5A954EA3E4D0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 36 0 no 3
		37 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36
		37
		-0.63804762023386896 0 -6.8593182299195714
		-0.27927206383674608 0 -4.9641532483633481
		1.0150598279811585 0 -4.8672850332381747
		2.2402170740838998 0 -4.4387193780052545
		3.3266030998942484 0 -6.0324993358096171
		4.5868421819842595 0 -5.1336985609572521
		5.6213224138020301 0 -3.9822269341270196
		4.1594466652297992 0 -2.7239339743805306
		4.7227223819190431 0 -1.5545746390351871
		4.9641525156157877 0 -0.2792734016073663
		6.8876021386835804 0 -0.1353267660878775
		6.7393384009016479 0 1.4054678014884008
		6.2593755833775431 0 2.8770883274409389
		4.4387235523805231 0 2.2402197869864948
		3.707662493435592 0 3.3127110996215432
		2.7239351995226566 0 4.1594475521552692
		3.5609979497478368 0 5.8971782070602927
		2.1524951260945047 0 6.5391720179162691
		0.63804762023387829 0 6.8593190605307965
		0.27927200333444746 0 4.9641543690875176
		-1.0150599489857619 0 4.867286444075285
		-2.2402172555908142 0 4.4387210789553091
		-3.3266033419034611 0 6.0325013268726089
		-4.5868421819842418 0 5.1336993915684808
		-5.6213224138020212 0 3.9822277647382451
		-4.1594467257321011 0 2.7239350951047032
		-4.7227223214167351 0 1.5545751795334717
		-4.964152394611169 0 0.27927365199271004
		-6.8876019571766571 0 0.13532672636028351
		-6.7393373647996517 0 -1.4054719390612911
		-6.2593692777570693 0 -2.8770945068987022
		-4.4387186988153822 0 -2.2402190037336718
		-3.7076623724309639 0 -3.3127108492361992
		-2.7239351390203548 0 -4.1594470116569848
		-3.5609978287432211 0 -5.8971779566749518
		-2.1524951260944891 0 -6.5391711873050404
		-0.63804762023386896 0 -6.8593182299195714
		;
createNode nurbsCurve -n "GearCircleShape" -p "Gear";
	rename -uid "5028C73E-403B-2E7F-37E0-5B9259250E14";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.456976948847708 1.504464477992592e-16 -2.456976948847708
		0 2.1276340688856814e-16 -3.4746901234984939
		-2.456976948847708 1.504464477992592e-16 -2.456976948847708
		-3.474690123498497 0 0
		-2.456976948847708 -1.504464477992592e-16 2.456976948847708
		0 -2.1276340688856814e-16 3.474690123498497
		2.456976948847708 -1.504464477992592e-16 2.456976948847708
		3.474690123498497 0 0
		2.456976948847708 1.504464477992592e-16 -2.456976948847708
		0 2.1276340688856814e-16 -3.4746901234984939
		-2.456976948847708 1.504464477992592e-16 -2.456976948847708
		;
createNode fosterParent -n "BedroomDoor_Model_HiRNfosterParent1";
	rename -uid "B43BD756-4649-B18A-216F-F192F1A8DB32";
createNode mesh -n "BedroomDoor_GeoShapeDeformed" -p "BedroomDoor_Model_HiRNfosterParent1";
	rename -uid "32F1C307-4ECF-CB63-A235-DCA9464781E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".uvst[1].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BD8C2735-45C5-AD06-D8A5-97A19BE7EC02";
	setAttr -s 23 ".lnk";
	setAttr -s 23 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "45503739-49ED-341A-70C5-F9B94AD112C0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D6291756-4A1C-8CD7-4CBA-B8A968AC13E2";
createNode displayLayerManager -n "layerManager";
	rename -uid "145C3D9B-47FD-EBF2-15EE-A08998C475F2";
createNode displayLayer -n "defaultLayer";
	rename -uid "3F594955-428A-C3F1-9787-949A4133867A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5DB9CF8B-4F5F-EC94-1437-11AD817008FB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "421D045F-4565-85FB-0E67-88B249ECEC03";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "CCD6B8E7-4584-E413-86D7-94BD8E803C1C";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A9A881EB-49E0-B503-CF8A-66903147FAB8";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "0D4BC5CE-450A-775F-AFC2-9183C5A1C5F3";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0AE4F616-427C-3ED8-852E-E9B1EA88286A";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "CB3334F8-4EFA-E03A-6B8A-4990C2D65FAE";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A5EF7BF4-46AD-6134-3DB7-D1912CC0F523";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 370\n            -height 320\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 369\n            -height 319\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 370\n            -height 319\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Perspective\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Perspective\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 749\n            -height 687\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 626\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n"
		+ "\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 626\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 626\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "55A6759B-4B0A-2866-4AFA-51BCF8E986A0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 20 -ast 0 -aet 20 ";
	setAttr ".st" 6;
createNode renderLayerManager -n "renderLayerManager2";
	rename -uid "AD87CCBF-4F03-338A-A137-76A312A2721B";
createNode renderLayer -n "defaultRenderLayer2";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F791";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager2";
	rename -uid "6A8E4935-4C0F-833C-57B2-63ADD64F59E1";
createNode poseInterpolatorManager -n "poseInterpolatorManager2";
	rename -uid "FB7F8D54-494A-9B69-4619-439161C8C7A3";
createNode groupId -n "groupId20";
	rename -uid "BC56DE00-0010-7CE4-6960-9EB200010E0C";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "6F2AF629-4046-F06E-CD52-4BAEEB8D233B";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -613.09521373302312 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "E03C4223-47E9-7F4F-FD9E-FF8B9677C3EA";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "1CD3024E-41CA-AF3C-F1C8-9DAC11DF7EA6";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "96E82FC8-4ACA-100B-7420-6FB78CBEE700";
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "71827C63-43FC-AFE4-A46C-12A91D81ED9D";
createNode groupId -n "groupId19";
	rename -uid "DBD84848-4749-9779-B049-63B342173CB2";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "13CFD460-41D3-5E80-9DEE-4FB2A3A7B47C";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -613.09521373302312 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode reference -n "BedroomDoor_Model_HiRN";
	rename -uid "2CD1C5CA-408B-A21D-B431-29A2742083C9";
	setAttr -s 3 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"BedroomDoor_Model_HiRN"
		"BedroomDoor_Model_HiRN" 0
		"BedroomDoor_Model_HiRN" 16
		0 "|BedroomDoor_Model_Hi:geo" "|Group|Geometry" "-s -r "
		0 "|BedroomDoor_Model_HiRNfosterParent1|BedroomDoor_GeoShapeDeformed" "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"-s -r "
		2 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo|BedroomDoor_Model_Hi:BedroomDoor_GeoShape" 
		"intermediateObject" " 1"
		2 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo|BedroomDoor_Model_Hi:BedroomDoor_GeoShape" 
		"vertexColorSource" " 2"
		5 3 "BedroomDoor_Model_HiRN" "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo|BedroomDoor_Model_Hi:BedroomDoor_GeoShape.outMesh" 
		"BedroomDoor_Model_HiRN.placeHolderList[1]" ""
		5 3 "BedroomDoor_Model_HiRN" "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo|BedroomDoor_Model_Hi:BedroomDoor_GeoShape.worldMesh" 
		"BedroomDoor_Model_HiRN.placeHolderList[2]" ""
		5 4 "BedroomDoor_Model_HiRN" "BedroomDoor_Model_Hi:M_DoorExist_SG.dagSetMembers" 
		"BedroomDoor_Model_HiRN.placeHolderList[3]" ""
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"translateX"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"translateY"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"translateZ"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"rotateX"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"rotateY"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"rotateZ"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"scaleX"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"scaleY"
		8 "|Group|Geometry|BedroomDoor_Model_Hi:geo|BedroomDoor_Model_Hi:BedroomDoor_Geo" 
		"scaleZ";
lockNode -l 1 ;
createNode multiplyDivide -n "RootFat";
	rename -uid "D547F750-4930-0295-174C-1DB97C1F5009";
createNode multiplyDivide -n "DoorSideBFat";
	rename -uid "1C624D25-4C33-491A-ADD9-1F8901CF4823";
createNode multiplyDivide -n "DoorSideBEndFat";
	rename -uid "F8196AA9-424F-A3B9-E075-1FAC7E7A1978";
createNode multiplyDivide -n "DoorSideAFat";
	rename -uid "B2B4E6DA-4578-9749-2AAB-9586B12D3351";
createNode multiplyDivide -n "DoorSideAEndFat";
	rename -uid "2BCAA671-4719-C7BB-4504-27B6DA40A8A7";
createNode objectSet -n "ControlSet";
	rename -uid "07F14625-4108-1BE9-803B-F1B1B4534C8D";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "02EB1468-4235-0940-66EC-E4B783E887DE";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "B52EAD29-4FDC-E50E-FB8C-3EAE6B00AA55";
	setAttr ".ihi" 0;
	setAttr -s 73 ".dsm";
	setAttr -s 15 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "DBB2F575-46C0-0720-543A-6ABB37BB36C8";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "1ECD33E3-4971-799E-5B01-F9A02AED7BE9";
	setAttr ".ihi" 0;
createNode unitConversion -n "LegLockRoot_MUnitConversion";
	rename -uid "B343A37A-4873-C1D6-48CF-6A83B3E8A4F0";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKOffsetRootMM_M";
	rename -uid "E57D31B5-41C4-A9D3-6608-48B82CADB64E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FKOffsetRootDM_M";
	rename -uid "0D104DC6-46F3-DB59-F049-05A68B47C5B4";
	setAttr ".ihi" 0;
createNode blendMatrix -n "DoorSideABM_R";
	rename -uid "1AC6061D-4FFB-A269-7EE0-F8A3928874D6";
createNode blendMatrix -n "DoorSideBBM_L";
	rename -uid "2F77A588-432F-9E83-24A3-7787FC01D4E8";
createNode blendMatrix -n "RootBM_M";
	rename -uid "26DA52DB-4102-5DA6-410E-848820A19F0B";
createNode multMatrix -n "FKRootRemoveInbtRotMM_M";
	rename -uid "9A7EAAD6-4B60-7690-C19B-B88D61D8DDAB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LegLockConstrainedDM2_M";
	rename -uid "4AE965DF-4DBF-CE94-41C2-D39C0F69CA59";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKRootRemoveInbtRotMM2_M";
	rename -uid "AAA736E1-40FF-A927-5CF5-81AAECEB749D";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FKRootRemoveInbtRotPM_M";
	rename -uid "4FD69D5F-41A8-A92F-CB8F-9DB1A79A2A65";
	setAttr ".ihi" 0;
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode blendMatrix -n "FKRootRemoveInbtRotBM_M";
	rename -uid "330952F7-41FA-CB33-8F49-F1B02961D773";
	setAttr ".ihi" 0;
createNode inverseMatrix -n "FKRootRemoveInbtRotIM_M";
	rename -uid "714CB8B0-450E-5776-7535-4D85EC8F57AA";
	setAttr ".ihi" 0;
createNode blendMatrix -n "FKRootRemoveInbtRotBM2_M";
	rename -uid "2E1BF725-4BBD-DF09-0E6A-51BFF83EE455";
	setAttr ".ihi" 0;
createNode multMatrix -n "RootXformInverterRemoveInbtRotMM_M";
	rename -uid "57EE7674-42FF-242A-850F-45BB6D848116";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode skinCluster -n "skinCluster1";
	rename -uid "977ABC11-44FE-AA8D-7B69-5CAAFDD4260A";
	setAttr -s 186 ".wl";
	setAttr ".wl[0:185].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -130.65057373046875 -51.37127685546875 -3.6890869140625 1;
	setAttr ".pm[2]" -type "matrix" -4.6798286459482623e-31 1 -1.2246464306165476e-16 -0
		 1 -4.6798286459482623e-31 -3.8213712374045827e-15 0 -3.8213712374045827e-15 -1.2246464306165476e-16 -1 -0
		 -130.65057373046875 -67.996528625488281 3.6890869140630027 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "08DCC839-419C-CCB3-4B14-F7881452BF04";
createNode dagPose -n "bindPose3";
	rename -uid "AE6425F4-412E-0D7A-D092-8EBDF38AA409";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -4.3711390063094775e-08 0 -51.37127685546875
		 130.65057373046875 3.6890869140625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710679664085752 0.70710676573223719 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.7422779881260087e-08 3.8213712372710199e-15
		 4.3711390063094643e-08 0 67.996528625488281 130.65057373046875 3.6890869140624951 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710676573223652 0.70710679664085685 -3.0908620960936135e-08 -3.0908619609877377e-08 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -av -k on ".cons";
	setAttr -av -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -av -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -av -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -k on ".tmrm";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".mbc";
	setAttr -av -k on ".mbfa";
	setAttr -av -k on ".mbftb";
	setAttr -av -k on ".mbftg";
	setAttr -av -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -av -k on ".mbfe";
	setAttr -av -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -av -k on ".laa";
	setAttr -k on ".gamm";
	setAttr -k on ".gmmv";
	setAttr -k on ".fprt" yes;
	setAttr -av -k on ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 23 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 26 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 2 ".gn";
	setAttr -k on ".hio";
	setAttr -k on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_surface_shaderr";
	setAttr -k on ".ai_surface_shaderg";
	setAttr -k on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -k on ".ai_volume_shaderr";
	setAttr -k on ".ai_volume_shaderg";
	setAttr -k on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -k on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -av -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
connectAttr "BedroomDoor_Model_HiRN.phl[1]" "skinCluster1.orggeom[0]";
connectAttr "BedroomDoor_Model_HiRN.phl[2]" "tweak1.ip[0].ig";
connectAttr "BedroomDoor_GeoShapeDeformed.iog" "BedroomDoor_Model_HiRN.phl[3]";
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "Root.s" "DoorSideA.is";
connectAttr "DoorSideAFat.oy" "DoorSideA.fatFrontAbs";
connectAttr "DoorSideAFat.oz" "DoorSideA.fatWidthAbs";
connectAttr "DoorSideA.s" "DoorSideAEnd.is";
connectAttr "DoorSideAEndFat.oy" "DoorSideAEnd.fatFrontAbs";
connectAttr "DoorSideAEndFat.oz" "DoorSideAEnd.fatWidthAbs";
connectAttr "Root.s" "DoorSideB.is";
connectAttr "DoorSideBFat.oy" "DoorSideB.fatFrontAbs";
connectAttr "DoorSideBFat.oz" "DoorSideB.fatWidthAbs";
connectAttr "DoorSideB.s" "DoorSideBEnd.is";
connectAttr "DoorSideBEndFat.oy" "DoorSideBEnd.fatFrontAbs";
connectAttr "DoorSideBEndFat.oz" "DoorSideBEnd.fatWidthAbs";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MainScaleMultiplyDivide.o" "FKSystem.s";
connectAttr "Main.fkVis" "FKSystem.v";
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctx" "FKParentConstraintToRoot_M.tx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cty" "FKParentConstraintToRoot_M.ty"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctz" "FKParentConstraintToRoot_M.tz"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crx" "FKParentConstraintToRoot_M.rx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cry" "FKParentConstraintToRoot_M.ry"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crz" "FKParentConstraintToRoot_M.rz"
		;
connectAttr "FKParentConstraintToRoot_M.ro" "FKParentConstraintToRoot_M_parentConstraint1.cro"
		;
connectAttr "FKParentConstraintToRoot_M.pim" "FKParentConstraintToRoot_M_parentConstraint1.cpim"
		;
connectAttr "FKParentConstraintToRoot_M.rp" "FKParentConstraintToRoot_M_parentConstraint1.crp"
		;
connectAttr "FKParentConstraintToRoot_M.rpt" "FKParentConstraintToRoot_M_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.w0" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKDoorSideA_R.s" "FKXDoorSideA_R.is";
connectAttr "FKDoorSideB_L.s" "FKXDoorSideB_L.is";
connectAttr "FKOffsetRootDM_M.otx" "FKOffsetRoot_M.tx";
connectAttr "FKOffsetRootDM_M.oty" "FKOffsetRoot_M.ty";
connectAttr "FKOffsetRootDM_M.otz" "FKOffsetRoot_M.tz";
connectAttr "FKOffsetRootDM_M.orx" "FKOffsetRoot_M.rx";
connectAttr "FKOffsetRootDM_M.ory" "FKOffsetRoot_M.ry";
connectAttr "FKOffsetRootDM_M.orz" "FKOffsetRoot_M.rz";
connectAttr "FKOffsetRootDM_M.osx" "FKOffsetRoot_M.sx";
connectAttr "FKOffsetRootDM_M.osy" "FKOffsetRoot_M.sy";
connectAttr "FKOffsetRootDM_M.osz" "FKOffsetRoot_M.sz";
connectAttr "FKOffsetRootDM_M.oshx" "FKOffsetRoot_M.shxy";
connectAttr "FKOffsetRootDM_M.oshy" "FKOffsetRoot_M.shxz";
connectAttr "FKOffsetRootDM_M.oshz" "FKOffsetRoot_M.shyz";
connectAttr "FKRoot_M.s" "FKXRoot_M.is";
connectAttr "Main.ikVis" "IKSystem.v";
connectAttr "MainScaleMultiplyDivide.o" "IKJoints.s";
connectAttr "IKHandleFollowMain_parentConstraint1.ctx" "IKHandleFollowMain.tx";
connectAttr "IKHandleFollowMain_parentConstraint1.cty" "IKHandleFollowMain.ty";
connectAttr "IKHandleFollowMain_parentConstraint1.ctz" "IKHandleFollowMain.tz";
connectAttr "IKHandleFollowMain_parentConstraint1.crx" "IKHandleFollowMain.rx";
connectAttr "IKHandleFollowMain_parentConstraint1.cry" "IKHandleFollowMain.ry";
connectAttr "IKHandleFollowMain_parentConstraint1.crz" "IKHandleFollowMain.rz";
connectAttr "IKHandleFollowMain_scaleConstraint1.csx" "IKHandleFollowMain.sx";
connectAttr "IKHandleFollowMain_scaleConstraint1.csy" "IKHandleFollowMain.sy";
connectAttr "IKHandleFollowMain_scaleConstraint1.csz" "IKHandleFollowMain.sz";
connectAttr "IKHandleFollowMain.ro" "IKHandleFollowMain_parentConstraint1.cro";
connectAttr "IKHandleFollowMain.pim" "IKHandleFollowMain_parentConstraint1.cpim"
		;
connectAttr "IKHandleFollowMain.rp" "IKHandleFollowMain_parentConstraint1.crp";
connectAttr "IKHandleFollowMain.rpt" "IKHandleFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "IKHandleFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "IKHandleFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "IKHandleFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "IKHandleFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "IKHandleFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "IKHandleFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKHandleFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "IKHandleFollowMain_parentConstraint1.w0" "IKHandleFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "IKHandleFollowMain.pim" "IKHandleFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "IKHandleFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKHandleFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "IKHandleFollowMain_scaleConstraint1.w0" "IKHandleFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKStatic_parentConstraint1.ctx" "IKStatic.tx";
connectAttr "IKStatic_parentConstraint1.cty" "IKStatic.ty";
connectAttr "IKStatic_parentConstraint1.ctz" "IKStatic.tz";
connectAttr "IKStatic_parentConstraint1.crx" "IKStatic.rx";
connectAttr "IKStatic_parentConstraint1.cry" "IKStatic.ry";
connectAttr "IKStatic_parentConstraint1.crz" "IKStatic.rz";
connectAttr "IKStatic_scaleConstraint1.csx" "IKStatic.sx";
connectAttr "IKStatic_scaleConstraint1.csy" "IKStatic.sy";
connectAttr "IKStatic_scaleConstraint1.csz" "IKStatic.sz";
connectAttr "IKStatic.ro" "IKStatic_parentConstraint1.cro";
connectAttr "IKStatic.pim" "IKStatic_parentConstraint1.cpim";
connectAttr "IKStatic.rp" "IKStatic_parentConstraint1.crp";
connectAttr "IKStatic.rpt" "IKStatic_parentConstraint1.crt";
connectAttr "Main.t" "IKStatic_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "IKStatic_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "IKStatic_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "IKStatic_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "IKStatic_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "IKStatic_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKStatic_parentConstraint1.tg[0].tpm";
connectAttr "IKStatic_parentConstraint1.w0" "IKStatic_parentConstraint1.tg[0].tw"
		;
connectAttr "IKStatic.pim" "IKStatic_scaleConstraint1.cpim";
connectAttr "Main.s" "IKStatic_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKStatic_scaleConstraint1.tg[0].tpm";
connectAttr "IKStatic_scaleConstraint1.w0" "IKStatic_scaleConstraint1.tg[0].tw";
connectAttr "MainScaleMultiplyDivide.o" "IKMessure.s";
connectAttr "MainScaleMultiplyDivide.o" "FKIKSystem.s";
connectAttr "Main.fkIkVis" "FKIKSystem.v";
connectAttr "Main.bendVis" "BendSystem.v";
connectAttr "MainScaleMultiplyDivide.o" "BendJoints.s";
connectAttr "MainScaleMultiplyDivide.o" "AimSystem.s";
connectAttr "Main.aimVis" "AimSystem.v";
connectAttr "RootFollowMain_parentConstraint1.ctx" "RootFollowMain.tx";
connectAttr "RootFollowMain_parentConstraint1.cty" "RootFollowMain.ty";
connectAttr "RootFollowMain_parentConstraint1.ctz" "RootFollowMain.tz";
connectAttr "RootFollowMain_parentConstraint1.crx" "RootFollowMain.rx";
connectAttr "RootFollowMain_parentConstraint1.cry" "RootFollowMain.ry";
connectAttr "RootFollowMain_parentConstraint1.crz" "RootFollowMain.rz";
connectAttr "RootFollowMain_scaleConstraint1.csx" "RootFollowMain.sx";
connectAttr "RootFollowMain_scaleConstraint1.csy" "RootFollowMain.sy";
connectAttr "RootFollowMain_scaleConstraint1.csz" "RootFollowMain.sz";
connectAttr "RootFollowMain.ro" "RootFollowMain_parentConstraint1.cro";
connectAttr "RootFollowMain.pim" "RootFollowMain_parentConstraint1.cpim";
connectAttr "RootFollowMain.rp" "RootFollowMain_parentConstraint1.crp";
connectAttr "RootFollowMain.rpt" "RootFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "RootFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "RootFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "RootFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "RootFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "RootFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "RootFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "RootFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "RootFollowMain_parentConstraint1.w0" "RootFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "RootFollowMain.pim" "RootFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "RootFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "RootFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "RootFollowMain_scaleConstraint1.w0" "RootFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrainedDM2_M.ot" "LegLockConstrained.t";
connectAttr "LegLockConstrainedDM2_M.or" "LegLockConstrained.r";
connectAttr "LegLockConstrainedDM2_M.os" "LegLockConstrained.s";
connectAttr "LegLockConstrainedDM2_M.osh" "LegLockConstrained.sh";
connectAttr "MainScaleMultiplyDivide.o" "TwistSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "GlobalSystem.s";
connectAttr "GlobalFollowMain_parentConstraint1.ctx" "GlobalFollowMain.tx";
connectAttr "GlobalFollowMain_parentConstraint1.cty" "GlobalFollowMain.ty";
connectAttr "GlobalFollowMain_parentConstraint1.ctz" "GlobalFollowMain.tz";
connectAttr "GlobalFollowMain_parentConstraint1.crx" "GlobalFollowMain.rx";
connectAttr "GlobalFollowMain_parentConstraint1.cry" "GlobalFollowMain.ry";
connectAttr "GlobalFollowMain_parentConstraint1.crz" "GlobalFollowMain.rz";
connectAttr "GlobalFollowMain_scaleConstraint1.csx" "GlobalFollowMain.sx";
connectAttr "GlobalFollowMain_scaleConstraint1.csy" "GlobalFollowMain.sy";
connectAttr "GlobalFollowMain_scaleConstraint1.csz" "GlobalFollowMain.sz";
connectAttr "GlobalFollowMain.ro" "GlobalFollowMain_parentConstraint1.cro";
connectAttr "GlobalFollowMain.pim" "GlobalFollowMain_parentConstraint1.cpim";
connectAttr "GlobalFollowMain.rp" "GlobalFollowMain_parentConstraint1.crp";
connectAttr "GlobalFollowMain.rpt" "GlobalFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "GlobalFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "GlobalFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "GlobalFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "GlobalFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "GlobalFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "GlobalFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "GlobalFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "GlobalFollowMain_parentConstraint1.w0" "GlobalFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "GlobalFollowMain.pim" "GlobalFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "GlobalFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "GlobalFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "GlobalFollowMain_scaleConstraint1.w0" "GlobalFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "DoorSideA_R.pim" "DoorSideA_R_pointConstraint1.cpim";
connectAttr "DoorSideA_R.rp" "DoorSideA_R_pointConstraint1.crp";
connectAttr "DoorSideA_R.rpt" "DoorSideA_R_pointConstraint1.crt";
connectAttr "FKXDoorSideA_R.t" "DoorSideA_R_pointConstraint1.tg[0].tt";
connectAttr "FKXDoorSideA_R.rp" "DoorSideA_R_pointConstraint1.tg[0].trp";
connectAttr "FKXDoorSideA_R.rpt" "DoorSideA_R_pointConstraint1.tg[0].trt";
connectAttr "FKXDoorSideA_R.pm" "DoorSideA_R_pointConstraint1.tg[0].tpm";
connectAttr "DoorSideA_R_pointConstraint1.w0" "DoorSideA_R_pointConstraint1.tg[0].tw"
		;
connectAttr "DoorSideA_R.ro" "DoorSideA_R_orientConstraint1.cro";
connectAttr "DoorSideA_R.pim" "DoorSideA_R_orientConstraint1.cpim";
connectAttr "DoorSideA_R.jo" "DoorSideA_R_orientConstraint1.cjo";
connectAttr "DoorSideA_R.is" "DoorSideA_R_orientConstraint1.is";
connectAttr "FKXDoorSideA_R.r" "DoorSideA_R_orientConstraint1.tg[0].tr";
connectAttr "FKXDoorSideA_R.ro" "DoorSideA_R_orientConstraint1.tg[0].tro";
connectAttr "FKXDoorSideA_R.pm" "DoorSideA_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXDoorSideA_R.jo" "DoorSideA_R_orientConstraint1.tg[0].tjo";
connectAttr "DoorSideA_R_orientConstraint1.w0" "DoorSideA_R_orientConstraint1.tg[0].tw"
		;
connectAttr "DoorSideB_L.pim" "DoorSideB_L_pointConstraint1.cpim";
connectAttr "DoorSideB_L.rp" "DoorSideB_L_pointConstraint1.crp";
connectAttr "DoorSideB_L.rpt" "DoorSideB_L_pointConstraint1.crt";
connectAttr "FKXDoorSideB_L.t" "DoorSideB_L_pointConstraint1.tg[0].tt";
connectAttr "FKXDoorSideB_L.rp" "DoorSideB_L_pointConstraint1.tg[0].trp";
connectAttr "FKXDoorSideB_L.rpt" "DoorSideB_L_pointConstraint1.tg[0].trt";
connectAttr "FKXDoorSideB_L.pm" "DoorSideB_L_pointConstraint1.tg[0].tpm";
connectAttr "DoorSideB_L_pointConstraint1.w0" "DoorSideB_L_pointConstraint1.tg[0].tw"
		;
connectAttr "DoorSideB_L.ro" "DoorSideB_L_orientConstraint1.cro";
connectAttr "DoorSideB_L.pim" "DoorSideB_L_orientConstraint1.cpim";
connectAttr "DoorSideB_L.jo" "DoorSideB_L_orientConstraint1.cjo";
connectAttr "DoorSideB_L.is" "DoorSideB_L_orientConstraint1.is";
connectAttr "FKXDoorSideB_L.r" "DoorSideB_L_orientConstraint1.tg[0].tr";
connectAttr "FKXDoorSideB_L.ro" "DoorSideB_L_orientConstraint1.tg[0].tro";
connectAttr "FKXDoorSideB_L.pm" "DoorSideB_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXDoorSideB_L.jo" "DoorSideB_L_orientConstraint1.tg[0].tjo";
connectAttr "DoorSideB_L_orientConstraint1.w0" "DoorSideB_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Root_M.pim" "Root_M_pointConstraint1.cpim";
connectAttr "Root_M.rp" "Root_M_pointConstraint1.crp";
connectAttr "Root_M.rpt" "Root_M_pointConstraint1.crt";
connectAttr "FKXRoot_M.t" "Root_M_pointConstraint1.tg[0].tt";
connectAttr "FKXRoot_M.rp" "Root_M_pointConstraint1.tg[0].trp";
connectAttr "FKXRoot_M.rpt" "Root_M_pointConstraint1.tg[0].trt";
connectAttr "FKXRoot_M.pm" "Root_M_pointConstraint1.tg[0].tpm";
connectAttr "Root_M_pointConstraint1.w0" "Root_M_pointConstraint1.tg[0].tw";
connectAttr "Root_M.ro" "Root_M_orientConstraint1.cro";
connectAttr "Root_M.pim" "Root_M_orientConstraint1.cpim";
connectAttr "Root_M.jo" "Root_M_orientConstraint1.cjo";
connectAttr "Root_M.is" "Root_M_orientConstraint1.is";
connectAttr "FKXRoot_M.r" "Root_M_orientConstraint1.tg[0].tr";
connectAttr "FKXRoot_M.ro" "Root_M_orientConstraint1.tg[0].tro";
connectAttr "FKXRoot_M.pm" "Root_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M.jo" "Root_M_orientConstraint1.tg[0].tjo";
connectAttr "Root_M_orientConstraint1.w0" "Root_M_orientConstraint1.tg[0].tw";
connectAttr "MainScaleMultiplyDivide.o" "DynamicSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DrivingSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DeformationSystem.s";
connectAttr "Main.jointVis" "Root_M.v";
connectAttr "FKRoot_M.sx" "Root_M.sx";
connectAttr "FKRoot_M.sy" "Root_M.sy";
connectAttr "FKRoot_M.sz" "Root_M.sz";
connectAttr "Root_M_orientConstraint1.crx" "Root_M.rx";
connectAttr "Root_M_orientConstraint1.cry" "Root_M.ry";
connectAttr "Root_M_orientConstraint1.crz" "Root_M.rz";
connectAttr "Root_M_pointConstraint1.ctx" "Root_M.tx";
connectAttr "Root_M_pointConstraint1.cty" "Root_M.ty";
connectAttr "Root_M_pointConstraint1.ctz" "Root_M.tz";
connectAttr "Root_M.s" "DoorSideA_R.is";
connectAttr "FKDoorSideA_R.sx" "DoorSideA_R.sx";
connectAttr "FKDoorSideA_R.sy" "DoorSideA_R.sy";
connectAttr "FKDoorSideA_R.sz" "DoorSideA_R.sz";
connectAttr "DoorSideA_R_orientConstraint1.crx" "DoorSideA_R.rx";
connectAttr "DoorSideA_R_orientConstraint1.cry" "DoorSideA_R.ry";
connectAttr "DoorSideA_R_orientConstraint1.crz" "DoorSideA_R.rz";
connectAttr "DoorSideA_R_pointConstraint1.ctx" "DoorSideA_R.tx";
connectAttr "DoorSideA_R_pointConstraint1.cty" "DoorSideA_R.ty";
connectAttr "DoorSideA_R_pointConstraint1.ctz" "DoorSideA_R.tz";
connectAttr "DoorSideA_R.s" "DoorSideAEnd_R.is";
connectAttr "Root_M.s" "DoorSideB_L.is";
connectAttr "FKDoorSideB_L.sx" "DoorSideB_L.sx";
connectAttr "FKDoorSideB_L.sy" "DoorSideB_L.sy";
connectAttr "FKDoorSideB_L.sz" "DoorSideB_L.sz";
connectAttr "DoorSideB_L_orientConstraint1.crx" "DoorSideB_L.rx";
connectAttr "DoorSideB_L_orientConstraint1.cry" "DoorSideB_L.ry";
connectAttr "DoorSideB_L_orientConstraint1.crz" "DoorSideB_L.rz";
connectAttr "DoorSideB_L_pointConstraint1.ctx" "DoorSideB_L.tx";
connectAttr "DoorSideB_L_pointConstraint1.cty" "DoorSideB_L.ty";
connectAttr "DoorSideB_L_pointConstraint1.ctz" "DoorSideB_L.tz";
connectAttr "DoorSideB_L.s" "DoorSideBEnd_L.is";
connectAttr "skinCluster1.og[0]" "BedroomDoor_GeoShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "BedroomDoor_GeoShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "renderLayerManager2.rlmi[0]" "defaultRenderLayer2.rlid";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "BedroomDoor_Model_HiRNfosterParent1.msg" "BedroomDoor_Model_HiRN.fp"
		;
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatFront" "RootFat.i2y";
connectAttr "Root.fatWidth" "RootFat.i2z";
connectAttr "DoorSideB.fat" "DoorSideBFat.i1y";
connectAttr "DoorSideB.fat" "DoorSideBFat.i1z";
connectAttr "DoorSideB.fatFront" "DoorSideBFat.i2y";
connectAttr "DoorSideB.fatWidth" "DoorSideBFat.i2z";
connectAttr "DoorSideBEnd.fat" "DoorSideBEndFat.i1y";
connectAttr "DoorSideBEnd.fat" "DoorSideBEndFat.i1z";
connectAttr "DoorSideBEnd.fatFront" "DoorSideBEndFat.i2y";
connectAttr "DoorSideBEnd.fatWidth" "DoorSideBEndFat.i2z";
connectAttr "DoorSideA.fat" "DoorSideAFat.i1y";
connectAttr "DoorSideA.fat" "DoorSideAFat.i1z";
connectAttr "DoorSideA.fatFront" "DoorSideAFat.i2y";
connectAttr "DoorSideA.fatWidth" "DoorSideAFat.i2z";
connectAttr "DoorSideAEnd.fat" "DoorSideAEndFat.i1y";
connectAttr "DoorSideAEnd.fat" "DoorSideAEndFat.i1z";
connectAttr "DoorSideAEnd.fatFront" "DoorSideAEndFat.i2y";
connectAttr "DoorSideAEnd.fatWidth" "DoorSideAEndFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraDoorSideA_R.iog" "ControlSet.dsm" -na;
connectAttr "FKDoorSideA_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraDoorSideB_L.iog" "ControlSet.dsm" -na;
connectAttr "FKDoorSideB_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "DoorSideA_R.iog" "DeformSet.dsm" -na;
connectAttr "DoorSideB_L.iog" "DeformSet.dsm" -na;
connectAttr "Root_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.iog" "AllSet.dsm" -na;
connectAttr "FKHSRoot_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "DoorSideB_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "DoorSideB_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "DoorSideA_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "DoorSideA_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXDoorSideB_L.iog" "AllSet.dsm" -na;
connectAttr "FKDoorSideB_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKDoorSideB_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraDoorSideB_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetDoorSideB_L.iog" "AllSet.dsm" -na;
connectAttr "FKXDoorSideA_R.iog" "AllSet.dsm" -na;
connectAttr "FKDoorSideA_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKDoorSideA_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraDoorSideA_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetDoorSideA_R.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "DoorSideB_L.iog" "AllSet.dsm" -na;
connectAttr "DoorSideBEnd_L.iog" "AllSet.dsm" -na;
connectAttr "DoorSideA_R.iog" "AllSet.dsm" -na;
connectAttr "DoorSideAEnd_R.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain.iog" "AllSet.dsm" -na;
connectAttr "BendMPX.iog" "AllSet.dsm" -na;
connectAttr "BendJoints.iog" "AllSet.dsm" -na;
connectAttr "BendCurve.iog" "AllSet.dsm" -na;
connectAttr "IKMessure.iog" "AllSet.dsm" -na;
connectAttr "IKCurve.iog" "AllSet.dsm" -na;
connectAttr "IKStatic.iog" "AllSet.dsm" -na;
connectAttr "IKFollow.iog" "AllSet.dsm" -na;
connectAttr "IKPoleVector.iog" "AllSet.dsm" -na;
connectAttr "IKHandle.iog" "AllSet.dsm" -na;
connectAttr "IKJoints.iog" "AllSet.dsm" -na;
connectAttr "DrivingSystem.iog" "AllSet.dsm" -na;
connectAttr "DynamicSystem.iog" "AllSet.dsm" -na;
connectAttr "ConstraintSystem.iog" "AllSet.dsm" -na;
connectAttr "GlobalSystem.iog" "AllSet.dsm" -na;
connectAttr "TwistSystem.iog" "AllSet.dsm" -na;
connectAttr "RootSystem.iog" "AllSet.dsm" -na;
connectAttr "AimSystem.iog" "AllSet.dsm" -na;
connectAttr "BendSystem.iog" "AllSet.dsm" -na;
connectAttr "FKIKSystem.iog" "AllSet.dsm" -na;
connectAttr "IKSystem.iog" "AllSet.dsm" -na;
connectAttr "FKSystem.iog" "AllSet.dsm" -na;
connectAttr "MainShape.iog" "AllSet.dsm" -na;
connectAttr "Main.iog" "AllSet.dsm" -na;
connectAttr "MainSystem.iog" "AllSet.dsm" -na;
connectAttr "DeformationSystem.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "RootXformInverterRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotIM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotPM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM2_M.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrainedDM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "RootBM_M.msg" "AllSet.dnsm" -na;
connectAttr "DoorSideBBM_L.msg" "AllSet.dnsm" -na;
connectAttr "DoorSideABM_R.msg" "AllSet.dnsm" -na;
connectAttr "FKOffsetRootDM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKOffsetRootMM_M.msg" "AllSet.dnsm" -na;
connectAttr "LegLockRoot_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "Main.s" "MainScaleMultiplyDivide.i1";
connectAttr "FKRoot_M.legLock" "LegLockRoot_MUnitConversion.i";
connectAttr "RootX_M.wm" "FKOffsetRootMM_M.i[1]";
connectAttr "FKSystem.wim" "FKOffsetRootMM_M.i[2]";
connectAttr "FKOffsetRootMM_M.o" "FKOffsetRootDM_M.imat";
connectAttr "FKXDoorSideA_R.wm" "DoorSideABM_R.imat";
connectAttr "FKXDoorSideB_L.wm" "DoorSideBBM_L.imat";
connectAttr "FKXRoot_M.wm" "RootBM_M.imat";
connectAttr "FKRootRemoveInbtRotBM2_M.omat" "FKRootRemoveInbtRotMM_M.i[0]";
connectAttr "FKXRoot_M.wm" "FKRootRemoveInbtRotMM_M.i[1]";
connectAttr "FKRootRemoveInbtRotMM_M.o" "LegLockConstrainedDM2_M.imat";
connectAttr "FKHSRoot_M.wm" "FKRootRemoveInbtRotMM2_M.i[0]";
connectAttr "FKOffsetRoot_M.wim" "FKRootRemoveInbtRotMM2_M.i[1]";
connectAttr "FKRootRemoveInbtRotBM_M.omat" "FKRootRemoveInbtRotPM_M.imat";
connectAttr "FKRootRemoveInbtRotMM2_M.o" "FKRootRemoveInbtRotBM_M.tgt[0].tmat";
connectAttr "LegLockRoot_MUnitConversion.o" "FKRootRemoveInbtRotBM_M.tgt[0].wgt"
		;
connectAttr "FKRootRemoveInbtRotPM_M.tmat" "FKRootRemoveInbtRotIM_M.imat";
connectAttr "FKRootRemoveInbtRotIM_M.omat" "FKRootRemoveInbtRotBM2_M.tgt[0].tmat"
		;
connectAttr "FKRootRemoveInbtRotIM_M.omat" "RootXformInverterRemoveInbtRotMM_M.i[0]"
		;
connectAttr "RootBM_M.omat" "RootXformInverterRemoveInbtRotMM_M.i[1]";
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose3.msg" "skinCluster1.bp";
connectAttr "Root_M.wm" "skinCluster1.ma[0]";
connectAttr "DoorSideA_R.wm" "skinCluster1.ma[1]";
connectAttr "DoorSideB_L.wm" "skinCluster1.ma[2]";
connectAttr "Root_M.liw" "skinCluster1.lw[0]";
connectAttr "DoorSideA_R.liw" "skinCluster1.lw[1]";
connectAttr "DoorSideB_L.liw" "skinCluster1.lw[2]";
connectAttr "Root_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "DoorSideA_R.obcc" "skinCluster1.ifcl[1]";
connectAttr "DoorSideB_L.obcc" "skinCluster1.ifcl[2]";
connectAttr "DoorSideA_R.msg" "skinCluster1.ptt";
connectAttr "Group.msg" "bindPose3.m[0]";
connectAttr "DeformationSystem.msg" "bindPose3.m[1]";
connectAttr "Root_M.msg" "bindPose3.m[2]";
connectAttr "DoorSideA_R.msg" "bindPose3.m[3]";
connectAttr "DoorSideB_L.msg" "bindPose3.m[4]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[2]" "bindPose3.p[4]";
connectAttr "Root_M.bps" "bindPose3.wm[2]";
connectAttr "DoorSideA_R.bps" "bindPose3.wm[3]";
connectAttr "DoorSideB_L.bps" "bindPose3.wm[4]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer2.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
// End of BedroomDoor_rig_wip_v001.ma
