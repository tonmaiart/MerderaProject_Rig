//Maya ASCII 2025ff03 scene
//Name: BedroomDoor_rig_hi_v001.ma
//Last modified: Wed, Jan 21, 2026 03:56:32 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 -nodeType "aiImagerDenoiserOidn" "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "719EEF93-4C7F-40BA-D0D0-3983951AE059";
createNode transform -s -n "persp";
	rename -uid "5761A0AB-43B1-E52A-9237-B7A45218786D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 162.25519937322758 176.20655872388454 317.35427528746447 ;
	setAttr ".r" -type "double3" -14.738352729605946 17.000000000000352 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B68B6BCD-4370-986E-A3ED-AF92326CC34B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 351.75902863545946;
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
createNode transform -n "BedroomDoor";
	rename -uid "01DF71F1-499F-F8F5-093D-6E866206360B";
createNode transform -n "Group" -p "BedroomDoor";
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
	setAttr -cb on ".jointVis" no;
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
createNode transform -n "geo" -p "Geometry";
	rename -uid "2AC8FED2-4B54-AC4D-BFC7-0C921BAD7667";
createNode transform -n "BedroomDoor_Geo" -p "geo";
	rename -uid "27AD2FFD-4BE9-8D0D-F726-B7B218BCA78F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 8.3936265409539565 113.56808887328214 3.3610052376786825e-06 ;
	setAttr ".sp" -type "double3" 8.3936265409538144 113.56808887328222 3.3610052128096868e-06 ;
createNode mesh -n "BedroomDoor_GeoShape" -p "BedroomDoor_Geo";
	rename -uid "40E4BB36-4DB8-CBAE-B251-7EA643CD4418";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25886931348493891 0.43150591850280762 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 211 ".uvst[0].uvsp[0:210]" -type "float2" 0.375 0.37260583
		 0.4183045 0.37259209 0.4183045 0.37259209 0.375 0.37260583 0.43981999 0.39412671
		 0.43981999 0.39412671 0.24760585 0.75 0.24760586 0.5 0.24760586 0.5 0.24760585 0.75
		 0.43981999 0.85587335 0.41830453 0.87740791 0.41830453 0.87740791 0.43981999 0.85587335
		 0.5816955 0.37259209 0.625 0.37260586 0.625 0.37260586 0.5816955 0.37259209 0.62499994
		 0.87739414 0.5816955 0.87740791 0.56017995 0.39412671 0.56017995 0.85587335 0.375
		 0.87739414 0.62499994 0.87739414 0.5816955 0.87740791 0.56017995 0.39412671 0.56017995
		 0.85587335 0.375 0.87739414 0.75239414 0.5 0.75239414 0.75 0.75239414 0.75 0.75239414
		 0.5 0.375 0.24995507 0.625 0.25003833 0.625 0.25339016 0.375 0.25361356 0.37500006
		 0.99536884 0.62499928 0.99444211 0.62499982 0.99843729 0.37500021 0.99876511 0.375
		 0.25407052 0.375 0.25353813 0.375 0.24999702 0.37499994 0.24999923 0.37500003 0.24999166
		 0.4183045 0.37259209 0.375 0.37260583 0.43981999 0.39412671 0.37500009 1.0003323555
		 0.37500009 1.000027656555 0.62500012 0.25000465 0.625 0.37260586 0.5816955 0.37259209
		 0.62499976 0.99968374 0.56017995 0.39412671 0.43981999 0.85587335 0.56017995 0.85587335
		 0.5816955 0.87740791 0.41830453 0.87740791 0.62499994 0.87739414 0.375 0.87739414
		 0.37500012 0.74999976 0.37500024 0.74999964 0.37499982 0.80528194 0.3749994 0.8133868
		 0.375 0.44342929 0.37500015 0.49997661 0.37500003 0.49999997 0.375 0.43937883 0.375
		 0.37739414 0.41830453 0.37740791 0.375 0.87260586 0.4183045 0.87259209 0.43982005
		 0.39896855 0.43981999 0.85103142 0.37500024 0.8063978 0.37499961 0.80197179 0.62499976
		 0.80535609 0.625 0.81025743 0.56017995 0.85103142 0.5816955 0.87259209 0.56017995
		 0.39896855 0.5816955 0.37740791 0.625 0.4383449 0.625 0.4425385 0.62499994 0.37739414
		 0.625 0.87260586 0.62499988 0.75199121 0.37499994 0.74964255 0.62500006 0.49800903
		 0.56260794 0.18675026 0.56080914 0.18760791 0.56114995 0.18760791 0.56260794 0.18691276
		 0.56260794 0.18760791 0.5644486 0.19084531 0.43903536 0.18760788 0.43739206 0.18698376
		 0.43739206 0.18706112 0.43883175 0.18760791 0.43739206 0.1876079 0.43294746 0.18853948
		 0.43739206 0.18698375 0.43903539 0.1876079 0.43883172 0.1876079 0.43739206 0.18706112
		 0.43739206 0.1876079 0.43277106 0.1887181 0.56080914 0.18760791 0.56260794 0.18675026
		 0.56260794 0.1869127 0.56114995 0.18760791 0.56260794 0.18760791 0.56151623 0.18760791
		 0.56221706 0.19033645 0.56080902 0.062392082 0.56260788 0.06324973 0.56260788 0.063087255
		 0.56114984 0.062392082 0.56260788 0.062392086 0.56721926 0.059833653 0.43739206 0.063016221
		 0.43903539 0.062392086 0.43883175 0.062392086 0.43739206 0.062938869 0.43739206 0.062392086
		 0.43517601 0.057668313 0.56260788 0.06324973 0.56080908 0.062392086 0.56114984 0.062392086
		 0.56260788 0.063087247 0.56260788 0.062392086 0.56736267 0.060128354 0.43903536 0.062392086
		 0.43739206 0.063016221 0.43739206 0.062938906 0.43883175 0.062392086 0.43739206 0.062392086
		 0.43321258 0.06152878 0.56260788 0.080889225 0.56260788 0.082496054 0.56260788 0.082495116
		 0.56260788 0.080108598 0.56260788 0.080108151 0.56260794 0.16750395 0.56260794 0.16911077
		 0.56260794 0.16989139 0.56260794 0.16750488 0.56260794 0.16989183 0.56260794 0.16911077
		 0.56260794 0.16750394 0.56260794 0.16750488 0.56260794 0.1698914 0.56260794 0.16989183
		 0.56260788 0.082496069 0.56260788 0.080889501 0.56260788 0.080108553 0.56260788 0.082495108
		 0.56260788 0.080108151 0.43739206 0.079104744 0.43739206 0.076441243 0.43739206 0.076541089
		 0.43739206 0.078846835 0.43739206 0.077184699 0.43739206 0.17355876 0.43739206 0.17089526
		 0.43739206 0.17115314 0.43739206 0.17345889 0.43739206 0.17281529 0.43739206 0.076441236
		 0.43739206 0.079104714 0.43739206 0.078846864 0.43739206 0.076541089 0.43739206 0.077184699
		 0.43739206 0.17089523 0.43739206 0.17355876 0.43739206 0.1734589 0.43739206 0.17115314
		 0.43739206 0.17281529 0.56112182 0.18760791 0.56260794 0.18682501 0.43739206 0.18699616
		 0.4388586 0.1876079 0.43885908 0.1876079 0.43739206 0.18699592 0.56260794 0.18682514
		 0.56112194 0.18760791 0.56260788 0.063174874 0.561122 0.062392086 0.43885908 0.062392086
		 0.43739206 0.063004024 0.56112176 0.062392086 0.56260788 0.063175008 0.43739206 0.063003831
		 0.43885863 0.062392086 0.56260788 0.082625851 0.56260788 0.079996057 0.56260794 0.17000377
		 0.56260794 0.16737445 0.56260794 0.16737418 0.56260794 0.17000394 0.56260788 0.079996221
		 0.56260794 0.08262556 0.43739206 0.076448262 0.43739206 0.078989767 0.43739206 0.17100947
		 0.43739209 0.17355199 0.43739206 0.078990348 0.43739206 0.076448016 0.43739206 0.17355172
		 0.43739206 0.17101021;
	setAttr ".uvst[1].uvsn" -type "string" "map1";
	setAttr -s 249 ".uvst[1].uvsp[0:248]" -type "float2" 0.74848062 0.40221056
		 0.7501781 0.75708055 0.74306148 0.75711471 0.74136406 0.4022446 0.49421597 0.40342724
		 0.49591345 0.75829691 0.49114513 0.7583198 0.48944771 0.40345001 0.741364 0.40224457
		 0.741364 0.40224457 0.7484805 0.40221056 0.77577525 0.40207994 0.77577585 0.40208027
		 0.64718455 0.46416637 0.64687639 0.40269661 0.62510312 0.49481356 0.46215239 0.40358013
		 0.46215287 0.40358037 0.77747297 0.75695014 0.6485737 0.75756669 0.64829391 0.69609666
		 0.46384999 0.75844979 0.62592041 0.66566217 0.61135691 0.49487931 0.61217409 0.66572791
		 0.59009272 0.69637507 0.58898336 0.46444476 0.59040099 0.75784498 0.58870357 0.40297478
		 0.74224198 0.037050016 0.74224198 0.037049998 0.70225328 0.037057232 0.69748032 0.037338503
		 0.5092932 0.037022058 0.46930516 0.037044264 0.4693054 0.037055112 0.51641572 0.0368082
		 0.59831357 0.037055258 0.59829926 0.098577321 0.61356342 0.029955957 0.61356366 0.091426492
		 0.59981728 0.091426492 0.59981704 0.029956017 0.57602596 0.1260404 0.59981728 0.1321069
		 0.61356366 0.13214508 0.61559427 0.098573923 0.61558008 0.037050072 0.69747937 0.036637716
		 0.63786817 0.12599379 0.70225137 0.036990568 0.70225239 0.3922773 0.69747996 0.39236915
		 0.63786829 0.30328804 0.61559439 0.33070791 0.61356366 0.29713678 0.59981728 0.29717496
		 0.59981751 0.33785537 0.61356366 0.33785534 0.57602572 0.30324143 0.51641524 0.39255297
		 0.59829903 0.33070457 0.50929284 0.39224267 0.59831309 0.39222667 0.59981728 0.39932585
		 0.61356366 0.39932588 0.61558008 0.39223185 0.74224186 0.39223197 0.74224174 0.037032016
		 0.46930504 0.39222661 0.13778345 0.32982165 0.13613872 0.32326788 0.1438375 0.32259572
		 0.14486025 0.32664943 0.074474968 0.41861349 0.13607119 0.10811356 0.13734756 0.10224953
		 0.14464335 0.10471916 0.14381443 0.10895935 0.07342694 0.028042018 0.37481683 0.50433099
		 0.37549272 0.51026291 0.37079507 0.50955659 0.37019321 0.50436187 0.44424027 0.42779076
		 0.37877193 0.73669404 0.37806031 0.7430653 0.37395313 0.7421661 0.37452024 0.73699921
		 0.44431168 0.83490521 0.44051912 0.8349058 0.37207425 0.32390237 0.37038416 0.33033258
		 0.36320543 0.32712811 0.36432272 0.32314813 0.43394035 0.41884333 0.37195423 0.10237476
		 0.37304312 0.1085045 0.36538008 0.10913137 0.36470273 0.1048331 0.43532991 0.028041661
		 0.14085202 0.74315327 0.14000814 0.73678058 0.14418133 0.73736554 0.14487495 0.74252826
		 0.074250162 0.83497018 0.13865958 0.51031059 0.13921307 0.50437766 0.14287044 0.50468409
		 0.1423953 0.5098837 0.074178696 0.42785579 0.33643621 0.38632345 0.33131808 0.38907027
		 0.32901549 0.3819719 0.33206737 0.380337 0.17721568 0.38914913 0.17212664 0.38633806
		 0.17654689 0.38029289 0.17954202 0.38189751 0.35722676 0.80645901 0.33996084 0.80667526
		 0.34002393 0.802082 0.35445473 0.80348665 0.17877652 0.8070094 0.16258429 0.80675286
		 0.16543324 0.80388206 0.17883657 0.80272204 0.33858699 0.03981483 0.34411597 0.043388963
		 0.33877128 0.048751891 0.33619416 0.046872616 0.16465269 0.043219149 0.17055888 0.039771259
		 0.17262273 0.046804607 0.16979532 0.048598349 0.15600966 0.43848008 0.17164899 0.4368118
		 0.17059289 0.44097191 0.15861483 0.44090796 0.35412809 0.43473822 0.36119607 0.44116944
		 0.35627618 0.4404158 0.35126638 0.43747163 0.15447603 0.3193574 0.15559189 0.32403314
		 0.1557437 0.10709444 0.15489469 0.11182764 0.36510804 0.51154882 0.3641794 0.50638044
		 0.36508104 0.73877174 0.36627972 0.73366088 0.35245061 0.32439142 0.35360223 0.31974381
		 0.35443792 0.11180076 0.3536312 0.10705265 0.15203865 0.73451072 0.15327813 0.73961276
		 0.15233462 0.507222 0.15144749 0.51239604 0.32378477 0.37376207 0.32782209 0.37131786
		 0.1807919 0.3713308 0.18477617 0.37367499 0.33455062 0.79335791 0.3390148 0.79059392
		 0.17975484 0.79122645 0.18424 0.79395407 0.33415312 0.05706495 0.33031929 0.054468393
		 0.17818408 0.054450452 0.17430918 0.057138562 0.17627303 0.4490304 0.17198767 0.45206553
		 0.34408912 0.45138139 0.33978117 0.44838154 0.055952623 0.066108622 0.055965558 0.071078509
		 0.0094397832 0.071199603 0.0094267894 0.066230662 0.056515351 0.28132123 0.056528345
		 0.28629017 0.010002511 0.2864126 0.0099895168 0.28144211 0.057812881 0.7770592 0.057825815
		 0.78202808 0.011299985 0.78215015 0.011286991 0.77718031 0.057249859 0.56184614 0.057262912
		 0.56681669 0.010737078 0.56693757 0.010724144 0.56196868 0.057969343 0.8369357 0.057982337
		 0.84190553 0.011456685 0.84202689 0.011443632 0.83705795 0.058355164 0.98418283 0.058368098
		 0.98915184 0.011842327 0.98927397 0.011829333 0.98430419 0.057092085 0.50145364 0.057105079
		 0.50642258 0.010579186 0.50654531 0.010566251 0.5015747 0.056673244 0.34171355 0.056686237
		 0.34668416 0.010160403 0.34680521 0.01014735 0.34183621 0.055809036 0.011200815 0.0092832018
		 0.011322916 0.62610114 0.70343518 0.62639523 0.76490515 0.6126489 0.7649709 0.61235482
		 0.70350099 0.61117631 0.45710623 0.62492263 0.45704049 0.61088234 0.39563635 0.62462854
		 0.39557058 0.76842111 0.39370435 0.76258868 0.39365757 0.76266491 0.33483261 0.76885009
		 0.33485091 0.76863319 0.29969883 0.76275206 0.29973704 0.76280671 0.12846655 0.7686879
		 0.12842828 0.76877522 0.093333304 0.76258999 0.093315184 0.76302034 0.034462333 0.76885259
		 0.034509242 0.20939167 0.059533451 0.20710827 0.054162778 0.21227585 0.051965803
		 0.21455918 0.057336483 0.23363103 0.057336543 0.23591439 0.051965866 0.24108194 0.05416283
		 0.23879857 0.05953351 0.77457386 0.034478664 0.77399522 0.091665328 0.77402675 0.1270929
		 0.77402669 0.30106354 0.77412683 0.33658189 0.77403527 0.39376807 0.75741321 0.12710142
		 0.75731331 0.091583431 0.75740641 0.03439796 0.75741327 0.30107194 0.7574448 0.33650029
		 0.75686741 0.39368773;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 186 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -161.12552 16.503525 -153.17041 -162.49051 
		16.50351 -159.77576 -162.48994 16.50351 -159.77498 -161.12494 16.503525 -153.16963 
		-162.47433 16.50351 -159.77896 -162.47395 16.50351 -159.77844 -161.10931 16.503525 
		-153.17357 -161.10893 16.503525 -153.17307 -187.63257 16.503464 -154.57986 -187.63229 
		16.503464 -154.57951 -186.26729 16.503479 -147.97417 -186.26758 16.503479 -147.97452 
		-154.76944 16.503525 -154.48299 -154.75345 16.503525 -154.48645 -179.91179 16.503494 
		-149.28754 -156.13448 16.50351 -161.08833 -181.27682 16.503479 -155.89288 -156.11845 
		16.50351 -161.0918 -154.75385 16.503525 -154.48695 -154.77002 16.503525 -154.48376 
		-156.13504 16.50351 -161.08911 -156.11884 16.50351 -161.0923 -179.91208 16.503494 
		-149.2879 -181.2771 16.503479 -155.89325 -13.822433 16.503708 -195.16501 -13.823013 
		16.503708 -195.16582 -9.3715515 16.503754 -173.6268 -9.3721313 16.503754 -173.62761 
		-13.822433 16.503708 -195.16501 -9.3715515 16.503754 -173.6268 -153.84433 16.50354 
		-150.00626 -153.84491 16.50354 -150.00706 -157.05956 16.50351 -165.56499 -157.06013 
		16.50351 -165.5658 -157.04396 16.50351 -165.56897 -157.04358 16.50351 -165.56847 
		-153.82874 16.50354 -150.01022 -153.82835 16.50354 -150.00972 -182.20219 16.503464 
		-160.36992 -182.2019 16.503464 -160.36957 -178.98697 16.503494 -144.81119 -178.98668 
		16.503494 -144.81084 -40.265266 16.503708 -167.2426 -46.898003 16.503693 -172.10677 
		-46.898003 16.503693 -172.10677 -40.265266 16.503708 -167.2426 -44.716133 16.503662 
		-188.78082 -50.113213 16.503647 -187.66551 -40.265846 16.503708 -167.24339 -46.898582 
		16.503693 -172.10756 -50.113792 16.503647 -187.66632 -44.716713 16.503662 -188.78163 
		-305.89069 16.503296 -134.80896 -301.43988 16.503342 -113.27075 -305.89069 16.503296 
		-134.80896 -260.66843 16.503357 -144.15419 -255.27138 16.503372 -145.26949 -256.21756 
		16.503403 -122.61597 -252.05615 16.503403 -129.71072 -159.43835 16.503525 -148.85025 
		-162.65359 16.503494 -164.40901 -159.45457 16.503525 -148.84708 -184.64331 16.503494 
		-143.64188 -162.66977 16.503494 -164.40582 -187.85854 16.503464 -159.20064 -255.27138 
		16.503372 -145.26949 -260.66843 16.503357 -144.15419 -255.27196 16.503372 -145.27029 
		-260.66901 16.503357 -144.155 -187.85883 16.503464 -159.20099 -162.67015 16.503494 
		-164.40633 -184.6436 16.503494 -143.64224 -159.45496 16.503525 -148.84758 -252.05673 
		16.503403 -129.71153 -256.21814 16.503403 -122.61676 -159.43895 16.503525 -148.85104 
		-162.65417 16.503494 -164.40981 -305.8913 16.503296 -134.80977 -301.44043 16.503342 
		-113.27155 -305.89069 16.503296 -134.80896 -301.43988 16.503342 -113.27075 -268.20532 
		16.503433 -90.63781 -269.94955 16.503433 -90.28746 -341.08002 16.503342 -76.000725 
		-269.94904 16.503433 -90.286926 -268.67969 16.503433 -90.541847 -341.07932 16.503342 
		-75.999832 -282.90143 16.503281 -161.34784 -284.17081 16.503281 -161.09286 -355.30109 
		16.503189 -146.80595 -284.17126 16.503281 -161.09357 -282.42706 16.503281 -161.44389 
		-355.30185 16.503189 -146.80673 -351.2341 16.503189 -147.62381 -15.29628 16.503799 
		-141.43567 -17.040482 16.503799 -141.08536 55.833984 16.503906 -155.72264 -16.565155 
		16.503799 -141.18036 -15.295868 16.503799 -141.43533 55.834732 16.503906 -155.72192 
		-31.262215 16.503647 -211.89148 -29.518005 16.503647 -212.24188 41.612228 16.503754 
		-226.52895 -29.517624 16.503647 -212.24138 -30.786919 16.503647 -211.98636 41.612961 
		16.503754 -226.52811 -51.325768 16.503754 -134.19913 -56.182083 16.503738 -133.22377 
		-229.06387 16.503494 -98.499702 -233.92014 16.503494 -97.524231 -248.14192 16.503342 
		-168.33038 -243.28563 16.503342 -169.30573 -70.403816 16.503586 -204.02985 -65.547455 
		16.503601 -205.0052 -49.284386 16.503754 -134.60825 -43.867638 16.503754 -135.69624 
		-241.37698 16.503479 -96.025642 -235.96019 16.503479 -97.113602 -58.089325 16.503601 
		-206.50232 -63.506081 16.503601 -205.41435 -250.18207 16.503326 -167.91974 -255.59877 
		16.503326 -166.83179 -270.35214 16.503418 -99.614532 -271.7659 16.503418 -99.330612 
		-271.76532 16.503418 -99.330109 -270.65338 16.503418 -99.553444 -281.24243 16.503311 
		-152.27316 -282.35443 16.503311 -152.04985 -282.35486 16.503311 -152.05029 -280.94113 
		16.503311 -152.33421 -17.112656 16.503784 -150.47885 -18.526428 16.503784 -150.19482 
		-18.224228 16.503784 -150.25508 -17.112244 16.503784 -150.47847 -29.115425 16.503662 
		-202.91475 -27.70166 16.503662 -203.19872 -27.701271 16.503662 -203.19824 -28.813263 
		16.503662 -202.97481 -53.143044 16.503723 -143.24214 -57.996529 16.503723 -142.26735 
		-230.88217 16.503479 -107.54237 -235.73564 16.503464 -106.5676 -246.32465 16.503357 
		-159.28734 -241.47113 16.503357 -160.26224 -68.585526 16.503601 -194.98703 -63.732063 
		16.503616 -195.96185 -50.576279 16.503738 -143.75673 -45.887062 16.503738 -144.69859 
		-242.99028 16.503464 -105.10955 -238.30106 16.503464 -106.05133 -56.476036 16.503632 
		-197.4184 -61.165291 16.503616 -196.47656 -248.89006 16.503357 -158.77126 -253.5793 
		16.503342 -157.82942 -259.33365 16.503433 -101.82764 -258.02591 16.503433 -102.09032 
		-259.02167 16.503433 -101.88971 -258.0481 16.503433 -102.08528 -269.61075 16.503326 
		-154.60948 -268.63684 16.503326 -154.80505 -269.92255 16.503326 -154.54745 -268.61511 
		16.503326 -154.8101 -29.544968 16.503769 -147.98172 -30.852493 16.503754 -147.71915 
		-29.855988 16.503754 -147.91875 -30.829826 16.503754 -147.72321;
	setAttr ".pt[166:185]" -40.13401 16.503647 -200.70154 -41.441696 16.503647 
		-200.43893 -40.444984 16.503647 -200.63858 -41.418526 16.503647 -200.44296 -63.830299 
		16.503708 -141.09557 -59.030502 16.503723 -142.05963 -225.04895 16.503479 -108.71405 
		-229.84787 16.503479 -107.75016 -235.63736 16.503372 -161.43394 -240.43716 16.503357 
		-160.46988 -74.418739 16.503601 -193.81537 -69.619759 16.503601 -194.7793 -56.751183 
		16.503723 -142.51651 -52.143509 16.503723 -143.44197 -232.12509 16.503479 -107.29183 
		-236.73431 16.503464 -106.36608 -67.34127 16.503616 -195.23608 -62.732086 16.503616 
		-196.1619 -242.71519 16.503357 -160.01146 -247.32291 16.503357 -159.086;
	setAttr -s 186 ".vt";
	setAttr ".vt[0:165]"  164.014389038 194.48214722 151.073181152 165.36024475 194.48214722 154.23876953
		 165.36024475 -10.033178329 154.23880005 164.014389038 -10.033178329 151.07321167
		 165.35253906 160.57739258 154.24205017 165.35253906 23.87155342 154.24208069 164.0066680908 160.57739258 151.076446533
		 164.0066680908 23.87155342 151.076477051 177.40956116 142.57582092 149.1159668 177.40956116 41.87312698 149.11599731
		 176.063705444 41.87312698 145.95040894 176.063705444 142.57582092 145.95037842 160.96853638 -10.033178329 152.3681488
		 160.96083069 23.87155342 152.37142944 173.017852783 41.87312698 147.24536133 162.31440735 -10.033178329 155.53373718
		 174.36372375 41.87312698 150.41094971 162.3066864 23.87155342 155.53701782 160.96083069 160.57739258 152.37139893
		 160.96853638 194.48214722 152.36811829 162.31440735 194.48214722 155.53370667 162.3066864 160.57739258 155.5369873
		 173.017852783 142.57582092 147.24533081 174.36372375 142.57582092 150.41091919 94.58061981 -12.36040497 186.86408997
		 94.58061981 196.80937195 186.86405945 90.19215393 -12.36040688 176.54197693 90.19215393 196.80937195 176.54194641
		 94.58061981 -12.36040688 186.86408997 90.19215393 -12.36040878 176.54197693 160.056396484 -12.36041069 150.22270203
		 160.056396484 196.80937195 150.22267151 163.22653198 -12.36040974 157.6791687 163.22653198 196.80937195 157.67913818
		 163.21882629 160.57739258 157.68241882 163.21882629 23.87155914 157.68244934 160.048690796 160.57739258 150.22593689
		 160.048690796 23.87155914 150.22596741 175.27584839 142.57582092 152.55635071 175.27584839 41.87313461 152.55638123
		 172.10571289 142.57582092 145.099884033 172.10571289 41.8731308 145.099914551 104.99786377 -12.36042023 170.24729919
		 108.80272675 -12.36042023 172.013275146 108.80272675 -12.36042213 172.013275146 104.99786377 -12.36042213 170.24729919
		 109.38632202 -12.36041832 180.56942749 111.97285461 -12.36041832 179.46975708 104.99786377 196.80937195 170.24726868
		 108.80272675 196.80937195 172.013244629 111.97285461 196.80937195 179.46972656 109.38632202 196.80937195 180.56939697
		 234.55335999 -12.36041451 127.35445404 230.16491699 -12.36041641 117.032333374 234.55335999 -12.36041641 127.35445404
		 212.8807373 -12.36043739 136.56861877 210.29421997 -12.36043739 137.66827393 208.49227905 -12.3604393 126.24649048
		 207.12408447 -12.3604393 130.21179199 162.73731995 -12.36041164 149.082901001 165.90745544 -12.36040974 156.53938293
		 162.74504089 23.87155914 149.079620361 174.81663513 41.8731308 143.94735718 165.91516113 23.87155914 156.53610229
		 177.98677063 41.8731308 151.40383911 210.29421997 -12.3604393 137.66827393 212.8807373 -12.3604393 136.56861877
		 210.29421997 196.80937195 137.66824341 212.8807373 196.80937195 136.56858826 177.98677063 142.57582092 151.40380859
		 165.91516113 160.57739258 156.53607178 174.81663513 142.57582092 143.94732666 162.74504089 160.57739258 149.079589844
		 207.12408447 196.80937195 130.21176147 208.49227905 196.80937195 126.24645996 162.73731995 196.80937195 149.082870483
		 165.90745544 196.80937195 156.53935242 234.55335999 196.80935669 127.35442352 230.16491699 196.80935669 117.032302856
		 234.55335999 -12.36041641 127.35445404 230.16491699 -12.36041832 117.032333374 211.27438354 159.43035889 109.053207397
		 212.11131287 155.932724 108.70287323 246.24168396 210.63238525 94.41596985 212.11123657 29.57720184 108.70288086
		 211.50216675 26.29992676 108.95782471 246.24163818 -16.50334167 94.41600037 225.72389221 26.29992676 142.93257141
		 226.33296204 29.57720947 142.67759705 260.46337891 -16.50334167 128.39080811 226.33303833 155.93275452 142.67767334
		 225.49610901 159.43037415 143.027999878 260.46343994 210.63238525 128.39071655 258.5116272 210.63240051 129.20776367
		 89.9213562 155.93273926 159.85110474 90.75827026 159.4303894 159.5007782 55.79092407 210.63244629 174.13790894
		 90.53038025 26.2999649 159.59625244 89.92134094 29.57723999 159.85119629 55.79088593 -16.50328064 174.13803101
		 104.97999573 159.4303894 193.47558594 104.14308929 155.93275452 193.82595825 70.012687683 210.63244629 208.11280823
		 104.14307404 29.57723999 193.82597351 104.75211334 26.2999649 193.57099915 70.012641907 -16.50328064 208.11286926
		 107.20928955 191.49295044 152.61442566 109.53948975 192.97845459 151.63903809 192.4931488 192.97846985 116.91496277
		 194.82331848 191.49298096 115.93952942 209.045074463 191.49298096 149.91435242 206.71487427 192.97848511 150.88972473
		 123.76121521 192.97845459 185.61383057 121.43099213 191.49295044 186.58921814 106.2300415 -9.38887024 153.024353027
		 103.63092804 -7.51617432 154.11233521 198.40159607 -7.51620483 114.44171906 195.80245972 -9.38890076 115.5296936
		 117.85263062 -7.51617432 188.087127686 120.45175171 -9.38887024 186.99916077 210.024261475 -9.38890076 149.50450134
		 212.62335205 -7.51620483 148.41653442 213.2492981 159.12133789 113.32597351 213.92767334 156.28634644 113.042037964
		 213.92755127 29.3658905 113.042068481 213.39401245 26.49476624 113.26541138 223.98304749 26.49476624 138.56184387
		 224.51661682 29.36588287 138.33850098 224.51664734 156.28637695 138.3384552 223.83828735 159.12135315 138.62239075
		 91.7377243 156.28637695 164.1902771 92.41607666 159.12136841 163.90628052 92.27127075 26.49480438 163.96699524
		 91.73770142 29.36592865 164.19035339 103.0050964355 159.12136841 189.20281982 102.32673645 156.28637695 189.48678589
		 102.32672119 29.36592865 189.48681641 102.8602829 26.49480438 189.26342773 109.026092529 191.49380493 156.95343018
		 111.35493469 192.97845459 155.97860718 194.3104248 192.97848511 121.25369263 196.63926697 191.49383545 120.27888489
		 207.22827148 191.49388123 145.57533264 204.89941406 192.97848511 146.55020142 121.94392395 192.97851563 181.27502441
		 119.61509705 191.49389648 182.24986267 107.7947464 -9.38887024 157.46885681 105.54472351 -7.76768494 158.41070557
		 200.12051392 -7.76771545 118.82165527 197.8704834 -9.38890076 119.76347351 116.13371277 -7.76768494 183.70718384
		 118.38375854 -9.38887024 182.76535034 208.45950317 -9.38890076 145.060012817 210.70953369 -7.76771545 144.11816406
		 207.96231079 154.6158905 115.53909302 207.33482361 157.46517944 115.80175781 207.81277466 30.69441223 115.60167694
		 207.34564209 27.8097229 115.79724121 218.40182495 30.69487 140.89813232 217.93450928 27.8092804 141.093734741
		 218.55126953 154.6162262 140.83558655 217.92391968 157.46496582 141.098205566 97.70310211 154.61621094 161.69317627
		 98.33049011 157.46496582 161.43057251 97.85250854 30.69489288 161.63067627 98.3197937 27.80929565 161.43510437;
	setAttr ".vt[166:185]" 108.29212952 154.61592102 186.98965454 108.91959381 157.46520996 186.72702026
		 108.44151306 30.69445038 186.9271698 108.90864563 27.80976105 186.7315979 114.15415192 187.85144043 154.80685425
		 111.85107422 186.31933594 155.7709198 191.51148987 187.85150146 122.425354 193.81414795 186.31964111 121.46147156
		 202.10020447 187.85153198 147.72193909 204.40328979 186.31939697 146.75787354 124.74287415 187.85148621 180.10339355
		 122.44019318 186.31965637 181.067306519 110.75763702 -4.60299683 156.22860718 108.54673767 -2.91970825 157.15406799
		 194.90707397 -4.60299683 121.0039520264 197.11871338 -2.91917419 120.078178406 121.34716034 -4.60298157 181.52485657
		 119.13554382 -2.91915894 182.45065308 205.49661255 -4.60301208 146.30023193 207.70751953 -2.91973877 145.37475586;
	setAttr -s 358 ".ed";
	setAttr ".ed[0:165]"  13 7 0 7 3 0 3 12 0 14 10 0 10 7 0 3 2 0 2 15 0 17 5 0
		 5 9 0 9 16 0 19 0 0 0 6 0 6 18 0 0 1 0 1 4 0 4 6 0 11 6 0 4 8 0 8 11 0 8 9 0 9 10 0
		 10 11 0 5 7 0 5 2 0 21 4 0 1 20 0 11 22 0 8 23 0 12 13 0 14 13 0 12 15 0 17 16 0
		 19 18 0 21 20 0 18 22 0 16 23 0 15 17 0 23 21 0 20 19 0 22 14 0 24 28 0 29 26 0 28 25 0
		 27 29 0 39 35 0 37 41 0 36 31 0 35 32 0 34 38 0 30 37 0 40 36 0 41 40 0 33 34 0 38 39 0
		 45 48 0 49 43 0 43 45 0 47 50 0 51 46 0 44 45 0 50 51 0 46 47 0 48 49 0 42 43 0 44 43 0
		 42 45 0 29 45 0 42 26 0 32 47 0 46 24 0 46 28 0 27 48 0 50 33 0 25 51 0 49 31 0 40 49 0
		 50 38 0 47 39 0 41 43 0 34 50 0 47 35 0 49 36 0 37 44 0 30 43 0 57 53 0 52 55 0 53 80 0
		 54 52 0 54 55 0 55 56 0 58 57 0 59 61 0 61 58 0 58 59 0 56 60 0 60 59 0 60 63 0 63 61 0
		 62 58 0 61 62 0 63 64 0 64 62 0 56 63 0 65 64 0 56 65 0 55 66 0 66 65 0 66 68 0 68 67 0
		 67 65 0 67 69 0 69 64 0 67 70 0 70 69 0 69 71 0 71 62 0 72 71 0 70 72 0 71 73 0 73 58 0
		 72 73 0 73 74 0 74 57 0 72 75 0 75 73 0 75 76 0 76 67 0 70 76 0 68 77 0 66 79 0 79 77 0
		 80 78 0 80 57 0 74 78 0 79 54 0 81 82 0 82 123 1 123 122 0 122 81 1 81 83 1 83 82 1
		 93 92 0 84 85 0 85 125 1 125 124 0 124 84 1 84 86 1 86 85 1 87 88 0 88 127 1 127 126 0
		 126 87 1 87 89 1 89 88 1 90 91 0 91 129 1 129 128 0 128 90 1 90 92 1 93 91 1 94 95 0
		 95 131 1 131 130 0 130 94 1 94 96 1 96 95 1;
	setAttr ".ed[166:331]" 97 98 0 98 133 1 133 132 0 132 97 1 97 99 1 99 98 1
		 100 101 0 101 135 1 135 134 0 134 100 1 100 102 1 102 101 1 103 104 0 104 137 1 137 136 0
		 136 103 1 103 105 1 105 104 1 106 107 0 107 139 0 139 138 0 138 106 0 106 96 1 96 107 1
		 108 109 0 109 141 0 141 140 0 140 108 0 108 83 1 83 109 1 110 111 0 111 143 0 143 142 0
		 142 110 0 110 93 1 93 111 1 112 113 0 113 145 0 145 144 0 144 112 0 112 102 1 102 113 1
		 114 115 0 115 147 0 147 146 0 146 114 0 114 99 1 99 115 1 116 117 0 117 149 0 149 148 0
		 148 116 0 116 86 1 86 117 1 118 119 0 119 151 0 151 150 0 150 118 0 118 105 1 105 119 1
		 120 121 0 121 153 0 153 152 0 152 120 0 120 89 1 89 121 1 123 154 1 154 155 0 155 122 1
		 125 157 1 157 156 0 156 124 1 127 158 1 158 159 0 159 126 1 129 161 1 161 160 0 160 128 1
		 131 163 1 163 162 0 162 130 1 133 164 1 164 165 0 165 132 1 135 166 1 166 167 0 167 134 1
		 137 169 1 169 168 0 168 136 1 139 170 1 170 171 0 171 138 1 141 173 1 173 172 0 172 140 1
		 143 174 1 174 175 0 175 142 1 145 177 1 177 176 0 176 144 1 147 179 1 179 178 0 178 146 1
		 149 180 1 180 181 0 181 148 1 151 182 1 182 183 0 183 150 1 153 185 1 185 184 0 184 152 1
		 154 160 1 161 155 1 157 159 1 158 156 1 163 167 1 166 162 1 164 168 1 169 165 1 170 176 0
		 177 171 0 173 175 0 174 172 0 179 183 0 182 178 0 180 184 0 185 181 0 92 89 0 86 83 0
		 105 102 0 96 99 0 102 93 0 83 96 0 89 105 0 99 86 0 154 156 0 158 160 0 164 162 0
		 166 168 0 170 172 0 174 176 0 173 155 0 161 175 0 163 171 0 177 167 0 180 178 0 182 184 0
		 157 181 0 185 159 0 179 165 0 169 183 0 84 82 0 90 88 0 94 98 0 103 101 0 108 107 0
		 112 111 0 81 109 0 110 91 0 106 95 0 100 113 0 114 117 0 120 119 0;
	setAttr ".ed[332:357]" 116 85 0 87 121 0 97 115 0 118 104 0 124 123 0 128 127 0
		 130 133 0 136 135 0 140 139 0 144 143 0 122 141 0 142 129 0 138 131 0 134 145 0 146 149 0
		 152 151 0 148 125 0 126 153 0 132 147 0 150 137 0 31 33 0 36 34 0 38 40 0 41 39 0
		 35 37 0 32 30 0;
	setAttr -s 68 ".n[0:67]" -type "float3"  5.5656303e-05 3.8267693e-08
		 0.0099998452 5.5656303e-05 3.8267693e-08 0.0099998452 5.5656303e-05 3.8267693e-08
		 0.0099998452 5.5656303e-05 3.8267693e-08 0.0099998452 5.5650715e-05 6.4722229e-08
		 0.0099998442 5.5650715e-05 6.4722229e-08 0.0099998442 5.5650715e-05 6.4722229e-08
		 0.0099998442 5.5650715e-05 6.4722229e-08 0.0099998442 2.7953453e-08 -0.0099999998
		 3.9556795e-08 2.7953453e-08 -0.0099999998 3.9556795e-08 2.7953453e-08 -0.0099999998
		 3.9556795e-08 2.7953453e-08 -0.0099999998 3.9556795e-08 -5.5650715e-05 -1.4701266e-08
		 -0.0099998442 -5.5650715e-05 -1.4701266e-08 -0.0099998442 -5.5650715e-05 -1.4701266e-08
		 -0.0099998442 -5.5650715e-05 -1.4701266e-08 -0.0099998442 5.5656768e-05 4.1155833e-08
		 0.0099998452 5.5656768e-05 4.1155833e-08 0.0099998452 5.5656768e-05 4.1155833e-08
		 0.0099998452 5.5656768e-05 4.1155833e-08 0.0099998452 -0.0099998442 -2.3397606e-06
		 5.5704266e-05 -0.0099998442 -2.3397606e-06 5.5704266e-05 -0.0099998442 -2.3397606e-06
		 5.5704266e-05 -0.0099998442 -2.3397606e-06 5.5704266e-05 -0.0080852304 0.0058844727
		 4.4932356e-05 -0.0080852304 0.0058844727 4.4932356e-05 -0.0080852304 0.0058844727
		 4.4932356e-05 -0.0080852304 0.0058844727 4.4932356e-05 -0.0099998442 -2.7732881e-08
		 5.5651646e-05 -0.0099998442 -2.7732881e-08 5.5651646e-05 -0.0099998442 -2.7732881e-08
		 5.5651646e-05 -0.0099998442 -2.7732881e-08 5.5651646e-05 -0.0080852034 -0.0058845105
		 4.5014545e-05 -0.0080852034 -0.0058845105 4.5014545e-05 -0.0080852034 -0.0058845105
		 4.5014545e-05 -0.0080852034 -0.0058845105 4.5014545e-05 -0.0099998442 2.2842951e-06
		 5.5704266e-05 -0.0099998442 2.2842951e-06 5.5704266e-05 -0.0099998442 2.2842951e-06
		 5.5704266e-05 -0.0099998442 2.2842951e-06 5.5704266e-05 -5.5656768e-05 -3.9893788e-08
		 -0.0099998452 -5.5656768e-05 -3.9893788e-08 -0.0099998452 -5.5656768e-05 -3.9893788e-08
		 -0.0099998452 -5.5656768e-05 -3.9893788e-08 -0.0099998452 5.5631157e-05 1.4701328e-08
		 0.0099998461 5.5631157e-05 1.4701328e-08 0.0099998461 5.5631157e-05 1.4701328e-08
		 0.0099998461 5.5631157e-05 1.4701328e-08 0.0099998461 -5.5643497e-05 -3.9711725e-08
		 -0.0099998452 -5.5643497e-05 -3.9711725e-08 -0.0099998452 -5.5643497e-05 -3.9711725e-08
		 -0.0099998452 -5.5643497e-05 -3.9711725e-08 -0.0099998452 -5.5656303e-05 -3.9529734e-08
		 -0.0099998452 -5.5656303e-05 -3.9529734e-08 -0.0099998452 -5.5656303e-05 -3.9529734e-08
		 -0.0099998452 -5.5656303e-05 -3.9529734e-08 -0.0099998452 -5.5650715e-05 -6.4722229e-08
		 -0.0099998442 -5.5650715e-05 -6.4722229e-08 -0.0099998442 -5.5650715e-05 -6.4722229e-08
		 -0.0099998442 -5.5650715e-05 -6.4722229e-08 -0.0099998442 2.2305837e-09 0.0099999998
		 -2.6921873e-08 2.2305837e-09 0.0099999998 -2.6921873e-08 2.2305837e-09 0.0099999998
		 -2.6921873e-08 2.2305837e-09 0.0099999998 -2.6921873e-08 5.5643497e-05 3.9711725e-08
		 0.0099998452 5.5643497e-05 3.9711725e-08 0.0099998452 5.5643497e-05 3.9711725e-08
		 0.0099998452 5.5643497e-05 3.9711725e-08 0.0099998452;
	setAttr -s 175 -ch 660 ".fc[0:174]" -type "polyFaces" 
		f 4 28 0 1 2
		mu 0 4 0 1 2 3
		mu 1 4 237 238 225 228
		f 4 -30 3 4 -1
		mu 0 4 1 4 5 2
		mu 1 4 238 239 224 225
		f 4 -31 -3 5 6
		mu 0 4 6 7 8 9
		mu 1 4 229 230 231 232
		f 4 -32 7 8 9
		mu 0 4 10 11 12 13
		mu 1 4 243 244 226 223
		f 4 -33 10 11 12
		mu 0 4 14 15 16 17
		mu 1 4 241 242 217 220
		f 4 13 14 15 -12
		mu 0 4 16 18 19 17
		mu 1 4 217 218 219 220
		f 4 16 -16 17 18
		mu 0 4 20 17 19 21
		mu 1 4 221 220 219 222
		f 4 19 20 21 -19
		mu 0 4 21 13 5 20
		mu 1 4 222 223 224 221
		f 4 -5 -21 -9 22
		mu 0 4 2 5 13 12
		mu 1 4 225 224 223 226
		f 4 -6 -2 -23 23
		mu 0 4 22 3 2 12
		mu 1 4 227 228 225 226
		f 4 -34 24 -15 25
		mu 0 4 23 24 19 18
		mu 1 4 248 247 219 218
		f 4 -35 -13 -17 26
		mu 0 4 25 14 17 20
		mu 1 4 240 241 220 221
		f 4 -36 -10 -20 27
		mu 0 4 26 10 13 21
		mu 1 4 246 243 223 222
		f 4 -37 -7 -24 -8
		mu 0 4 11 27 22 12
		mu 1 4 244 245 227 226
		f 4 -38 -28 -18 -25
		mu 0 4 24 26 21 19
		mu 1 4 247 246 222 219
		f 4 -39 -26 -14 -11
		mu 0 4 28 29 30 31
		mu 1 4 233 234 235 236
		f 4 -40 -27 -22 -4
		mu 0 4 4 25 20 5
		mu 1 4 239 240 221 224
		f 4 54 62 55 56
		mu 0 4 32 33 34 35
		mu 1 4 0 1 2 3
		f 4 57 60 58 61
		mu 0 4 36 37 38 39
		mu 1 4 4 5 6 7
		f 3 -65 59 -57
		mu 0 3 35 40 32
		mu 1 3 3 8 0
		f 4 64 -64 65 -60
		mu 0 4 40 41 42 32
		mu 1 4 8 9 10 0
		f 4 -42 66 -66 67
		mu 0 4 43 44 32 42
		mu 1 4 11 12 0 10
		f 4 -50 83 -65 -83
		mu 0 4 45 46 41 40
		mu 1 4 13 14 9 8
		f 4 -46 82 64 -79
		mu 0 4 47 45 40 35
		mu 1 4 15 13 8 3
		f 3 -69 -48 -81
		mu 0 3 36 60 58
		mu 1 3 4 28 26
		f 3 70 -41 -70
		mu 0 3 39 48 49
		mu 1 3 7 16 17
		f 3 74 -47 -82
		mu 0 3 34 51 52
		mu 1 3 2 19 20
		f 3 -73 -80 -53
		mu 0 3 59 37 57
		mu 1 3 27 5 25
		f 3 -51 75 81
		mu 0 3 52 54 34
		mu 1 3 20 22 2
		f 3 80 -45 -78
		mu 0 3 36 58 55
		mu 1 3 4 26 23
		f 3 76 -49 79
		mu 0 3 37 56 57
		mu 1 3 5 24 25
		f 4 -71 -59 -74 -43
		mu 0 4 48 39 38 53
		mu 1 4 16 7 6 21
		f 4 77 -54 -77 -58
		mu 0 4 36 55 56 37
		mu 1 4 4 23 24 5
		f 4 78 -56 -76 -52
		mu 0 4 47 35 34 54
		mu 1 4 15 3 2 22
		f 4 -67 -44 71 -55
		mu 0 4 32 44 50 33
		mu 1 4 0 12 18 1
		f 3 -88 88 -86
		mu 0 3 61 62 63
		mu 1 3 29 30 31
		f 3 -133 -87 -85
		mu 0 3 65 66 67
		mu 1 3 33 34 35
		f 3 91 92 93
		mu 0 3 69 70 68
		mu 1 3 37 38 36
		f 4 96 97 -92 -96
		mu 0 4 71 72 70 69
		mu 1 4 39 40 41 42
		f 3 98 -93 99
		mu 0 3 73 68 70
		mu 1 3 43 36 38
		f 4 -100 -98 100 101
		mu 0 4 73 70 72 74
		mu 1 4 44 41 40 45
		f 3 102 -97 -95
		mu 0 3 64 72 71
		mu 1 3 32 46 47
		f 4 103 -101 -103 104
		mu 0 4 75 74 72 64
		mu 1 4 48 49 46 32
		f 4 -105 -90 105 106
		mu 0 4 75 64 63 76
		mu 1 4 48 32 31 50
		f 4 107 108 109 -107
		mu 0 4 76 77 78 75
		mu 1 4 50 51 52 48
		f 4 -104 -110 110 111
		mu 0 4 74 75 78 79
		mu 1 4 49 48 52 53
		f 3 112 113 -111
		mu 0 3 78 80 79
		mu 1 3 52 54 53
		f 4 -112 114 115 -102
		mu 0 4 74 79 81 73
		mu 1 4 45 55 56 44
		f 4 116 -115 -114 117
		mu 0 4 82 81 79 80
		mu 1 4 57 56 55 58
		f 4 -99 -116 118 119
		mu 0 4 68 73 81 83
		mu 1 4 36 43 59 60
		f 3 120 -119 -117
		mu 0 3 82 83 81
		mu 1 3 61 60 59
		f 4 -120 121 122 -91
		mu 0 4 68 83 84 65
		mu 1 4 36 60 62 33
		f 3 123 124 -121
		mu 0 3 82 85 83
		mu 1 3 61 63 60
		f 4 -124 -118 127 -126
		mu 0 4 85 82 80 86
		mu 1 4 64 57 58 65
		f 3 -127 -128 -113
		mu 0 3 78 86 80
		mu 1 3 52 66 54
		f 4 129 130 -129 -108
		mu 0 4 76 88 87 77
		mu 1 4 50 68 67 51
		f 4 132 -123 133 -132
		mu 0 4 66 65 84 89
		mu 1 4 34 33 62 69
		f 4 -130 -106 -89 -135
		mu 0 4 88 76 63 62
		mu 1 4 68 50 31 30
		f 4 135 136 137 138
		mu 0 4 90 91 92 93
		mu 1 4 70 71 72 73
		f 3 -136 139 140
		mu 0 3 91 94 95
		mu 1 3 71 70 74
		f 4 142 143 144 145
		mu 0 4 96 97 98 99
		mu 1 4 75 76 77 78
		f 3 -143 146 147
		mu 0 3 100 96 101
		mu 1 3 76 75 79
		f 4 148 149 150 151
		mu 0 4 102 103 104 105
		mu 1 4 80 81 82 83
		f 3 -149 152 153
		mu 0 3 103 106 107
		mu 1 3 81 80 84
		f 4 154 155 156 157
		mu 0 4 108 109 110 111
		mu 1 4 85 86 87 88
		f 4 -155 158 -142 159
		mu 0 4 112 108 113 114
		mu 1 4 86 85 89 90
		f 4 160 161 162 163
		mu 0 4 115 116 117 118
		mu 1 4 91 92 93 94
		f 3 -161 164 165
		mu 0 3 119 115 120
		mu 1 3 92 91 95
		f 4 166 167 168 169
		mu 0 4 121 122 123 124
		mu 1 4 96 97 98 99
		f 3 -167 170 171
		mu 0 3 122 125 126
		mu 1 3 97 96 100
		f 4 172 173 174 175
		mu 0 4 127 128 129 130
		mu 1 4 101 102 103 104
		f 3 -173 176 177
		mu 0 3 128 131 132
		mu 1 3 102 101 105
		f 4 178 179 180 181
		mu 0 4 133 134 135 136
		mu 1 4 106 107 108 109
		f 3 -179 182 183
		mu 0 3 137 133 138
		mu 1 3 107 106 110
		f 4 184 185 186 187
		mu 0 4 139 140 141 142
		mu 1 4 111 112 113 114
		f 3 -185 188 189
		mu 0 3 140 143 120
		mu 1 3 112 111 95
		f 4 190 191 192 193
		mu 0 4 144 145 146 147
		mu 1 4 115 116 117 118
		f 3 -191 194 195
		mu 0 3 148 144 95
		mu 1 3 116 115 74
		f 4 196 197 198 199
		mu 0 4 149 150 151 152
		mu 1 4 119 120 121 122
		f 3 -197 200 201
		mu 0 3 150 153 114
		mu 1 3 120 119 90
		f 4 202 203 204 205
		mu 0 4 154 155 156 157
		mu 1 4 123 124 125 126
		f 3 -203 206 207
		mu 0 3 158 154 132
		mu 1 3 124 123 105
		f 4 208 209 210 211
		mu 0 4 159 160 161 162
		mu 1 4 127 128 129 130
		f 3 -209 212 213
		mu 0 3 163 159 126
		mu 1 3 128 127 100
		f 4 214 215 216 217
		mu 0 4 164 165 166 167
		mu 1 4 131 132 133 134
		f 3 -215 218 219
		mu 0 3 165 168 101
		mu 1 3 132 131 79
		f 4 220 221 222 223
		mu 0 4 169 170 171 172
		mu 1 4 135 136 137 138
		f 3 -221 224 225
		mu 0 3 170 173 138
		mu 1 3 136 135 110
		f 4 226 227 228 229
		mu 0 4 174 175 176 177
		mu 1 4 139 140 141 142
		f 3 -227 230 231
		mu 0 3 178 174 107
		mu 1 3 140 139 84
		f 4 -138 232 233 234
		mu 0 4 93 92 179 180
		mu 1 4 73 72 143 144
		f 4 -145 235 236 237
		mu 0 4 99 98 181 182
		mu 1 4 78 77 145 146
		f 4 -151 238 239 240
		mu 0 4 105 104 183 184
		mu 1 4 83 82 147 148
		f 4 -157 241 242 243
		mu 0 4 111 110 185 186
		mu 1 4 88 87 149 150
		f 4 -163 244 245 246
		mu 0 4 118 117 187 188
		mu 1 4 94 93 151 152
		f 4 -169 247 248 249
		mu 0 4 124 123 189 190
		mu 1 4 99 98 153 154
		f 4 -175 250 251 252
		mu 0 4 130 129 191 192
		mu 1 4 104 103 155 156
		f 4 -181 253 254 255
		mu 0 4 136 135 193 194
		mu 1 4 109 108 157 158
		f 4 -187 256 257 258
		mu 0 4 142 141 195 196
		mu 1 4 114 113 159 160
		f 4 -193 259 260 261
		mu 0 4 147 146 197 198
		mu 1 4 118 117 161 162
		f 4 -199 262 263 264
		mu 0 4 152 151 199 200
		mu 1 4 122 121 163 164
		f 4 -205 265 266 267
		mu 0 4 157 156 201 202
		mu 1 4 126 125 165 166
		f 4 -211 268 269 270
		mu 0 4 162 161 203 204
		mu 1 4 130 129 167 168
		f 4 -217 271 272 273
		mu 0 4 167 166 205 206
		mu 1 4 134 133 169 170
		f 4 -223 274 275 276
		mu 0 4 172 171 207 208
		mu 1 4 138 137 171 172
		f 4 -229 277 278 279
		mu 0 4 177 176 209 210
		mu 1 4 142 141 173 174
		f 4 -234 280 -243 281
		mu 0 4 180 179 186 185
		mu 1 4 175 176 177 178
		f 4 -237 282 -240 283
		mu 0 4 182 181 184 183
		mu 1 4 179 180 181 182
		f 4 -246 284 -252 285
		mu 0 4 188 187 192 191
		mu 1 4 183 184 185 186
		f 4 -249 286 -255 287
		mu 0 4 190 189 194 193
		mu 1 4 187 188 189 190
		f 4 -258 288 -267 289
		mu 0 4 196 195 202 201
		mu 1 4 191 192 193 194
		f 4 -261 290 -264 291
		mu 0 4 198 197 200 199
		mu 1 4 195 196 197 198
		f 4 -270 292 -276 293
		mu 0 4 204 203 208 207
		mu 1 4 199 200 201 202
		f 4 -273 294 -279 295
		mu 0 4 206 205 210 209
		mu 1 4 203 204 205 206
		f 4 304 -284 305 -281
		mu 0 4 179 182 183 186
		mu 1 4 176 179 182 177
		f 4 306 -286 307 -287
		mu 0 4 189 188 191 194
		mu 1 4 188 183 186 189
		f 4 308 -292 309 -289
		mu 0 4 195 198 199 202
		mu 1 4 192 195 198 193
		f 4 310 -282 311 -291
		mu 0 4 197 180 185 200
		mu 1 4 207 175 178 208
		f 4 312 -290 313 -285
		mu 0 4 187 196 201 192
		mu 1 4 184 191 194 185
		f 4 314 -294 315 -295
		mu 0 4 205 204 207 210
		mu 1 4 204 199 202 205
		f 4 316 -296 317 -283
		mu 0 4 181 206 209 184
		mu 1 4 180 203 206 181
		f 4 318 -288 319 -293
		mu 0 4 203 190 193 208
		mu 1 4 200 187 190 201
		f 4 -141 -298 -147 320
		mu 0 4 91 95 101 96
		mu 1 4 71 74 79 75
		f 4 -154 -297 -159 321
		mu 0 4 103 107 113 108
		mu 1 4 81 84 89 85
		f 4 -172 -300 -165 322
		mu 0 4 122 126 120 115
		mu 1 4 97 100 95 91
		f 4 -178 -299 -183 323
		mu 0 4 128 132 138 133
		mu 1 4 102 105 110 106
		f 4 -190 -302 -195 324
		mu 0 4 140 120 95 144
		mu 1 4 112 95 74 115
		f 4 -202 -301 -207 325
		mu 0 4 150 114 132 154
		mu 1 4 120 90 105 123
		f 3 -196 -140 326
		mu 0 3 148 95 90
		mu 1 3 116 74 70
		f 3 -160 -201 327
		mu 0 3 109 114 153
		mu 1 3 86 90 119
		f 3 -166 -189 328
		mu 0 3 116 120 143
		mu 1 3 92 95 111
		f 3 -208 -177 329
		mu 0 3 158 132 127
		mu 1 3 124 105 101
		f 4 -220 -304 -213 330
		mu 0 4 165 101 126 159
		mu 1 4 132 79 100 127
		f 4 -226 -303 -231 331
		mu 0 4 170 138 107 174
		mu 1 4 136 110 84 139
		f 3 -148 -219 332
		mu 0 3 97 101 164
		mu 1 3 76 79 131
		f 3 -232 -153 333
		mu 0 3 175 107 102
		mu 1 3 140 84 80
		f 3 -214 -171 334
		mu 0 3 160 126 121
		mu 1 3 128 100 96
		f 3 -184 -225 335
		mu 0 3 134 138 169
		mu 1 3 107 110 135
		f 4 -321 -146 336 -137
		mu 0 4 91 96 99 92
		mu 1 4 71 75 78 72
		f 4 -322 -158 337 -150
		mu 0 4 103 108 111 104
		mu 1 4 81 85 88 82
		f 4 -323 -164 338 -168
		mu 0 4 122 115 118 123
		mu 1 4 97 91 94 98
		f 4 -324 -182 339 -174
		mu 0 4 128 133 136 129
		mu 1 4 102 106 109 103
		f 4 -325 -194 340 -186
		mu 0 4 140 144 147 141
		mu 1 4 112 115 118 113
		f 4 -326 -206 341 -198
		mu 0 4 150 154 157 151
		mu 1 4 120 123 126 121
		f 4 -327 -139 342 -192
		mu 0 4 148 90 93 146
		mu 1 4 116 70 73 117
		f 4 -328 -200 343 -156
		mu 0 4 109 153 152 110
		mu 1 4 86 119 122 87
		f 4 -329 -188 344 -162
		mu 0 4 116 143 142 117
		mu 1 4 92 111 114 93
		f 4 -330 -176 345 -204
		mu 0 4 158 127 130 156
		mu 1 4 124 101 104 125
		f 4 -331 -212 346 -216
		mu 0 4 165 159 162 166
		mu 1 4 132 127 130 133
		f 4 -332 -230 347 -222
		mu 0 4 170 174 177 171
		mu 1 4 136 139 142 137
		f 4 -333 -218 348 -144
		mu 0 4 97 164 167 98
		mu 1 4 76 131 134 77
		f 4 -334 -152 349 -228
		mu 0 4 175 102 105 176
		mu 1 4 140 80 83 141
		f 4 -335 -170 350 -210
		mu 0 4 160 121 124 161
		mu 1 4 128 96 99 129
		f 4 -336 -224 351 -180
		mu 0 4 134 169 172 135
		mu 1 4 107 135 138 108
		f 4 -337 -238 -305 -233
		mu 0 4 92 99 182 179
		mu 1 4 72 78 146 143
		f 4 -338 -244 -306 -239
		mu 0 4 104 111 186 183
		mu 1 4 82 88 150 147
		f 4 -339 -247 -307 -248
		mu 0 4 123 118 188 189
		mu 1 4 98 94 152 153
		f 4 -340 -256 -308 -251
		mu 0 4 129 136 194 191
		mu 1 4 103 109 158 155
		f 4 -341 -262 -309 -257
		mu 0 4 141 147 198 195
		mu 1 4 113 118 162 159
		f 4 -342 -268 -310 -263
		mu 0 4 151 157 202 199
		mu 1 4 121 126 166 163
		f 4 -343 -235 -311 -260
		mu 0 4 146 93 180 197
		mu 1 4 117 73 144 161
		f 4 -344 -265 -312 -242
		mu 0 4 110 152 200 185
		mu 1 4 87 122 164 149
		f 4 -345 -259 -313 -245
		mu 0 4 117 142 196 187
		mu 1 4 93 114 160 151
		f 4 -346 -253 -314 -266
		mu 0 4 156 130 192 201
		mu 1 4 125 104 156 165
		f 4 -347 -271 -315 -272
		mu 0 4 166 162 204 205
		mu 1 4 133 130 168 169
		f 4 -348 -280 -316 -275
		mu 0 4 171 177 210 207
		mu 1 4 137 142 174 171
		f 4 -349 -274 -317 -236
		mu 0 4 98 167 206 181
		mu 1 4 77 134 170 145
		f 4 -350 -241 -318 -278
		mu 0 4 176 105 184 209
		mu 1 4 141 83 148 173
		f 4 -351 -250 -319 -269
		mu 0 4 161 124 190 203
		mu 1 4 129 99 154 167
		f 4 -352 -277 -320 -254
		mu 0 4 135 172 208 193
		mu 1 4 108 138 172 157
		f 4 46 352 52 -354
		mu 0 4 52 51 59 57
		mu 1 4 209 210 211 212
		f 4 48 354 50 353
		mu 0 4 57 56 54 52
		mu 1 4 212 24 22 209
		f 4 51 -355 53 -356
		mu 0 4 47 54 56 55
		mu 1 4 15 22 24 23
		f 4 44 356 45 355
		mu 0 4 55 58 45 47
		mu 1 4 23 213 214 15
		f 4 47 357 49 -357
		mu 0 4 58 60 46 45
		mu 1 4 213 215 216 214;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 82 
		70 0 
		71 0 
		72 0 
		73 0 
		75 0 
		76 0 
		77 0 
		78 0 
		80 0 
		81 0 
		82 0 
		83 0 
		85 0 
		86 0 
		87 0 
		88 0 
		91 0 
		92 0 
		93 0 
		94 0 
		96 0 
		97 0 
		98 0 
		99 0 
		101 0 
		102 0 
		103 0 
		104 0 
		106 0 
		107 0 
		108 0 
		109 0 
		111 0 
		112 0 
		113 0 
		114 0 
		115 0 
		116 0 
		117 0 
		118 0 
		119 0 
		120 0 
		121 0 
		122 0 
		123 0 
		124 0 
		125 0 
		126 0 
		127 0 
		128 0 
		129 0 
		130 0 
		131 0 
		132 0 
		133 0 
		134 0 
		135 0 
		136 0 
		137 0 
		138 0 
		139 0 
		140 0 
		141 0 
		142 0 
		191 0 
		194 0 
		199 0 
		202 0 
		204 0 
		205 0 
		217 0 
		218 0 
		219 0 
		220 0 
		221 0 
		222 0 
		223 0 
		224 0 
		225 0 
		226 0 
		227 0 
		228 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "BedroomDoor_GeoShapeDeformed" -p "BedroomDoor_Geo";
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
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 626\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
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
createNode renderLayerManager -n "renderLayerManager3";
	rename -uid "7C009B92-4F60-91CE-F5E6-99A6D00314A1";
createNode renderLayer -n "defaultRenderLayer3";
	rename -uid "DDCEAE00-000C-DD76-695F-30B00000025B";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager3";
	rename -uid "65FDF8B2-49F0-0403-DB2A-E8BC57A61630";
createNode poseInterpolatorManager -n "poseInterpolatorManager3";
	rename -uid "CE5DFAA3-45B4-2551-FB07-DB994D7CE14C";
createNode groupId -n "groupId27";
	rename -uid "B11B3E3C-4979-A1EB-6D66-B1B682843E9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "3E80D68F-4294-945F-4F91-889588C550DD";
	setAttr ".ihi" 0;
createNode aiStandardSurface -n "M_Pillow_2";
	rename -uid "3055C324-4ABA-A688-DD06-6EB3178AE0A6";
createNode shadingEngine -n "M_Pillow_2_SG";
	rename -uid "2825282B-4242-B876-0492-44AA4A3DB934";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "49286B23-48C9-3416-32DC-1D9EF6BDDEB9";
createNode aiStandardSurface -n "M_Window";
	rename -uid "EDD30267-4292-F5B8-48DA-6B9C52FFAA88";
createNode shadingEngine -n "M_Window_SG";
	rename -uid "8314FA04-441C-9B0F-4577-D7899BDD43D4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "B94306D0-4F8F-FC47-C147-79A93E24338F";
createNode aiStandardSurface -n "M_DoorExist";
	rename -uid "377AC033-4AD8-A3E9-1FA2-B3BD9E7B6F91";
createNode shadingEngine -n "M_DoorExist_SG";
	rename -uid "9FFE085E-4663-4FE4-404F-49957688F187";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "14B76571-4879-B7E6-90A9-3AB410E6823D";
createNode aiStandardSurface -n "M_WallShelf";
	rename -uid "27EB9ABA-401C-326B-C09E-1A80D5D04089";
createNode shadingEngine -n "M_WallShelf_SG";
	rename -uid "1D7307B5-44F7-0472-D155-9FA6F71B8AF0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "28A5A985-44F4-721C-EB0A-47A4269AF42B";
createNode aiStandardSurface -n "M_KafkaBedroom_Ceil_Ceil";
	rename -uid "C3A89C84-49A7-3D3C-6D86-C8A2C77AA2B7";
createNode shadingEngine -n "M_KafkaBedroom_Ceil_Ceil_SG";
	rename -uid "53997299-49A1-106C-8D0B-EA8C89FE3DA9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "ADD577A0-4853-4692-407B-1C9F764DC83B";
createNode aiStandardSurface -n "M_FloorPlateA";
	rename -uid "0D4F4F81-4B1A-7D06-6940-87BCA52241E8";
createNode shadingEngine -n "M_FloorPlateA_SG";
	rename -uid "9846C692-4466-023B-CFDC-848CF92BE64D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "9A9D9537-4F02-415D-C5B0-18A83CFFE45B";
createNode aiStandardSurface -n "M_BFBXASC195FBXASC169zierCurve";
	rename -uid "20B33BD5-4048-F68A-8452-B0A524BDFCA7";
createNode shadingEngine -n "M_BFBXASC195FBXASC169zierCurve_SG";
	rename -uid "FD0094B6-4665-32D0-621F-82A78D9F0501";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "0A74915F-4F30-69E8-FFCB-42BE6192648B";
createNode aiStandardSurface -n "M_WallWindowFrame";
	rename -uid "88EEF19C-46E8-D29C-13B8-059BD5096028";
createNode shadingEngine -n "M_WallWindowFrame_SG";
	rename -uid "507FD087-434E-B3A3-5A3D-3ABACA0FB814";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "70DA2925-42B1-1EF9-E39E-26AA04A36D8B";
createNode aiStandardSurface -n "M_Blanket";
	rename -uid "DEBC6890-4CD2-8E08-9DA3-CD95081DBB5E";
createNode shadingEngine -n "M_Blanket_SG";
	rename -uid "9F8435FF-475E-275F-92BB-059D6227537E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "CE6BB6D0-492C-211D-3B88-95BD057056ED";
createNode aiStandardSurface -n "M_PipeSmallPart";
	rename -uid "97EB10AF-45E0-2E54-24DF-689E1B6BEE2E";
createNode shadingEngine -n "M_PipeSmallPart_SG";
	rename -uid "B45AF155-488F-87DF-765E-669B67E41659";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "7C875F57-4727-4F2A-AC1F-2698E697BA2F";
createNode aiStandardSurface -n "M_BedFrame";
	rename -uid "FF2449F2-4972-6B3C-12C4-EF95D582EC91";
createNode shadingEngine -n "M_BedFrame_SG";
	rename -uid "E1A906AE-47EF-5962-D3FA-90A639BD620E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "89D27C4E-4BF1-1F1A-785C-068EA71CC45E";
createNode aiStandardSurface -n "M_Pillow_1";
	rename -uid "0F78A7FD-4F1E-9B28-BA78-0786C9509A2B";
createNode shadingEngine -n "M_Pillow_1_SG";
	rename -uid "01B574A8-4042-7E77-A5B8-E3956F552904";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo27";
	rename -uid "025FC403-47A3-A3D2-D013-219C4CDF8F8F";
createNode aiStandardSurface -n "M_PipeBigPart";
	rename -uid "BE214D3F-4C1D-9C33-E335-8BAABC45CDB3";
createNode shadingEngine -n "M_PipeBigPart_SG";
	rename -uid "BC341AD9-421B-2796-BFA9-06B8A75C5F5D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "E1E44114-4FEF-387D-9272-6CB6B6F8B11D";
createNode aiStandardSurface -n "M_Wall_WallSideBed_WallSideBed";
	rename -uid "24BC8348-4B5C-E015-FC60-9C8C9850CF27";
createNode shadingEngine -n "M_Wall_WallSideBed_WallSideBed_SG";
	rename -uid "E40E80CB-425C-34CA-C83D-D990286A5A01";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo29";
	rename -uid "BB54B831-4120-5B23-8A44-A7AC1CC0A939";
createNode aiStandardSurface -n "M_Desk";
	rename -uid "BBBFF99B-40E7-090B-4CBB-FAA82D717023";
createNode shadingEngine -n "M_Desk_SG";
	rename -uid "642F153F-4558-BE7F-3A0A-3ABA88E0EFDE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo30";
	rename -uid "4007EEC8-44DB-12AB-3A9A-7F914E68EE87";
createNode aiStandardSurface -n "M_CubeFBXASC046040";
	rename -uid "DAF32A22-4C4E-814B-EDB1-39B37D4005A9";
createNode shadingEngine -n "M_CubeFBXASC046040_SG";
	rename -uid "06B2EA44-484E-910A-4D72-67A03A4D05E9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo31";
	rename -uid "D14B72FA-4C10-2F5D-BC22-49A8DFB833D1";
createNode aiStandardSurface -n "M_FloorBase";
	rename -uid "29770464-409A-5D80-E3F2-228E545DB02E";
createNode shadingEngine -n "M_FloorBase_SG";
	rename -uid "9A355DD5-4155-5D73-FD1A-1B93C2821B00";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo32";
	rename -uid "E066296A-4B4E-1D24-1AEB-5C969090B623";
createNode aiStandardSurface -n "M_RoomMonitor";
	rename -uid "5CFA9790-4712-058E-5099-3CAE41D1EE36";
createNode shadingEngine -n "M_RoomMonitor_SG";
	rename -uid "3DDBDB7E-40BF-62EE-A222-D7977EA07D7F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo33";
	rename -uid "F9FA47F8-4DFE-AAAD-BDDE-A692DC9606D1";
createNode aiStandardSurface -n "M_Bedbase";
	rename -uid "D1C18356-4C7A-9042-1B9C-F28A3AE581F4";
createNode shadingEngine -n "M_Bedbase_SG";
	rename -uid "BEC42270-4166-1C61-5CA6-4CA918179192";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo34";
	rename -uid "07614D5D-4373-3D1D-FB9A-99821F4D0256";
createNode aiStandardSurface -n "M_WallFrame";
	rename -uid "41E698E2-4A44-41AC-B075-15A90759DAF4";
createNode shadingEngine -n "M_WallFrame_SG";
	rename -uid "03025296-47AB-3753-894F-569400289DE2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo35";
	rename -uid "8D81E342-4304-3FB7-30CB-88AEAFC7E7C6";
createNode aiStandardSurface -n "M_DoorToilet";
	rename -uid "A81C7F22-4B63-E4A1-8AFD-6F93DB0BC030";
createNode shadingEngine -n "M_DoorToilet_SG";
	rename -uid "E69F27C3-485F-68FE-EBA5-4F88EE5ED4FA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo36";
	rename -uid "148B66E3-43A3-C9A8-0158-63BFF6648955";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "34194813-42FE-D0D2-2B15-E7851176E91B";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
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
connectAttr "BedroomDoor_GeoShape.o" "skinCluster1.orggeom[0]";
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
connectAttr "BedroomDoor_GeoShape.w" "tweak1.ip[0].ig";
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
connectAttr "renderLayerManager3.rlmi[0]" "defaultRenderLayer3.rlid";
connectAttr "M_Pillow_2.out" "M_Pillow_2_SG.ss";
connectAttr "M_Pillow_2_SG.msg" "materialInfo16.sg";
connectAttr "M_Pillow_2.msg" "materialInfo16.m";
connectAttr "M_Pillow_2.msg" "materialInfo16.t" -na;
connectAttr "M_Window.out" "M_Window_SG.ss";
connectAttr "M_Window_SG.msg" "materialInfo17.sg";
connectAttr "M_Window.msg" "materialInfo17.m";
connectAttr "M_Window.msg" "materialInfo17.t" -na;
connectAttr "M_DoorExist.out" "M_DoorExist_SG.ss";
connectAttr "BedroomDoor_GeoShape.iog" "M_DoorExist_SG.dsm" -na;
connectAttr "BedroomDoor_GeoShapeDeformed.iog" "M_DoorExist_SG.dsm" -na;
connectAttr "M_DoorExist_SG.msg" "materialInfo18.sg";
connectAttr "M_DoorExist.msg" "materialInfo18.m";
connectAttr "M_DoorExist.msg" "materialInfo18.t" -na;
connectAttr "M_WallShelf.out" "M_WallShelf_SG.ss";
connectAttr "M_WallShelf_SG.msg" "materialInfo19.sg";
connectAttr "M_WallShelf.msg" "materialInfo19.m";
connectAttr "M_WallShelf.msg" "materialInfo19.t" -na;
connectAttr "M_KafkaBedroom_Ceil_Ceil.out" "M_KafkaBedroom_Ceil_Ceil_SG.ss";
connectAttr "M_KafkaBedroom_Ceil_Ceil_SG.msg" "materialInfo20.sg";
connectAttr "M_KafkaBedroom_Ceil_Ceil.msg" "materialInfo20.m";
connectAttr "M_KafkaBedroom_Ceil_Ceil.msg" "materialInfo20.t" -na;
connectAttr "M_FloorPlateA.out" "M_FloorPlateA_SG.ss";
connectAttr "M_FloorPlateA_SG.msg" "materialInfo21.sg";
connectAttr "M_FloorPlateA.msg" "materialInfo21.m";
connectAttr "M_FloorPlateA.msg" "materialInfo21.t" -na;
connectAttr "M_BFBXASC195FBXASC169zierCurve.out" "M_BFBXASC195FBXASC169zierCurve_SG.ss"
		;
connectAttr "M_BFBXASC195FBXASC169zierCurve_SG.msg" "materialInfo22.sg";
connectAttr "M_BFBXASC195FBXASC169zierCurve.msg" "materialInfo22.m";
connectAttr "M_BFBXASC195FBXASC169zierCurve.msg" "materialInfo22.t" -na;
connectAttr "M_WallWindowFrame.out" "M_WallWindowFrame_SG.ss";
connectAttr "M_WallWindowFrame_SG.msg" "materialInfo23.sg";
connectAttr "M_WallWindowFrame.msg" "materialInfo23.m";
connectAttr "M_WallWindowFrame.msg" "materialInfo23.t" -na;
connectAttr "M_Blanket.out" "M_Blanket_SG.ss";
connectAttr "M_Blanket_SG.msg" "materialInfo24.sg";
connectAttr "M_Blanket.msg" "materialInfo24.m";
connectAttr "M_Blanket.msg" "materialInfo24.t" -na;
connectAttr "M_PipeSmallPart.out" "M_PipeSmallPart_SG.ss";
connectAttr "M_PipeSmallPart_SG.msg" "materialInfo25.sg";
connectAttr "M_PipeSmallPart.msg" "materialInfo25.m";
connectAttr "M_PipeSmallPart.msg" "materialInfo25.t" -na;
connectAttr "M_BedFrame.out" "M_BedFrame_SG.ss";
connectAttr "M_BedFrame_SG.msg" "materialInfo26.sg";
connectAttr "M_BedFrame.msg" "materialInfo26.m";
connectAttr "M_BedFrame.msg" "materialInfo26.t" -na;
connectAttr "M_Pillow_1.out" "M_Pillow_1_SG.ss";
connectAttr "M_Pillow_1_SG.msg" "materialInfo27.sg";
connectAttr "M_Pillow_1.msg" "materialInfo27.m";
connectAttr "M_Pillow_1.msg" "materialInfo27.t" -na;
connectAttr "M_PipeBigPart.out" "M_PipeBigPart_SG.ss";
connectAttr "M_PipeBigPart_SG.msg" "materialInfo28.sg";
connectAttr "M_PipeBigPart.msg" "materialInfo28.m";
connectAttr "M_PipeBigPart.msg" "materialInfo28.t" -na;
connectAttr "M_Wall_WallSideBed_WallSideBed.out" "M_Wall_WallSideBed_WallSideBed_SG.ss"
		;
connectAttr "M_Wall_WallSideBed_WallSideBed_SG.msg" "materialInfo29.sg";
connectAttr "M_Wall_WallSideBed_WallSideBed.msg" "materialInfo29.m";
connectAttr "M_Wall_WallSideBed_WallSideBed.msg" "materialInfo29.t" -na;
connectAttr "M_Desk.out" "M_Desk_SG.ss";
connectAttr "M_Desk_SG.msg" "materialInfo30.sg";
connectAttr "M_Desk.msg" "materialInfo30.m";
connectAttr "M_Desk.msg" "materialInfo30.t" -na;
connectAttr "M_CubeFBXASC046040.out" "M_CubeFBXASC046040_SG.ss";
connectAttr "M_CubeFBXASC046040_SG.msg" "materialInfo31.sg";
connectAttr "M_CubeFBXASC046040.msg" "materialInfo31.m";
connectAttr "M_CubeFBXASC046040.msg" "materialInfo31.t" -na;
connectAttr "M_FloorBase.out" "M_FloorBase_SG.ss";
connectAttr "M_FloorBase_SG.msg" "materialInfo32.sg";
connectAttr "M_FloorBase.msg" "materialInfo32.m";
connectAttr "M_FloorBase.msg" "materialInfo32.t" -na;
connectAttr "M_RoomMonitor.out" "M_RoomMonitor_SG.ss";
connectAttr "M_RoomMonitor_SG.msg" "materialInfo33.sg";
connectAttr "M_RoomMonitor.msg" "materialInfo33.m";
connectAttr "M_RoomMonitor.msg" "materialInfo33.t" -na;
connectAttr "M_Bedbase.out" "M_Bedbase_SG.ss";
connectAttr "M_Bedbase_SG.msg" "materialInfo34.sg";
connectAttr "M_Bedbase.msg" "materialInfo34.m";
connectAttr "M_Bedbase.msg" "materialInfo34.t" -na;
connectAttr "M_WallFrame.out" "M_WallFrame_SG.ss";
connectAttr "M_WallFrame_SG.msg" "materialInfo35.sg";
connectAttr "M_WallFrame.msg" "materialInfo35.m";
connectAttr "M_WallFrame.msg" "materialInfo35.t" -na;
connectAttr "M_DoorToilet.out" "M_DoorToilet_SG.ss";
connectAttr "M_DoorToilet_SG.msg" "materialInfo36.sg";
connectAttr "M_DoorToilet.msg" "materialInfo36.m";
connectAttr "M_DoorToilet.msg" "materialInfo36.t" -na;
connectAttr "M_Pillow_2_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Window_SG.pa" ":renderPartition.st" -na;
connectAttr "M_DoorExist_SG.pa" ":renderPartition.st" -na;
connectAttr "M_WallShelf_SG.pa" ":renderPartition.st" -na;
connectAttr "M_KafkaBedroom_Ceil_Ceil_SG.pa" ":renderPartition.st" -na;
connectAttr "M_FloorPlateA_SG.pa" ":renderPartition.st" -na;
connectAttr "M_BFBXASC195FBXASC169zierCurve_SG.pa" ":renderPartition.st" -na;
connectAttr "M_WallWindowFrame_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Blanket_SG.pa" ":renderPartition.st" -na;
connectAttr "M_PipeSmallPart_SG.pa" ":renderPartition.st" -na;
connectAttr "M_BedFrame_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Pillow_1_SG.pa" ":renderPartition.st" -na;
connectAttr "M_PipeBigPart_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Wall_WallSideBed_WallSideBed_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Desk_SG.pa" ":renderPartition.st" -na;
connectAttr "M_CubeFBXASC046040_SG.pa" ":renderPartition.st" -na;
connectAttr "M_FloorBase_SG.pa" ":renderPartition.st" -na;
connectAttr "M_RoomMonitor_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Bedbase_SG.pa" ":renderPartition.st" -na;
connectAttr "M_WallFrame_SG.pa" ":renderPartition.st" -na;
connectAttr "M_DoorToilet_SG.pa" ":renderPartition.st" -na;
connectAttr "M_Pillow_2.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Window.msg" ":defaultShaderList1.s" -na;
connectAttr "M_DoorExist.msg" ":defaultShaderList1.s" -na;
connectAttr "M_WallShelf.msg" ":defaultShaderList1.s" -na;
connectAttr "M_KafkaBedroom_Ceil_Ceil.msg" ":defaultShaderList1.s" -na;
connectAttr "M_FloorPlateA.msg" ":defaultShaderList1.s" -na;
connectAttr "M_BFBXASC195FBXASC169zierCurve.msg" ":defaultShaderList1.s" -na;
connectAttr "M_WallWindowFrame.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Blanket.msg" ":defaultShaderList1.s" -na;
connectAttr "M_PipeSmallPart.msg" ":defaultShaderList1.s" -na;
connectAttr "M_BedFrame.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Pillow_1.msg" ":defaultShaderList1.s" -na;
connectAttr "M_PipeBigPart.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Wall_WallSideBed_WallSideBed.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Desk.msg" ":defaultShaderList1.s" -na;
connectAttr "M_CubeFBXASC046040.msg" ":defaultShaderList1.s" -na;
connectAttr "M_FloorBase.msg" ":defaultShaderList1.s" -na;
connectAttr "M_RoomMonitor.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Bedbase.msg" ":defaultShaderList1.s" -na;
connectAttr "M_WallFrame.msg" ":defaultShaderList1.s" -na;
connectAttr "M_DoorToilet.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer2.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer3.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
// End of BedroomDoor_rig_hi_v001.ma
