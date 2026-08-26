//Maya ASCII 2025ff03 scene
//Name: Card_Rig_wip_v001.ma
//Last modified: Wed, Jan 21, 2026 02:54:08 PM
//Codeset: 1252
file -rdi 1 -ns "Card_Model_Proxy" -rfn "Card_Model_ProxyRN" -typ "mayaAscii"
		 "G:/My Drive/Projects/KafkaProj//publish/Prop/Card/Model/Proxy/v001/v001.ma";
file -r -ns "Card_Model_Proxy" -dr 1 -rfn "Card_Model_ProxyRN" -typ "mayaAscii" "G:/My Drive/Projects/KafkaProj//publish/Prop/Card/Model/Proxy/v001/v001.ma";
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
fileInfo "UUID" "F58FD401-4BB1-8107-0DA8-6FA2D2810FC6";
createNode transform -s -n "persp";
	rename -uid "537DE1E4-4A52-F509-1AD6-BE89993E7E98";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6205319002623488 6.3568132907724326 10.414184060816726 ;
	setAttr ".r" -type "double3" -33.338352729603528 18.200000000000259 2.5110380955620534e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C5E75F56-4286-E3A3-6144-30B974A01EAD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.376913362196479;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "66DE21A5-4126-F81A-4BF4-7E9B9F739EFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2DD8EAA5-43E5-E427-2D6D-E1BDA9B65B7B";
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
	rename -uid "99C7BE3E-4A2A-58D5-8A21-2DB51F7A5EF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "707F144D-4615-B5D3-4329-019461453964";
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
	rename -uid "CFC67CB3-4005-249C-F06A-CCBDEB213489";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "17DFC17A-484D-1573-6B8F-41B494FFEF99";
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
	rename -uid "EBFE8F8B-4CDC-0A64-CE12-B5B269C11A21";
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
	rename -uid "0832E400-46A5-C56C-1216-BAA7C0D7AF7C";
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
	rename -uid "273BFEFD-4707-6648-35F6-F4AD364A26E7";
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
	rename -uid "41AA0E6A-456A-28E2-4256-F1BA2E30EA34";
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
	rename -uid "64B44750-4DC5-2F65-20EA-8B8E3B5FA13F";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "C4194E28-4C5B-0599-DBFF-DFBF58E09BAC";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "0A61CD4F-40FF-D4A9-B68A-3BA0B9D26AD6";
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
	rename -uid "D72F260B-40E1-FDBD-9281-B8A9C141127A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.155932246699952 4.3817447604182144e-16 -7.1559322466999538
		6.1967228670406839e-16 6.1967228670406839e-16 -10.120016434706045
		-7.155932246699952 4.3817447604182115e-16 -7.1559322466999502
		-10.12001643470605 8.7120552904891458e-32 -1.5153546870175177e-15
		-7.155932246699952 -4.3817447604182144e-16 7.155932246699952
		-1.0137289676606641e-15 -6.1967228670406888e-16 10.12001643470605
		7.155932246699952 -4.3817447604182115e-16 7.1559322466999502
		10.12001643470605 -2.9507858809062523e-32 3.8933182006607738e-16
		7.155932246699952 4.3817447604182144e-16 -7.1559322466999538
		6.1967228670406839e-16 6.1967228670406839e-16 -10.120016434706045
		-7.155932246699952 4.3817447604182115e-16 -7.1559322466999502
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "1D1BB349-4AF5-59AA-DF9C-BC94DF5198E8";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "51FB8AFB-477A-00DA-80A9-BF95567895E3";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "4A4FD074-45A3-CF8C-3583-B1828568E7ED";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "B7B76A5A-4E71-F8F8-45ED-269C5857A6B0";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "C6641911-4706-2826-202E-C18117387180";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "528D56E5-47B8-C861-5486-6EB927087B08";
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
	rename -uid "FF863972-4C9A-9509-BCF4-A1A3445EE838";
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
	rename -uid "3090BB0A-4857-CD0C-BDBE-3A8A63294867";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "0124DB38-4D9A-2E84-E830-C9A42A1629E6";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "45F9D5C7-4D3E-8DC8-DA3F-DDB3FE637DF8";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "BD5771E2-471B-B337-4C8C-08BA8C411FDB";
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
	rename -uid "12172702-4540-4920-FD55-019BD5E2211B";
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
	rename -uid "35A17190-48B3-C8FF-676D-50A8B46A279A";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "1724D35A-4164-2F8F-CDFF-FA88633B696B";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "45D087F7-4F3D-2FA3-3FA3-36AE7D06A321";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "E0AD388A-4228-271E-AF0B-848075A39182";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "2485ABF6-4A3D-39F6-B27D-47BEC5599BC0";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "EB2B1987-4843-6A08-6FB6-19944AE19507";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "7D71F3B7-403B-528C-585A-5783B5E71C25";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "DB663CF5-4DDA-9219-E34B-2A96EA5890DC";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "B6703320-4CB9-F3B8-B977-CAA09D4D751D";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "76AEA6C8-42AF-0412-3A1A-28BD8A70C204";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "D988EF93-416C-0C3D-772B-65A7E17FD3CF";
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
	rename -uid "88D3F177-48DD-6501-87B5-5CA46FC16065";
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
	rename -uid "14D9FB01-4248-68C5-6567-65A6132C84DC";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "1417BAA9-462F-0BE1-0281-A79315F01954";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "7C3BEE10-46B2-9B97-B63D-F598EB5128AF";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "095BB6CC-47C7-AB18-45F1-CEA844015CC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-6.3220416560650516 0.46091846826525434 3.0385204845633647
		-6.3220416560650516 -0.18698061211608857 3.0385204845633647
		4.339006360391565 -0.18698061211608857 3.0385204845633647
		4.339006360391565 0.46091846826525434 3.0385204845633647
		-6.3220416560650516 0.46091846826525434 3.0385204845633647
		-6.3220416560650534 0.46091846826525434 -3.7284384302807787
		-6.3220416560650534 -0.18698061211608846 -3.7284384302807787
		-6.3220416560650516 -0.18698061211608857 3.0385204845633647
		4.339006360391565 -0.18698061211608857 3.0385204845633647
		4.339006360391557 -0.18698061211608846 -3.7284384302807787
		4.339006360391557 0.46091846826525434 -3.7284384302807787
		4.339006360391565 0.46091846826525434 3.0385204845633647
		-6.3220416560650516 0.46091846826525434 3.0385204845633647
		-6.3220416560650534 0.46091846826525434 -3.7284384302807787
		4.339006360391557 0.46091846826525434 -3.7284384302807787
		4.339006360391557 -0.18698061211608846 -3.7284384302807787
		-6.3220416560650534 -0.18698061211608846 -3.7284384302807787
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "B96AB41F-47E3-DA5A-EAF4-5A94345318E8";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "BEFEC78C-44FE-95CF-F958-AEB20E14FC01";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "F774A0A2-49FC-F1A2-F26E-D89A207BB0EA";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "2C4E634B-4B5F-3E89-8D2E-93B4F882577A";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "A7C4F501-4E57-AA44-F554-208CA565E2FC";
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
	rename -uid "54FE13DC-4177-8E8D-1EEB-158AE30A081A";
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
	rename -uid "9B675E92-4CBC-14B7-F889-11AA4E063FF1";
	setAttr -l on ".v" no;
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "9FF76585-4BB9-726E-CBA3-B5860B93B437";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "95C48BAF-4546-5620-B930-7ABCAF70A4F6";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "83EBE3EC-4419-4CCF-933C-D0A8DF47679F";
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
	rename -uid "CD54EA43-4BA3-7AED-2B1C-A7AED8D0EBC2";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "1A162EE6-40A1-AAB4-8865-41BCF63FDF38";
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
	rename -uid "1D8238C0-41D6-8D23-B782-80AB1B861FC5";
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
	rename -uid "BCE88278-4DCF-8687-75DF-E38E916D502B";
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
	rename -uid "64290DF5-4056-CF9F-E280-91B4775D7C25";
	setAttr -l on ".it" no;
createNode transform -n "deleteThis";
	rename -uid "CF674A65-4BC3-9F71-7334-6EA71D6AFC1C";
createNode transform -n "ControllerGallery" -p "deleteThis";
	rename -uid "D145A5FC-4AC8-47A2-9990-17A05F924472";
	setAttr ".t" -type "double3" -0.66666666666666663 0 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "Circle" -p "ControllerGallery";
	rename -uid "17630C9D-4055-EFED-B81F-52916B621BCC";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "CircleShape" -p "Circle";
	rename -uid "CAD77B05-402D-DF90-124B-0188672795F6";
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
	rename -uid "24031CE8-4052-8CF6-9F9D-7DA7ED9FF5AE";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "HalfCircleShape" -p "HalfCircle";
	rename -uid "1F0D714D-4B5D-AECE-3AC5-AEBDDD48C5E3";
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
	rename -uid "2EB47E0E-4373-4CC7-E409-F8AE37561505";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "SquareShape" -p "Square";
	rename -uid "124C4846-4DE5-D66F-DBA6-D2A8854D45ED";
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
	rename -uid "C9BE0DF9-46D1-B84A-C7F5-249478B14488";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "TriangleShape" -p "Triangle";
	rename -uid "748D6359-44BC-E490-A124-30B4AF543490";
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
	rename -uid "DEF67535-4368-FF46-FBA3-CBB81AE5C0D7";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "SphereShape" -p "Sphere";
	rename -uid "2506D5E6-4EA7-F001-350E-9C80B0806376";
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
	rename -uid "F4B3988D-4278-DFB5-1CAC-1288AE29FDA6";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.75 ;
createNode nurbsCurve -n "HalfSphereShape" -p "HalfSphere";
	rename -uid "9633C428-4C22-71E6-5622-BFAC4C95F58B";
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
	rename -uid "FC7CB590-49C9-35A4-B6F7-929EC4C7ACF3";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "BoxShape" -p "Box";
	rename -uid "D1A5DCF8-42CE-41E3-3537-4B8638F1E7F8";
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
	rename -uid "F60002F5-4958-FE33-FB8C-8BA247EF6C4F";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "PyramidShape" -p "Pyramid";
	rename -uid "6A22A193-42F1-FA2D-5730-4F8C69CB206D";
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
	rename -uid "41072617-4E6C-8432-CAF9-C7AAF1D95D05";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "DiamondShape" -p "Diamond";
	rename -uid "78446C93-42EF-8E2E-F033-C9B10363F246";
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
	rename -uid "1EC79002-48B2-279E-E001-0DA40ACDC4ED";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "CirclePinShape" -p "CirclePin";
	rename -uid "3F1E9D82-4BC5-2526-B77E-1F9766D3EFBC";
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
	rename -uid "85837B6A-4A33-9470-FD73-5F99239E8D05";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "SquarePinShape" -p "SquarePin";
	rename -uid "526BC2D4-4E48-98CE-2FFB-D4B60870F745";
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
	rename -uid "E1C3BF41-47E4-8F45-EF28-5F91AA7A3254";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.625 ;
createNode nurbsCurve -n "SpherePinShape" -p "SpherePin";
	rename -uid "87BDC289-436B-A504-6F12-C3BD5128FD8E";
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
	rename -uid "2E810A98-4110-8B84-99E3-528D818702EF";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CircelDumbbellShape" -p "CircelDumbbell";
	rename -uid "32C61560-4907-14E1-95C3-44ADE28BCF3E";
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
	rename -uid "D940569E-40FB-60C9-D91F-DF8026EF3106";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "SquareDumbbellShape" -p "SquareDumbbell";
	rename -uid "BA44EC9B-47E8-108A-3409-24B417D382E1";
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
	rename -uid "F80FCA08-4124-E2DF-099B-FFA3820CD87E";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "SphereDumbbellShape" -p "SphereDumbbell";
	rename -uid "85CFFBCB-495E-B655-1FB1-49AD85665FA3";
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
		-8.916911424675947e-10 -0.082561943331595514 0.029920192787400969
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
		-4.0481931936239086e-10 -0.10922102321251677 0.013583483815066534
		-5.2412288259816474e-10 -0.10676788222748744 0.017586647115019005
		-6.3052085740391569e-10 -0.1037187125659369 0.021156770725576292
		-7.2139328355674765e-10 -0.10014858895537962 0.024205946352066212
		-7.9450267093958422e-10 -0.096145422672957448 0.02665908882833037
		-8.4804866352329104e-10 -0.091807790307491532 0.02845579717782263
		-8.8071292605118511e-10 -0.087242488134320992 0.02955182795364495
		-8.916911424675947e-10 -0.082561943331595514 0.029920192787400969
		-8.8071292605118511e-10 -0.077881398528870049 0.02955182795364495
		-8.4804866352329104e-10 -0.073316096355699509 0.028455797177822539
		-7.9450267093958422e-10 -0.068978463990233607 0.02665908882833037
		-7.2139328355674765e-10 -0.064975297707811408 0.024205946352066212
		-6.3052085740391569e-10 -0.061405174097254135 0.021156770725576292
		-5.2412288259816474e-10 -0.058356004435703629 0.017586647115019005
		-4.0481931936239086e-10 -0.055902857485734869 0.013583483815066534
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
	rename -uid "E2AC3E6D-4000-31CA-ACBD-EFA963E859B1";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CrossShape" -p "Cross";
	rename -uid "D669401B-475B-A2EA-8A40-38926561C360";
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
	rename -uid "486A1685-403B-C959-556A-A699758100BD";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "CrossThinShape" -p "CrossThin";
	rename -uid "49A94BF4-4279-33AC-02BD-AF8F82BE2A83";
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
	rename -uid "2977A7DC-4BC0-B450-B82E-DE9D4442F955";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.5 ;
createNode nurbsCurve -n "LocatorShape" -p "Locator";
	rename -uid "623298EA-4B03-6971-B957-C1B52A2BC2B0";
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
	rename -uid "AC986FF8-47D5-5533-37E8-7B9833E73B37";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsShape" -p "FourArrows";
	rename -uid "4A5D6EE3-4897-AF03-27A7-C9A7DA4826CB";
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
	rename -uid "40A80098-496D-7036-55D4-538C85ADE8F6";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsThinShape" -p "FourArrowsThin";
	rename -uid "DA9DC6FE-4091-2564-8AB2-8D8CFB9F5DFC";
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
	rename -uid "C424940D-406F-D35B-8054-12BC44CA4218";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsCurvedShape" -p "FourArrowsCurved";
	rename -uid "A7A6146A-4BB5-6A84-2B99-B8B0BA3DB777";
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
	rename -uid "870BAAB5-4780-A0CC-A584-B88A0122723F";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "FourArrowsCurvedThinShape" -p "FourArrowsCurvedThin";
	rename -uid "B5B378BF-41E6-89FB-6CC1-4AB0DDCC6F16";
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
	rename -uid "E5D9384C-4021-3800-85F5-418B162FBFFA";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "TwoArrowShape" -p "TwoArrow";
	rename -uid "BCC1361D-4ECD-7FBC-DDAC-59A6AD23B02C";
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
	rename -uid "C56C5C53-459B-8BDF-EAA3-9CABE70E16A6";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.375 ;
createNode nurbsCurve -n "TwoArrowsThinShape" -p "TwoArrowsThin";
	rename -uid "0FF554D4-410D-A3F5-1A96-08B94856A3C6";
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
	rename -uid "CF687835-4031-B7E7-F467-61A92A3F4512";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "TwoArrowsCurvedShape" -p "TwoArrowsCurved";
	rename -uid "80CE36EF-4B4A-4FA6-7E23-F7A09BFB9633";
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
	rename -uid "B2520592-4754-C7F4-972F-2CB7393A550C";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "TwoArrowsCurvedThinShape" -p "TwoArrowsCurvedThin";
	rename -uid "6AB93232-41BD-A5C9-8233-9FACE2A57B33";
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
	rename -uid "A25EC1C5-4E7C-25AB-5AA8-06A131BCA513";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "OneArrowShape" -p "OneArrow";
	rename -uid "C298B5C4-4567-6257-8135-D9884A396EAB";
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
	rename -uid "0A061969-49B2-E5BD-0B06-EA80E831C6B0";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "OneArrowThinShape" -p "OneArrowThin";
	rename -uid "B1EAF2D9-4D59-7AF8-C77A-A4BA02B2D99F";
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
	rename -uid "A82CA507-436A-CD64-B8B1-B8B157AB7D88";
	setAttr ".t" -type "double3" 0.25 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "CircleOneArrowsShape" -p "CircleOneArrows";
	rename -uid "93153BC3-4B44-D693-21C0-F18D8E5A3642";
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
	rename -uid "0FB79950-4AB3-C13E-62E4-F6BD5C96AFD4";
	setAttr ".t" -type "double3" 0.375 2.2204460492503131e-16 -0.25 ;
createNode nurbsCurve -n "CircleTwoArrowsShape" -p "CircleTwoArrows";
	rename -uid "860CFCCF-4E38-9B48-AF02-3694A0AC2858";
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
	rename -uid "6CD89902-4B96-3470-1813-A981DCF8596F";
	setAttr ".t" -type "double3" -0.25 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "CircleThreeArrowsShape" -p "CircleThreeArrows";
	rename -uid "7AB216C6-489B-92D4-0FC8-92B0A9CF0525";
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
	rename -uid "5DB2566D-4764-03FA-49CD-E19338916D06";
	setAttr ".t" -type "double3" -0.125 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "CircleFourArrowsShape" -p "CircleFourArrows";
	rename -uid "3B804BFA-4FAE-4692-B2EB-54AAAAA33026";
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
	rename -uid "F43653FA-43EA-4E88-4F78-3FA483AA4024";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "SphereFourArrowsShape" -p "SphereFourArrows";
	rename -uid "FDF87452-48B6-A0A4-7C07-30B10025541E";
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
	rename -uid "3FCB6CC8-41D6-44D0-C86B-D2B2D2B70069";
	setAttr ".t" -type "double3" 0.125 2.2204460492503131e-16 -0.125 ;
createNode nurbsCurve -n "GearShape" -p "Gear";
	rename -uid "B8C5D697-422E-B023-3CE7-66B74B23DCF5";
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
	rename -uid "241F01E2-457D-E935-20F1-14B898460C25";
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
createNode fosterParent -n "Card_Model_ProxyRNfosterParent1";
	rename -uid "6DA63626-4EE2-4DFD-4C47-83BA2844DA98";
createNode mesh -n "Card_Body_GeoShapeDeformed" -p "Card_Model_ProxyRNfosterParent1";
	rename -uid "1857F53F-452B-A223-D210-E2ADD5C71D10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "77E40CE2-4C64-C131-9C22-59A6E958CCD0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C07B4DC3-4F96-85F4-CD5D-86831624BE19";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DDE07D0B-4D5B-F2C4-A5C2-C5AC6F4E956B";
createNode displayLayerManager -n "layerManager";
	rename -uid "46A6952E-4A8D-BFBB-869D-8EBF0EA652AE";
createNode displayLayer -n "defaultLayer";
	rename -uid "CB09520B-461F-E38A-1352-B2BD0AF08D93";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9C9AFF1F-4C12-B411-2565-9E9B816BF15A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D16882B1-4B2C-B0BF-8187-C08079A7BBB5";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "475BFBB6-4957-2726-4CBC-98AA46B4EF16";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "38433277-424D-2B6A-08A7-E7BD8E20E56F";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4C7A07B7-405E-EFCE-91E1-4891A315D065";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2A3A27E3-4E23-F771-E7BF-6491FDE0EA92";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "22200391-4CD2-5D5A-F69E-A6A78CE23968";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BF1A6D4D-426D-7781-D470-B691DEF8A6E5";
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
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 746\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n"
		+ "\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C037B44E-43B4-3F0F-668F-EC9F4B90968D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 20 -ast 0 -aet 20 ";
	setAttr ".st" 6;
createNode reference -n "Card_Model_ProxyRN";
	rename -uid "21FC4282-412F-B366-1175-089006672270";
	setAttr -s 2 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Card_Model_ProxyRN"
		"Card_Model_ProxyRN" 0
		"Card_Model_ProxyRN" 15
		0 "|Card_Model_Proxy:geo" "|Group|Geometry" "-s -r "
		0 "|Card_Model_ProxyRNfosterParent1|Card_Body_GeoShapeDeformed" "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" 
		"-s -r "
		2 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo|Card_Model_Proxy:Card_Body_GeoShape" 
		"intermediateObject" " 1"
		2 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo|Card_Model_Proxy:Card_Body_GeoShape" 
		"vertexColorSource" " 2"
		5 3 "Card_Model_ProxyRN" "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo|Card_Model_Proxy:Card_Body_GeoShape.outMesh" 
		"Card_Model_ProxyRN.placeHolderList[1]" ""
		5 3 "Card_Model_ProxyRN" "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo|Card_Model_Proxy:Card_Body_GeoShape.worldMesh" 
		"Card_Model_ProxyRN.placeHolderList[2]" ""
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "translateX"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "translateY"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "translateZ"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "rotateX"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "rotateY"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "rotateZ"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "scaleX"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "scaleY"
		
		8 "|Group|Geometry|Card_Model_Proxy:geo|Card_Model_Proxy:Card_Body_Geo" "scaleZ";
lockNode -l 1 ;
createNode multiplyDivide -n "RootFat";
	rename -uid "FFF8DDE2-4ECB-4090-66AB-B8A7596B32FA";
createNode objectSet -n "ControlSet";
	rename -uid "B7AAA488-4DF6-6BD1-378A-8F8BE4DB2A5D";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "7C5E2C7D-4CA2-1D00-78C2-D0A5B87FCA14";
	setAttr ".ihi" 0;
createNode objectSet -n "AllSet";
	rename -uid "0116AF0F-4844-6EAA-83A6-0E9EF3906B86";
	setAttr ".ihi" 0;
	setAttr -s 47 ".dsm";
createNode objectSet -n "Sets";
	rename -uid "6DA1CF4B-4B17-5DDD-3288-74B3A22FD021";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "01BB195B-4D82-053D-2680-6EA8676F9BB6";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "3E569DE3-433B-832F-375B-739DF18127C1";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
createNode dagPose -n "bindPose1";
	rename -uid "86C6FF1F-4465-13D0-7CEF-528D90D1F9EA";
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
	setAttr -s 2 ".st";
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
	setAttr -s 5 ".s";
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
	setAttr -s 2 ".dsm";
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
select -ne :initialMaterialInfo;
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
connectAttr "Card_Model_ProxyRN.phl[1]" "skinCluster1.orggeom[0]";
connectAttr "Card_Model_ProxyRN.phl[2]" "skinCluster1.ip[0].ig";
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
connectAttr "skinCluster1.og[0]" "Card_Body_GeoShapeDeformed.i";
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
connectAttr "Card_Model_ProxyRNfosterParent1.msg" "Card_Model_ProxyRN.fp";
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
connectAttr "Card_Body_GeoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
// End of Card_Rig_wip_v001.ma
