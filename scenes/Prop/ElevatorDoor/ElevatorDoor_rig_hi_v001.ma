//Maya ASCII 2025ff03 scene
//Name: ElevatorDoor_rig_hi_v001.ma
//Last modified: Wed, Jan 21, 2026 03:39:42 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "0F3DD487-4A71-9E0E-3468-58AA12E39E8C";
createNode transform -s -n "persp";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F785";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 63.05124364825889 383.67294984655803 486.33069019948141 ;
	setAttr ".r" -type "double3" -30.938353132820012 -1795.3999999992939 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F786";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 661.55661516579244;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F787";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F788";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F789";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.694342996363218 119.24943014107151 7307.7279190535446 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F78A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 6086.3625609005558;
	setAttr ".ow" 371.09748838416726;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 5.8029417088045747 127.46530244729709 1221.3653581529888 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F78B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6162.6861103852179 130.65057373046875 3.689086914064319 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F78C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 6265.5945881684192;
	setAttr ".ow" 213.34067239259576;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ElevatorDoor";
	rename -uid "99377C67-4896-6A26-E915-AD8D62A9C19B";
createNode transform -n "Group" -p "ElevatorDoor";
	rename -uid "DF5219BB-465C-2C31-49C1-74AEC4AD2D65";
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
	setAttr ".t" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
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
	setAttr ".t" -type "double3" 102.90847778320312 130.65057373046875 3.6890869140624996 ;
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
	rename -uid "9A61879D-4B84-B9DB-7B63-47AF416D9577";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "6A00C8A7-49FF-623F-EAA4-D2924BBC7CDE";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "1936F76B-41F7-3F38-71E5-B99315B7F033";
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
	rename -uid "BBC31CA8-47A9-30EA-5343-12AA5CBDC4DF";
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
	rename -uid "4DE11991-437C-F49F-BDCF-839A74B3D3C2";
createNode transform -n "FKParentConstraintToRoot_M" -p "FKSystem";
	rename -uid "7FDDB0B1-4587-766B-56EC-E6A865E57E9A";
createNode parentConstraint -n "FKParentConstraintToRoot_M_parentConstraint1" -p
		 "FKParentConstraintToRoot_M";
	rename -uid "C1367733-4991-F41A-7D8B-A7B25A9DB910";
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
	rename -uid "0976C6B0-4545-17B3-F2FB-EC8728C6535A";
	setAttr ".t" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "FKExtraDoorSideA_R" -p "FKOffsetDoorSideA_R";
	rename -uid "0E8FC249-420A-CC66-6310-8B95F29D6327";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKDoorSideA_R" -p "FKExtraDoorSideA_R";
	rename -uid "53E7D38B-40ED-F56D-3A64-22AC6E53B91F";
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
	rename -uid "C7C4DCE0-4ACC-D27D-151A-BEAABF89AE4E";
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
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		51.601366280087255 -68.580888066807418 -12.039280559100405
		-51.601366280087319 -68.580888066807418 -12.039280559100405
		-108.90429472499933 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 12.039280559100405
		-51.601366280087319 -68.580888066807418 12.039280559100385
		51.601366280087255 -68.580888066807418 12.039280559100385
		108.90429472499913 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		51.601366280087255 -68.580888066807418 -12.039280559100405
		51.601366280087255 -68.580888066807418 12.039280559100385
		-51.601366280087319 -68.580888066807418 12.039280559100385
		-51.601366280087319 -68.580888066807418 -12.039280559100405
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXDoorSideA_R" -p "FKDoorSideA_R";
	rename -uid "802C28B2-488F-87CA-368A-B795953FBF40";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetDoorSideB_L" -p "FKParentConstraintToRoot_M";
	rename -uid "9EE37455-4063-AE61-0C35-14B7F4CB144A";
	setAttr ".t" -type "double3" 102.90847778320312 130.65057373046875 3.6890869140624996 ;
	setAttr ".r" -type "double3" -180 0 90 ;
createNode transform -n "FKExtraDoorSideB_L" -p "FKOffsetDoorSideB_L";
	rename -uid "FECB1DF1-40BD-B11B-6E35-DDA078B050A4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKDoorSideB_L" -p "FKExtraDoorSideB_L";
	rename -uid "8781D10F-4F42-F7FD-EEFD-00A2BBD867F7";
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
	rename -uid "22766ADB-4F73-FBC8-4EA6-ED91C68363F4";
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
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		51.601366280087255 -68.580888066807418 -12.039280559100405
		-51.601366280087319 -68.580888066807418 -12.039280559100405
		-108.90429472499933 -2.9341314279836084 -12.039280559100389
		-108.90429472499933 -2.9341314279836084 12.039280559100405
		-51.601366280087319 -68.580888066807418 12.039280559100385
		51.601366280087255 -68.580888066807418 12.039280559100385
		108.90429472499913 -2.9341314279836084 12.039280559100405
		108.90429472499913 -2.9341314279836084 -12.039280559100389
		51.601366280087255 -68.580888066807418 -12.039280559100405
		51.601366280087255 -68.580888066807418 12.039280559100385
		-51.601366280087319 -68.580888066807418 12.039280559100385
		-51.601366280087319 -68.580888066807418 -12.039280559100405
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXDoorSideB_L" -p "FKDoorSideB_L";
	rename -uid "AC9B3604-4F1E-109A-AD2E-1F954416FE2C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "AEED15A2-4F29-22E4-1C77-22B677F24B95";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "F1BCCE6C-4685-B83B-4A6A-83867EC47174";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "68F88ACC-48B1-59D8-523E-FE98205B1AC2";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "028E0783-42DE-CBC6-60D9-0996E7B1A4BA";
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
	rename -uid "4B16EB5F-4D7A-A394-004A-40BBA6003F78";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKHSRoot_M" -p "FKRoot_M";
	rename -uid "DB97B5D4-4706-009F-2964-DAB704534B33";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "36BA23D8-4BFB-1B43-6E06-C08450F128ED";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "9EACA9E0-4963-BE9F-944A-0795073A15C7";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "6D488863-4756-4A35-BB67-6FB36E8DDFC9";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "7E048C46-4F3F-6B62-CD3D-B5B0A6662032";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "C3CBEA0D-431D-140A-D632-1380842F46E9";
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
	rename -uid "EB9E2DD9-45F8-7FD5-AC4B-AFB8965D775B";
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
	rename -uid "A435BB27-4C19-68EA-C331-BC99C46182E1";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "2FF9D1C7-4562-C1A7-E294-578A4926F3C9";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "5A6A9775-4025-03D9-BA12-49A7E9AB4C28";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "C73F480B-48FE-1E6D-7FCD-F796D4A5D615";
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
	rename -uid "C5E5748C-4CC2-D3C9-E517-4A9D1BA541BE";
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
	rename -uid "DF3C43C4-4F74-0755-FAF2-DCA7E8D1579B";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "455C9B54-40EB-0367-BF7C-51BB5EE46BDE";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "A1E01DDE-4D0B-3BE3-13DD-12BCC9EA3E90";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "AF4DBB72-4445-2E91-9782-4395B0F9DE67";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "3F1C86BA-4284-38D2-DCE9-2E8D34C5DFD0";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "4BECA324-47BB-6F3E-27B6-1C8DF3665378";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "30DC4F4D-4ED0-E7E7-BADA-849080217D94";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "DA744B71-494C-62F2-070C-B3BC4C08FEA7";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "3B7A8A3A-4E88-729B-5F62-0DBE85A37D67";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "5A2E0322-497A-8884-01F9-DCA7123295CE";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "D899EC30-44CE-0570-A6E3-CEB15D04A557";
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
	rename -uid "7503395B-4BEB-3553-912C-49A277038D64";
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
	rename -uid "F38D2C6D-457B-E975-8B9D-30BE2759DD9A";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "C8DE0F13-418B-259F-A4CE-F6A746C29550";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "4BE34C18-4CAE-C7D4-77BD-FFA01C32AB2D";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "FC7573DA-4F13-0F5A-427D-D2A7CB5609FA";
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
	rename -uid "484140E7-461E-DBB8-9552-F58B0F3BA0C3";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "F4E43FB4-43BF-EEE7-3EC6-81944FDCFB03";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "F817FFEE-4CCA-6E13-F5AD-809E4E68E4E6";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "7F9E15C5-4ACD-B7B3-2320-F2946C4CA7FB";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "1DA5A9C1-4525-BB6C-0A8F-E1AEC9EB7B2A";
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
	rename -uid "6B2C4757-4851-0C77-09D7-FEB6B71F2BEE";
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
	rename -uid "87C90E54-41DC-72D4-FBD4-B6988FF69B9F";
	setAttr -l on ".v" no;
createNode pointConstraint -n "DoorSideA_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "792B17B3-4BAF-6A52-D44A-868A654DCE97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideA_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
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
	setAttr ".rst" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "DoorSideA_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "211BC5DB-455B-D52B-A3A8-90A6D2975E16";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideA_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -102.90847778320312 130.65057373046875 3.6890869140625 ;
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
	rename -uid "460BFD5C-43B5-B2B6-DBA5-0CA49758AAA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideB_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 102.90847778320312 130.65057373046875 3.6890869140624996 ;
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
	setAttr ".rst" -type "double3" 102.90847778320312 130.65057373046875 3.6890869140624996 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "DoorSideB_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "91474999-430E-3908-4CC0-36A4F1D9C705";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXDoorSideB_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 102.90847778320312 130.65057373046875 3.6890869140624996 ;
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
	rename -uid "83CB3224-4AEC-374F-5EC1-C6AC0A8A8C8F";
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
	rename -uid "B5D5E1B0-4BA1-9DFA-D0A1-EE94A5C0E123";
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
	rename -uid "CF1A89AF-43B8-8450-3A37-9FB90390FB56";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "260F7757-4856-0874-99BA-0FBB4D016706";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "DE934FC9-413B-9B07-3A07-D0B4C54154D5";
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
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraDoorSideA_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKDoorSideA_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKDoorSideB_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraDoorSideB_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;";
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "F05A794F-4E64-5234-1BFD-CCAE6E760FE6";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "2D311053-4A56-9C6E-C5BD-2FAD70EA3BA7";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "DoorSideA_R" -p "Root_M";
	rename -uid "5E7E3CA7-4221-CE10-F8F4-6FB0E86F6FEC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90.000002504478161 ;
createNode joint -n "DoorSideAEnd_R" -p "DoorSideA_R";
	rename -uid "CA76EE76-41F0-63CF-0660-0FB1F009B412";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "DoorSideB_L" -p "Root_M";
	rename -uid "C5475252-4939-9C81-A220-96BC4AC2DBC8";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180.00000500895632 0 90.000002504478161 ;
createNode joint -n "DoorSideBEnd_L" -p "DoorSideB_L";
	rename -uid "F0973A72-4ACB-FF59-975D-BAAC34899FC8";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.5447960291394498 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 8.7028662079712262 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "Geometry" -p "Group";
	rename -uid "D40700C6-4447-BC1F-275D-42806AAF9B0A";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "9A631EC9-4EEC-6846-AD59-27BB9DEAEB88";
createNode transform -n "ElevatorDoor_Geo" -p "geo";
	rename -uid "01C117B4-45C6-8E8A-A4A1-2BA4E046FD3A";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 123.66964017374474 0 ;
	setAttr ".sp" -type "double3" 0 123.66964017374474 0 ;
createNode mesh -n "ElevatorDoor_GeoShape" -p "ElevatorDoor_Geo";
	rename -uid "C1A738AD-463E-459C-6259-4297EBFA7E6A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24612696065204531 0.50010687112808228 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.018019568 0.42447457
		 0.2771799 0.89839661 0.017949339 0.41824377 0.0291696 0.42440358 0.029164385 0.41817886
		 0.26500314 0.41162524 0.017010864 0.098134816 0.016955581 0.10363111 0.27709484 0.60329854
		 0.026249971 0.097930491 0.26172632 0.11397108 0.026524793 0.10342693 0.018273812
		 0.34237966 0.018096741 0.34583178 0.32017344 0.84067589 0.027803507 0.34235111 0.22109835
		 0.35453069 0.028002452 0.34580255 0.01801106 0.17233849 0.018192198 0.1757198 0.32017362
		 0.66453677 0.027621727 0.17228532 0.21913174 0.17656752 0.027483236 0.17566994 0.26504081
		 0.50201756 0.015251216 0.523678 0.018757563 0.52095479 0.029146817 0.52091372 0.023705821
		 0.010524571 0.014885481 0.010761052 0.2771191 0.50369889 0.026636612 0.008151114
		 0.4712019 0.0092052519 0.47327417 0.10959509 0.46314073 0.10980612 0.067256764 0.60332394
		 0.067230031 0.50374693 0.067327231 0.99206263 0.067308739 0.89843786 0.450582 0.33766025
		 0.45929429 0.34100378 0.45928934 0.40120912 0.45056647 0.40456972 0.3116031 0.40456915
		 0.30287862 0.40120733 0.30287489 0.3409991 0.31158635 0.3376599 0.45557207 0.13226178
		 0.46449697 0.1356945 0.46449894 0.19740516 0.45557296 0.20083374 0.30418599 0.13569477
		 0.31311017 0.13226339 0.31311023 0.20083383 0.30418545 0.19740441 0.45833719 0.40930417
		 0.46206352 0.40120897 0.47667235 0.3344534 0.46644551 0.33063042 0.2931903 0.40557119
		 0.302953 0.40930429 0.30377895 0.33199215 0.29361558 0.33598524 0.46539104 0.20511279
		 0.46734428 0.19740605 0.4736163 0.12807772 0.46343756 0.12438598 0.2925579 0.20267153
		 0.30277878 0.20648691 0.30166483 0.12780133 0.29160243 0.13202491 0.46808308 0.50196946
		 0.29919922 0.11325172 0.03665347 0.40279916 0.03665347 0.52267736 0.063622236 0.49824253
		 0.064198583 0.4036842 0.48041794 0.89822108 0.48042056 0.99184585 0.28843603 0.99185157
		 0.05335572 0.40279916 0.48041674 0.66436756 0.48041028 0.76140738 0.05335572 0.22435126
		 0.05335572 0.13896799 0.03665347 0.13896799 0.03665347 0.22435126 0.064301759 0.26699835
		 0.064188391 0.1702117 0.48041898 0.84050667 0.05335572 0.30734509 0.03665347 0.30734509
		 0.064267874 0.34604168 0.25451556 0.0094462633 0.03665347 0.080012977 0.063984782
		 0.10929468 0.063510865 0.010247082 0.48040661 0.50353211 0.48041049 0.60311764 0.05335572
		 0.080012977 0.05335572 0.0085026026 0.030722674 0.17331401 0.031135123 0.34467655
		 0.032761436 0.42203417 0.029505845 0.099850863 0.032674219 0.52361041 0.25964189
		 0.013597846 0.014947932 0.34472305 0.014947813 0.17339823 0.014408495 0.42214122
		 0.013869356 0.10019627 0.27720696 0.99202144 0.011833336 0.0085492432 0.31058559
		 0.33506507 0.45058385 0.33488631 0.45156679 0.40721524 0.4680829 0.40557772 0.31160381
		 0.40734404 0.30183437 0.4037894 0.30009782 0.34099597 0.46029589 0.3384366 0.3018764
		 0.33842993 0.31158724 0.33488464 0.31060722 0.4072195 0.30010372 0.40120673 0.45157978
		 0.33506024 0.46207145 0.34100056 0.46033177 0.40378791 0.45056579 0.40734419 0.30134171
		 0.13569498 0.30316842 0.20005825 0.3120873 0.12960833 0.45557147 0.12941605 0.46552163
		 0.13303852 0.45658457 0.20349655 0.47554541 0.2011199 0.31310958 0.20367894 0.45659488
		 0.12960476 0.46734178 0.13569465 0.46551645 0.20005265 0.45557332 0.20367885 0.30316114
		 0.13303792 0.31311023 0.12941787 0.31209779 0.20350114 0.30134022 0.19740447 0.33142078
		 0.66439313 0.28844264 0.60311478 0.25500461 0.10844797 0.2127364 0.16967967 0.33144933
		 0.84052771 0.33144939 0.76138699 0.21332881 0.26682192 0.21359 0.34624189 0.2884168
		 0.50353515 0.03665347 0.0085026026 0.25684449 0.40438008 0.28843281 0.89822721 0.05335572
		 0.52267736 0.25684449 0.49857312;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "SculptMaskColorTemp";
	setAttr ".clst[0].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 101 ".pt[0:100]" -type "float3"  0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 0 0 123.66964 
		0 0 123.66964 0 0 123.66964 0 0 123.66964 0;
	setAttr -s 101 ".vt[0:100]"  102.90846252 -124.32111359 -2.55297852 102.90846252 124.32131958 -2.55297852
		 102.90846252 -124.32110596 4.7824707 102.90846252 124.32131958 4.7824707 102.90846252 76.64916992 -2.55297852
		 97.78746033 36.21316528 4.7824707 97.78746033 75.55500793 3.15002441 102.90847778 73.5879364 3.15002441
		 102.90846252 -73.61610413 4.7824707 97.78746033 36.21316528 3.15002441 102.90846252 -73.61610413 -2.55297852
		 102.90847778 38.18023682 3.15002441 -5.2065134 -123.12878418 3.59020996 -3.9599781 -124.32110596 4.7824707
		 -5.2065134 123.12898254 3.59020996 -3.9587183 124.32131958 4.7824707 16.055360794 75.55500793 3.15002441
		 -5.20651436 -123.12878418 -1.36083984 -3.95997906 -124.32111359 -2.55297852 -5.20651436 123.12898254 -1.36083984
		 10.93432999 73.5879364 3.15002441 -3.95871973 124.32131958 -2.55297852 16.055360794 36.21316528 3.15002441
		 10.93432999 38.18023682 3.15002441 -27.1092186 46.071868896 -1.36083984 -25.85575104 47.26417542 -2.55297852
		 -27.1092186 46.071868896 3.59020996 -25.85575104 47.26417542 4.7824707 -5.20651436 77.8414917 -1.36083984
		 -3.95428133 76.64916992 -2.55297852 -5.91907167 75.69316101 -1.36083984 97.78746033 -26.9077301 3.15002441
		 -5.2065134 77.8414917 3.59020996 102.90847778 -28.87481689 3.15002441 -5.91907358 75.69316101 3.59020996
		 -3.95428085 76.64916992 4.7824707 97.78746033 -66.24960327 3.15002441 -5.20651436 -74.8084259 -1.36083984
		 -5.89166546 -72.64028931 -1.36083984 102.90847778 -64.2824707 3.15002441 -3.95564175 -73.61610413 -2.55297852
		 -5.2065134 -74.8084259 3.59020996 -3.95564127 -73.61610413 4.7824707 -5.89166546 -72.64028931 3.59020996
		 -26.39665794 48.22013855 -1.36083984 16.055360794 -26.9077301 3.15002441 10.93432999 -28.87481689 3.15002441
		 -26.39665985 48.22013855 3.59020996 16.055360794 -66.24960327 3.15002441 -26.42406845 -43.39746094 -1.36083984
		 10.93432999 -64.2824707 3.15002441 -27.1092186 -41.22932434 -1.36083984 -25.85661507 -42.42165375 -2.55297852
		 -26.42406845 -43.39746094 3.59020996 -25.85661507 -42.42165375 4.7824707 -27.1092186 -41.22932434 3.59020996
		 10.93432999 38.18023682 4.7824707 16.055360794 36.21316528 4.7824707 102.90847778 38.18023682 4.7824707
		 102.90847778 -28.87481689 4.7824707 97.78746033 -26.90776825 4.7824707 16.055360794 -26.90776825 4.7824707
		 10.93432999 -28.87481689 4.7824707 10.93432999 73.5879364 4.7824707 16.055360794 75.55500793 4.7824707
		 102.90847778 73.5879364 4.7824707 97.78746033 75.55500793 4.7824707 102.90847778 -64.28250885 4.7824707
		 97.78746033 -66.2496109 4.7824707 10.93432999 -64.28250885 4.7824707 16.055360794 -66.2496109 4.7824707
		 14.9673233 -73.61610413 4.7824707 97.78746033 -73.61610413 4.7824707 -102.90847778 -124.32132721 -4.7824707
		 -102.90847778 124.32110596 -4.7824707 -102.90847778 -124.32132721 3.68908691 -102.90847778 124.32110596 3.68908691
		 -5.15249252 -124.32132721 3.68908691 -5.15249252 124.32110596 3.68908691 -5.15249252 -124.32132721 -4.7824707
		 -5.15249252 124.32110596 -4.7824707 -102.90847778 6.98093414 3.68908691 -102.90847778 6.98097992 -4.7824707
		 -27.055168152 6.98097992 -4.7824707 -27.055168152 6.98093414 3.68908691 -102.90847778 76.64894104 3.68908691
		 -102.90847778 76.64894104 -4.7824707 -5.15249252 76.64894104 -4.7824707 -5.15249252 76.64894104 3.68908691
		 -102.90847778 -73.61631775 3.68908691 -102.90847778 -73.61631775 -4.7824707 -5.15249252 -73.61631775 -4.7824707
		 -5.15249252 -73.61631775 3.68908691 -102.90847778 47.26399231 3.68908691 -102.90847778 47.26399231 -4.7824707
		 -27.055168152 47.26399231 -4.7824707 -27.055168152 47.26399231 3.68908691 -102.90847778 -42.42185974 3.68908691
		 -102.90847778 -42.42185974 -4.7824707 -27.055168152 -42.42185974 -4.7824707 -27.055168152 -42.42185974 3.68908691;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  4 1 0 10 4 0 0 10 0 8 2 0 24 25 0 27 26 0 28 29 0 29 30 0
		 30 28 0 32 34 0 34 35 0 35 32 0 37 38 0 38 40 0 40 37 0 41 42 0 42 43 0 43 41 0 24 44 0
		 44 25 0 27 47 0 47 26 0 49 51 0 51 52 0 52 49 0 53 54 0 54 55 0 55 53 0 15 21 0 21 19 0
		 19 14 0 14 15 0 12 17 0 17 18 0 18 13 0 13 12 0 40 18 0 17 37 0 41 12 0 13 42 0 21 29 0
		 28 19 0 14 32 0 35 15 0 52 40 0 38 49 0 53 43 0 42 54 0 29 25 0 44 30 0 34 47 0 27 35 0
		 25 52 0 51 24 0 26 55 0 54 27 0 30 34 0 32 28 0 47 44 0 26 24 0 49 53 0 55 51 0 37 41 0
		 43 38 0 8 72 0 13 2 0 18 0 0 3 15 0 1 21 0 40 10 0 4 29 0 4 25 0 10 52 0 58 5 0 57 56 0
		 56 27 0 62 61 0 61 60 0 60 59 0 56 63 0 63 64 0 64 66 0 66 65 0 65 58 0 59 67 0 67 68 0
		 68 70 0 70 69 0 69 62 0 7 6 0 9 11 0 16 20 0 23 22 0 33 31 0 36 39 0 45 46 0 50 48 0
		 66 6 0 7 65 0 58 11 0 9 5 0 11 7 0 6 9 0 6 16 0 22 9 0 22 16 0 20 23 0 63 20 0 16 64 0
		 57 22 0 23 56 0 60 31 0 33 59 0 67 39 0 36 68 0 39 33 0 31 36 0 31 45 0 48 36 0 48 45 0
		 46 50 0 62 46 0 45 61 0 70 48 0 50 69 0 42 69 0 54 62 0 57 5 0 56 62 0 61 57 0 60 5 0
		 59 58 0 35 63 0 15 64 0 3 66 0 3 65 0 71 42 0 71 13 1 72 71 0 72 2 1 8 67 0 72 68 0
		 70 71 0 88 78 0 78 76 0 76 85 0 85 88 0 74 86 0 77 75 0 73 79 0 80 74 0 80 87 0 87 86 0
		 98 82 0 82 83 0 83 99 0 99 98 0 97 81 0 100 84 0 84 81 0 97 100 0 94 86 0 87 95 0
		 95 94 0 93 85 0 96 88 0;
	setAttr ".ed[166:187]" 93 96 0 77 92 0 92 89 0 89 75 0 90 73 0 90 91 0 91 79 0
		 84 96 0 93 81 0 94 82 0 95 83 0 92 100 0 97 89 0 98 90 0 99 91 0 88 87 0 78 80 0
		 95 96 0 84 83 0 99 100 0 92 91 0 77 79 0;
	setAttr -s 89 -ch 343 ".fc[0:88]" -type "polyFaces" 
		f 3 6 7 8
		mu 0 3 0 109 2
		f 3 9 10 11
		mu 0 3 3 4 103
		f 3 12 13 14
		mu 0 3 6 7 110
		f 3 15 16 17
		mu 0 3 9 104 11
		f 3 18 19 -5
		mu 0 3 12 13 107
		f 3 -6 20 21
		mu 0 3 15 102 17
		f 3 22 23 24
		mu 0 3 18 19 108
		f 3 25 26 27
		mu 0 3 21 101 23
		f 4 28 29 30 31
		mu 0 4 105 25 26 27
		f 4 32 33 34 35
		mu 0 4 28 29 112 31
		f 4 36 -34 37 -15
		mu 0 4 110 112 29 6
		f 4 38 -36 39 -16
		mu 0 4 9 28 31 104
		f 4 40 -7 41 -30
		mu 0 4 25 109 0 26
		f 4 42 -12 43 -32
		mu 0 4 27 3 103 105
		f 4 44 -14 45 -25
		mu 0 4 108 110 7 18
		f 4 46 -17 47 -26
		mu 0 4 21 11 104 101
		f 4 48 -20 49 -8
		mu 0 4 109 107 13 2
		f 4 50 -21 51 -11
		mu 0 4 4 17 102 103
		f 4 52 -24 53 4
		mu 0 4 107 108 19 12
		f 4 54 -27 55 5
		mu 0 4 15 23 101 102
		f 4 56 -10 57 -9
		mu 0 4 2 4 3 0
		f 4 -60 -22 58 -19
		mu 0 4 12 15 17 13
		f 4 60 -28 61 -23
		mu 0 4 18 21 23 19
		f 4 62 -18 63 -13
		mu 0 4 6 9 11 7
		f 3 -4 64 139
		mu 0 3 32 33 34
		f 4 -39 -63 -38 -33
		mu 0 4 28 9 6 29
		f 4 -31 -42 -58 -43
		mu 0 4 27 26 0 3
		f 4 -37 69 -3 -67
		mu 0 4 30 8 35 36
		f 4 -41 -69 -1 70
		mu 0 4 1 111 37 38
		f 4 -53 -72 -2 72
		mu 0 4 20 14 38 35
		f 4 -62 -55 59 -54
		mu 0 4 19 23 15 12
		f 3 -49 -71 71
		mu 0 3 14 1 38
		f 4 -59 -51 -57 -50
		mu 0 4 13 17 4 2
		f 3 -45 -73 -70
		mu 0 3 8 20 35
		f 4 -64 -47 -61 -46
		mu 0 4 7 11 21 18
		f 4 90 101 89 102
		mu 0 4 39 40 41 42
		f 4 91 106 92 105
		mu 0 4 43 44 45 46
		f 4 94 115 93 116
		mu 0 4 47 48 49 50
		f 4 96 119 95 120
		mu 0 4 51 52 53 54
		f 4 97 -90 98 -83
		mu 0 4 115 42 41 127
		f 4 99 -91 100 -74
		mu 0 4 120 40 39 125
		f 4 103 -106 104 -103
		mu 0 4 42 43 46 39
		f 4 107 -92 108 -81
		mu 0 4 118 44 43 123
		f 4 109 -93 110 -75
		mu 0 4 113 46 45 121
		f 4 111 -94 112 -79
		mu 0 4 134 50 49 139
		f 4 113 -95 114 -86
		mu 0 4 133 48 47 137
		f 4 117 -120 118 -117
		mu 0 4 50 53 52 47
		f 4 121 -96 122 -77
		mu 0 4 130 54 53 143
		f 4 123 -97 124 -88
		mu 0 4 131 52 51 141
		f 4 -109 -104 -98 -82
		mu 0 4 117 43 42 128
		f 4 -102 -100 -84 -99
		mu 0 4 41 40 126 56
		f 4 -101 -105 -110 127
		mu 0 4 114 39 46 122
		f 4 -111 -107 -108 -80
		mu 0 4 119 45 44 124
		f 4 -123 -118 -112 -78
		mu 0 4 136 53 50 140
		f 4 -116 -114 -85 -113
		mu 0 4 49 48 138 64
		f 4 -115 -119 -124 -87
		mu 0 4 132 47 52 142
		f 4 -121 -122 -89 -125
		mu 0 4 51 54 144 129
		f 4 -48 125 88 -127
		mu 0 4 22 10 70 67
		f 4 75 -56 126 -129
		mu 0 4 62 16 22 67
		f 4 76 129 74 128
		mu 0 4 67 68 61 62
		f 4 77 130 -128 -130
		mu 0 4 68 63 58 61
		f 4 78 131 73 -131
		mu 0 4 63 135 57 58
		f 4 -133 -52 -76 79
		mu 0 4 59 5 16 62
		f 4 -134 -44 132 80
		mu 0 4 60 24 5 59
		f 4 -135 67 133 81
		mu 0 4 55 71 24 60
		f 3 134 82 -136
		mu 0 3 71 55 116
		f 3 -138 136 -40
		mu 0 3 106 72 10
		f 4 -140 138 137 65
		mu 0 4 32 34 72 106
		f 4 -65 140 85 -142
		mu 0 4 34 33 65 66
		f 4 86 142 -139 141
		mu 0 4 66 69 72 34
		f 4 -126 -137 -143 87
		mu 0 4 70 10 72 69
		f 4 143 144 145 146
		mu 0 4 155 158 75 76
		f 4 -148 -151 151 152
		mu 0 4 77 78 79 156
		f 4 153 154 155 156
		mu 0 4 81 82 150 145
		f 4 158 159 -158 160
		mu 0 4 148 151 87 88
		f 4 161 -153 162 163
		mu 0 4 89 77 156 149
		f 4 165 -147 -165 166
		mu 0 4 152 155 76 92
		f 4 167 168 169 -149
		mu 0 4 93 147 95 96
		f 4 -171 171 172 -150
		mu 0 4 97 98 146 153
		f 4 173 -167 174 -160
		mu 0 4 151 152 92 87
		f 4 -176 -164 176 -155
		mu 0 4 82 89 149 150
		f 4 177 -161 178 -169
		mu 0 4 147 148 88 95
		f 4 -180 -157 180 -172
		mu 0 4 98 81 145 146
		f 4 -144 181 -152 -183
		mu 0 4 74 73 80 157
		f 4 -163 -182 -166 -184
		mu 0 4 90 80 73 91
		f 4 -174 184 -177 183
		mu 0 4 91 86 83 90
		f 4 -156 -185 -159 -186
		mu 0 4 84 83 86 85
		f 4 -178 186 -181 185
		mu 0 4 85 94 99 84
		f 4 -168 187 -173 -187
		mu 0 4 94 154 100 99;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "ElevatorDoor_GeoShapeDeformed" -p "ElevatorDoor_Geo";
	rename -uid "46CC653C-4B89-C02B-8C0E-04A4D71B05B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F4FC2491-4299-49AF-BD30-3D9092F33471";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "96587F6E-45AA-B6A1-C139-BAA207BD2332";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F78F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AD87CCBF-4F03-338A-A137-76A312A2721B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F791";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6A8E4935-4C0F-833C-57B2-63ADD64F59E1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FB7F8D54-494A-9B69-4619-439161C8C7A3";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1E0000F794";
	setAttr ".version" -type "string" "5.3.3.3";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1E0000F795";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1E0000F796";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1E0000F797";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BC56DE00-0010-7CE4-6960-87B100010196";
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
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
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
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 823\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 823\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 823\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BC56DE00-0010-7CE4-6960-87B100010197";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId19";
	rename -uid "BC56DE00-0010-7CE4-6960-9EB200010E0C";
	setAttr ".ihi" 0;
createNode lambert -n "M_ElevatorDoor";
	rename -uid "95D138E3-4FE2-FE29-D351-2DAD233EAA09";
createNode shadingEngine -n "lambert10SG";
	rename -uid "76A2072A-4AF2-30C0-85AD-A2B4F79A0E9A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "D78C812E-4A1F-A23F-B223-8E8E2BAFFA07";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6F2AF629-4046-F06E-CD52-4BAEEB8D233B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -613.09521373302312 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode dagPose -n "bindPose1";
	rename -uid "57DA4FB3-4AAE-DF17-8122-55987BE74C28";
	setAttr -s 3 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -4.3711390063094775e-08 0 -102.90847778320312
		 130.65057373046875 3.6890869140625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710679664085752 0.70710676573223719 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 102.90847778320312 130.65057373046875
		 3.6890869140625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654757 -0.70710678118654757 -4.329780281177467e-17 4.329780281177467e-17 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes no no no;
	setAttr ".bp" yes;
createNode multiplyDivide -n "DoorSideFat";
	rename -uid "02DC119A-45AD-703F-8621-F3AB30783AEB";
createNode multiplyDivide -n "DoorSideEndFat";
	rename -uid "FED45C2A-44E9-DFFA-9653-74AD3D2E0265";
createNode skinCluster -n "skinCluster1";
	rename -uid "7C563B21-4177-6DB5-9636-76859E03B6F6";
	setAttr -s 101 ".wl";
	setAttr ".wl[0:100].w"
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
		1 0 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -130.65057373046875 -102.90847778320312 -3.6890869140625 1;
	setAttr ".pm[1]" -type "matrix" -4.6798286459482623e-31 1 -1.2246464306165476e-16 -0
		 1 -4.6798286459482623e-31 -3.8213712374045827e-15 0 -3.8213712374045827e-15 -1.2246464306165476e-16 -1 -0
		 -130.65057373046875 -102.90847778320312 3.6890869140630111 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode dagPose -n "bindPose2";
	rename -uid "E21F7D14-473A-7E8B-A9B0-DD9F48C03E12";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -102.90847778320312 130.65057373046875 3.6890869140625 1;
	setAttr ".wm[4]" -type "matrix" 0 1 -3.8213712374045827e-15 0 1 0 -1.2246464306165476e-16 0
		 -1.2246464306165476e-16 -3.8213712374045827e-15 -1 0 102.90847778320312 130.65057373046875 3.6890869140624996 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -4.3711390063094775e-08 0 -102.90847778320312
		 130.65057373046875 3.6890869140625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710679664085752 0.70710676573223719 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.7422779881260087e-08 3.8213712372710199e-15
		 4.3711390063094643e-08 0 102.90847778320312 130.65057373046875 3.6890869140624996 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710676573223652 0.70710679664085685 -3.0908620960936135e-08 -3.0908619609877377e-08 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes no no;
	setAttr ".bp" yes;
createNode multiplyDivide -n "RootFat";
	rename -uid "D9CB7C8D-4BE4-4E1F-5D46-DB8082B05DB6";
createNode multiplyDivide -n "DoorSideBFat";
	rename -uid "181489F9-453E-D446-A016-D6A39EC19B77";
createNode multiplyDivide -n "DoorSideBEndFat";
	rename -uid "4EA42569-432B-5439-E0D9-9BA25562F76B";
createNode multiplyDivide -n "DoorSideAFat";
	rename -uid "E45AB49D-4F77-BCF5-24A4-44A9D62E674E";
createNode multiplyDivide -n "DoorSideAEndFat";
	rename -uid "B92F00DA-429A-0EEA-E3F4-48872599D33E";
createNode objectSet -n "ControlSet";
	rename -uid "973371BE-46E5-7BF7-123C-06BF0CB7ACB5";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "7E495200-4A1F-F9F5-6134-E2BA0DFEBD7B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "3D67FE7B-4CDB-3FD5-0492-2AB3CCA25B0C";
	setAttr ".ihi" 0;
	setAttr -s 73 ".dsm";
	setAttr -s 15 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "7BBDCA3B-451A-ADD2-C537-CE87DFD1B2FB";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "DEEDAE62-4818-AB7D-0839-FCB392A1C62D";
	setAttr ".ihi" 0;
createNode unitConversion -n "LegLockRoot_MUnitConversion";
	rename -uid "C9E31FDD-452E-751F-3F49-68BD1E84F5FF";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKOffsetRootMM_M";
	rename -uid "F3D03AA3-4596-954B-8584-9198BBF35D48";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "FKOffsetRootDM_M";
	rename -uid "57830050-4177-AB01-9845-A788EE528843";
	setAttr ".ihi" 0;
createNode blendMatrix -n "DoorSideABM_R";
	rename -uid "A5E1965E-4812-4C46-4909-A99910BAD77A";
createNode blendMatrix -n "DoorSideBBM_L";
	rename -uid "FFDCF5F8-471E-637A-D650-1D9840D13BC0";
createNode blendMatrix -n "RootBM_M";
	rename -uid "7932E3B4-401F-F214-9111-91A5D8552E7B";
createNode multMatrix -n "FKRootRemoveInbtRotMM_M";
	rename -uid "68F91491-4963-6845-BBB0-E7AA1AC74640";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LegLockConstrainedDM2_M";
	rename -uid "46E859BB-429C-FEE3-D34D-28AC9EFC38EC";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKRootRemoveInbtRotMM2_M";
	rename -uid "950904AB-4952-9F4C-71A7-FBB649900F51";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FKRootRemoveInbtRotPM_M";
	rename -uid "5ED87A3E-49AE-CA01-C677-778F70CC802E";
	setAttr ".ihi" 0;
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode blendMatrix -n "FKRootRemoveInbtRotBM_M";
	rename -uid "2D3D087A-4284-6CB5-73C7-D8ADE2575623";
	setAttr ".ihi" 0;
createNode inverseMatrix -n "FKRootRemoveInbtRotIM_M";
	rename -uid "EF998876-4E40-0372-D2DB-29992237FD52";
	setAttr ".ihi" 0;
createNode blendMatrix -n "FKRootRemoveInbtRotBM2_M";
	rename -uid "141C1426-4B68-7834-82FD-D59D101B62CA";
	setAttr ".ihi" 0;
createNode multMatrix -n "RootXformInverterRemoveInbtRotMM_M";
	rename -uid "74C2CF1F-41DA-5251-0A71-1CAD449FA442";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "E03C4223-47E9-7F4F-FD9E-FF8B9677C3EA";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F791";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "96E82FC8-4ACA-100B-7420-6FB78CBEE700";
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "71827C63-43FC-AFE4-A46C-12A91D81ED9D";
createNode groupId -n "groupId20";
	rename -uid "BC56DE00-0010-7CE4-6960-9EB200010E0C";
	setAttr ".ihi" 0;
createNode lambert -n "M_ElevatorDoor1";
	rename -uid "95D138E3-4FE2-FE29-D351-2DAD233EAA09";
createNode shadingEngine -n "lambert10SG1";
	rename -uid "76A2072A-4AF2-30C0-85AD-A2B4F79A0E9A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "D78C812E-4A1F-A23F-B223-8E8E2BAFFA07";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "6F2AF629-4046-F06E-CD52-4BAEEB8D233B";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -613.09521373302312 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
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
	setAttr ".dli" 1;
	setAttr -k on ".gamm";
	setAttr -k on ".gmmv";
	setAttr -k on ".fprt" yes;
	setAttr -av -k on ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
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
	setAttr -s 7 ".s";
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
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.40000000596046448;
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
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
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
	setAttr ".dss" -type "string" "lambert1";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "FKDoorSideA_R.sx" "DoorSideA_R.sx";
connectAttr "FKDoorSideA_R.sy" "DoorSideA_R.sy";
connectAttr "FKDoorSideA_R.sz" "DoorSideA_R.sz";
connectAttr "Root_M.s" "DoorSideA_R.is";
connectAttr "DoorSideA_R_orientConstraint1.crx" "DoorSideA_R.rx";
connectAttr "DoorSideA_R_orientConstraint1.cry" "DoorSideA_R.ry";
connectAttr "DoorSideA_R_orientConstraint1.crz" "DoorSideA_R.rz";
connectAttr "DoorSideA_R_pointConstraint1.ctx" "DoorSideA_R.tx";
connectAttr "DoorSideA_R_pointConstraint1.cty" "DoorSideA_R.ty";
connectAttr "DoorSideA_R_pointConstraint1.ctz" "DoorSideA_R.tz";
connectAttr "DoorSideA_R.s" "DoorSideAEnd_R.is";
connectAttr "FKDoorSideB_L.sx" "DoorSideB_L.sx";
connectAttr "FKDoorSideB_L.sy" "DoorSideB_L.sy";
connectAttr "FKDoorSideB_L.sz" "DoorSideB_L.sz";
connectAttr "Root_M.s" "DoorSideB_L.is";
connectAttr "DoorSideB_L_orientConstraint1.crx" "DoorSideB_L.rx";
connectAttr "DoorSideB_L_orientConstraint1.cry" "DoorSideB_L.ry";
connectAttr "DoorSideB_L_orientConstraint1.crz" "DoorSideB_L.rz";
connectAttr "DoorSideB_L_pointConstraint1.ctx" "DoorSideB_L.tx";
connectAttr "DoorSideB_L_pointConstraint1.cty" "DoorSideB_L.ty";
connectAttr "DoorSideB_L_pointConstraint1.ctz" "DoorSideB_L.tz";
connectAttr "DoorSideB_L.s" "DoorSideBEnd_L.is";
connectAttr "skinCluster1.og[0]" "ElevatorDoor_GeoShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "M_ElevatorDoor.oc" "lambert10SG.ss";
connectAttr "lambert10SG.msg" "materialInfo20.sg";
connectAttr "M_ElevatorDoor.msg" "materialInfo20.m";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Root_M.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[2]" "bindPose1.p[4]";
connectAttr "Root_M.bps" "bindPose1.wm[2]";
connectAttr "DoorSideA.fat" "DoorSideFat.i1y";
connectAttr "DoorSideA.fat" "DoorSideFat.i1z";
connectAttr "DoorSideA.fatFront" "DoorSideFat.i2y";
connectAttr "DoorSideA.fatWidth" "DoorSideFat.i2z";
connectAttr "DoorSideAEnd.fat" "DoorSideEndFat.i1y";
connectAttr "DoorSideAEnd.fat" "DoorSideEndFat.i1z";
connectAttr "DoorSideAEnd.fatFront" "DoorSideEndFat.i2y";
connectAttr "DoorSideAEnd.fatWidth" "DoorSideEndFat.i2z";
connectAttr "ElevatorDoor_GeoShape.w" "skinCluster1.ip[0].ig";
connectAttr "ElevatorDoor_GeoShape.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "DoorSideA_R.wm" "skinCluster1.ma[0]";
connectAttr "DoorSideB_L.wm" "skinCluster1.ma[1]";
connectAttr "DoorSideA_R.liw" "skinCluster1.lw[0]";
connectAttr "DoorSideB_L.liw" "skinCluster1.lw[1]";
connectAttr "DoorSideA_R.obcc" "skinCluster1.ifcl[0]";
connectAttr "DoorSideB_L.obcc" "skinCluster1.ifcl[1]";
connectAttr "DoorSideA_R.msg" "skinCluster1.ptt";
connectAttr "Group.msg" "bindPose2.m[0]";
connectAttr "DeformationSystem.msg" "bindPose2.m[1]";
connectAttr "Root_M.msg" "bindPose2.m[2]";
connectAttr "DoorSideA_R.msg" "bindPose2.m[3]";
connectAttr "DoorSideB_L.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[2]" "bindPose2.p[4]";
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
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "M_ElevatorDoor1.oc" "lambert10SG1.ss";
connectAttr "ElevatorDoor_GeoShape.iog" "lambert10SG1.dsm" -na;
connectAttr "ElevatorDoor_GeoShapeDeformed.iog" "lambert10SG1.dsm" -na;
connectAttr "lambert10SG1.msg" "materialInfo21.sg";
connectAttr "M_ElevatorDoor1.msg" "materialInfo21.m";
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG1.pa" ":renderPartition.st" -na;
connectAttr "M_ElevatorDoor.msg" ":defaultShaderList1.s" -na;
connectAttr "M_ElevatorDoor1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
// End of ElevatorDoor_rig_hi_v001.ma
