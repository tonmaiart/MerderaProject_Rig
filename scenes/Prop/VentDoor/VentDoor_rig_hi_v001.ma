//Maya ASCII 2025ff03 scene
//Name: VentDoor_rig_hi_v001.ma
//Last modified: Wed, Jan 21, 2026 02:30:28 PM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "02C8FA05-4BD7-F891-17E9-2BA6552C565A";
createNode transform -s -n "persp";
	rename -uid "4D4D4277-45C9-867A-C7FB-828E62760629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 250.6622134009873 123.81024808812538 -34.727434411958399 ;
	setAttr ".r" -type "double3" -29.738352729541553 -272.59999999999701 -7.0113429750367054e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F95EFF46-4439-8065-7FE9-6BB045519520";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 284.77997386741885;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.6068527520950282 0.4356555612299714 0.018764076945373867 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "224F2FE6-4B2A-94A7-EFF2-6FBE710CFADC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "19B98488-4BC7-D94C-FB77-8FACD4243144";
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
	rename -uid "F584DF8B-406F-5797-E7F1-1481502B16B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B82CE487-4F9F-C1F7-75F8-F19B1B62B201";
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
	rename -uid "025AB5DB-475D-6317-CF8C-47A79235AA16";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4C379A88-4FD7-9CBE-EB03-9D8F715887A7";
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
createNode transform -n "VentDoor";
	rename -uid "38784061-4D81-9A1A-8A5C-C0B734EE301B";
createNode transform -n "Group" -p "VentDoor";
	rename -uid "C6BED871-4DED-0C80-0CB4-F2AD1027F838";
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
	rename -uid "A6628CED-4138-EC1F-6C35-43B58A36CDC1";
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
	setAttr -l on ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "86ABCE5E-488B-97C3-196B-DEB6224E9A37";
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
	rename -uid "80830165-4DFB-3F23-F1A1-788A1A958428";
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
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "7A1856BB-4163-0F74-7595-BA80691EC981";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "39871DBA-429C-19CD-CC77-F7AC7163A68E";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "4B22C0D8-4165-1FF9-9374-9BB36D80C0A9";
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
	setAttr -l on ".height";
	setAttr -l on ".version" 6.64;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "D5FFD80F-460F-DFC8-AC2F-729671FC7D0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		60.702796322359248 3.7169742607735501e-15 -60.702796322359255
		5.2565954105776587e-15 5.2565954105776587e-15 -85.846717833052068
		-60.702796322359248 3.7169742607735493e-15 -60.702796322359241
		-85.846717833052125 2.7250283432953503e-31 -4.4503090118597858e-15
		-60.702796322359248 -3.7169742607735501e-15 60.702796322359248
		-8.5993244385955431e-15 -5.2565954105776626e-15 85.846717833052139
		60.702796322359248 -3.7169742607735493e-15 60.702796322359241
		85.846717833052125 -7.1684006015318909e-31 1.1706886600320699e-14
		60.702796322359248 3.7169742607735501e-15 -60.702796322359255
		5.2565954105776587e-15 5.2565954105776587e-15 -85.846717833052068
		-60.702796322359248 3.7169742607735493e-15 -60.702796322359241
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "57FE6258-49D8-5984-AA37-DCA0E786F5CB";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "D858EDCB-48B2-D7A6-B991-539787E6DBB2";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "31AEE189-441C-545C-C166-A5849A4AD0FC";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "F0E36C4C-4BE5-9BD4-B6CC-C6ADB88F6469";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "DE0C2537-408D-39C2-D3FE-F58AACC37BAB";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "0A6E99BC-41F8-A633-EFB8-179CE160C4F3";
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
	rename -uid "90BC8FBE-4C38-97DE-69CA-2A8CE3406314";
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
	rename -uid "95274EC2-47EB-A260-654C-0C9B218A7641";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "C31436D0-46D0-8E2B-660A-2A9227E4213B";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "75212FA0-4312-9544-5C3B-78A3B3ABD6D9";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "C723B256-4339-4919-E1C3-1A8BBD1E4F35";
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
	rename -uid "471B98A5-4DFC-4F78-DDEB-8AA1E4CBB52B";
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
	rename -uid "D52A2689-49E1-23E3-BA83-5FB4FF3D5F5F";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "81E33D9C-4230-24C1-621A-39934E019CF0";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "5C718A71-49A3-B5B6-934F-1E868E588457";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "FA642235-4DE6-FBE3-7A9E-62952CC595E3";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "AFDB372C-4D9F-EA28-EF3A-96BBCD9C93E6";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "99D43F43-4E88-67CA-2677-CD8F849CC9F5";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "73246684-445F-9F98-7210-FCA3F26FA83D";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "7BB1BE5A-4EFB-2C13-E503-238512D8BC59";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "E6B8E2E5-4EDE-C63E-81E2-DF83B0FEBA53";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "B7363585-4743-288F-2621-73B0D65DBB3E";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "E7700F61-439C-BD37-CBA4-008FBC215749";
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
	rename -uid "A58761DA-4BF3-1E73-9BE0-DCB3A9FC4101";
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
	rename -uid "7C11AF89-4F0F-A0C1-EAD3-65A499AC0C53";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "EF0A7AC4-4CF8-5FF3-9F24-2E928C65BC5A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "33FA01FB-45C5-7417-8E11-3687F758A2D9";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "34B40792-4E3E-3819-BB59-B99DC7299FE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-14.221715419142859 39.657862666826624 51.016466042898813
		-14.221715419142859 -39.657862666826645 51.016466042898813
		14.221715419142866 -39.657862666826645 51.016466042898813
		14.221715419142866 39.657862666826624 51.016466042898813
		-14.221715419142859 39.657862666826624 51.016466042898813
		-14.221715419142866 39.657862666826631 -51.01646604289899
		-14.221715419142866 -39.657862666826631 -51.01646604289899
		-14.221715419142859 -39.657862666826645 51.016466042898813
		14.221715419142866 -39.657862666826645 51.016466042898813
		14.221715419142855 -39.657862666826631 -51.01646604289899
		14.221715419142855 39.657862666826631 -51.01646604289899
		14.221715419142866 39.657862666826624 51.016466042898813
		-14.221715419142859 39.657862666826624 51.016466042898813
		-14.221715419142866 39.657862666826631 -51.01646604289899
		14.221715419142855 39.657862666826631 -51.01646604289899
		14.221715419142855 -39.657862666826631 -51.01646604289899
		-14.221715419142866 -39.657862666826631 -51.01646604289899
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "71B81533-422F-6FF3-3902-C08028B13D2E";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "7AB2702C-41F2-2BC9-888D-BFA303E8DBA3";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "F0C29664-4C13-945E-1D19-9FBD665C98DA";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "21AB8B35-4F43-1C68-CC2D-6790B5E2FCC3";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "AD62D593-4CDA-C53A-ED1B-97A76B0F0D88";
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
	rename -uid "CC104858-4C42-438D-CA57-DB8A8E8FEBF2";
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
	rename -uid "9B545966-4311-3D2C-E08C-A1A7DBE5DEAC";
	setAttr -l on ".v" no;
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "3CADD977-458F-F3FC-443A-D4BCEEC06296";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "65E9BBB8-43AB-2E73-99EC-03AD0E202313";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "A3391DF5-47AC-4CF1-EC87-C69BC61B7FD9";
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
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;";
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "7B339960-43AF-2FFE-AC26-27827FD53B0A";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "CEA4B6D9-4C44-B8F6-922F-EB9E40B60EDC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode parentConstraint -n "Root_M_parentConstraint1" -p "Root_M";
	rename -uid "7071EB85-410F-0612-1523-E4A0AC0A52E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
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
createNode scaleConstraint -n "Root_M_scaleConstraint1" -p "Root_M";
	rename -uid "4B751F76-4158-289B-2B47-DCB30EBECC7C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "Geometry" -p "Group";
	rename -uid "5B1C93E3-4017-FDCF-0D88-699BD5EF1622";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "D053BF27-42B5-C699-07EB-F7A3DF64E2AB";
createNode transform -n "VentDoor_Body_Geo" -p "geo";
	rename -uid "BC56DE00-0010-7CE4-6960-856B0000FF4A";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "VentDoor_Body_GeoShape" -p "VentDoor_Body_Geo";
	rename -uid "BC56DE00-0010-7CE4-6960-856B0000FF4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:164]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47014765057247132 0.4999999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 487 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.10574116 0.73969895 0.11012781
		 0.73969895 0.10953978 0.74759883 0.11012781 0.71410567 0.10574116 0.71396035 0.1074985
		 0.71410567 0.27180186 0.74759883 0.27121386 0.73969895 0.079606831 0.73969895 0.084574044
		 0.74759883 0.25869855 0.42662808 0.11012781 0.42662808 0.11012781 0.40438107 0.27121386
		 0.40438107 0.25869855 0.71410567 0.26704109 0.71330082 0.26704109 0.69881576 0.25869855
		 0.69801086 0.11012781 0.69801086 0.11012781 0.66887534 0.25869855 0.66887534 0.26704109
		 0.66807044 0.26704109 0.65358466 0.25869855 0.65277976 0.11012781 0.65277976 0.11012781
		 0.62364423 0.25869855 0.62364423 0.26704109 0.62284011 0.26704109 0.60835433 0.25869855
		 0.60754943 0.11012781 0.60754943 0.11012781 0.5784139 0.25869855 0.5784139 0.26704109
		 0.577609 0.26704109 0.56312472 0.25869855 0.56231987 0.11012781 0.56231987 0.11012781
		 0.53318357 0.25869855 0.53318357 0.26704109 0.53237867 0.26704109 0.51789367 0.25869855
		 0.51708877 0.11012781 0.51708949 0.11012781 0.48795325 0.25869855 0.4879525 0.26704109
		 0.48714834 0.26704109 0.47266331 0.25869855 0.47185841 0.11012781 0.47185841 0.11012781
		 0.44272214 0.25869855 0.44272214 0.26704109 0.44191727 0.26704109 0.42743295 0.095273867
		 0.48780715 0.10574116 0.48780715 0.10574116 0.51723486 0.095273867 0.51723486 0.093708053
		 0.51789367 0.093708053 0.53237867 0.095273867 0.53303826 0.10574116 0.53303826 0.10574116
		 0.56246519 0.095273867 0.56246519 0.093708053 0.56312472 0.093708053 0.577609 0.095273867
		 0.57826859 0.10574116 0.57826859 0.10574116 0.60769552 0.095273867 0.60769552 0.093708053
		 0.60835433 0.093708053 0.62284011 0.095273867 0.62349892 0.10574116 0.62349892 0.10574116
		 0.65292662 0.095273867 0.65292662 0.093708053 0.65358466 0.093708053 0.66807044 0.095273867
		 0.66873002 0.10574116 0.66873002 0.10574116 0.69815618 0.095273867 0.69815618 0.093708053
		 0.69881576 0.093708053 0.71330082 0.095273867 0.71396035 0.079606831 0.40438107 0.10574116
		 0.40438107 0.10574116 0.4267734 0.095273867 0.4267734 0.093708053 0.42743295 0.093708053
		 0.44191727 0.095273867 0.44257683 0.10574116 0.44257683 0.10574116 0.47200376 0.095273867
		 0.47200376 0.093708053 0.47266331 0.093708053 0.48714834 0.27560049 0.73969895 0.1074985
		 0.42662808 0.10953978 0.39648047 0.27180186 0.39648047 0.27560049 0.40438107 0.1074985
		 0.66887534 0.1074985 0.69801086 0.1074985 0.62364423 0.1074985 0.65277976 0.1074985
		 0.60754943 0.1074985 0.5784139 0.1074985 0.53318357 0.1074985 0.56231987 0.1074985
		 0.48795325 0.1074985 0.51708949 0.1074985 0.47185841 0.1074985 0.44272214 0.095098726
		 0.51789367 0.095098726 0.53237867 0.095098726 0.56312472 0.095098726 0.577609 0.095098726
		 0.60835433 0.095098726 0.62284011 0.096976802 0.65277976 0.095098726 0.65358466 0.095098726
		 0.66807044 0.095098726 0.69881576 0.095098726 0.71330082 0.084574044 0.39648047 0.095098726
		 0.42743295 0.095098726 0.44191727 0.095098726 0.47266331 0.095098726 0.48714834 0.30173483
		 0.73969895 0.29676762 0.74759883 0.30173483 0.40438107 0.29676762 0.39648047 0.086984992
		 0.92682749 0.086984992 0.93472362 0.072499953 0.93472362 0.072499953 0.92682749 0.087789878
		 0.92528474 0.07169506 0.92528474 0.086984992 0.75274318 0.087789878 0.75462091 0.07169506
		 0.75462091 0.072499953 0.75274318 0.087644555 0.75291806 0.086984992 0.75135195 0.071840391
		 0.75291806 0.072499953 0.75135195 0.10897636 0.92682749 0.10897636 0.93472362 0.094490588
		 0.93472362 0.094490588 0.92682749 0.10978126 0.92528474 0.093685701 0.92528474 0.10897636
		 0.75274318 0.10978126 0.75462091 0.093685701 0.75462091 0.094490588 0.75274318 0.093831025
		 0.75291806 0.094490588 0.75135195 0.13096701 0.92682749 0.13096701 0.93472362 0.11648121
		 0.93472362 0.11648121 0.92682749 0.13177189 0.92528474 0.11567707 0.92528474 0.13096701
		 0.75274318 0.13177189 0.75462091 0.11567707 0.75462091 0.11648121 0.75274318 0.13162582
		 0.75291806 0.13096701 0.75135195 0.1158224 0.75291806 0.11648121 0.75135195 0.15295689
		 0.92682731 0.15295689 0.93472362 0.1384726 0.93472362 0.1384726 0.92682731 0.15376177
		 0.92528474 0.13766772 0.92528474 0.15295689 0.75274318 0.15376177 0.75462079 0.13766772
		 0.75462079 0.1384726 0.75274318 0.15361646 0.75291806 0.15295689 0.75135195 0.13781303
		 0.75291806 0.1384726 0.75135195 0.17494902 0.92682731 0.17494902 0.93472362 0.16046397
		 0.93472362 0.16046397 0.92682731 0.17575391 0.92528474 0.15965909 0.92528474 0.17494902
		 0.75274312 0.17575316 0.75462079 0.15965909 0.75462079 0.16046397 0.75274312 0.17560783
		 0.75291806 0.17494902 0.75135195 0.15980442 0.75291806 0.16046397 0.75135195 0.19694039
		 0.92682731 0.19694039 0.93472362 0.18245536 0.93472362 0.18245536 0.92682731 0.19774529
		 0.92528474 0.18165122 0.92528474 0.19694039 0.75274312 0.19774529 0.75462079 0.18165047
		 0.75462079 0.18245536 0.75274312 0.19759996 0.75291806 0.19694039 0.75135195 0.18179655
		 0.75291806 0.18245536 0.75135195 0.21893029 0.92682731 0.21893029 0.93472362 0.204446
		 0.93472362 0.204446 0.92682731 0.21973518 0.92528474 0.2036411 0.92528474 0.21893029
		 0.75274312 0.21973518 0.75462079 0.2036411 0.75462079 0.204446 0.75274312 0.21958984
		 0.75291806 0.21893029 0.75135195 0.20378643 0.75291806 0.204446 0.75135195 0.44825163
		 0.75739163 0.44825163 0.77187669 0.43821287 0.77187669 0.43821287 0.75739163 0.41526529
		 0.75739163 0.41526529 0.77187741 0.40522653 0.77187741 0.40522653 0.75739163 0.43175808
		 0.75739163 0.43175808 0.77187741 0.42171931 0.77187741 0.42171931 0.75739163 0.49773148
		 0.75739163 0.49773148 0.77187592 0.48769271 0.77187592 0.48769271 0.75739163 0.46474516
		 0.75739163 0.46474516 0.77187669 0.4547064 0.77187669 0.4547064 0.75739163 0.48123869
		 0.75739163;
	setAttr ".uvst[0].uvsp[250:486]" 0.48123869 0.77187669 0.47119993 0.77187669
		 0.47119993 0.75739163 0.51422501 0.75739163 0.51422501 0.77187592 0.50418627 0.77187592
		 0.50418627 0.75739163 0.69477749 0.40714601 0.66678816 0.39648047 0.9198128 0.39648047
		 0.89793622 0.40714601 0.69477749 0.75118655 0.66678816 0.76765549 0.9198128 0.76765549
		 0.89793622 0.75118655 0.65334803 0.74909681 0.65334803 0.41503915 0.93325377 0.41503915
		 0.93325448 0.74909681 0.6477555 0.41503915 0.6477555 0.74909681 0.9384222 0.41503915
		 0.9384222 0.74909681 0.27434471 0.022437727 0.32291237 0.0019920319 0.32291237 0.39272732
		 0.27434471 0.36647823 0.017800976 0.39272732 0.017800976 0.0019920319 0.071185298
		 0.022437727 0.071185298 0.36647823 0.33785278 0.0019920319 0.33785278 0.39272732
		 0.0018730981 0.0019920319 0.0018730981 0.39272732 0.70638651 0.0019920319 0.70638651
		 0.39272732 0.69195068 0.37593868 0.69195068 0.018780695 0.37040684 0.39272732 0.38484269
		 0.37593868 0.37040684 0.0019920319 0.38484269 0.018780695 0.61461192 0.39648047 0.61461192
		 0.75363845 0.57529974 0.73097706 0.57529974 0.41914186 0.30750394 0.75363845 0.34681687
		 0.73097706 0.30750394 0.39648047 0.34681687 0.41914186 0.35060003 0.0019920319 0.35060003
		 0.39272732 0.34475079 0.39272732 0.34475079 0.0019920319 0.3633914 0.0019920319 0.3633914
		 0.39272732 0.35757896 0.39272732 0.35757896 0.0019920319 0.63406813 0.75363845 0.63406813
		 0.39648047 0.64198649 0.39648047 0.64198649 0.75363845 0.62038076 0.75363845 0.62038076
		 0.39648047 0.62829912 0.39648047 0.62829912 0.75363845 0.044340774 0.76117891 0.044340774
		 0.92344099 0.031377811 0.9484067 0.031377811 0.73621333 0.051536296 0.9484067 0.051536296
		 0.73621345 0.064499259 0.76117909 0.064499259 0.92344117 0.22579505 0.93315762 0.22577856
		 0.93145478 0.23108958 0.92093313 0.23098244 0.92269039 0.2256324 0.76079088 0.23114385
		 0.76973301 0.23125149 0.91830355 0.2257113 0.75135195 0.23121357 0.76139063 0.24381061
		 0.76181918 0.24391775 0.76357645 0.23860672 0.7530548 0.23862322 0.75135195 0.24407965
		 0.76620603 0.243972 0.91477656 0.23846056 0.92371869 0.23853947 0.9331575 0.24404174
		 0.92311895 0.25145134 0.93315762 0.25143483 0.93145478 0.25674587 0.92093313 0.25663874
		 0.92269039 0.25128868 0.76079088 0.25680012 0.76973301 0.25690776 0.91830355 0.2513676
		 0.75135195 0.25686985 0.76139063 0.26946685 0.76181918 0.26957399 0.76357645 0.26426297
		 0.7530548 0.26427945 0.75135195 0.2697359 0.76620603 0.26962826 0.91477656 0.26411679
		 0.92371869 0.26419571 0.9331575 0.26969796 0.92311895 0.27710757 0.93315762 0.27709109
		 0.93145478 0.2824021 0.92093313 0.28229496 0.92269039 0.27694491 0.76079088 0.28245637
		 0.76973301 0.28256401 0.91830355 0.27702382 0.75135195 0.28252611 0.76139063 0.2951231
		 0.76181918 0.29523021 0.76357645 0.2899192 0.7530548 0.28993568 0.75135195 0.29539213
		 0.76620603 0.29528448 0.91477656 0.28977305 0.92371869 0.28985193 0.9331575 0.29535422
		 0.92311895 0.30274731 0.93749452 0.30805835 0.92697281 0.30795121 0.92873007 0.30276382
		 0.93919724 0.30822024 0.92434323 0.30260116 0.76683056 0.30811259 0.77577263 0.30268008
		 0.75739163 0.30818233 0.76743031 0.32077941 0.7678588 0.32088655 0.76961607 0.31557554
		 0.75909436 0.31559202 0.75739163 0.32104847 0.77224565 0.32094082 0.92081624 0.31542936
		 0.92975831 0.31550828 0.93919718 0.32101056 0.92915857 0.32840365 0.93749452 0.33371466
		 0.92697281 0.33360752 0.92873007 0.32842013 0.93919724 0.33376893 0.77577263 0.33387658
		 0.92434323 0.3282575 0.76683056 0.32833639 0.75739163 0.33383867 0.76743031 0.34643567
		 0.7678588 0.34654278 0.76961607 0.34123176 0.75909436 0.34124827 0.75739163 0.34670469
		 0.77224565 0.34659705 0.92081624 0.34108561 0.92975831 0.3411645 0.93919718 0.34666678
		 0.92915857 0.3540599 0.9374944 0.35937092 0.92697269 0.35926378 0.92872995 0.35407639
		 0.93919718 0.35942519 0.77577257 0.35953283 0.92434323 0.35391372 0.76683044 0.35399264
		 0.75739163 0.35949489 0.76743019 0.37209189 0.7678588 0.37219903 0.76961607 0.36688802
		 0.75909436 0.3669045 0.75739163 0.37236094 0.77224559 0.3722533 0.92081624 0.36674184
		 0.92975831 0.36682075 0.93919718 0.37232304 0.92915857 0.37971622 0.9374944 0.38502723
		 0.92697269 0.38492012 0.92872995 0.37973273 0.93919718 0.3850815 0.77577257 0.38518915
		 0.92434323 0.37957007 0.76683044 0.37964895 0.75739163 0.38515124 0.76743019 0.39774823
		 0.7678588 0.39785537 0.76961607 0.39254436 0.75909436 0.39256084 0.75739163 0.39801726
		 0.77224559 0.39790961 0.92081624 0.39239818 0.92975831 0.3924771 0.93919718 0.39797935
		 0.92915857 0.025200792 0.72637469 0.025193293 0.97939909 0.016717076 0.9840501 0.016724855
		 0.72129864 0.02520247 0.99284017 0.016726624 0.99800789 0.016735241 0.70734137 0.025210761
		 0.7129342 0.0018808768 0.98405075 0.0018730981 0.72129911 0.010349316 0.72595036
		 0.010356815 0.97897464 0.0018826468 0.70734137 0.010358492 0.71250933 0.010366783
		 0.99241519 0.001891264 0.99800795 0.063181765 0.73246026 0.06316337 0.39648047 0.073820986
		 0.41142124 0.073837712 0.71653247 0.057332527 0.73246026 0.057350926 0.39648047 0.051563498
		 0.41240826 0.051546779 0.71751958 0.040889159 0.73246014 0.040907558 0.39648047 0.035076719
		 0.73246014 0.03505832 0.39648047 0.021370998 0.70358819 0.021354275 0.39648047 0.029272612
		 0.39648047 0.029289335 0.70358819 0.0076501863 0.70358819 0.0076669082 0.39648047
		 0.015585246 0.39648047 0.015568524 0.70358819;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 236 ".pt";
	setAttr ".pt[0:165]" -type "float3"  230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826;
	setAttr ".pt[166:235]" 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 
		230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 
		-2605.8826 230.70995 -423.21326 -2605.8826 230.70995 -423.21326 -2605.8826 230.70995 
		-423.21326 -2605.8826 230.70995 -423.21326 -2605.8826;
	setAttr -s 236 ".vt";
	setAttr ".vt[0:165]"  -224.42454529 388.85552979 2656.23706055 -224.43882751 390.34872437 2658.61181641
		 -222.095565796 394.076843262 2643.70605469 -222.38046265 393.51242065 2643.94799805
		 -224.43882751 454.13272095 2658.61181641 -222.13951111 445.37738037 2643.70605469
		 -224.42454529 455.62594604 2656.23706055 -222.11578369 448.21466064 2643.94799805
		 -222.42527771 445.84106445 2643.94799805 -224.42454529 388.85549927 2555.44262695
		 -222.38046265 393.51242065 2648.30200195 -224.43882751 390.34872437 2553.067871094
		 -222.095565796 394.076843262 2648.54394531 -224.42454529 455.62591553 2555.44262695
		 -222.11578369 448.21466064 2648.30200195 -224.43882751 454.13272095 2553.067871094
		 -222.13951111 445.37738037 2648.54394531 -222.42527771 445.84106445 2648.30200195
		 -220.53131104 396.71136475 2656.23706055 -220.45043945 398.030029297 2656.23706055
		 -220.54223633 397.85321045 2658.61181641 -220.53131104 447.77008057 2656.23706055
		 -220.54223633 446.62823486 2658.61181641 -220.45043945 446.45141602 2656.23706055
		 -220.53131104 396.71136475 2555.44262695 -220.54223633 397.85321045 2553.067871094
		 -220.45043945 398.029998779 2555.44262695 -220.53131104 447.77005005 2555.44262695
		 -220.45043945 446.45141602 2555.44262695 -220.54223633 446.62820435 2553.067871094
		 -222.095565796 394.076843262 2630.10986328 -222.38046265 393.51242065 2630.35180664
		 -222.13951111 445.37738037 2630.10986328 -222.11578369 448.21466064 2630.35180664
		 -222.42527771 445.84106445 2630.35180664 -222.38046265 393.51242065 2634.70605469
		 -222.095565796 394.076843262 2634.94799805 -222.11578369 448.21466064 2634.70605469
		 -222.13951111 445.37738037 2634.94799805 -222.42527771 445.84106445 2634.70605469
		 -222.095565796 394.076843262 2616.51391602 -222.38046265 393.51242065 2616.75585938
		 -222.13951111 445.37738037 2616.51391602 -222.11578369 448.21466064 2616.75585938
		 -222.42527771 445.84106445 2616.75585938 -222.38046265 393.51242065 2621.11010742
		 -222.095565796 394.076843262 2621.35180664 -222.11578369 448.21466064 2621.11010742
		 -222.13951111 445.37738037 2621.35180664 -222.42527771 445.84106445 2621.11010742
		 -222.095565796 394.076812744 2602.91796875 -222.38046265 393.51242065 2603.15991211
		 -222.13951111 445.37738037 2602.91796875 -222.11578369 448.21466064 2603.15991211
		 -222.42527771 445.84103394 2603.15991211 -222.38046265 393.51242065 2607.51391602
		 -222.095565796 394.076812744 2607.75585938 -222.11578369 448.21466064 2607.51391602
		 -222.13951111 445.37738037 2607.75585938 -222.42527771 445.84103394 2607.51391602
		 -222.095565796 394.076812744 2589.32202148 -222.38046265 393.51239014 2589.5637207
		 -222.13951111 445.37738037 2589.32177734 -222.11578369 448.21466064 2589.5637207
		 -222.42527771 445.84103394 2589.5637207 -222.38046265 393.51239014 2593.91796875
		 -222.095565796 394.076812744 2594.15991211 -222.11578369 448.21466064 2593.91796875
		 -222.13951111 445.37738037 2594.15991211 -222.42527771 445.84103394 2593.91796875
		 -222.095565796 394.076812744 2575.72583008 -222.38046265 393.51239014 2575.96777344
		 -222.13951111 445.37738037 2575.72583008 -222.11578369 448.21463013 2575.96777344
		 -222.42527771 445.84103394 2575.96777344 -222.38046265 393.51239014 2580.32202148
		 -222.095565796 394.076812744 2580.56396484 -222.11578369 448.21463013 2580.32202148
		 -222.13951111 445.37738037 2580.5637207 -222.42527771 445.84103394 2580.32202148
		 -222.095565796 394.076812744 2562.12988281 -222.38046265 393.51239014 2562.37182617
		 -222.13951111 445.37738037 2562.12988281 -222.11578369 448.21463013 2562.37182617
		 -222.42527771 445.84103394 2562.37182617 -222.38046265 393.51239014 2566.72583008
		 -222.095565796 394.076812744 2566.96777344 -222.11578369 448.21463013 2566.72583008
		 -222.13951111 445.37738037 2566.96777344 -222.42527771 445.84103394 2566.72583008
		 -220.53131104 396.71136475 2648.50024414 -220.53131104 396.71136475 2643.74975586
		 -220.53131104 396.71136475 2634.90429688 -220.53131104 396.71136475 2630.15380859
		 -220.49911499 397.23959351 2562.12988281 -220.49911499 397.23959351 2607.75585938
		 -220.49911499 397.23959351 2602.91796875 -220.49911499 397.23959351 2594.15991211
		 -220.49911499 397.23959351 2589.32202148 -220.49911499 397.23959351 2580.56396484
		 -220.49911499 397.23959351 2575.72583008 -220.49911499 397.23959351 2566.96777344
		 -220.53131104 396.71136475 2621.30810547 -220.53131104 396.71136475 2616.55761719
		 -220.53131104 396.71136475 2607.7121582 -220.53131104 396.71136475 2602.96166992
		 -220.53131104 396.71136475 2594.11621094 -220.53131104 396.71136475 2589.36572266
		 -220.53131104 396.71136475 2580.52001953 -220.53131104 396.71136475 2575.76953125
		 -220.53131104 396.71136475 2566.92407227 -220.53131104 396.71136475 2562.17358398
		 -220.49911499 397.23959351 2648.54394531 -220.49911499 397.23959351 2643.70605469
		 -220.49911499 397.23959351 2634.94799805 -220.49911499 397.23959351 2630.10986328
		 -220.49911499 397.23959351 2621.35180664 -220.49911499 397.23959351 2616.51391602
		 -220.45043945 398.029998779 2580.56396484 -220.45043945 398.029998779 2575.72583008
		 -220.45043945 398.029998779 2566.96777344 -220.45043945 398.029998779 2562.12988281
		 -220.45043945 398.030029297 2648.54394531 -220.45043945 398.030029297 2643.70605469
		 -220.45043945 398.030029297 2634.94799805 -220.45043945 398.030029297 2630.10986328
		 -220.45043945 398.030029297 2621.35180664 -220.45043945 398.030029297 2616.51391602
		 -220.45043945 398.030029297 2607.75585938 -220.45043945 398.030029297 2602.91796875
		 -220.45043945 398.030029297 2594.15991211 -220.45043945 398.030029297 2589.32202148
		 -222.32389832 393.094238281 2607.51391602 -222.32389832 393.094238281 2603.15991211
		 -222.32389832 393.094238281 2593.91796875 -222.32389832 393.094238281 2589.5637207
		 -222.32389832 393.094238281 2580.32202148 -222.32389832 393.094238281 2575.96777344
		 -222.32389832 393.094238281 2566.72583008 -222.090606689 393.56500244 2607.7121582
		 -222.090606689 393.56500244 2602.96166992 -222.090606689 393.56500244 2594.11621094
		 -222.090606689 393.56500244 2589.36572266 -222.090606689 393.56500244 2580.52001953
		 -222.090606689 393.56500244 2575.76953125 -222.090606689 393.56500244 2566.92407227
		 -222.090606689 393.56500244 2562.17358398 -222.32389832 393.094238281 2562.37182617
		 -222.32389832 393.094238281 2648.30200195 -222.32389832 393.094238281 2643.94799805
		 -222.32389832 393.094238281 2634.70605469 -222.090606689 393.56500244 2648.50024414
		 -222.32389832 393.094238281 2630.35180664 -222.32389832 393.094238281 2621.11010742
		 -222.32389832 393.094238281 2616.75585938 -222.090606689 393.56500244 2616.55761719
		 -222.090606689 393.56500244 2621.30810547 -222.090606689 393.56500244 2643.74975586
		 -222.090606689 393.56500244 2634.90429688 -222.090606689 393.56500244 2630.15380859
		 -220.46183777 445.19708252 2648.30200195 -220.46183777 445.19708252 2643.94799805
		 -220.48280334 442.68942261 2634.94799805 -220.48280334 442.68942261 2643.70605469
		 -220.46183777 445.19708252 2630.35180664 -220.46183777 445.19708252 2634.70605469;
	setAttr ".vt[166:235]" -220.48280334 442.68942261 2621.35180664 -220.48280334 442.68942261 2630.10986328
		 -220.46183777 445.19708252 2616.75585938 -220.46183777 445.19708252 2621.11010742
		 -220.46183777 445.19708252 2603.15991211 -220.46183777 445.19708252 2607.51391602
		 -220.48280334 442.68942261 2616.51391602 -220.48280334 442.68942261 2607.75585938
		 -220.46183777 445.19708252 2593.91796875 -220.48280334 442.68942261 2602.91796875
		 -220.48280334 442.68942261 2594.15991211 -220.46183777 445.19708252 2580.32202148
		 -220.48280334 442.68942261 2580.5637207 -220.48280334 442.68942261 2589.32177734
		 -220.46183777 445.19708252 2589.5637207 -220.48280334 442.68942261 2566.96777344
		 -220.48280334 442.68942261 2575.72583008 -220.46183777 445.19708252 2562.37182617
		 -220.48280334 442.68942261 2562.12988281 -220.46183777 445.19708252 2566.72583008
		 -220.46183777 445.19708252 2575.96777344 -220.48280334 442.68942261 2648.54394531
		 -227.10198975 379.41668701 2656.090332031 -227.1051178 383.61218262 2661.66894531
		 -227.10745239 462.59368896 2661.66894531 -227.10458374 466.78930664 2656.090332031
		 -227.10198975 379.41668701 2555.67480469 -227.1051178 383.6121521 2550.096191406
		 -227.10458374 466.78930664 2555.67480469 -227.10745239 462.59368896 2550.096191406
		 -224.55430603 381.097869873 2656.090332031 -224.55729675 385.13800049 2661.66894531
		 -224.55679321 465.23587036 2656.090332031 -224.55955505 461.19558716 2661.66894531
		 -224.55430603 381.097839355 2555.67480469 -224.55729675 385.13800049 2550.096191406
		 -224.55679321 465.23583984 2555.67480469 -224.55955505 461.19555664 2550.096191406
		 -224.47621155 393.55123901 2553.30200195 -224.47801208 454.61965942 2553.30200195
		 -224.4319458 393.55123901 2656.71850586 -224.43374634 454.61965942 2656.71850586
		 -229.83082581 372.71652222 2664.60888672 -229.83634949 473.70999146 2664.60888672
		 -229.83082581 372.7164917 2547.15625 -229.83634949 473.70996094 2547.15625 -226.62771606 377.5043335 2664.60888672
		 -226.63273621 469.21890259 2664.60888672 -226.62771606 377.50430298 2547.15625 -226.63273621 469.21887207 2547.15625
		 -226.62860107 393.55123901 2553.30200195 -226.63194275 454.61965942 2553.30200195
		 -226.62860107 393.55123901 2656.71850586 -226.63194275 454.61965942 2656.71850586
		 -231.58906555 372.71652222 2664.60888672 -231.58354187 473.70999146 2664.60888672
		 -231.58906555 372.7164917 2547.15625 -231.58354187 473.70996094 2547.15625 -231.58378601 469.37060547 2659.56225586
		 -231.58378601 469.37057495 2552.20288086 -231.58882141 377.055877686 2552.20288086
		 -231.58882141 377.055908203 2659.56225586 -229.20358276 469.37060547 2659.56225586
		 -229.20358276 469.37057495 2552.20288086 -229.20861816 377.055877686 2552.20288086
		 -229.20861816 377.055908203 2659.56225586 -229.20358276 457.55352783 2652.75048828
		 -229.20358276 457.55352783 2559.014648438 -229.20861816 388.87295532 2559.014648438
		 -229.20861816 388.87295532 2652.75048828;
	setAttr -s 407 ".ed";
	setAttr ".ed[0:165]"  0 1 0 4 6 0 11 9 0 13 15 0 18 19 0 19 20 0 20 18 0
		 21 22 0 22 23 0 23 21 0 24 25 0 25 26 0 26 24 0 27 28 0 28 29 0 29 27 0 9 0 0 1 4 0
		 6 13 0 15 11 0 24 9 0 11 25 0 13 27 0 29 15 0 28 26 0 25 29 0 100 109 0 109 110 0
		 110 101 0 101 120 0 120 119 0 119 100 0 117 103 0 103 104 0 104 95 0 95 128 0 128 127 0
		 127 117 0 111 24 0 26 121 0 121 94 0 94 111 0 122 19 0 18 90 0 90 112 0 112 122 0
		 114 124 0 124 123 0 123 113 0 113 91 0 91 92 0 92 114 0 116 126 0 126 125 0 125 115 0
		 115 93 0 93 102 0 102 116 0 97 130 0 130 129 0 129 96 0 96 105 0 105 106 0 106 97 0
		 99 118 0 118 131 0 131 98 0 98 107 0 107 108 0 108 99 0 27 21 0 23 28 0 22 20 0 19 23 0
		 0 18 0 20 1 0 21 6 0 4 22 0 143 108 0 107 142 0 142 135 0 135 134 0 134 141 0 141 106 0
		 105 140 0 140 133 0 133 132 0 132 139 0 139 104 0 103 155 0 155 154 0 154 153 0 153 156 0
		 156 102 0 93 159 0 159 152 0 152 150 0 150 158 0 158 92 0 91 157 0 157 149 0 149 148 0
		 148 151 0 151 90 0 111 146 0 146 147 0 147 138 0 138 145 0 145 110 0 109 144 0 144 137 0
		 137 136 0 136 143 0 184 121 0 122 187 0 187 160 0 160 161 0 161 163 0 163 123 0 124 162 0
		 162 165 0 165 164 0 164 167 0 167 125 0 126 166 0 166 169 0 169 168 0 168 172 0 172 127 0
		 128 173 0 173 171 0 171 170 0 170 175 0 175 129 0 130 176 0 176 174 0 174 180 0 180 179 0
		 179 131 0 118 178 0 178 177 0 177 186 0 186 182 0 182 119 0 120 181 0 181 185 0 185 183 0
		 183 184 0 157 2 0 2 3 0 3 149 0 8 5 0 5 7 0 7 8 0 10 12 0 12 151 0 148 10 0 17 14 0
		 14 16 0 16 17 0 159 30 0 30 31 0 31 152 0 34 32 0 32 33 0 33 34 0;
	setAttr ".ed[166:331]" 35 36 0 36 158 0 150 35 0 39 37 0 37 38 0 38 39 0 155 40 0
		 40 41 0 41 154 0 44 42 0 42 43 0 43 44 0 45 46 0 46 156 0 153 45 0 49 47 0 47 48 0
		 48 49 0 140 50 0 50 51 0 51 133 0 54 52 0 52 53 0 53 54 0 55 56 0 56 139 0 132 55 0
		 59 57 0 57 58 0 58 59 0 142 60 0 60 61 0 61 135 0 64 62 0 62 63 0 63 64 0 65 66 0
		 66 141 0 134 65 0 69 67 0 67 68 0 68 69 0 144 70 0 70 71 0 71 137 0 74 72 0 72 73 0
		 73 74 0 75 76 0 76 143 0 136 75 0 79 77 0 77 78 0 78 79 0 146 80 0 80 81 0 81 147 0
		 84 82 0 82 83 0 83 84 0 85 86 0 86 145 0 138 85 0 89 87 0 87 88 0 88 89 0 3 10 0
		 2 5 0 8 3 0 7 14 0 17 8 0 16 12 0 10 17 0 12 112 0 14 160 0 187 16 0 113 2 0 5 163 0
		 161 7 0 31 35 0 30 32 0 34 31 0 33 37 0 39 34 0 38 36 0 35 39 0 36 114 0 37 165 0
		 162 38 0 115 30 0 32 167 0 164 33 0 41 45 0 40 42 0 44 41 0 43 47 0 49 44 0 48 46 0
		 45 49 0 46 116 0 47 169 0 166 48 0 117 40 0 42 172 0 168 43 0 51 55 0 50 52 0 54 51 0
		 53 57 0 59 54 0 58 56 0 55 59 0 56 95 0 57 171 0 173 58 0 96 50 0 52 175 0 170 53 0
		 61 65 0 60 62 0 64 61 0 63 67 0 69 64 0 68 66 0 65 69 0 66 97 0 67 174 0 176 68 0
		 98 60 0 62 179 0 180 63 0 71 75 0 70 72 0 74 71 0 73 77 0 79 74 0 78 76 0 75 79 0
		 76 99 0 77 177 0 178 78 0 100 70 0 72 182 0 186 73 0 81 85 0 80 82 0 84 81 0 83 87 0
		 89 84 0 88 86 0 85 89 0 86 101 0 87 185 0 181 88 0 94 80 0 82 184 0 183 83 0 188 189 0
		 190 191 0 193 192 0 194 195 0 196 197 0 198 199 0 200 201 0 202 203 0 192 188 0;
	setAttr ".ed[332:406]" 189 190 0 191 194 0 195 193 0 200 192 0 193 201 0 194 202 0
		 203 195 0 204 201 0 201 203 0 203 205 0 205 204 0 196 200 0 201 197 0 202 198 0 199 203 0
		 207 199 0 199 197 0 197 206 0 206 207 0 188 196 0 197 189 0 198 191 0 190 199 0 207 205 0
		 204 206 0 209 211 0 211 210 0 210 208 0 208 209 0 211 215 0 215 214 0 214 210 0 217 215 0
		 215 213 0 213 219 0 219 217 0 213 212 0 212 214 0 217 216 0 216 218 0 218 219 0 213 209 0
		 208 212 0 221 223 0 223 222 0 222 220 0 220 221 0 211 223 0 210 222 0 208 220 0 209 221 0
		 221 224 0 223 225 0 224 225 0 222 226 0 225 226 0 220 227 0 226 227 0 227 224 0 224 228 0
		 225 229 0 228 229 0 226 230 0 229 230 0 227 231 0 230 231 0 231 228 0 228 232 0 229 233 0
		 232 233 0 230 234 0 233 234 0 231 235 0 234 235 0 235 232 0;
	setAttr -s 165 -ch 758 ".fc[0:164]" -type "polyFaces" 
		f 3 4 5 6
		mu 0 3 0 1 2
		f 3 7 8 9
		mu 0 3 96 6 7
		f 3 10 11 12
		mu 0 3 85 98 12
		f 3 13 14 15
		mu 0 3 100 13 99
		f 4 20 -3 21 -11
		mu 0 4 85 84 124 98
		f 4 22 -16 23 -4
		mu 0 4 131 100 99 132
		f 4 24 -12 25 -15
		mu 0 4 13 12 98 99
		f 6 26 27 28 29 30 31
		mu 0 6 111 92 91 112 49 48
		f 6 32 33 34 35 36 37
		mu 0 6 105 67 66 106 31 30
		f 5 38 -13 39 40 41
		mu 0 5 86 85 12 11 97
		f 5 42 -5 43 44 45
		mu 0 5 3 1 0 4 5
		f 6 46 47 48 49 50 51
		mu 0 6 101 19 18 102 79 78
		f 6 52 53 54 55 56 57
		mu 0 6 103 25 24 104 73 72
		f 6 58 59 60 61 62 63
		mu 0 6 107 37 36 108 61 60
		f 6 64 65 66 67 68 69
		mu 0 6 109 43 42 110 55 54
		f 4 70 -10 71 -14
		mu 0 4 100 96 7 13
		f 4 72 -6 73 -9
		mu 0 4 6 2 1 7
		f 4 74 -7 75 -1
		mu 0 4 8 0 2 9
		f 4 76 -2 77 -8
		mu 0 4 96 129 130 6
		f 46 78 -69 79 80 81 82 83 -63 84 85 86 87 88 -34 89 90 91 92 93 -57 94 95 96 97 98
		 -51 99 100 101 102 103 -44 -75 -17 -21 -39 104 105 106 107 108 -28 109 110 111 112
		mu 0 46 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79
		 80 81 82 83 4 0 8 84 85 86 87 88 89 90 91 92 93 94 95
		f 4 -73 -78 -18 -76
		mu 0 4 317 318 319 320
		f 4 -23 -19 -77 -71
		mu 0 4 100 131 129 96
		f 4 -20 -24 -26 -22
		mu 0 4 321 322 323 324
		f 46 113 -40 -25 -72 -74 -43 114 115 116 117 118 -48 119 120 121 122 123 -54 124 125
		 126 127 128 -37 129 130 131 132 133 -60 134 135 136 137 138 -66 139 140 141 142 143
		 -31 144 145 146 147
		mu 0 46 10 11 12 13 7 1 3 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34
		 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		f 4 148 149 150 -101
		mu 0 4 143 140 139 144
		f 3 151 152 153
		mu 0 3 133 137 134
		f 4 154 155 -103 156
		mu 0 4 142 141 145 146
		f 3 157 158 159
		mu 0 3 136 135 138
		f 4 160 161 162 -96
		mu 0 4 74 119 120 75
		f 3 163 164 165
		mu 0 3 147 151 148
		f 4 166 167 -98 168
		mu 0 4 156 155 157 158
		f 3 169 170 171
		mu 0 3 150 149 152
		f 4 172 173 174 -91
		mu 0 4 169 166 165 170
		f 3 175 176 177
		mu 0 3 159 163 160
		f 4 178 179 -93 180
		mu 0 4 168 167 171 172
		f 3 181 182 183
		mu 0 3 162 161 164
		f 4 184 185 186 -86
		mu 0 4 183 180 179 184
		f 3 187 188 189
		mu 0 3 173 177 174
		f 4 190 191 -88 192
		mu 0 4 182 181 185 186
		f 3 193 194 195
		mu 0 3 176 175 178
		f 4 196 197 198 -81
		mu 0 4 197 194 193 198
		f 3 199 200 201
		mu 0 3 187 191 188
		f 4 202 203 -83 204
		mu 0 4 196 195 199 200
		f 3 205 206 207
		mu 0 3 190 189 192
		f 4 208 209 210 -111
		mu 0 4 211 208 207 212
		f 3 211 212 213
		mu 0 3 201 205 202
		f 4 214 215 -113 216
		mu 0 4 210 209 213 214
		f 3 217 218 219
		mu 0 3 204 203 206
		f 4 220 221 222 -106
		mu 0 4 225 222 221 226
		f 3 223 224 225
		mu 0 3 215 219 216
		f 4 226 227 -108 228
		mu 0 4 224 223 227 228
		f 3 229 230 231
		mu 0 3 218 217 220
		f 4 -151 232 -157 -102
		mu 0 4 81 122 123 82
		f 4 -150 233 -152 234
		mu 0 4 139 140 137 133
		f 4 -154 235 -158 236
		mu 0 4 133 134 135 136
		f 4 -160 237 -155 238
		mu 0 4 136 138 141 142
		f 4 -156 239 -45 -104
		mu 0 4 325 326 327 328
		f 4 -159 240 -116 241
		mu 0 4 329 332 333 330
		f 4 -50 242 -149 -100
		mu 0 4 334 335 336 337
		f 4 -153 243 -118 244
		mu 0 4 341 340 339 342
		f 4 -163 245 -169 -97
		mu 0 4 75 120 121 76
		f 4 -162 246 -164 247
		mu 0 4 153 154 151 147
		f 4 -166 248 -170 249
		mu 0 4 147 148 149 150
		f 4 -172 250 -167 251
		mu 0 4 150 152 155 156
		f 4 -168 252 -52 -99
		mu 0 4 343 344 345 346
		f 4 -171 253 -121 254
		mu 0 4 347 350 351 348
		f 4 -56 255 -161 -95
		mu 0 4 352 353 354 355
		f 4 -165 256 -123 257
		mu 0 4 359 358 357 360
		f 4 -175 258 -181 -92
		mu 0 4 69 117 118 70
		f 4 -174 259 -176 260
		mu 0 4 165 166 163 159
		f 4 -178 261 -182 262
		mu 0 4 159 160 161 162
		f 4 -184 263 -179 264
		mu 0 4 162 164 167 168
		f 4 -180 265 -58 -94
		mu 0 4 361 362 363 364
		f 4 -183 266 -126 267
		mu 0 4 365 368 369 366
		f 4 -33 268 -173 -90
		mu 0 4 370 371 372 373
		f 4 -177 269 -128 270
		mu 0 4 377 376 375 378
		f 4 -187 271 -193 -87
		mu 0 4 63 115 116 64
		f 4 -186 272 -188 273
		mu 0 4 179 180 177 173
		f 4 -190 274 -194 275
		mu 0 4 173 174 175 176
		f 4 -196 276 -191 277
		mu 0 4 176 178 181 182
		f 4 278 -35 -89 -192
		mu 0 4 379 380 381 382
		f 4 -195 279 -131 280
		mu 0 4 384 386 387 385
		f 4 -62 281 -185 -85
		mu 0 4 388 389 390 391
		f 4 -189 282 -133 283
		mu 0 4 395 394 393 396
		f 4 -199 284 -205 -82
		mu 0 4 57 113 114 58
		f 4 -198 285 -200 286
		mu 0 4 193 194 191 187
		f 4 -202 287 -206 288
		mu 0 4 187 188 189 190
		f 4 -208 289 -203 290
		mu 0 4 190 192 195 196
		f 4 291 -64 -84 -204
		mu 0 4 397 398 399 400
		f 4 -207 292 -136 293
		mu 0 4 403 404 405 401
		f 4 -68 294 -197 -80
		mu 0 4 406 407 408 409
		f 4 -201 295 -138 296
		mu 0 4 413 412 411 414
		f 4 -211 297 -217 -112
		mu 0 4 94 127 128 95
		f 4 -210 298 -212 299
		mu 0 4 207 208 205 201
		f 4 -214 300 -218 301
		mu 0 4 201 202 203 204
		f 4 -220 302 -215 303
		mu 0 4 204 206 209 210
		f 4 304 -70 -79 -216
		mu 0 4 415 416 417 418
		f 4 -219 305 -141 306
		mu 0 4 421 422 423 419
		f 4 -27 307 -209 -110
		mu 0 4 424 425 426 427
		f 4 -213 308 -143 309
		mu 0 4 431 430 429 432
		f 4 -223 310 -229 -107
		mu 0 4 88 125 126 89
		f 4 -222 311 -224 312
		mu 0 4 221 222 219 215
		f 4 -226 313 -230 314
		mu 0 4 215 216 217 218
		f 4 -232 315 -227 316
		mu 0 4 218 220 223 224
		f 4 317 -29 -109 -228
		mu 0 4 433 434 435 436
		f 4 -231 318 -146 319
		mu 0 4 439 440 441 437
		f 4 -42 320 -221 -105
		mu 0 4 442 443 444 445
		f 4 -225 321 -148 322
		mu 0 4 449 448 447 450
		f 5 -119 -244 -234 -243 -49
		mu 0 5 338 339 340 336 335
		f 4 -236 -245 -117 -241
		mu 0 4 229 230 231 232
		f 5 -240 -238 -242 -115 -46
		mu 0 5 327 326 329 330 331
		f 5 -124 -257 -247 -256 -55
		mu 0 5 356 357 358 354 353
		f 4 -249 -258 -122 -254
		mu 0 4 233 234 235 236
		f 5 -253 -251 -255 -120 -47
		mu 0 5 345 344 347 348 349
		f 5 -129 -270 -260 -269 -38
		mu 0 5 374 375 376 372 371
		f 4 -262 -271 -127 -267
		mu 0 4 237 238 239 240
		f 5 -266 -264 -268 -125 -53
		mu 0 5 363 362 365 366 367
		f 5 -134 -283 -273 -282 -61
		mu 0 5 392 393 394 390 389
		f 4 -275 -284 -132 -280
		mu 0 4 241 242 243 244
		f 5 -36 -279 -277 -281 -130
		mu 0 5 383 380 379 384 385
		f 5 -139 -296 -286 -295 -67
		mu 0 5 410 411 412 408 407
		f 4 -288 -297 -137 -293
		mu 0 4 245 246 247 248
		f 5 -135 -59 -292 -290 -294
		mu 0 5 401 402 398 397 403
		f 5 -144 -309 -299 -308 -32
		mu 0 5 428 429 430 426 425
		f 4 -301 -310 -142 -306
		mu 0 4 249 250 251 252
		f 5 -140 -65 -305 -303 -307
		mu 0 5 419 420 416 415 421
		f 5 -114 -322 -312 -321 -41
		mu 0 5 446 447 448 444 443
		f 4 -314 -323 -147 -319
		mu 0 4 253 254 255 256
		f 5 -145 -30 -318 -316 -320
		mu 0 5 437 438 434 433 439
		f 4 335 -326 336 -330
		mu 0 4 465 466 459 462
		f 4 337 330 338 -327
		mu 0 4 463 464 461 460
		f 4 339 340 341 342
		mu 0 4 257 258 259 260
		f 4 343 329 344 -328
		mu 0 4 265 266 258 262
		f 4 345 328 346 -331
		mu 0 4 267 268 263 259
		f 4 347 348 349 350
		mu 0 4 264 263 262 261
		f 4 351 327 352 -324
		mu 0 4 457 458 451 454
		f 4 353 -325 354 -329
		mu 0 4 455 456 453 452
		f 4 -336 -344 -352 -332
		mu 0 4 269 266 265 270
		f 4 -349 -355 -333 -353
		mu 0 4 451 452 453 454
		f 4 -338 -334 -354 -346
		mu 0 4 267 271 272 268
		f 4 -335 -339 -341 -337
		mu 0 4 459 460 461 462
		f 4 -342 -347 -348 355
		mu 0 4 260 259 263 264
		f 4 -350 -345 -340 356
		mu 0 4 261 262 258 257
		f 4 -359 361 362 363
		mu 0 4 467 468 469 470
		f 4 364 365 366 367
		mu 0 4 273 274 275 276
		f 8 368 369 -363 -365 370 371 372 -367
		mu 0 8 275 277 278 274 273 279 280 276
		f 4 -369 373 -361 374
		mu 0 4 473 474 475 476
		f 4 -364 -370 -375 -360
		mu 0 4 283 278 277 284
		f 4 -362 -358 -374 -366
		mu 0 4 274 281 282 275
		f 4 358 380 -377 -380
		mu 0 4 468 467 471 472
		f 4 359 381 -378 -381
		mu 0 4 301 302 303 304
		f 4 360 382 -379 -382
		mu 0 4 476 475 477 478
		f 4 357 379 -376 -383
		mu 0 4 305 306 307 308
		f 4 375 384 -386 -384
		mu 0 4 285 286 287 288
		f 4 376 386 -388 -385
		mu 0 4 286 289 290 287
		f 4 377 388 -390 -387
		mu 0 4 289 291 292 290
		f 4 378 383 -391 -389
		mu 0 4 291 285 288 292
		f 4 385 392 -394 -392
		mu 0 4 309 310 311 312
		f 4 387 394 -396 -393
		mu 0 4 479 480 481 482
		f 4 389 396 -398 -395
		mu 0 4 313 314 315 316
		f 4 390 391 -399 -397
		mu 0 4 483 484 485 486
		f 4 393 400 -402 -400
		mu 0 4 293 294 295 296
		f 4 395 402 -404 -401
		mu 0 4 294 297 298 295
		f 4 397 404 -406 -403
		mu 0 4 297 299 300 298
		f 4 398 399 -407 -405
		mu 0 4 299 293 296 300;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "VentDoor_Body_GeoShapeDeformed" -p "VentDoor_Body_Geo";
	rename -uid "5E44276C-4A65-5F3D-E4E4-4CB0EFCDD7FE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A19BDE40-4698-BE44-DFA1-51A3157EFACE";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FE1BB8A2-4DA0-D562-E8EF-0B95215FC329";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5E5C86D3-4033-C1AA-35D0-D582AF00DE59";
createNode displayLayerManager -n "layerManager";
	rename -uid "37597544-45DC-2285-422C-638C5359EC6A";
createNode displayLayer -n "defaultLayer";
	rename -uid "A2BA9566-481F-3372-F6FE-2F9441C23FCB";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "798BED84-4B44-AE58-50E9-7B9445648046";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3707A639-4E3D-1C01-A70F-0E9414C9FE44";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "56CFE623-40A0-7D9B-368A-29B52D3BB7D5";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C7F9646B-4A8E-A396-64F0-CE8A3C99626A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A98A1509-4E1D-10D9-A702-B4B91D5CD3D9";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3AB825A1-4D6C-B0C0-4534-17BD23D158A1";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "AF1662E4-4385-0619-78F7-90BCA1681992";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "58FCE2EB-4399-E81B-E447-36ACD8EEF284";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 585\n            -height 687\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Perspective\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Perspective\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
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
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 746\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5B553861-4727-5DF4-886D-9F8928AAFAD5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 20 -ast 0 -aet 20 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "RootFat";
	rename -uid "1DAFBD33-4FE8-C140-0E94-E0BA3550CA57";
createNode objectSet -n "ControlSet";
	rename -uid "0339C731-44EB-7942-2E91-C1B3A1347BBC";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "7276593F-4F42-EDF5-270B-95A6CF9DE812";
	setAttr ".ihi" 0;
createNode objectSet -n "AllSet";
	rename -uid "8425483B-4467-1074-556A-EB875A1243BD";
	setAttr ".ihi" 0;
	setAttr -s 47 ".dsm";
createNode objectSet -n "Sets";
	rename -uid "2CC7E2FC-424E-1928-51E1-B39D1824EA48";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "8EA64EFA-4137-48C8-4432-77881367F6B3";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "D91E96C0-40C9-EE14-49FB-4FAB95C3927C";
	setAttr -s 236 ".wl";
	setAttr ".wl[0:235].w"
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
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	rename -uid "C4A6091D-4141-F835-BABF-0DAD27C4C9C9";
createNode dagPose -n "bindPose1";
	rename -uid "AA8FE179-4757-5B69-2EC8-BC8C7DFDA9F9";
	setAttr -s 3 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr -s 3 ".g[0:2]" yes yes no;
	setAttr ".bp" yes;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "391911BE-4E07-E0CC-561B-C4AFD1DF6D0F";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C1D0000F791";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "D1B97E2E-4883-C318-1380-73A2425AAD5D";
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "08753F1B-4AC2-31EA-1A74-E2BB3BAD1243";
createNode phong -n "factoryFBXASC046door";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F79E";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".sc" -type "float3" 0.062142085 0.062142085 0.062142085 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".cp" 30.250001907348633;
createNode shadingEngine -n "AirBoxFBXASC046002SG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F79F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7A0";
createNode phong -n "SkinTone1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7A5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "BodyFBXASC046001SG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7A7";
createNode phong -n "MetalFBXASC032brushed";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B2";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 0.25 0.25 0.25 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "CubeSG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B4";
createNode file -n "roughness_texture";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B5";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:\\My Drive\\Mellowstar\\share\\PJ_Maya\\KafkaProj\\.share\\Map\\Aquarium\\assets\\materials\\metal-brushed_845d320b-fff7-4b04-ae34-4e01c69f5883\\textures_2k\\Metal brushed_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B6";
createNode setRange -n "setRange1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B7";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode bump2d -n "bump2d1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B8";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "normalmap_texture";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7B9";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:\\My Drive\\Mellowstar\\share\\PJ_Maya\\KafkaProj\\.share\\Map\\Aquarium\\assets\\materials\\metal-brushed_845d320b-fff7-4b04-ae34-4e01c69f5883\\textures_2k\\Metal brushed_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7BA";
createNode phong -n "metal_dark";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7BD";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.20233536 0.20313421 0.20313421 ;
	setAttr ".sc" -type "float3" 0.02529192 0.025391776 0.025391776 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.20233536 0.20313421 0.20313421 ;
	setAttr ".cp" 27.864551544189453;
createNode shadingEngine -n "CubeFBXASC046002SG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7BE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7BF";
createNode phong -n "metal_rust_dark";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7C2";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.088789463 0.063698977 0.057208128 ;
	setAttr ".sc" -type "float3" 0.011098683 0.0079623722 0.007151016 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.088789463 0.063698977 0.057208128 ;
	setAttr ".cp" 22.342411041259766;
createNode shadingEngine -n "CubeFBXASC046003SG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7C3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7C4";
createNode phong -n "factory_plastic";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7F6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".sc" -type "float3" 0.062142085 0.062142085 0.062142085 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".cp" 30.250001907348633;
createNode shadingEngine -n "PillarWallSG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7F7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F7F8";
createNode phong -n "factory_floor_white";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F801";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.57808715 0.57808715 0.57808715 ;
	setAttr ".sc" -type "float3" 0.14452179 0.14452179 0.14452179 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.57808715 0.57808715 0.57808715 ;
	setAttr ".cp" 38.270740509033203;
createNode shadingEngine -n "PlaneSG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F802";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F803";
createNode phong -n "metal_weatheredFBXASC045tube";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F814";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.28708115 0.23396568 0.19111364 ;
	setAttr ".sc" -type "float3" 0.071770288 0.05849142 0.047778409 ;
	setAttr ".rfl" 0.68702298402786255;
	setAttr ".rc" -type "float3" 0.28708115 0.23396568 0.19111364 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "WallSG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F815";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F816";
createNode phong -n "factoryFBXASC046door_ncl1_1";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F819";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".sc" -type "float3" 0.062142085 0.062142085 0.062142085 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.24856834 0.24856834 0.24856834 ;
	setAttr ".cp" 30.250001907348633;
createNode shadingEngine -n "WallToElavatorSG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F81A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F81B";
createNode phong -n "lead";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F81E";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.034118716 0.034118716 0.034118716 ;
	setAttr ".sc" -type "float3" 0.0085296789 0.0085296789 0.0085296789 ;
	setAttr ".rfl" 1;
	setAttr ".rc" -type "float3" 0.034118716 0.034118716 0.034118716 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "WallToElavatorFBXASC046001SG";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F81F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "BC56DE00-0010-7CE4-6960-7C940000F820";
createNode lambert -n "MainFloor1";
	rename -uid "FCAC0E5F-4738-33FA-BCD0-4585082CBB7F";
createNode shadingEngine -n "lambert2SG";
	rename -uid "B37D24A9-4310-8D93-8A95-BC921330D878";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "2FFAA2ED-46BB-007B-84B5-11BD0603BC88";
createNode lambert -n "BigFloorSeams1";
	rename -uid "443D140B-4CDF-C5D6-0251-DFBA3B868209";
createNode shadingEngine -n "lambert3SG";
	rename -uid "84A4CE3F-4ECC-93B7-A825-F8B2397B9951";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "EA5907E9-4D98-1EF7-525E-C5BD8476F591";
createNode lambert -n "MiniFloorSeams1";
	rename -uid "A0702C71-4E0C-5A02-794D-EFB98F9E2A56";
createNode shadingEngine -n "lambert4SG";
	rename -uid "69FD2769-402A-AE0C-F45F-8789D04FF69F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "2D1C2418-4AC9-27C2-1037-9281D932F3A0";
createNode lambert -n "SideCeil1";
	rename -uid "C3B0A3C9-47BF-4EDA-65AB-E8BB532CA97D";
createNode shadingEngine -n "lambert5SG";
	rename -uid "9EF21019-4A26-CEAA-AE35-0D824CEDDF2F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "2529BF83-4610-FD28-417C-E0A39FE4DF5B";
createNode lambert -n "MainCeil1";
	rename -uid "627EB79A-4ADA-7EC3-17BB-77924F4A187A";
createNode shadingEngine -n "lambert6SG";
	rename -uid "04DC88EA-4727-637B-DBA7-67B1E515BD4B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "066AF7CC-4E02-9976-9A4B-6E9DA4E09136";
createNode lambert -n "Light";
	rename -uid "6F7FD115-4942-784F-0EE0-83B01BD0F0E1";
createNode shadingEngine -n "lambert7SG";
	rename -uid "98DC48C6-43E6-5BD8-3D54-5EB2FA22E5A9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "7AF1CCA6-4086-6797-DBB4-95802B2DFEE3";
createNode lambert -n "MainWall1";
	rename -uid "817194E2-4DF6-1235-3314-55A0DEDF9942";
createNode shadingEngine -n "lambert8SG";
	rename -uid "FCC87377-4FD8-3648-54FC-23AA2270A02C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "FD6F97E2-4036-DE0E-E1D9-92ADB596367D";
createNode lambert -n "Pole1";
	rename -uid "0A2C0EF0-4331-CECE-EE8B-F6B4AA5C5D5E";
createNode shadingEngine -n "lambert9SG";
	rename -uid "6C6DFBB2-4201-0FC1-F2E2-7DB9242D05CF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "0329FDDD-4B2F-3FAE-A993-1B9FF0444F03";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FD218B63-46D0-B437-0135-F9BE14F2AF70";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 31.428571701049805;
	setAttr ".tgi[0].ni[0].y" -145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 338.57144165039062;
	setAttr ".tgi[0].ni[1].y" -145.71427917480469;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 31.428571701049805;
	setAttr ".tgi[0].ni[2].y" -145.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 338.57144165039062;
	setAttr ".tgi[0].ni[3].y" -145.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 338.57144165039062;
	setAttr ".tgi[0].ni[4].y" -145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 31.428571701049805;
	setAttr ".tgi[0].ni[5].y" -145.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 31.428571701049805;
	setAttr ".tgi[0].ni[6].y" -145.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 338.57144165039062;
	setAttr ".tgi[0].ni[7].y" -145.71427917480469;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 31.428571701049805;
	setAttr ".tgi[0].ni[8].y" -145.71427917480469;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 338.57144165039062;
	setAttr ".tgi[0].ni[9].y" -145.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 338.57144165039062;
	setAttr ".tgi[0].ni[10].y" -145.71427917480469;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 31.428571701049805;
	setAttr ".tgi[0].ni[11].y" -145.71427917480469;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 338.57144165039062;
	setAttr ".tgi[0].ni[12].y" -145.71427917480469;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 31.428571701049805;
	setAttr ".tgi[0].ni[13].y" -145.71427917480469;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 338.57144165039062;
	setAttr ".tgi[0].ni[14].y" -145.71427917480469;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 31.428571701049805;
	setAttr ".tgi[0].ni[15].y" -145.71427917480469;
	setAttr ".tgi[0].ni[15].nvs" 1923;
createNode groupId -n "groupId1";
	rename -uid "F6B88DA6-4D58-1ABC-5E3F-1996A3AEA14C";
	setAttr ".ihi" 0;
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
	setAttr -s 20 ".st";
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
	setAttr -s 23 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MainScaleMultiplyDivide.o" "FKSystem.s";
connectAttr "Main.fkVis" "FKSystem.v";
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
connectAttr "MainScaleMultiplyDivide.o" "DynamicSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DrivingSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DeformationSystem.s";
connectAttr "Main.jointVis" "Root_M.v";
connectAttr "Root_M_parentConstraint1.crx" "Root_M.rx";
connectAttr "Root_M_parentConstraint1.cry" "Root_M.ry";
connectAttr "Root_M_parentConstraint1.crz" "Root_M.rz";
connectAttr "Root_M_parentConstraint1.ctx" "Root_M.tx";
connectAttr "Root_M_parentConstraint1.cty" "Root_M.ty";
connectAttr "Root_M_parentConstraint1.ctz" "Root_M.tz";
connectAttr "Root_M_scaleConstraint1.csx" "Root_M.sx";
connectAttr "Root_M_scaleConstraint1.csy" "Root_M.sy";
connectAttr "Root_M_scaleConstraint1.csz" "Root_M.sz";
connectAttr "Root_M.ro" "Root_M_parentConstraint1.cro";
connectAttr "Root_M.pim" "Root_M_parentConstraint1.cpim";
connectAttr "Root_M.rp" "Root_M_parentConstraint1.crp";
connectAttr "Root_M.rpt" "Root_M_parentConstraint1.crt";
connectAttr "Root_M.jo" "Root_M_parentConstraint1.cjo";
connectAttr "RootX_M.t" "Root_M_parentConstraint1.tg[0].tt";
connectAttr "RootX_M.rp" "Root_M_parentConstraint1.tg[0].trp";
connectAttr "RootX_M.rpt" "Root_M_parentConstraint1.tg[0].trt";
connectAttr "RootX_M.r" "Root_M_parentConstraint1.tg[0].tr";
connectAttr "RootX_M.ro" "Root_M_parentConstraint1.tg[0].tro";
connectAttr "RootX_M.s" "Root_M_parentConstraint1.tg[0].ts";
connectAttr "RootX_M.pm" "Root_M_parentConstraint1.tg[0].tpm";
connectAttr "Root_M_parentConstraint1.w0" "Root_M_parentConstraint1.tg[0].tw";
connectAttr "Root_M.pim" "Root_M_scaleConstraint1.cpim";
connectAttr "RootX_M.s" "Root_M_scaleConstraint1.tg[0].ts";
connectAttr "RootX_M.pm" "Root_M_scaleConstraint1.tg[0].tpm";
connectAttr "Root_M_scaleConstraint1.w0" "Root_M_scaleConstraint1.tg[0].tw";
connectAttr "groupId1.id" "VentDoor_Body_GeoShape.iog.og[0].gid";
connectAttr "AirBoxFBXASC046002SG.mwc" "VentDoor_Body_GeoShape.iog.og[0].gco";
connectAttr "groupId1.id" "VentDoor_Body_GeoShapeDeformed.iog.og[1].gid";
connectAttr "AirBoxFBXASC046002SG.mwc" "VentDoor_Body_GeoShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster1.og[0]" "VentDoor_Body_GeoShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "VentDoor_Body_GeoShapeDeformed.twl";
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
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatFront" "RootFat.i2y";
connectAttr "Root.fatWidth" "RootFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "buildPose.iog" "AllSet.dsm" -na;
connectAttr "Root_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
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
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "Main.s" "MainScaleMultiplyDivide.i1";
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "VentDoor_Body_GeoShape.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Root_M.wm" "skinCluster1.ma[0]";
connectAttr "Root_M.liw" "skinCluster1.lw[0]";
connectAttr "Root_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "VentDoor_Body_GeoShape.w" "tweak1.ip[0].ig";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Root_M.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "Root_M.bps" "bindPose1.wm[2]";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "factoryFBXASC046door.oc" "AirBoxFBXASC046002SG.ss";
connectAttr "VentDoor_Body_GeoShape.iog.og[0]" "AirBoxFBXASC046002SG.dsm" -na;
connectAttr "VentDoor_Body_GeoShapeDeformed.iog.og[1]" "AirBoxFBXASC046002SG.dsm"
		 -na;
connectAttr "groupId1.msg" "AirBoxFBXASC046002SG.gn" -na;
connectAttr "groupId1.msg" "AirBoxFBXASC046002SG.gn" -na;
connectAttr "AirBoxFBXASC046002SG.msg" "materialInfo1.sg";
connectAttr "factoryFBXASC046door.msg" "materialInfo1.m";
connectAttr "SkinTone1.oc" "BodyFBXASC046001SG.ss";
connectAttr "BodyFBXASC046001SG.msg" "materialInfo2.sg";
connectAttr "SkinTone1.msg" "materialInfo2.m";
connectAttr "setRange1.ox" "MetalFBXASC032brushed.cp";
connectAttr "bump2d1.o" "MetalFBXASC032brushed.n";
connectAttr "MetalFBXASC032brushed.oc" "CubeSG.ss";
connectAttr "CubeSG.msg" "materialInfo3.sg";
connectAttr "MetalFBXASC032brushed.msg" "materialInfo3.m";
connectAttr "place2dTexture1.o" "roughness_texture.uv";
connectAttr "place2dTexture1.ofu" "roughness_texture.ofu";
connectAttr "place2dTexture1.ofv" "roughness_texture.ofv";
connectAttr "place2dTexture1.rf" "roughness_texture.rf";
connectAttr "place2dTexture1.reu" "roughness_texture.reu";
connectAttr "place2dTexture1.rev" "roughness_texture.rev";
connectAttr "place2dTexture1.vt1" "roughness_texture.vt1";
connectAttr "place2dTexture1.vt2" "roughness_texture.vt2";
connectAttr "place2dTexture1.vt3" "roughness_texture.vt3";
connectAttr "place2dTexture1.vc1" "roughness_texture.vc1";
connectAttr "place2dTexture1.ofs" "roughness_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "roughness_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "roughness_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "roughness_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "roughness_texture.ws";
connectAttr "roughness_texture.oa" "setRange1.vx";
connectAttr "normalmap_texture.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "normalmap_texture.uv";
connectAttr "place2dTexture2.ofu" "normalmap_texture.ofu";
connectAttr "place2dTexture2.ofv" "normalmap_texture.ofv";
connectAttr "place2dTexture2.rf" "normalmap_texture.rf";
connectAttr "place2dTexture2.reu" "normalmap_texture.reu";
connectAttr "place2dTexture2.rev" "normalmap_texture.rev";
connectAttr "place2dTexture2.vt1" "normalmap_texture.vt1";
connectAttr "place2dTexture2.vt2" "normalmap_texture.vt2";
connectAttr "place2dTexture2.vt3" "normalmap_texture.vt3";
connectAttr "place2dTexture2.vc1" "normalmap_texture.vc1";
connectAttr "place2dTexture2.ofs" "normalmap_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture.ws";
connectAttr "metal_dark.oc" "CubeFBXASC046002SG.ss";
connectAttr "CubeFBXASC046002SG.msg" "materialInfo4.sg";
connectAttr "metal_dark.msg" "materialInfo4.m";
connectAttr "metal_rust_dark.oc" "CubeFBXASC046003SG.ss";
connectAttr "CubeFBXASC046003SG.msg" "materialInfo5.sg";
connectAttr "metal_rust_dark.msg" "materialInfo5.m";
connectAttr "factory_plastic.oc" "PillarWallSG.ss";
connectAttr "PillarWallSG.msg" "materialInfo7.sg";
connectAttr "factory_plastic.msg" "materialInfo7.m";
connectAttr "factory_floor_white.oc" "PlaneSG.ss";
connectAttr "PlaneSG.msg" "materialInfo8.sg";
connectAttr "factory_floor_white.msg" "materialInfo8.m";
connectAttr "metal_weatheredFBXASC045tube.oc" "WallSG.ss";
connectAttr "WallSG.msg" "materialInfo9.sg";
connectAttr "metal_weatheredFBXASC045tube.msg" "materialInfo9.m";
connectAttr "factoryFBXASC046door_ncl1_1.oc" "WallToElavatorSG.ss";
connectAttr "WallToElavatorSG.msg" "materialInfo10.sg";
connectAttr "factoryFBXASC046door_ncl1_1.msg" "materialInfo10.m";
connectAttr "lead.oc" "WallToElavatorFBXASC046001SG.ss";
connectAttr "WallToElavatorFBXASC046001SG.msg" "materialInfo11.sg";
connectAttr "lead.msg" "materialInfo11.m";
connectAttr "MainFloor1.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo12.sg";
connectAttr "MainFloor1.msg" "materialInfo12.m";
connectAttr "BigFloorSeams1.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo13.sg";
connectAttr "BigFloorSeams1.msg" "materialInfo13.m";
connectAttr "MiniFloorSeams1.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo14.sg";
connectAttr "MiniFloorSeams1.msg" "materialInfo14.m";
connectAttr "SideCeil1.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo15.sg";
connectAttr "SideCeil1.msg" "materialInfo15.m";
connectAttr "MainCeil1.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo16.sg";
connectAttr "MainCeil1.msg" "materialInfo16.m";
connectAttr "Light.oc" "lambert7SG.ss";
connectAttr "lambert7SG.msg" "materialInfo17.sg";
connectAttr "Light.msg" "materialInfo17.m";
connectAttr "MainWall1.oc" "lambert8SG.ss";
connectAttr "lambert8SG.msg" "materialInfo18.sg";
connectAttr "MainWall1.msg" "materialInfo18.m";
connectAttr "Pole1.oc" "lambert9SG.ss";
connectAttr "lambert9SG.msg" "materialInfo19.sg";
connectAttr "Pole1.msg" "materialInfo19.m";
connectAttr "MainWall1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "MainCeil1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Pole1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "MiniFloorSeams1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "MainFloor1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "lambert7SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Light.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "SideCeil1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "BigFloorSeams1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "AirBoxFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "BodyFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "CubeSG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046003SG.pa" ":renderPartition.st" -na;
connectAttr "PillarWallSG.pa" ":renderPartition.st" -na;
connectAttr "PlaneSG.pa" ":renderPartition.st" -na;
connectAttr "WallSG.pa" ":renderPartition.st" -na;
connectAttr "WallToElavatorSG.pa" ":renderPartition.st" -na;
connectAttr "WallToElavatorFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "factoryFBXASC046door.msg" ":defaultShaderList1.s" -na;
connectAttr "SkinTone1.msg" ":defaultShaderList1.s" -na;
connectAttr "MetalFBXASC032brushed.msg" ":defaultShaderList1.s" -na;
connectAttr "metal_dark.msg" ":defaultShaderList1.s" -na;
connectAttr "metal_rust_dark.msg" ":defaultShaderList1.s" -na;
connectAttr "factory_plastic.msg" ":defaultShaderList1.s" -na;
connectAttr "factory_floor_white.msg" ":defaultShaderList1.s" -na;
connectAttr "metal_weatheredFBXASC045tube.msg" ":defaultShaderList1.s" -na;
connectAttr "factoryFBXASC046door_ncl1_1.msg" ":defaultShaderList1.s" -na;
connectAttr "lead.msg" ":defaultShaderList1.s" -na;
connectAttr "MainFloor1.msg" ":defaultShaderList1.s" -na;
connectAttr "BigFloorSeams1.msg" ":defaultShaderList1.s" -na;
connectAttr "MiniFloorSeams1.msg" ":defaultShaderList1.s" -na;
connectAttr "SideCeil1.msg" ":defaultShaderList1.s" -na;
connectAttr "MainCeil1.msg" ":defaultShaderList1.s" -na;
connectAttr "Light.msg" ":defaultShaderList1.s" -na;
connectAttr "MainWall1.msg" ":defaultShaderList1.s" -na;
connectAttr "Pole1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "roughness_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture.msg" ":defaultTextureList1.tx" -na;
// End of VentDoor_rig_hi_v001.ma
