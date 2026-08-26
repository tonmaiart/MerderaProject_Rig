//Maya ASCII 2025ff03 scene
//Name: VentDoor_rig_wip_v001.ma
//Last modified: Wed, Jan 21, 2026 02:29:44 PM
//Codeset: 1252
file -rdi 1 -ns "VentDoor_Model_Proxy" -rfn "VentDoor_Model_ProxyRN" -typ "mayaAscii"
		 "G:/My Drive/Projects/KafkaProj//publish/Prop/VentDoor/Model/Proxy/v001/v001.ma";
file -r -ns "VentDoor_Model_Proxy" -dr 1 -rfn "VentDoor_Model_ProxyRN" -typ "mayaAscii"
		 "G:/My Drive/Projects/KafkaProj//publish/Prop/VentDoor/Model/Proxy/v001/v001.ma";
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
fileInfo "UUID" "372955E7-42C0-C929-96B2-579DFD047918";
createNode transform -s -n "persp";
	rename -uid "4D4D4277-45C9-867A-C7FB-828E62760629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 212.47587349577165 52.965062026725406 -65.400118877852861 ;
	setAttr ".r" -type "double3" -14.13835272954325 -254.5999999999984 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F95EFF46-4439-8065-7FE9-6BB045519520";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 233.53347755938583;
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
createNode transform -n "Group";
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
	setAttr -cb on ".jointVis";
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
createNode transform -n "Delete_Grp";
	rename -uid "B72646CB-4BB7-CFCE-5074-2B9260A4DF32";
createNode transform -n "deleteThis" -p "Delete_Grp";
	rename -uid "D958B8AD-4970-E31F-98F2-55BE208D0204";
createNode transform -n "ControllerGallery" -p "deleteThis";
	rename -uid "2E39D2B4-44E7-A5AB-4EFE-869A893EE1CA";
	setAttr ".t" -type "double3" -0.66666666666666663 0 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "Circle" -p "ControllerGallery";
	rename -uid "CDCCB1CF-4994-2DCF-2519-F5B0C29143E4";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "CircleShape" -p "Circle";
	rename -uid "DDE93BB3-4852-DA36-E94E-AA830F6BBB2D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.039180581244561231 2.3991186704942599e-18 -0.03918058124456128
		0 3.3928661615554777e-18 -0.055409709377719454
		-0.039180581244561231 2.3991186704942202e-18 -0.03918058124456119
		-0.055409709377719413 0 0
		-0.039180581244561231 -2.3991186704942202e-18 0.03918058124456119
		0 -3.3928661615554777e-18 0.055409709377719454
		0.039180581244561231 -2.3991186704942202e-18 0.03918058124456119
		0.055409709377719413 0 0
		0.039180581244561231 2.3991186704942599e-18 -0.03918058124456128
		0 3.3928661615554777e-18 -0.055409709377719454
		-0.039180581244561231 2.3991186704942202e-18 -0.03918058124456119
		;
createNode transform -n "HalfCircle" -p "ControllerGallery";
	rename -uid "211614E1-47F8-93BE-2CE2-E994C72DEC18";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "HalfCircleShape" -p "HalfCircle";
	rename -uid "AF48F4A7-4415-1647-103C-D898C1F9FB77";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		0 3.0616169978683789e-18 -0.050000000000000003
		-0.0097545161008063992 3.0027888857416433e-18 -0.049039264020161524
		-0.019134171618254481 2.8285652807192403e-18 -0.046193976625564306
		-0.027778511650980109 2.5456414982365095e-18 -0.041573480615127251
		-0.035355339059327376 2.1648901405887462e-18 -0.035355339059327397
		-0.041573480615127251 1.7009432689225011e-18 -0.027778511650980067
		-0.046193976625564327 1.1716301013315693e-18 -0.019134171618254481
		-0.049039264020161524 5.972918460041991e-19 -0.0097545161008063992
		-0.050000000000000003 0 0
		-0.025000000000000001 -2.5456414982365095e-18 2.6842247180525193e-08
		0 -3.0616169978683789e-18 1.111074389825717e-07
		0.025000000000000001 -2.8285652807192599e-18 7.3047206150533847e-08
		0.049999999999999961 0 0
		0.049039264020161483 5.972918460041991e-19 -0.0097545161008063992
		0.046193976625564306 1.1716301013315891e-18 -0.019134171618254481
		0.041573480615127223 1.7009432689225208e-18 -0.027778511650980067
		0.035355339059327355 2.1648901405887265e-18 -0.035355339059327306
		0.027778511650980088 2.5456414982365095e-18 -0.041573480615127251
		0.019134171618254481 2.8285652807192599e-18 -0.046193976625564306
		0.0097545161008064218 3.0027888857416433e-18 -0.049039264020161434
		2.2204460492503132e-17 3.0616169978683789e-18 -0.049999999999999913
		;
createNode transform -n "Square" -p "ControllerGallery";
	rename -uid "998A3399-4742-BC84-DF4D-F99A86554384";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "SquareShape" -p "Square";
	rename -uid "B3030DE6-4FBE-7C78-0C95-0787BB257537";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.05003753852099635 0 -0.05003753852099635
		-0.05003753852099635 0 0.05003753852099635
		0.05003753852099635 0 0.05003753852099635
		0.05003753852099635 0 -0.05003753852099635
		-0.05003753852099635 0 -0.05003753852099635
		;
createNode transform -n "Triangle" -p "ControllerGallery";
	rename -uid "29D356BC-4955-0737-E533-BBAC65CC6321";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "TriangleShape" -p "Triangle";
	rename -uid "099A90BD-4A76-8634-A1C3-36844561D389";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.05003753852099635 0 0.05003753852099635
		0 0 -0.05003753852099635
		0.05003753852099635 0 0.05003753852099635
		-0.05003753852099635 0 0.05003753852099635
		;
createNode transform -n "Sphere" -p "ControllerGallery";
	rename -uid "F27407CA-4933-E81D-C587-6DB9F686F12A";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "SphereShape" -p "Sphere";
	rename -uid "EEB63529-479C-E7F4-E42B-4083FD182BA3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 110 0 no 3
		111 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110
		111
		0 0.05003753852099635 0
		-2.3328055043236872e-10 0.049421494490258212 0.0078275968832723919
		-4.6081694016208985e-10 0.047588528256513954 0.015462451661602029
		-6.7700649530877403e-10 0.04458377353386956 0.022716571067440228
		-8.7652582969610657e-10 0.040481219430865356 0.029411329770594376
		-1.054462250849042e-09 0.035381882196544479 0.035381885179014194
		-1.2064343302142789e-09 0.02941132678812465 0.040481225395804815
		-1.3286999944739366e-09 0.022716568084970554 0.044583779498808963
		-1.4182486740565992e-09 0.015462448679132323 0.047588534221453399
		-1.4728753328085988e-09 0.0078275909183329797 0.049421500455197623
		-1.4912348689222201e-09 0 0.05003754448593583
		-1.4728753328085988e-09 -0.0078275909183329797 0.049421500455197623
		-1.4182486740565992e-09 -0.015462448679132323 0.047588534221453399
		-1.3286999944739366e-09 -0.022716568084970554 0.044583779498808963
		-1.2064343302142789e-09 -0.02941132678812465 0.040481225395804815
		-1.054462250849042e-09 -0.035381882196544479 0.035381885179014194
		-8.7652582969610657e-10 -0.040481219430865356 0.029411329770594376
		-6.7700649530877403e-10 -0.04458377353386956 0.022716571067440319
		-4.6081694016208985e-10 -0.047588528256513954 0.015462451661602029
		-2.3328055043236872e-10 -0.049421494490258212 0.0078275968832723919
		0 -0.05003753852099635 0
		0 -0.049421494490258212 -0.0078275998657421301
		0 -0.047588528256513954 -0.015462457626541415
		0 -0.04458377353386956 -0.022716578523614486
		0 -0.040481219430865356 -0.029411341700473149
		0 -0.035381882196544479 -0.03538190009136271
		0 -0.02941132678812465 -0.040481237325683588
		0 -0.022716568084970554 -0.044583794411157479
		0 -0.015462448679132323 -0.047588552116271644
		0 -0.0078275909183329797 -0.049421518350015875
		0 0 -0.050037562380754075
		0 0.0078275909183329797 -0.049421518350015875
		0 0.015462448679132323 -0.047588552116271644
		0 0.022716568084970554 -0.044583794411157562
		0 0.02941132678812465 -0.040481237325683588
		0 0.035381882196544479 -0.03538190009136271
		0 0.040481219430865356 -0.029411341700473239
		0 0.04458377353386956 -0.022716578523614573
		0 0.047588528256513954 -0.015462457626541415
		0 0.049421494490258212 -0.0078275998657421301
		0 0.05003753852099635 0
		-0.0078275983745072619 0.049421494490258212 0
		-0.015462453152836897 0.047588528256513954 0
		-0.022716574049909968 0.04458377353386956 0
		-0.029411332753064068 0.040481219430865356 0
		-0.035381891143953625 0.035381882196544479 0
		-0.040481228378274503 0.02941132678812465 0
		-0.044583785463748395 0.022716568084970554 0
		-0.047588540186392782 0.015462448679132323 0
		-0.049421506420137054 0.0078275909183329797 0
		-0.050037550450875212 0 0
		-0.049421506420137054 -0.0078275909183329797 0
		-0.047588540186392782 -0.015462448679132323 0
		-0.044583785463748395 -0.022716568084970554 0
		-0.040481228378274503 -0.02941132678812465 0
		-0.035381891143953625 -0.035381882196544479 0
		-0.029411332753064068 -0.040481219430865356 0
		-0.022716574049909968 -0.04458377353386956 0
		-0.015462453152836897 -0.047588528256513954 0
		-0.0078275983745072619 -0.049421494490258212 0
		0 -0.05003753852099635 0
		0.0078275961376549578 -0.049421494490258212 0
		0.01546245017036716 -0.047588528256513954 0
		0.022716568084970537 -0.04458377353386956 0
		0.029411326788124637 -0.040481219430865356 0
		0.035381882196544458 -0.035381882196544479 0
		0.040481219430865335 -0.02941132678812465 0
		0.044583773533869581 -0.022716568084970554 0
		0.047588528256513968 -0.015462448679132323 0
		0.049421494490258233 -0.0078275909183329797 0
		0.05003753852099635 0 0
		0.049421494490258233 0.0078275909183329797 0
		0.047588528256513968 0.015462448679132323 0
		0.044583773533869581 0.022716568084970554 0
		0.040481219430865335 0.02941132678812465 0
		0.035381882196544458 0.035381882196544479 0
		0.029411326788124637 0.040481219430865356 0
		0.022716568084970537 0.04458377353386956 0
		0.01546245017036716 0.047588528256513954 0
		0.0078275961376549578 0.049421494490258212 0
		0 0.05003753852099635 0
		0 0.049421494490258212 -0.0078275998657421301
		0 0.047588528256513954 -0.015462457626541415
		0 0.04458377353386956 -0.022716578523614573
		0 0.040481219430865356 -0.029411341700473239
		0 0.035381882196544479 -0.03538190009136271
		0 0.02941132678812465 -0.040481237325683588
		0 0.022716568084970554 -0.044583794411157562
		0 0.015462448679132323 -0.047588552116271644
		0 0.0078275909183329797 -0.049421518350015875
		0 0 -0.050037562380754075
		0.01546245762654146 0 -0.047588552116271644
		0.029411344682942889 0 -0.04048124329062306
		0.040481246273092755 0 -0.029411344682942889
		0.047588558081211034 0 -0.015462459117776285
		0.05003753852099635 0 0
		0.047588528256513968 0 0.01546245017036716
		0.040481219430865335 0 0.029411329770594376
		0.029411326788124637 0 0.040481222413335072
		0.015462448679132336 0 0.047588531238983656
		-1.4912348689222201e-09 0 0.05003754448593583
		-0.015462453152836897 0 0.047588534221453399
		-0.029411332753064068 0 0.040481225395804815
		-0.040481228378274503 0 0.029411332753064026
		-0.047588540186392782 0 0.015462453152836897
		-0.050037550450875212 0 0
		-0.047588540186392782 0 -0.015462453152836897
		-0.040481231360744198 0 -0.029411335735533763
		-0.029411338718003499 0 -0.040481234343213934
		-0.01546245762654146 0 -0.047588549133801908
		0 0 -0.050037562380754075
		;
createNode transform -n "HalfSphere" -p "ControllerGallery";
	rename -uid "AD962B61-4964-EF48-1508-CD888B4EF970";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "HalfSphereShape" -p "HalfSphere";
	rename -uid "123293B8-4871-4F07-9D29-468020FFC53C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 65 0 no 3
		66 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65
		66
		-1.4912348689222201e-09 0 0.05003754448593583
		0.015462448679132336 0 0.047588531238983656
		0.029411326788124637 0 0.040481222413335072
		0.040481219430865335 0 0.029411329770594376
		0.047588528256513919 0 0.01546245017036716
		0.05003753852099635 0 0
		0.047588558081211034 0 -0.015462459117776285
		0.040481246273092714 0 -0.029411344682942889
		0.029411344682942889 0 -0.04048124329062306
		0.01546245762654146 0 -0.047588552116271644
		0 0 -0.050037562380754075
		-0.01546245762654146 0 -0.047588549133801908
		-0.029411338718003499 0 -0.040481234343213934
		-0.040481231360744198 0 -0.029411335735533763
		-0.047588540186392782 0 -0.015462453152836897
		-0.050037550450875212 0 0
		-0.047588540186392782 0 0.015462453152836897
		-0.040481228378274461 0 0.029411332753064026
		-0.029411332753064026 0 0.040481225395804815
		-0.015462453152836897 0 0.047588534221453399
		-1.4912348689222201e-09 0 0.05003754448593583
		-1.4728753328085988e-09 0.0078275909183329797 0.049421500455197623
		-1.4182486740565992e-09 0.015462448679132323 0.047588534221453399
		-1.3286999944739366e-09 0.022716568084970554 0.044583779498808963
		-1.2064343302142789e-09 0.02941132678812465 0.040481225395804815
		-1.054462250849042e-09 0.035381882196544479 0.035381885179014194
		-8.7652582969610657e-10 0.040481219430865356 0.029411329770594376
		-6.7700649530877403e-10 0.04458377353386956 0.022716571067440228
		-4.6081694016208985e-10 0.047588528256513954 0.015462451661602029
		-2.3328055043236872e-10 0.049421494490258212 0.0078275968832723919
		0 0.05003753852099635 0
		0 0.049421494490258212 -0.0078275998657421301
		0 0.047588528256513954 -0.015462457626541415
		0 0.04458377353386956 -0.022716578523614573
		0 0.040481219430865356 -0.029411341700473239
		0 0.035381882196544479 -0.03538190009136271
		0 0.02941132678812465 -0.040481237325683588
		0 0.022716568084970554 -0.044583794411157562
		0 0.015462448679132323 -0.047588552116271644
		0 0.0078275909183329797 -0.049421518350015875
		0 0 -0.050037562380754075
		-0.01546245762654146 0 -0.047588549133801908
		-0.029411338718003499 0 -0.040481234343213934
		-0.040481231360744198 0 -0.029411335735533763
		-0.047588540186392782 0 -0.015462453152836897
		-0.050037550450875212 0 0
		-0.049421506420137012 0.0078275909183329797 0
		-0.047588540186392782 0.015462448679132323 0
		-0.044583785463748353 0.022716568084970554 0
		-0.040481228378274461 0.02941132678812465 0
		-0.035381891143953584 0.035381882196544479 0
		-0.029411332753064026 0.040481219430865356 0
		-0.022716574049909968 0.04458377353386956 0
		-0.015462453152836897 0.047588528256513954 0
		-0.0078275983745072619 0.049421494490258212 0
		0 0.05003753852099635 0
		0.0078275961376549578 0.049421494490258212 0
		0.01546245017036716 0.047588528256513954 0
		0.022716568084970537 0.04458377353386956 0
		0.029411326788124637 0.040481219430865356 0
		0.035381882196544458 0.035381882196544479 0
		0.040481219430865335 0.02941132678812465 0
		0.044583773533869581 0.022716568084970554 0
		0.047588528256513919 0.015462448679132323 0
		0.049421494490258233 0.0078275909183329797 0
		0.05003753852099635 0 0
		;
createNode transform -n "Box" -p "ControllerGallery";
	rename -uid "C36D1CAC-4BC7-5BE4-AD56-04A72E854F22";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "BoxShape" -p "Box";
	rename -uid "9FC8E0FA-490F-7E1F-B63A-AA8D00718EEA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.050037538520996329 0.050037538520996343 0.050037538520996266
		-0.050037538520996329 -0.050037538520996364 0.050037538520996266
		0.05003753852099635 -0.050037538520996364 0.050037538520996266
		0.05003753852099635 0.050037538520996343 0.050037538520996266
		-0.050037538520996329 0.050037538520996343 0.050037538520996266
		-0.05003753852099635 0.05003753852099635 -0.05003753852099644
		-0.05003753852099635 -0.05003753852099635 -0.05003753852099644
		-0.050037538520996329 -0.050037538520996364 0.050037538520996266
		0.05003753852099635 -0.050037538520996364 0.050037538520996266
		0.050037538520996308 -0.05003753852099635 -0.05003753852099644
		0.050037538520996308 0.05003753852099635 -0.05003753852099644
		0.05003753852099635 0.050037538520996343 0.050037538520996266
		-0.050037538520996329 0.050037538520996343 0.050037538520996266
		-0.05003753852099635 0.05003753852099635 -0.05003753852099644
		0.050037538520996308 0.05003753852099635 -0.05003753852099644
		0.050037538520996308 -0.05003753852099635 -0.05003753852099644
		-0.05003753852099635 -0.05003753852099635 -0.05003753852099644
		;
createNode transform -n "Pyramid" -p "ControllerGallery";
	rename -uid "8C1A614B-41FE-B6D8-69F0-D886C1374508";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "PyramidShape" -p "Pyramid";
	rename -uid "05D16203-448E-3F33-6FF7-ABB732A8A8AA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.062263520987601573 -8.8817841970012528e-17
		-0.041509008218764756 5.0833873805305436e-18 -0.041509008218764888
		-0.041509008218764742 -5.0833873805305829e-18 0.041509008218764715
		0 0.062263520987601573 -8.8817841970012528e-17
		0.041509008218764756 5.0833873805305436e-18 -0.041509008218764888
		0.041509008218764756 -5.0833873805305829e-18 0.041509008218764715
		0 0.062263520987601573 -8.8817841970012528e-17
		-0.041509008218764742 -5.0833873805305829e-18 0.041509008218764715
		0.041509008218764756 -5.0833873805305829e-18 0.041509008218764715
		0.041509008218764756 5.0833873805305436e-18 -0.041509008218764888
		-0.041509008218764756 5.0833873805305436e-18 -0.041509008218764888
		;
createNode transform -n "Diamond" -p "ControllerGallery";
	rename -uid "21738D8D-4AAF-6A44-7461-93A4F1B0294D";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "DiamondShape" -p "Diamond";
	rename -uid "D3DAB7A7-48A7-7761-E6CD-1884D86ACFDD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0 -0.062263520987601573 0
		-0.04150900821876477 5.0833873805305636e-18 -0.041509008218764798
		0 0.062263520987601573 0
		0.04150900821876477 -5.0833873805305636e-18 0.041509008218764798
		0 -0.062263520987601573 0
		0.04150900821876477 5.0833873805305636e-18 -0.041509008218764798
		0 0.062263520987601573 0
		-0.04150900821876477 -5.0833873805305636e-18 0.041509008218764798
		0.04150900821876477 -5.0833873805305636e-18 0.041509008218764798
		0.04150900821876477 5.0833873805305636e-18 -0.041509008218764798
		-0.04150900821876477 0 -0.041509008218764798
		-0.04150900821876477 0 0.041509008218764798
		0 -0.062263520987601573 0
		;
createNode transform -n "CirclePin" -p "ControllerGallery";
	rename -uid "B91BA92E-4437-D138-99BE-C581C40E6254";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "CirclePinShape" -p "CirclePin";
	rename -uid "4EF239D5-4D62-A91A-372F-DD92E3B6F765";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 41 0 no 3
		42 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41
		42
		0 0.090031008014446842 -8.8817841970012528e-17
		-0.0046946525403350984 0.090400484389637728 -8.8817841970012528e-17
		-0.0092737058674587265 0.091499817693914187 -8.8817841970012528e-17
		-0.013624411597105458 0.093301938691548333 -8.8817841970012528e-17
		-0.017639636248264347 0.095762471938151336 -8.8817841970012528e-17
		-0.021220517097784587 0.098820832287744131 -8.8817841970012528e-17
		-0.024278877447377358 0.10240171134850894 -8.8817841970012528e-17
		-0.026739412482735793 0.10641693599966782 -8.8817841970012528e-17
		-0.028541533480369918 0.11076764083493687 -8.8817841970012528e-17
		-0.029640866784646371 0.11534669595081588 -8.8817841970012528e-17
		-0.030010343159837263 0.12004134401926246 -8.8817841970012528e-17
		-0.029640866784646371 0.12473599208770902 -8.8817841970012528e-17
		-0.028541533480369918 0.12931504720358805 -8.8817841970012528e-17
		-0.026739412482735793 0.13366575203885708 -8.8817841970012528e-17
		-0.024278877447377358 0.13768097669001597 -8.8817841970012528e-17
		-0.021220517097784587 0.14126185575078079 -8.8817841970012528e-17
		-0.017639636248264347 0.14432021610037357 -8.8817841970012528e-17
		-0.013624411597105458 0.14678074934697657 -8.8817841970012528e-17
		-0.0092737058674587265 0.14858287034461073 -8.8817841970012528e-17
		-0.0046946525403350984 0.14968220364888715 -8.8817841970012528e-17
		0 0.15005168002407809 -8.8817841970012528e-17
		0.0046946511987685296 0.14968220364888715 -8.8817841970012528e-17
		0.0092737040787032928 0.14858287034461073 -8.8817841970012528e-17
		0.013624408019594615 0.14678074934697657 -8.8817841970012528e-17
		0.017639632670753524 0.14432021610037357 -8.8817841970012528e-17
		0.021220511731518333 0.14126185575078079 -8.8817841970012528e-17
		0.024278872081111104 0.13768097669001597 -8.8817841970012528e-17
		0.026739405327714117 0.13366575203885708 -8.8817841970012528e-17
		0.028541526325348267 0.12931504720358805 -8.8817841970012528e-17
		0.029640859629624719 0.12473599208770902 -8.8817841970012528e-17
		0.030010336004815608 0.12004134401926246 -8.8817841970012528e-17
		0.029640859629624719 0.11534669595081588 -8.8817841970012528e-17
		0.028541526325348267 0.11076764083493687 -8.8817841970012528e-17
		0.026739405327714117 0.10641693599966782 -8.8817841970012528e-17
		0.024278872081111104 0.10240171134850894 -8.8817841970012528e-17
		0.021220511731518333 0.098820832287744131 -8.8817841970012528e-17
		0.017639632670753524 0.095762471938151336 -8.8817841970012528e-17
		0.013624408019594615 0.093301938691548333 -8.8817841970012528e-17
		0.0092737040787032928 0.091499817693914187 -8.8817841970012528e-17
		0.0046946511987685296 0.090400484389637728 -8.8817841970012528e-17
		0 0.090031008014446842 -8.8817841970012528e-17
		0 -1.9721522630525302e-32 -8.8817841970012528e-17
		;
createNode transform -n "SquarePin" -p "ControllerGallery";
	rename -uid "E2BF3F38-4232-7D15-C381-24842C66EE86";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "SquarePinShape" -p "SquarePin";
	rename -uid "EC8B4165-46A7-582E-8AFE-5A853AA676E7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 0.090067569337793432 -8.8817841970012528e-17
		0.030022523112597812 0.090067569337793432 -8.8817841970012528e-17
		0.030022523112597812 0.15011261556298908 -8.8817841970012528e-17
		-0.030022523112597812 0.15011261556298908 -8.8817841970012528e-17
		-0.030022523112597812 0.090067569337793432 -8.8817841970012528e-17
		0 0.090067569337793432 -8.8817841970012528e-17
		0 -1.9721522630525302e-32 -8.8817841970012528e-17
		;
createNode transform -n "SpherePin" -p "ControllerGallery";
	rename -uid "9E80A7AD-4BFB-E0F6-06FE-44BB96933467";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "SpherePinShape" -p "SpherePin";
	rename -uid "CD1D2802-41AB-47C4-E116-1C8E7153500B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 111 0 no 3
		112 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
		 107 108 109 110 111
		112
		0 3.9443045261050592e-32 0
		0 0.090067569337793432 0
		0.0046965576825929835 0.090437195756236308 0
		0.0092774701022202873 0.091536975496482875 0
		0.013629940850982347 0.093339828330069541 0
		0.017646796072874782 0.095801360791872028 0
		0.021229129317926712 0.098860963132464563 0
		0.024288731658519237 0.10244329637751647 0
		0.02675026412032171 0.1064601515994089 0
		0.028553116953908386 0.11081262324291184 0
		0.02965289669415494 0.11539353789939144 0
		0.030022523112597812 0.12009009245039125 0
		0.02965289669415494 0.12478664700139107 0
		0.028553116953908386 0.12936756165787064 0
		0.02675026412032171 0.13372003330137358 0
		0.024288731658519237 0.13773688852326604 0
		0.021229129317926712 0.14131922176831793 0
		0.017646796072874782 0.14437882410891045 0
		0.013629940850982347 0.14684035657071298 0
		0.0092774701022202873 0.14864320940429962 0
		0.0046965576825929835 0.14974298914454617 0
		0 0.15011261556298908 0
		-0.0046965590247043387 0.14974298914454617 0
		-0.0092774718917021382 0.14864320940429962 0
		-0.013629944429945962 0.14684035657071298 0
		-0.017646799651838442 0.14437882410891045 0
		-0.021229134686372178 0.14131922176831793 0
		-0.024288737026964703 0.13773688852326604 0
		-0.026750271278249027 0.13372003330137358 0
		-0.028553124111835616 0.12936756165787064 0
		-0.02965290385208226 0.12478664700139107 0
		-0.030022530270525129 0.12009009245039125 0
		-0.02965290385208226 0.11539353789939144 0
		-0.028553124111835616 0.11081262324291184 0
		-0.026750271278249027 0.1064601515994089 0
		-0.024288737026964703 0.10244329637751647 0
		-0.021229134686372178 0.098860963132464563 0
		-0.017646799651838442 0.095801360791872028 0
		-0.013629944429945962 0.093339828330069541 0
		-0.0092774718917021382 0.091536975496482875 0
		-0.0046965590247043387 0.090437195756236308 0
		0 0.090067569337793432 0
		0 0.090437195756236322 -0.0046965599194452425
		0 0.091536975496482889 -0.0092774745759248486
		0 0.093339828330069541 -0.013629947114168761
		0 0.095801360791872042 -0.017646805020283908
		0 0.098860963132464563 -0.021229140054817644
		0 0.10244329637751647 -0.024288742395410168
		0 0.10646015159940891 -0.026750276646694538
		0 0.11081262324291186 -0.028553131269763023
		0 0.11539353789939147 -0.029652911010009577
		0 0.12009009245039126 -0.030022537428452446
		0 0.12478664700139108 -0.029652911010009577
		0 0.12936756165787067 -0.028553131269763023
		0 0.13372003330137361 -0.026750276646694538
		0 0.13773688852326604 -0.024288742395410168
		0 0.14131922176831793 -0.021229140054817644
		0 0.14437882410891045 -0.017646805020283908
		0 0.14684035657071298 -0.013629947114168761
		0 0.14864320940429962 -0.0092774745759249388
		0 0.14974298914454617 -0.0046965599194453318
		0 0.15011261556298908 0
		-1.3996834802298964e-10 0.14974298914454617 0.0046965581299634358
		-2.7649016409725391e-10 0.14864320940429962 0.0092774709969611468
		-4.0620387053991183e-10 0.14684035657071298 0.013629942640464155
		-5.2591548893587976e-10 0.14437882410891045 0.017646797862356591
		-6.3267737715477781e-10 0.14131922176831793 0.021229131107408518
		-7.2386061589213577e-10 0.13773688852326604 0.024288735237482852
		-7.9721997892079346e-10 0.13372003330137358 0.026750267699285325
		-8.5094917778860699e-10 0.12936756165787064 0.028553120532872001
		-8.8372518192159086e-10 0.12478664700139107 0.029652900273118555
		-8.9474090358976361e-10 0.12009009245039125 0.030022526691561427
		-8.8372518192159086e-10 0.11539353789939144 0.029652900273118555
		-8.5094917778860699e-10 0.11081262324291184 0.028553120532872001
		-7.9721997892079346e-10 0.1064601515994089 0.026750267699285325
		-7.2386061589213577e-10 0.10244329637751647 0.024288735237482852
		-6.3267737715477781e-10 0.098860963132464563 0.021229131107408518
		-5.2591548893587976e-10 0.095801360791872028 0.017646797862356591
		-4.0620387053991183e-10 0.093339828330069541 0.013629942640464155
		-2.7649016409725391e-10 0.091536975496482875 0.0092774709969612353
		-1.3996834802298964e-10 0.090437195756236308 0.0046965581299634358
		0 0.090067569337793432 0
		0.0046965576825929835 0.090437195756236308 0
		0.0092774701022202873 0.091536975496482875 0
		0.013629940850982347 0.093339828330069541 0
		0.017646796072874782 0.095801360791872028 0
		0.021229129317926712 0.098860963132464563 0
		0.024288731658519237 0.10244329637751647 0
		0.02675026412032171 0.1064601515994089 0
		0.028553116953908386 0.11081262324291184 0
		0.02965289669415494 0.11539353789939144 0
		0.030022523112597812 0.12009009245039125 0
		0.028553116953908386 0.12009009245039125 0.0092774701022202422
		0.024288731658519237 0.12009009245039125 0.017646797862356591
		0.017646796072874782 0.12009009245039125 0.024288733448001046
		0.0092774692074793826 0.12009009245039125 0.028553118743390195
		-8.9474090358976361e-10 0.12009009245039125 0.030022526691561427
		-0.0092774718917021382 0.12009009245039125 0.028553120532872001
		-0.017646799651838442 0.12009009245039125 0.024288735237482852
		-0.024288737026964703 0.12009009245039125 0.017646799651838397
		-0.028553124111835616 0.12009009245039125 0.0092774718917021382
		-0.030022530270525129 0.12009009245039125 0
		-0.028553124111835616 0.12009009245039125 -0.0092774718917021382
		-0.024288738816446512 0.12009009245039125 -0.017646801441320293
		-0.017646803230802099 0.12009009245039125 -0.024288740605928363
		-0.0092774745759248486 0.12009009245039126 -0.028553129480281214
		0 0.12009009245039126 -0.030022537428452446
		0.0092774745759248486 0.12009009245039126 -0.028553131269763023
		0.017646806809765759 0.12009009245039125 -0.024288745974373874
		0.024288747763855634 0.12009009245039125 -0.017646806809765804
		0.028553134848726638 0.12009009245039125 -0.0092774754706658417
		0.030022523112597812 0.12009009245039125 0
		;
createNode transform -n "CircelDumbbell" -p "ControllerGallery";
	rename -uid "BC63968D-4CC2-9D73-05DF-15B351CD743A";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CircelDumbbellShape" -p "CircelDumbbell";
	rename -uid "C50CB340-4532-1C4B-F63A-5CA0CEA41109";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 81 0 no 3
		82 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		
		82
		0 0.052641753526664309 0
		-0.0046805503948561976 0.0530101183604203 0
		-0.0092458492127482916 0.054106152118712371 0
		-0.013583486797536182 0.055902857485734869 0
		-0.017586650097488655 0.058356004435703629 0
		-0.021156773708045942 0.061405174097254135 0
		-0.024205947843301035 0.064975297707811408 0
		-0.026659091810800062 0.068978463990233607 0
		-0.028455800160292279 0.073316096355699509 0
		-0.029551830936114645 0.077881398528870049 0
		-0.029920195769870619 0.082561943331595514 0
		-0.029551830936114645 0.087242488134320992 0
		-0.028455800160292279 0.091807790307491532 0
		-0.026659091810800062 0.096145422672957448 0
		-0.024205947843301035 0.10014858895537962 0
		-0.021156773708045942 0.1037187125659369 0
		-0.017586650097488655 0.10676788222748744 0
		-0.013583486797536182 0.10922102321251677 0
		-0.0092458492127482916 0.11101773454447868 0
		-0.0046805503948561976 0.11211376830277076 0
		0 0.11248212717158733 0
		0.0046805492764300464 0.11211376830277076 0
		0.0092458477215134234 0.11101773454447868 0
		0.01358348232383162 0.10922102321251677 0
		0.017586645623784092 0.10676788222748744 0
		0.021156769234341379 0.1037187125659369 0
		0.024205941878361604 0.10014858895537962 0
		0.026659085845860631 0.096145422672957448 0
		0.028455791212883153 0.091807790307491532 0
		0.029551821988705519 0.087242488134320992 0
		0.029920189804931233 0.082561943331595514 0
		0.029551821988705519 0.077881398528870049 0
		0.028455791212883153 0.073316096355699509 0
		0.026659085845860631 0.068978463990233607 0
		0.024205941878361604 0.064975297707811408 0
		0.021156769234341379 0.061405174097254135 0
		0.017586645623784092 0.058356004435703629 0
		0.01358348232383162 0.055902857485734869 0
		0.0092458477215134234 0.054106152118712371 0
		0.0046805492764300464 0.0530101183604203 0
		0 0.052641753526664309 0
		0 -0.052641753526664309 0
		0.0046805492764300464 -0.0530101183604203 0
		0.0092458477215134234 -0.054106152118712371 0
		0.01358348232383162 -0.055902857485734869 0
		0.017586645623784092 -0.058356004435703629 0
		0.021156769234341379 -0.061405174097254135 0
		0.024205941878361604 -0.064975297707811408 0
		0.026659085845860631 -0.068978463990233607 0
		0.028455791212883153 -0.073316096355699509 0
		0.029551821988705519 -0.077881398528870049 0
		0.029920189804931233 -0.082561943331595514 0
		0.029551821988705519 -0.087242488134320992 0
		0.028455791212883153 -0.091807790307491532 0
		0.026659085845860631 -0.096145422672957448 0
		0.024205941878361604 -0.10014858895537962 0
		0.021156769234341379 -0.1037187125659369 0
		0.017586645623784092 -0.10676788222748744 0
		0.01358348232383162 -0.10922102321251677 0
		0.0092458477215134234 -0.11101773454447868 0
		0.0046805492764300464 -0.11211376830277076 0
		0 -0.11248212717158733 0
		-0.0046805503948561976 -0.11211376830277076 0
		-0.0092458492127482916 -0.11101773454447868 0
		-0.013583486797536182 -0.10922102321251677 0
		-0.017586650097488655 -0.10676788222748744 0
		-0.021156773708045942 -0.1037187125659369 0
		-0.024205947843301035 -0.10014858895537962 0
		-0.026659091810800062 -0.096145422672957448 0
		-0.028455800160292279 -0.091807790307491532 0
		-0.029551830936114645 -0.087242488134320992 0
		-0.029920195769870619 -0.082561943331595514 0
		-0.029551830936114645 -0.077881398528870049 0
		-0.028455800160292279 -0.073316096355699509 0
		-0.026659091810800062 -0.068978463990233607 0
		-0.024205947843301035 -0.064975297707811408 0
		-0.021156773708045942 -0.061405174097254135 0
		-0.017586650097488655 -0.058356004435703629 0
		-0.013583486797536182 -0.055902857485734869 0
		-0.0092458492127482916 -0.054106152118712371 0
		-0.0046805503948561976 -0.0530101183604203 0
		0 -0.052641753526664309 0
		;
createNode transform -n "SquareDumbbell" -p "ControllerGallery";
	rename -uid "AD62A34B-4B90-F5A4-5E38-B0A35462938D";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "SquareDumbbellShape" -p "SquareDumbbell";
	rename -uid "FE65E1D1-4CB8-DE13-F89E-C29FE3457654";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0.052539419026009816 0
		-0.030022524305585697 0.052539419026009816 0
		-0.030022524305585697 0.11258446167224179 0
		0.030022524305585697 0.11258446167224179 0
		0.030022524305585697 0.052539419026009816 0
		0 0.052539419026009816 0
		0 -0.052539419026009816 0
		0.030022524305585697 -0.052539419026009816 0
		0.030022524305585697 -0.11258446167224179 0
		-0.030022524305585697 -0.11258446167224179 0
		-0.030022524305585697 -0.052539419026009816 0
		0 -0.052539419026009816 0
		;
createNode transform -n "SphereDumbbell" -p "ControllerGallery";
	rename -uid "9AFF5F20-4C78-5C73-A746-7695D0849BB4";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "SphereDumbbellShape" -p "SphereDumbbell";
	rename -uid "1C5BB8AF-4D4D-0EF2-22FD-65A519962098";
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
		0 0.052639492814624905 0
		-0.0046809038175166925 0.053007887473077976 0
		-0.0092465471106601867 0.054104004740521905 0
		-0.013584511275881226 0.055900847301151017 0
		-0.017587977296509162 0.058354173199302306 0
		-0.021158370820575104 0.061403575493490119 0
		-0.024207774605997781 0.064973973491260648 0
		-0.026661101995383924 0.068977438020653717 0
		-0.028457947538482738 0.073315404422727035 0
		-0.029554061823456958 0.077881040632504964 0
		-0.029922453499440328 0.082561943331595514 0
		-0.028457947538482738 0.082561943331595514 -0.0092465471106602422
		-0.024207776097232628 0.082561943331595514 -0.017587978787744075
		-0.017587980278978867 0.082561943331595514 -0.024207777588467483
		-0.0092465493475124682 0.082561943331595514 -0.028457950520952482
		0 0.082561943331595514 -0.029922462446849443
		0.0092465493475124682 0.082561943331595514 -0.028457953503422218
		0.01758798326144858 0.082561943331595514 -0.024207783553406959
		0.024207785044641762 0.082561943331595514 -0.017587983261448593
		0.028457956485891868 0.082561943331595514 -0.0092465500931298902
		0.029922447534500907 0.082561943331595514 0
		0.028457938591073612 0.082561943331595514 0.0092465448738078496
		0.02420776864105836 0.082561943331595514 0.017587974314039467
		0.017587972822804599 0.082561943331595514 0.024207770132293228
		0.009246544128190478 0.082561943331595514 0.028457941573543269
		-8.9175842805209478e-10 0.082561943331595514 0.029922450516970581
		-0.0092465471106601867 0.082561943331595514 0.028457941573543269
		-0.017587977296509162 0.082561943331595514 0.024207773114762878
		-0.024207774605997781 0.082561943331595514 0.017587977296509117
		-0.028457947538482738 0.082561943331595514 0.0092465471106601537
		-0.029922453499440328 0.082561943331595514 0
		-0.029554061823456958 0.087242846030686064 0
		-0.028457947538482738 0.091808482240464007 0
		-0.026661101995383924 0.096146448642537324 0
		-0.024207774605997781 0.10014991317193041 0
		-0.021158370820575104 0.10372031116970092 0
		-0.017587977296509162 0.10676970749894932 0
		-0.013584511275881226 0.10922303936204003 0
		-0.0092465471106601867 0.11101988192266915 0
		-0.0046809038175166925 0.11211599919011306 0
		0 0.11248439384856615 0
		0.0046809023262818382 0.11211599919011306 0
		0.0092465448738079034 0.11101988192266915 0
		0.013584506802176663 0.10922303936204003 0
		0.017587972822804599 0.10676970749894932 0
		0.02115836485563569 0.10372031116970092 0
		0.02420776864105836 0.10014991317193041 0
		0.02666109603044451 0.096146448642537324 0
		0.028457938591073612 0.091808482240464007 0
		0.029554052876047832 0.087242846030686064 0
		0.029554052876047832 0.077881040632504964 0
		0.028457938591073612 0.073315404422727035 0
		0.02666109603044451 0.068977438020653717 0
		0.02420776864105836 0.064973973491260648 0
		0.02115836485563569 0.061403575493490119 0
		0.017587972822804599 0.058354173199302306 0
		0.013584506802176663 0.055900847301151017 0
		0.0092465448738079034 0.054104004740521905 0
		0.0046809023262818382 0.053007887473077976 0
		0 0.052639492814624905 0
		-1.3950176019316429e-10 0.053007887473077976 0.0046809026990905171
		-2.7556851130151461e-10 0.054104004740521905 0.0092465456194252837
		-4.0484985119630883e-10 0.055900847301151017 0.013584509784646315
		-5.2416243621124622e-10 0.058354173199302306 0.017587974314039467
		-6.3056841062413721e-10 0.061403575493490119 0.021158366346870496
		-7.214477253275621e-10 0.064973973491260648 0.024207773114762878
		-7.9456257910861105e-10 0.068977438020653717 0.026661099012914226
		-8.4811266038041151e-10 0.073315404422727035 0.028457941573543269
		-8.8077941167497135e-10 0.077881040632504964 0.029554055858517538
		-8.9175842805209478e-10 0.082561943331595514 0.029922450516970581
		-8.8077941167497135e-10 0.087242846030686064 0.029554055858517538
		-8.4811266038041151e-10 0.091808482240464007 0.028457941573543269
		-7.9456257910861105e-10 0.096146448642537324 0.026661099012914226
		-7.214477253275621e-10 0.10014991317193041 0.024207773114762878
		-6.3056841062413721e-10 0.10372031116970092 0.021158366346870496
		-5.2416243621124622e-10 0.10676970749894932 0.017587974314039467
		-4.0484985119630883e-10 0.10922303936204003 0.013584509784646315
		-2.7556851130151461e-10 0.11101988192266915 0.0092465456194252837
		-1.3950176019316429e-10 0.11211599919011306 0.0046809026990905171
		0 0.11248439384856615 0
		0 0.11211599919011306 -0.0046809045631341032
		0 0.11101988192266915 -0.0092465493475124561
		0 0.10922303936204003 -0.013584514258350923
		0 0.10676970749894932 -0.017587981770213725
		0 0.10372031116970092 -0.021158375294279708
		0 0.10014991317193041 -0.024207779079702355
		0 0.096146448642537324 -0.026661107960323352
		0 0.091808482240464007 -0.028457953503422218
		0 0.087242846030686064 -0.0295540677883964
		0 0.082561943331595514 -0.029922462446849443
		0 0.077881040632504964 -0.0295540677883964
		0 0.073315404422727035 -0.028457953503422218
		0 0.068977438020653717 -0.026661107960323352
		0 0.064973973491260648 -0.024207779079702355
		0 0.061403575493490119 -0.021158375294279708
		0 0.058354173199302306 -0.017587981770213725
		0 0.055900847301151017 -0.013584514258350923
		0 0.054104004740521905 -0.0092465493475124561
		0 0.053007887473077976 -0.0046809045631341032
		0 0.052639492814624905 0
		0 -0.052641753526664309 0
		0 -0.0530101183604203 -0.0046805515132823496
		0 -0.054106152118712371 -0.0092458521952179847
		0 -0.055902857485734869 -0.013583488288771052
		0 -0.058356004435703629 -0.017586654571193173
		0 -0.061405174097254135 -0.021156779672985328
		0 -0.064975297707811408 -0.024205952317005598
		0 -0.068978463990233607 -0.026659097775739493
		0 -0.073316096355699509 -0.028455806125231665
		0 -0.077881398528870049 -0.029551836901054077
		0 -0.082561943331595514 -0.029920204717279741
		0.0092458521952179951 -0.082561943331595514 -0.028455806125231665
		0.017586656062428083 -0.082561943331595514 -0.024205956790710116
		0.024205958281945009 -0.082561943331595514 -0.017586656062428041
		0.028455809107701402 -0.082561943331595514 -0.0092458529408354206
		0.029920189804931215 -0.082561943331595514 0
		0.02845579121288315 -0.082561943331595514 0.0092458477215134668
		0.024205941878361607 -0.082561943331595514 0.017586647115019005
		0.017586645623784102 -0.082561943331595514 0.024205943369596472
		0.009245846230278576 -0.082561943331595514 0.028455794195352893
		-8.916911424675946e-10 -0.082561943331595514 0.029920192787400969
		-0.0092458492127482847 -0.082561943331595514 0.028455797177822539
		-0.017586650097488665 -0.082561943331595514 0.024205946352066212
		-0.024205947843301028 -0.082561943331595514 0.017586650097488655
		-0.028455800160292279 -0.082561943331595514 0.0092458492127483367
		-0.029920195769870629 -0.082561943331595514 0
		-0.028455800160292279 -0.082561943331595514 -0.0092458492127482483
		-0.024205949334535883 -0.082561943331595514 -0.017586651588723523
		-0.017586653079958374 -0.082561943331595514 -0.02420595082577073
		-0.0092458521952179951 -0.082561943331595514 -0.028455806125231665
		0 -0.082561943331595514 -0.029920204717279741
		0 -0.087242488134320992 -0.029551836901054077
		0 -0.091807790307491532 -0.028455806125231665
		0 -0.096145422672957448 -0.026659097775739493
		0 -0.10014858895537962 -0.024205952317005598
		0 -0.1037187125659369 -0.021156779672985328
		0 -0.10676788222748744 -0.017586654571193173
		0 -0.10922102321251677 -0.013583488288771052
		0 -0.11101773454447868 -0.0092458521952179847
		0 -0.11211376830277076 -0.0046805515132822611
		0 -0.11248212717158733 0
		-1.3949123848766201e-10 -0.11211376830277076 0.0046805496492387634
		-2.755477345440814e-10 -0.11101773454447868 0.0092458484671309026
		-4.048193193623908e-10 -0.10922102321251677 0.013583483815066534
		-5.2412288259816474e-10 -0.10676788222748744 0.017586647115019005
		-6.3052085740391569e-10 -0.1037187125659369 0.021156770725576292
		-7.2139328355674765e-10 -0.10014858895537962 0.024205946352066212
		-7.9450267093958422e-10 -0.096145422672957448 0.02665908882833037
		-8.4804866352329104e-10 -0.091807790307491532 0.02845579717782263
		-8.8071292605118511e-10 -0.087242488134320992 0.02955182795364495
		-8.916911424675946e-10 -0.082561943331595514 0.029920192787400969
		-8.8071292605118511e-10 -0.077881398528870049 0.02955182795364495
		-8.4804866352329104e-10 -0.073316096355699509 0.028455797177822539
		-7.9450267093958422e-10 -0.068978463990233607 0.02665908882833037
		-7.2139328355674765e-10 -0.064975297707811408 0.024205946352066212
		-6.3052085740391569e-10 -0.061405174097254135 0.021156770725576292
		-5.2412288259816474e-10 -0.058356004435703629 0.017586647115019005
		-4.048193193623908e-10 -0.055902857485734869 0.013583483815066534
		-2.755477345440814e-10 -0.054106152118712371 0.0092458484671309026
		-1.3949123848766201e-10 -0.0530101183604203 0.0046805496492387634
		0 -0.052641753526664309 0
		0.0046805492764300377 -0.0530101183604203 0
		0.0092458477215134303 -0.054106152118712371 0
		0.013583482323831626 -0.055902857485734869 0
		0.017586645623784102 -0.058356004435703629 0
		0.021156769234341385 -0.061405174097254135 0
		0.024205941878361607 -0.064975297707811408 0
		0.026659085845860655 -0.068978463990233607 0
		0.02845579121288315 -0.073316096355699509 0
		0.029551821988705519 -0.077881398528870049 0
		0.029920189804931215 -0.082561943331595514 0
		0.029551821988705519 -0.087242488134320992 0
		0.02845579121288315 -0.091807790307491532 0
		0.026659085845860655 -0.096145422672957448 0
		0.024205941878361607 -0.10014858895537962 0
		0.021156769234341385 -0.1037187125659369 0
		0.017586645623784102 -0.10676788222748744 0
		0.013583482323831626 -0.10922102321251677 0
		0.0092458477215134303 -0.11101773454447868 0
		0.0046805492764300377 -0.11211376830277076 0
		0 -0.11248212717158733 0
		-0.0046805503948561785 -0.11211376830277076 0
		-0.0092458492127482847 -0.11101773454447868 0
		-0.013583486797536194 -0.10922102321251677 0
		-0.017586650097488665 -0.10676788222748744 0
		-0.021156773708045945 -0.1037187125659369 0
		-0.024205947843301028 -0.10014858895537962 0
		-0.026659091810800076 -0.096145422672957448 0
		-0.028455800160292279 -0.091807790307491532 0
		-0.029551830936114645 -0.087242488134320992 0
		-0.029920195769870629 -0.082561943331595514 0
		-0.029551830936114645 -0.077881398528870049 0
		-0.028455800160292279 -0.073316096355699509 0
		-0.026659091810800076 -0.068978463990233607 0
		-0.024205947843301028 -0.064975297707811408 0
		-0.021156773708045945 -0.061405174097254135 0
		-0.017586650097488665 -0.058356004435703629 0
		-0.013583486797536194 -0.055902857485734869 0
		-0.0092458492127482847 -0.054106152118712371 0
		-0.0046805503948561785 -0.0530101183604203 0
		0 -0.052641753526664309 0
		;
createNode transform -n "Cross" -p "ControllerGallery";
	rename -uid "D096CC8D-4BF4-9257-84C3-05A39DB3AC3D";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CrossShape" -p "Cross";
	rename -uid "65CC3581-4DE9-C9CD-1F58-C2A1831B7165";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-0.025018769260498175 0 -0.05003753852099635
		0.025018769260498175 0 -0.05003753852099635
		0.025018769260498175 0 -0.025018769260498175
		0.05003753852099635 0 -0.025018769260498175
		0.05003753852099635 0 0.025018769260498175
		0.025018769260498175 0 0.025018769260498175
		0.025018769260498175 0 0.05003753852099635
		-0.025018769260498175 0 0.05003753852099635
		-0.025018769260498175 0 0.025018769260498175
		-0.05003753852099635 0 0.025018769260498175
		-0.05003753852099635 0 -0.025018769260498175
		-0.025018769260498175 0 -0.025018769260498175
		-0.025018769260498175 0 -0.05003753852099635
		;
createNode transform -n "CrossThin" -p "ControllerGallery";
	rename -uid "757877A1-4C36-487B-2340-76B617198D93";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CrossThinShape" -p "CrossThin";
	rename -uid "794BDCA8-4EAE-20F9-FEA0-099DDE41AABB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-0.010007507704199271 0 -0.05003753852099635
		-0.010007507704199271 0 -0.010007507704199271
		-0.05003753852099635 0 -0.010007507704199271
		-0.05003753852099635 0 0.010007507704199271
		-0.010007507704199271 0 0.010007507704199271
		-0.010007507704199271 0 0.05003753852099635
		0.010007507704199271 0 0.05003753852099635
		0.010007507704199271 0 0.010007507704199271
		0.05003753852099635 0 0.010007507704199271
		0.05003753852099635 0 -0.010007507704199271
		0.010007507704199271 0 -0.010007507704199271
		0.010007507704199271 0 -0.05003753852099635
		-0.010007507704199271 0 -0.05003753852099635
		;
createNode transform -n "Locator" -p "ControllerGallery";
	rename -uid "1DCBD30C-4AD0-6C58-11D3-8C8351BFE053";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "LocatorShape" -p "Locator";
	rename -uid "A4BB106B-4A5B-6D1D-220A-298D025FC3A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.05003753852099635 0
		0 -0.05003753852099635 0
		0 0 0
		0 0 -0.05003753852099635
		0 0 0.05003753852099635
		0 0 0
		0.05003753852099635 0 0
		-0.05003753852099635 0 0
		;
createNode transform -n "FourArrows" -p "ControllerGallery";
	rename -uid "879E3A47-4987-8C7D-334F-71AF8619E7CD";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsShape" -p "FourArrows";
	rename -uid "B1A6D854-496A-6506-21A3-8D9C43030D65";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -0.05003753852099635
		0.020015015408398541 0 -0.030022523112597812
		0.010007507704199271 0 -0.030022523112597812
		0.010007507704199271 0 -0.010007507704199271
		0.030022523112597812 0 -0.010007507704199271
		0.030022523112597812 0 -0.020015015408398541
		0.05003753852099635 0 0
		0.030022523112597812 0 0.020015015408398541
		0.030022523112597812 0 0.010007507704199271
		0.010007507704199271 0 0.010007507704199271
		0.010007507704199271 0 0.030022523112597812
		0.020015015408398541 0 0.030022523112597812
		0 0 0.05003753852099635
		-0.020015015408398541 0 0.030022523112597812
		-0.010007507704199271 0 0.030022523112597812
		-0.010007507704199271 0 0.010007507704199271
		-0.030022523112597812 0 0.010007507704199271
		-0.030022523112597812 0 0.020015015408398541
		-0.05003753852099635 0 0
		-0.030022523112597812 0 -0.020015015408398541
		-0.030022523112597812 0 -0.010007507704199271
		-0.010007507704199271 0 -0.010007507704199271
		-0.010007507704199271 0 -0.030022523112597812
		-0.020015015408398541 0 -0.030022523112597812
		0 0 -0.05003753852099635
		;
createNode transform -n "FourArrowsThin" -p "ControllerGallery";
	rename -uid "1E90CD1A-4EB3-8E78-5D06-1882B8984E6B";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsThinShape" -p "FourArrowsThin";
	rename -uid "9C08F5F5-4B7D-0A50-7645-8191F51AB6C5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -0.049987500982475376
		0.016662500327491791 0 -0.033325000654983582
		0.0041656250818729477 0 -0.033325000654983582
		0.0041656250818729477 0 -0.0041656250818729477
		0.033325000654983582 0 -0.0041656250818729477
		0.033325000654983582 0 -0.016662500327491791
		0.049987500982475376 0 0
		0.033325000654983582 0 0.016662500327491791
		0.033325000654983582 0 0.0041656250818729477
		0.0041656250818729477 0 0.0041656250818729477
		0.0041656250818729477 0 0.033325000654983582
		0.016662500327491791 0 0.033325000654983582
		0 0 0.049987500982475376
		-0.016662500327491791 0 0.033325000654983582
		-0.0041656250818729477 0 0.033325000654983582
		-0.0041656250818729477 0 0.0041656250818729477
		-0.033325000654983582 0 0.0041656250818729477
		-0.033325000654983582 0 0.016662500327491791
		-0.049987500982475376 0 0
		-0.033325000654983582 0 -0.016662500327491791
		-0.033325000654983582 0 -0.0041656250818729477
		-0.0041656250818729477 0 -0.0041656250818729477
		-0.0041656250818729477 0 -0.033325000654983582
		-0.016662500327491791 0 -0.033325000654983582
		0 0 -0.049987500982475376
		;
createNode transform -n "FourArrowsCurved" -p "ControllerGallery";
	rename -uid "66914139-4975-58D8-ECD1-40947798FECA";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsCurvedShape" -p "FourArrowsCurved";
	rename -uid "808E60AD-4586-7898-E7F7-A9B7BE73D28B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.049793147067209907 -0.0099833620670947178 0
		0.033325000654983575 0.0041682837749631241 0.022216667103322374
		0.033325000654983575 0.0041682836450086915 0.01110833355166121
		0.022216667103322384 0.0083871019856859071 0.01110833355166121
		0.011108333551661192 0.009983362067094716 0.01110833355166121
		0.011108333551661192 0.0083871019856859071 0.022216667103322374
		0.011108333551661192 0.0041682836450086915 0.033325000654983582
		0.022216667103322384 0.0041682837749631241 0.033325000654983582
		0 -0.0099833620670947178 0.0497931470672099
		-0.022216667103322384 0.0041682837749631241 0.033325000654983582
		-0.011108333551661192 0.0041682836450086915 0.033325000654983582
		-0.011108333551661192 0.0083871019856859071 0.022216667103322374
		-0.011108333551661192 0.009983362067094716 0.01110833355166121
		-0.022216667103322384 0.0083871019856859071 0.01110833355166121
		-0.033325000654983575 0.0041682836450086915 0.01110833355166121
		-0.033325000654983575 0.0041682837749631241 0.022216667103322374
		-0.049793147067209907 -0.0099833620670947178 0
		-0.033325000654983575 0.0041682837749631241 -0.022216667103322374
		-0.033325000654983575 0.0041682836450086915 -0.01110833355166121
		-0.022216667103322384 0.0083871019856859071 -0.01110833355166121
		-0.011108333551661192 0.009983362067094716 -0.01110833355166121
		-0.011108333551661192 0.0083871019856859071 -0.022216667103322374
		-0.011108333551661192 0.0041682836450086915 -0.033325000654983582
		-0.022216667103322384 0.0041682837749631241 -0.033325000654983582
		0 -0.0099833620670947178 -0.0497931470672099
		0.022216667103322384 0.0041682837749631241 -0.033325000654983582
		0.011108333551661192 0.0041682836450086915 -0.033325000654983582
		0.011108333551661192 0.0083871019856859071 -0.022216667103322374
		0.011108333551661192 0.009983362067094716 -0.01110833355166121
		0.022216667103322384 0.0083871019856859071 -0.01110833355166121
		0.033325000654983575 0.0041682836450086915 -0.01110833355166121
		0.033325000654983575 0.0041682837749631241 -0.022216667103322374
		0.049793147067209907 -0.0099833620670947178 0
		;
createNode transform -n "FourArrowsCurvedThin" -p "ControllerGallery";
	rename -uid "6A44EB21-48A5-2092-89D9-F1ADC7CB9378";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsCurvedThinShape" -p "FourArrowsCurvedThin";
	rename -uid "78E3A286-43F1-4858-538D-1688723B12FC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 40 0 no 3
		41 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40
		41
		0 -0.014396686403233589 -0.050320706395999795
		0.019057990875671241 -0.0022814075030172984 -0.038115981751342433
		0.0047644977189178041 -0.0022814075030172984 -0.038115981751342433
		0.0048160235656333761 0.0049542532893131061 -0.028896141393800256
		0.0046762864620726319 0.011347879958599786 -0.018705145848290528
		0.0046762864620726319 0.014396686403233589 -0.0046762864620726319
		0.018705145848290528 0.011347879958599786 -0.0046762864620726319
		0.028896141393800302 0.0049542532893131061 -0.0048160235656333761
		0.038115981751342454 -0.0022814075030172984 -0.0047644977189178041
		0.038115981751342454 -0.0022814075030172984 -0.019057990875671216
		0.050320706395999816 -0.014396686403233589 0
		0.038115981751342454 -0.0022814075030172984 0.019057990875671216
		0.038115981751342454 -0.0022814075030172984 0.0047644977189178041
		0.028896141393800302 0.0049542532893131061 0.0048160235656333761
		0.018705145848290528 0.011347879958599786 0.0046762864620726319
		0.0046762864620726319 0.014396686403233589 0.0046762864620726319
		0.0046762864620726319 0.011347879958599786 0.018705145848290528
		0.0048160235656333761 0.0049542532893131061 0.028896141393800256
		0.0047644977189178041 -0.0022814075030172984 0.038115981751342433
		0.019057990875671241 -0.0022814075030172984 0.038115981751342433
		0 -0.014396686403233589 0.050320706395999795
		-0.019057990875671241 -0.0022814075030172984 0.038115981751342433
		-0.0047644977189178041 -0.0022814075030172984 0.038115981751342433
		-0.0048160235656333761 0.0049542532893131061 0.028896141393800256
		-0.0046762864620726319 0.011347879958599786 0.018705145848290528
		-0.0046762864620726319 0.014396686403233589 0.0046762864620726319
		-0.018705145848290528 0.011347879958599786 0.0046762864620726319
		-0.028896141393800302 0.0049542532893131061 0.0048160235656333761
		-0.038115981751342454 -0.0022814075030172984 0.0047644977189178041
		-0.038115981751342454 -0.0022814075030172984 0.019057990875671216
		-0.050320706395999816 -0.014396686403233589 0
		-0.038115981751342454 -0.0022814075030172984 -0.019057990875671216
		-0.038115981751342454 -0.0022814075030172984 -0.0047644977189178041
		-0.028896141393800302 0.0049542532893131061 -0.0048160235656333761
		-0.018705145848290528 0.011347879958599786 -0.0046762864620726319
		-0.0046762864620726319 0.014396686403233589 -0.0046762864620726319
		-0.0046762864620726319 0.011347879958599786 -0.018705145848290528
		-0.0048160235656333761 0.0049542532893131061 -0.028896141393800256
		-0.0047644977189178041 -0.0022814075030172984 -0.038115981751342433
		-0.019057990875671241 -0.0022814075030172984 -0.038115981751342433
		0 -0.014396686403233589 -0.050320706395999795
		;
createNode transform -n "TwoArrow" -p "ControllerGallery";
	rename -uid "E0378E27-4655-D365-0DFF-E3B8C8685E64";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "TwoArrowShape" -p "TwoArrow";
	rename -uid "FEF9FDB6-47C0-82F7-F03A-6E9E39CF106B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 -0.060617371062105629
		0.024246948424842252 0 -0.03637042263726338
		0.012123474212421126 0 -0.03637042263726338
		0.012123474212421126 0 0.03637042263726338
		0.024246948424842252 0 0.03637042263726338
		0 0 0.06061737106210572
		-0.024246948424842252 0 0.03637042263726338
		-0.012123474212421126 0 0.03637042263726338
		-0.012123474212421126 0 -0.03637042263726338
		-0.024246948424842252 0 -0.03637042263726338
		0 0 -0.060617371062105629
		;
createNode transform -n "TwoArrowsThin" -p "ControllerGallery";
	rename -uid "33C42963-4656-0CF8-FD76-96ADD4F1F7B3";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "TwoArrowsThinShape" -p "TwoArrowsThin";
	rename -uid "C4214E0D-4C79-4610-7F1E-3C8DBDB78D23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 -0.060617371062105629
		0.024246948424842252 0 -0.03637042263726338
		0.006465852652568849 0 -0.03637042263726338
		0.006465852652568849 0 0.03637042263726338
		0.024246948424842252 0 0.03637042263726338
		0 0 0.06061737106210572
		-0.024246948424842252 0 0.03637042263726338
		-0.006465852652568849 0 0.03637042263726338
		-0.006465852652568849 0 -0.03637042263726338
		-0.024246948424842252 0 -0.03637042263726338
		0 0 -0.060617371062105629
		;
createNode transform -n "TwoArrowsCurved" -p "ControllerGallery";
	rename -uid "18689527-4CE2-64D5-27E1-BFB933132FDB";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "TwoArrowsCurvedShape" -p "TwoArrowsCurved";
	rename -uid "D0F5028F-41AF-B418-6A37-1693F2DF4470";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		0 -0.027762873287063977 -0.060637519568367541
		0 0.019315419008048673 -0.057309137972406089
		0 -0.0037371088688901558 -0.052218158031152755
		0 0.0094791989321106763 -0.044131761845081607
		0 0.023008674443380089 -0.023886240820609528
		0 0.027762873287063894 0
		0 0.023008674443380089 0.023886240820609528
		0 0.0094791989321106763 0.044131761845081607
		0 -0.0036349685261627277 0.052327487461348902
		0 0.019315419008048673 0.057309137972406089
		0 -0.027762873287063977 0.060637519568367583
		0 -0.0049172805278764713 0.019339530101405034
		0 -0.010277961850549563 0.043613373337919904
		0 0.0014455042872519447 0.036111228760357772
		0 0.012530247653801178 0.019540935151872586
		0 0.016409313349860483 0
		0 0.012530247653801178 -0.019540935151872631
		0 0.0014455042872519447 -0.036111228760357772
		0 -0.010365447514975536 -0.043443157866931648
		0 -0.0049172805278764713 -0.019339530101405034
		0 -0.027762873287063977 -0.060637519568367541
		;
createNode transform -n "TwoArrowsCurvedThin" -p "ControllerGallery";
	rename -uid "3C15D583-45D5-2DDE-7494-0094D12B8F6F";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "TwoArrowsCurvedThinShape" -p "TwoArrowsCurvedThin";
	rename -uid "5AD46E96-4F6E-4246-E442-7CA5B9265260";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 -0.024235950403295275 -0.060637511717299565
		0 0.0062550222732022905 -0.058481846647586488
		0 -0.010177924394002665 -0.055543236765778839
		0 -0.0051523570880081014 -0.052915512564162492
		0 0.0042269826996969182 -0.046252840845870585
		0 0.01505789834861725 -0.032870728537961517
		0 0.021898696577986473 -0.017063731802109228
		0 0.024235950403295098 5.854565721108429e-10
		0 0.021898696577986473 0.017063731802109228
		0 0.01505789834861725 0.032870728537961469
		0 0.0042269826996969182 0.046252840845870585
		0 -0.0051523570880081014 0.052915512564162492
		0 -0.010177924394002665 0.055543236765778839
		0 0.0062550222732022905 0.058481846647586447
		0 -0.024235950403295275 0.060637511717299565
		0 -0.0094396305974196772 0.033890240160846699
		0 -0.012944436845704614 0.050253703162202568
		0 -0.0083985694871017286 0.04787651413719192
		0 9.127192876574186e-05 0.041846239288321256
		0 0.0098869167728557628 0.029741396738294637
		0 0.016078544155051552 0.015437969225302696
		0 0.018191587800867513 5.2969117980694591e-10
		0 0.016078544155051552 -0.015437969225302696
		0 0.0098869167728557628 -0.029741396738294637
		0 9.127192876574186e-05 -0.041846239288321256
		0 -0.0083985694871017286 -0.04787651413719192
		0 -0.012944436845704614 -0.050253703162202568
		0 -0.0094396305974196772 -0.033890240160846699
		0 -0.024235950403295275 -0.060637511717299565
		;
createNode transform -n "OneArrow" -p "ControllerGallery";
	rename -uid "9FD5F829-4EFD-F8D7-72A6-58874D307244";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "OneArrowShape" -p "OneArrow";
	rename -uid "18EA59BD-46BC-4D5F-55C5-6489C1F60BC8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0 -0.05003753852099635
		0.040030030816797089 0 -0.010007507704199271
		0.020015015408398545 0 -0.010007507704199271
		0.020015015408398545 0 0.05003753852099635
		-0.020015015408398545 0 0.05003753852099635
		-0.020015015408398545 0 -0.010007507704199271
		-0.040030030816797089 0 -0.010007507704199271
		0 0 -0.05003753852099635
		;
createNode transform -n "OneArrowThin" -p "ControllerGallery";
	rename -uid "C05F844C-4218-C790-7965-4B8EEF0E3E78";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "OneArrowThinShape" -p "OneArrowThin";
	rename -uid "03D123B7-4F0E-BB73-4071-1E902790A2D1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0 -0.050000000000000003
		0.032468098812687043 0 -0.010007507704199271
		0.010007507704199271 0 -0.010007507704199271
		0.010007507704199271 0 0.05003753852099635
		-0.010007507704199271 0 0.05003753852099635
		-0.010007507704199271 0 -0.010007507704199271
		-0.032468098812687043 0 -0.010007507704199271
		0 0 -0.050000000000000003
		;
createNode transform -n "CircleOneArrows" -p "ControllerGallery";
	rename -uid "654E95B9-44B1-012C-54ED-3C886479E236";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "CircleOneArrowsShape" -p "CircleOneArrows";
	rename -uid "0D51EF2C-45B5-4DA6-2EAE-7E8A348E0589";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0.027483006685743883 -4.1311802056257799e-20 -0.0089297696948308133
		0.028897324204444887 0 0
		0.027482989430427554 0 0.0089297644793987271
		0.023378427326679233 0 0.016985422372817995
		0.016985420882701874 0 0.02337842881679535
		0.0089297637343406684 0 0.027482989430427554
		-8.6120737208261748e-10 0 0.028897327184677125
		-0.0089297659695148478 0 0.027482992410659792
		-0.016985423862934113 0 0.023378430306911471
		-0.023378431797027588 0 0.016985423862934113
		-0.02748299539089203 0 0.0089297659695148478
		-0.028897330164909363 0 0
		-0.02748299539089203 0 -0.0089297659695148478
		-0.023378433287143709 0 -0.016985425353050233
		-0.016985428333282471 0 -0.023378434777259829
		-0.0089297689497470859 0 -0.027483001351356506
		-0.0089297689497470859 2.0780323760142046e-18 -0.033975820078786259
		-0.016985428333282471 4.3677523254850359e-18 -0.033975819106372464
		0 0 -0.049867639924497678
		0.016985431313514709 -4.2730491206727748e-18 -0.03397582035794882
		0.0089297689497470859 -1.9630195302474763e-18 -0.033998715081029876
		0.0089297689497470859 0 -0.027483004331588748
		0.016985431313514709 0 -0.023378440737724306
		0.023378442227840426 0 -0.016985431313514709
		0.027483007937898041 4.1311802056257799e-20 -0.0089297696947794776
		;
createNode transform -n "CircleTwoArrows" -p "ControllerGallery";
	rename -uid "7EEE86BC-4808-A4CA-97D9-1884E390971A";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "CircleTwoArrowsShape" -p "CircleTwoArrows";
	rename -uid "65D21603-41BC-1EDD-5A05-6C974FE089AF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0.023378441564935272 0 -0.016985433882460609
		0.027483007311820986 0 -0.0089297696948051463
		0.028897324204444887 0 0
		0.027482989430427554 0 0.0089297644793987271
		0.023378427326679233 0 0.016985422372817995
		0.016985420882701874 0 0.02337842881679535
		0.0089297637343406684 0 0.027482989430427554
		0.0089297637343406684 -2.3579020809409216e-18 0.033064207434646865
		0.016985431313484289 -3.776436283099662e-18 0.033064206823315172
		0 0 0.050000000000000003
		-0.016985428333210883 3.658938677989067e-18 0.033064206394915807
		-0.0089297659695148478 1.8610997008831868e-18 0.033064204175022295
		-0.0089297659695148478 0 0.027482992410659792
		-0.016985423862934113 0 0.023378430306911471
		-0.023378431797027588 0 0.016985423862934113
		-0.02748299539089203 0 0.0089297659695148478
		-0.028897330164909363 0 0
		-0.02748299539089203 0 -0.0089297659695148478
		-0.023378433287143709 0 -0.016985425353050233
		-0.016985428333282471 0 -0.023378434777259829
		-0.0089297689497470859 0 -0.027483001351356506
		-0.0089297689497470859 2.2254534375768339e-18 -0.033827270789432706
		-0.01698542833335406 3.9968184311772767e-18 -0.033827270789441324
		0 0 -0.050000000000000003
		0.01698543131354513 -3.8736135917010792e-18 -0.033827270789425823
		0.0088198289275169383 -1.9817160757331825e-18 -0.033827270697380209
		0.0089297689497470859 0 -0.027483004331588748
		0.016985431313514709 0 -0.023378440737724306
		0.023378442890745577 0 -0.01698542874456881
		;
createNode transform -n "CircleThreeArrows" -p "ControllerGallery";
	rename -uid "23886496-4EA4-F687-24B4-29A406C8693A";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "CircleThreeArrowsShape" -p "CircleThreeArrows";
	rename -uid "7FB05926-4FBC-041E-DA97-7288E73CEDDD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0 0 0.050000000000000003
		0.016985420882651737 0 0.033077478553538729
		0.0088198237121105191 0 0.033077474766608363
		0.0089297637343406684 0 0.027482989430427554
		0.016985420882701874 0 0.02337842881679535
		0.023378427326679233 0 0.016985422372817995
		0.027482989430427554 0 0.0089297644793987271
		0.036437125148417106 0 0.0088198244571685794
		0.03643712641072723 0 0.016985422372817995
		0.052720932555191349 0 0
		0.036437133984588012 0 -0.01677631288766861
		0.036437137771518378 0 -0.0089297696948051463
		0.027483007311820986 0 -0.0089297696948051463
		0.023378442227840426 0 -0.016985431313514709
		0.016985431313514709 0 -0.023378440737724306
		0.0089297689497470859 0 -0.027483004331588748
		0.0088198289275169383 0 -0.033928235652697716
		0.016985420882752011 0 -0.033928235652672466
		0 0 -0.050000000000000003
		-0.016985423862954454 0 -0.033928235652735596
		-0.0089297689497470859 0 -0.033928235652685101
		-0.0089297689497470859 0 -0.027483001351356506
		-0.016985428333282471 0 -0.023378434777259829
		-0.023378433287143709 0 -0.016985425353050233
		-0.02748299539089203 0 -0.0089297659695148478
		-0.028897330164909363 0 0
		-0.02748299539089203 0 0.0089297659695148478
		-0.023378431797027588 0 0.016985423862934113
		-0.016985423862934113 0 0.023378430306911471
		-0.0089297659695148478 0 0.027482992410659792
		-0.0089297659695148478 0 0.033077478553538729
		-0.016985423862913775 0 0.033077474766608363
		0 0 0.050000000000000003
		;
createNode transform -n "CircleFourArrows" -p "ControllerGallery";
	rename -uid "75D971BE-4B3F-0E93-F144-5E8187531FEC";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "CircleFourArrowsShape" -p "CircleFourArrows";
	rename -uid "4849FBA0-4B82-3E96-4B8E-DF9FA593381A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 36 0 no 3
		37 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36
		37
		-0.05304216551961647 0 0
		-0.037284635514194212 0 0.016776302901387253
		-0.037284629034989927 0 0.0088198259472846985
		-0.02748299539089203 0 0.0089297659695148478
		-0.023378431797027588 0 0.016985423862934113
		-0.016985423862934113 0 0.023378430306911471
		-0.0089297659695148478 0 0.027482992410659792
		-0.0089433191828814044 0 0.033076866095762505
		-0.016776310786419037 0 0.033076866680427489
		0 0 0.050000000000000003
		0.016985432283194334 0 0.033076867300097491
		0.0087334584703641083 0 0.03307686480650969
		0.0089297637343406684 0 0.027482989430427554
		0.016985420882701874 0 0.02337842881679535
		0.023378427326679233 0 0.016985422372817995
		0.027482989430427554 0 0.0089297644793987271
		0.036372964399352316 0 0.0089297644793987271
		0.036372969335565906 0 0.016776304992556536
		0.052792491160843662 0 2.722510304100645e-05
		0.036372967370672991 0 -0.016985430267952406
		0.036372965146557239 0 -0.0089297696948051463
		0.027483007311820986 0 -0.0089297696948051463
		0.023378442227840426 0 -0.016985431313514709
		0.016985431313514709 0 -0.023378440737724306
		0.0089297689497470859 0 -0.027483004331588748
		0.0089297689497470859 0 -0.033931991700312539
		0.016985430343835085 0 -0.033931989060366964
		0 0 -0.050000000000000003
		-0.016776309028453708 0 -0.033931991130772186
		-0.0089297689497470859 0 -0.033931995064683786
		-0.0089297689497470859 0 -0.027483001351356506
		-0.016985428333282471 0 -0.023378434777259829
		-0.023378433287143709 0 -0.016985425353050233
		-0.02748299539089203 0 -0.0089297659695148478
		-0.037284606433543768 0 -0.0089297659695148478
		-0.037284608991610436 0 -0.016985432359077013
		-0.05304216551961647 0 0
		;
createNode transform -n "SphereFourArrows" -p "ControllerGallery";
	rename -uid "D29DFCCB-4AC8-795F-2E30-9E9898681641";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "SphereFourArrowsShape" -p "SphereFourArrows";
	rename -uid "8039D921-441E-A240-BED9-D18C725D7BCF";
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
		0 0 -0.059098586917776745
		0.019699528972592251 0 -0.039399057945184501
		0.0098497644862961253 0 -0.039399057945184501
		0.0095870221576474929 0 -0.029505820491699943
		0.018235601695210407 0 -0.0250991523620713
		0.025099154710438151 0 -0.018235601695210414
		0.02950582518843365 0 -0.0095870227447392153
		0.039399057945184501 0 -0.0098497644862961323
		0.039399057945184501 0 -0.01969952897259224
		0.059098586917776752 0 0
		0.039399057945184501 0 0.01969952897259224
		0.039399057945184501 0 0.0098497644862961323
		0.029505806401498819 0 0.0095870174609137947
		0.025099135923503331 0 0.018235592301742987
		0.018235589953376138 0 0.025099138271870183
		0.0095870162867303585 0 0.029505806401498826
		0.0098497644862961253 0 0.039399057945184501
		0.019699528972592251 0 0.039399057945184501
		0 0 0.059098586917776745
		-0.019699528972592251 0 0.039399057945184501
		-0.0098497644862961253 0 0.039399057945184501
		-0.0095870192221889257 0 0.029505808749865681
		-0.018235593475926421 0 0.025099140620237038
		-0.025099142968603882 0 0.018235593475926428
		-0.029505813446599385 0 0.0095870192221889205
		-0.039399057945184501 0 0.0098497644862961323
		-0.039399057945184501 0 0.01969952897259224
		-0.059098586917776752 0 0
		-0.039399057945184501 0 -0.01969952897259224
		-0.039399057945184501 0 -0.0098497644862961323
		-0.029505813446599385 0 -0.0095870192221889205
		-0.025099145316970741 0 -0.018235595824293283
		-0.018235596998476697 0 -0.025099145316970752
		-0.0095870221576474929 0 -0.029505818143333085
		-0.0098497644862961253 0 -0.039399057945184501
		-0.019699528972592251 0 -0.039399057945184501
		0 0 -0.059098586917776745
		0 0.019699528972592251 -0.039399057945184501
		0 0.0095870162867303585 -0.039399057945184501
		0 0.0095870162867303585 -0.029505820491699943
		0 0.01408471063814349 -0.027642811751266996
		0 0.018235589953376138 -0.025099147665337607
		0 0.021937449784422084 -0.021937461526256353
		0 0.025099135923503331 -0.018235599346843556
		0 0.027642800009432717 -0.014084716509060624
		0 0.029505806401498819 -0.0095870221576475068
		0 0.039399057945184501 -0.0098497644862961323
		0 0.039399057945184501 -0.019699528972592265
		0 0.059098586917776752 0
		0 0.039399057945184501 0.01969952897259224
		0 0.039399057945184501 0.0098497644862961097
		-2.8571538510661685e-10 0.029505806401498819 0.0095870186350972119
		-4.1975708717535406e-10 0.027642800009432717 0.014084711812326912
		-5.4346293072033341e-10 0.025099135923503331 0.018235592301742987
		-6.5378695083922398e-10 0.021937449784422084 0.021937452132788929
		-7.4801254044483098e-10 0.018235589953376138 0.025099140620237038
		-8.2381963757970086e-10 0.01408471063814349 0.027642802357799569
		-8.7934155468639193e-10 0.0095870162867303585 0.029505808749865681
		-8.7934155468639193e-10 0.0095870162867303585 0.039399057945184501
		-8.7934155468639193e-10 0.019699528972592251 0.039399057945184481
		-8.7934155468639193e-10 0 0.059098586917776745
		-8.7934155468639193e-10 -0.019699528972592251 0.039399057945184501
		-8.7934155468639193e-10 -0.0095870162867303585 0.039399057945184501
		-8.7934155468639193e-10 -0.0095870162867303585 0.029505808749865681
		-8.2381963757970086e-10 -0.01408471063814349 0.027642802357799569
		-7.4801254044483098e-10 -0.018235589953376138 0.025099140620237038
		-6.5378695083922398e-10 -0.021937449784422084 0.02193745213278895
		-5.4346293072033341e-10 -0.025099135923503331 0.018235592301743011
		-4.1975708717535406e-10 -0.027642800009432717 0.014084711812326912
		-2.8571538510661685e-10 -0.029505806401498819 0.0095870186350972119
		-2.8571538510661685e-10 -0.039399057945184501 0.0098497644862961323
		-2.8571538510661685e-10 -0.039399057945184501 0.019699528972592265
		-2.8571538510661685e-10 -0.059098586917776766 0
		-0.019699528972592251 -0.039399057945184501 0
		-0.0098497644862961253 -0.039399057945184501 0
		-0.0095870192221889257 -0.029505806401498819 0
		-0.014084714160693766 -0.027642800009432717 0
		-0.018235593475926421 -0.025099135923503331 0
		-0.021937454481155791 -0.021937449784422084 0
		-0.025099142968603882 -0.018235589953376138 0
		-0.027642807054533272 -0.01408471063814349 0
		-0.029505813446599385 -0.0095870162867303585 0
		-0.039399057945184501 -0.0095870162867303585 0
		-0.039399057945184501 -0.019699528972592251 0
		-0.059098586917776752 0 0
		-0.039399057945184501 0.019699528972592251 0
		-0.039399057945184501 0.0095870162867303585 0
		-0.029505813446599385 0.0095870162867303585 0
		-0.027642807054533272 0.01408471063814349 0
		-0.025099142968603882 0.018235589953376138 0
		-0.021937454481155791 0.021937449784422084 0
		-0.018235593475926421 0.025099135923503331 0
		-0.014084714160693766 0.027642800009432717 0
		-0.0095870192221889257 0.029505806401498819 0
		-0.0098497644862961253 0.039399057945184501 0
		-0.019699528972592251 0.039399057945184501 0
		0 0.059098586917776752 0
		0.019699528972592251 0.039399057945184501 0
		0.0098497644862961253 0.039399057945184501 0
		0.0095870174609137878 0.029505806401498819 0
		0.01408471063814349 0.027642800009432717 0
		0.018235589953376138 0.025099135923503331 0
		0.021937449784422084 0.021937449784422084 0
		0.025099135923503331 0.018235589953376138 0
		0.027642800009432717 0.01408471063814349 0
		0.029505806401498819 0.0095870162867303585 0
		0.039399057945184501 0.0095870162867303585 0
		0.039399057945184501 0.019699528972592251 0
		0.059098586917776752 0 0
		0.039399057945184501 -0.019699528972592251 0
		0.039399057945184501 -0.0095870162867303585 0
		0.029505806401498819 -0.0095870162867303585 0
		0.027642800009432717 -0.01408471063814349 0
		0.025099135923503331 -0.018235589953376138 0
		0.021937449784422084 -0.021937449784422084 0
		0.018235589953376138 -0.025099135923503331 0
		0.01408471063814349 -0.027642800009432717 0
		0.0095870174609137878 -0.029505806401498819 0
		0.0098497644862961253 -0.039399057945184501 0
		0.019699528972592251 -0.039399057945184501 0
		0 -0.059098586917776766 0
		0 -0.039399057945184501 -0.01969952897259224
		0 -0.039399057945184501 -0.0098497644862961097
		0 -0.029505806401498819 -0.0095870221576474859
		0 -0.027642800009432717 -0.014084716509060603
		0 -0.025099135923503331 -0.018235599346843556
		0 -0.021937449784422084 -0.021937461526256353
		0 -0.018235589953376138 -0.025099147665337586
		0 -0.01408471063814349 -0.027642811751266972
		0 -0.0095870162867303585 -0.029505820491699943
		0 -0.0095870162867303585 -0.039399057945184501
		0 -0.019699528972592251 -0.039399057945184481
		0 0 -0.059098586917776745
		;
createNode transform -n "Gear" -p "ControllerGallery";
	rename -uid "B2D9BACD-4BA6-98C1-17AE-7AB0D98121C2";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "GearShape" -p "Gear";
	rename -uid "35B7E0D9-4F4B-D950-7E31-859ECCEB72F7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 36 0 no 3
		37 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36
		37
		-0.0045786284178971791 0 -0.049222453589589946
		-0.0020040557589401154 0 -0.035622753557833134
		0.0072840672496464094 0 -0.034927627444204613
		0.016075793142053232 0 -0.031852241178732865
		0.023871697041449359 0 -0.043289202896422956
		0.032915170117153329 0 -0.03683941037426193
		0.040338598145013685 0 -0.028576452335056724
		0.029848180763009904 0 -0.019546944629309771
		0.033890246153990368 0 -0.011155624430383116
		0.035622748299638143 0 -0.0020040653587793502
		0.049425418861035735 0 -0.00097110459668350304
		0.048361478581933695 0 0.010085634069092754
		0.044917266384975153 0 0.020645979953648121
		0.031852271134041259 0 0.016075812609836704
		0.026606178470179633 0 0.023772008075903607
		0.01954695342092716 0 0.02984818712758526
		0.025553714004626828 0 0.042318138753269376
		0.015446300622685594 0 0.046925085027000261
		0.0045786284178972458 0 0.049222459550054401
		0.0020040553247757443 0 0.035622761600147483
		-0.0072840681179751959 0 0.034927637568368829
		-0.016075794444546477 0 0.031852253384746974
		-0.023871698778106978 0 0.04328921718428691
		-0.03291517011715319 0 0.036839416334726406
		-0.040338598145013616 0 0.028576458295521179
		-0.029848181197174296 0 0.019546952671624141
		-0.033890245719825927 0 0.011155628308997701
		-0.035622747431309242 0 0.002004067155544065
		-0.04942541755854242 0 0.00097110431159836981
		-0.048361471146867889 0 -0.010085663760307352
		-0.044917221135855528 0 -0.020646024297424393
		-0.031852236304867734 0 -0.016075806989216047
		-0.026606177601850668 0 -0.023772006279138891
		-0.019546952986762768 0 -0.029848183248970674
		-0.025553713136297951 0 -0.042318136956504687
		-0.015446300622685483 0 -0.046925079066535785
		-0.0045786284178971791 0 -0.049222453589589946
		;
createNode nurbsCurve -n "GearCircleShape" -p "Gear";
	rename -uid "7C9D47AC-4497-E026-EC1C-FAA8E688A770";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.017631261560052548 1.079603401722409e-18 -0.017631261560052548
		0 1.5267897726999591e-18 -0.024934369219973718
		-0.017631261560052548 1.079603401722409e-18 -0.017631261560052548
		-0.024934369219973742 0 0
		-0.017631261560052548 -1.079603401722409e-18 0.017631261560052548
		0 -1.5267897726999591e-18 0.024934369219973742
		0.017631261560052548 -1.079603401722409e-18 0.017631261560052548
		0.024934369219973742 0 0
		0.017631261560052548 1.079603401722409e-18 -0.017631261560052548
		0 1.5267897726999591e-18 -0.024934369219973718
		-0.017631261560052548 1.079603401722409e-18 -0.017631261560052548
		;
createNode fosterParent -n "VentDoor_Model_ProxyRNfosterParent1";
	rename -uid "216F1CD7-4A2E-3063-EF5C-9AA9B2E36F83";
createNode mesh -n "VentDoor_Body_GeoShapeDeformed" -p "VentDoor_Model_ProxyRNfosterParent1";
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
createNode reference -n "VentDoor_Model_ProxyRN";
	rename -uid "1EA6C5FC-4CB9-2CB6-6F1F-CC8223E2BE21";
	setAttr -s 7 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"VentDoor_Model_ProxyRN"
		"VentDoor_Model_ProxyRN" 0
		"VentDoor_Model_ProxyRN" 19
		0 "|VentDoor_Model_Proxy:geo" "|Group|Geometry" "-s -r "
		0 "|VentDoor_Model_ProxyRNfosterParent1|VentDoor_Body_GeoShapeDeformed" "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"-s -r "
		2 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo|VentDoor_Model_Proxy:VentDoor_Body_GeoShape" 
		"intermediateObject" " 1"
		2 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo|VentDoor_Model_Proxy:VentDoor_Body_GeoShape" 
		"vertexColorSource" " 2"
		5 3 "VentDoor_Model_ProxyRN" "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo|VentDoor_Model_Proxy:VentDoor_Body_GeoShape.outMesh" 
		"VentDoor_Model_ProxyRN.placeHolderList[1]" ""
		5 3 "VentDoor_Model_ProxyRN" "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo|VentDoor_Model_Proxy:VentDoor_Body_GeoShape.worldMesh" 
		"VentDoor_Model_ProxyRN.placeHolderList[2]" ""
		5 3 "VentDoor_Model_ProxyRN" "VentDoor_Model_Proxy:AirBoxFBXASC046002SG.memberWireframeColor" 
		"VentDoor_Model_ProxyRN.placeHolderList[3]" ""
		5 4 "VentDoor_Model_ProxyRN" "VentDoor_Model_Proxy:AirBoxFBXASC046002SG.dagSetMembers" 
		"VentDoor_Model_ProxyRN.placeHolderList[4]" ""
		5 0 "VentDoor_Model_ProxyRN" "VentDoor_Model_Proxy:groupId1.message" 
		"VentDoor_Model_Proxy:AirBoxFBXASC046002SG.groupNodes" "VentDoor_Model_ProxyRN.placeHolderList[5]" 
		"VentDoor_Model_ProxyRN.placeHolderList[6]" ""
		5 3 "VentDoor_Model_ProxyRN" "VentDoor_Model_Proxy:groupId1.groupId" 
		"VentDoor_Model_ProxyRN.placeHolderList[7]" ""
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"translateX"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"translateY"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"translateZ"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"rotateX"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"rotateY"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"rotateZ"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"scaleX"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"scaleY"
		8 "|Group|Geometry|VentDoor_Model_Proxy:geo|VentDoor_Model_Proxy:VentDoor_Body_Geo" 
		"scaleZ";
lockNode -l 1 ;
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
connectAttr "VentDoor_Model_ProxyRN.phl[1]" "skinCluster1.orggeom[0]";
connectAttr "VentDoor_Model_ProxyRN.phl[2]" "tweak1.ip[0].ig";
connectAttr "VentDoor_Model_ProxyRN.phl[3]" "VentDoor_Body_GeoShapeDeformed.iog.og[1].gco"
		;
connectAttr "VentDoor_Body_GeoShapeDeformed.iog.og[1]" "VentDoor_Model_ProxyRN.phl[4]"
		;
connectAttr "VentDoor_Model_ProxyRN.phl[5]" "VentDoor_Model_ProxyRN.phl[6]";
connectAttr "VentDoor_Model_ProxyRN.phl[7]" "VentDoor_Body_GeoShapeDeformed.iog.og[1].gid"
		;
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
connectAttr "VentDoor_Model_ProxyRNfosterParent1.msg" "VentDoor_Model_ProxyRN.fp"
		;
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
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Root_M.wm" "skinCluster1.ma[0]";
connectAttr "Root_M.liw" "skinCluster1.lw[0]";
connectAttr "Root_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Root_M.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "Root_M.bps" "bindPose1.wm[2]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of VentDoor_rig_wip_v001.ma
