//Maya ASCII 2025ff03 scene
//Name: Paper_Rig_Hi_v001.ma
//Last modified: Thu, Jan 15, 2026 01:22:58 AM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "ngst2SkinLayerData" -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.4.0";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "9B4AAB82-4FF6-5D50-8630-06848CD4169F";
createNode transform -s -n "persp";
	rename -uid "D98371A2-4F74-FFB4-06A3-48936B6F0E25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.921575113708556 70.163434062785157 34.425769008500922 ;
	setAttr ".r" -type "double3" -61.538352729725929 32.200000000002426 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "593444D8-4865-1D51-3120-72A59FACD32C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 86.160122290077894;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "678B981F-49D6-E203-A557-E2BD44779C31";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.3357815543189009 1000.2360824152387 -15.102858910772175 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4F9E7342-40BB-0070-8954-E7B1E737B361";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.90936316098339;
	setAttr ".ow" 21.105761285494797;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 0.3267192542552948 -16.496109962463379 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "84CD638A-432D-BF65-F0F6-E4ABD0E0E174";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "30AED9A6-4ED5-BFFB-51E1-EAAE5F6E6104";
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
	rename -uid "8FD937C7-4F1F-E110-769B-E69E64E5C731";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "813581A7-464A-8076-6A4C-FF9908D82645";
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
createNode transform -n "Paper";
	rename -uid "CBA0922B-4BE5-DBA5-63CC-DAA37E2FB493";
createNode transform -n "Group" -p "Paper";
	rename -uid "DA9C334C-4A08-8AF8-A700-9596C30228CD";
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
	rename -uid "EF097518-4DA4-DEF9-3B5D-B7AB48741844";
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
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	setAttr -l on ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k on ".visJointAxis" yes;
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "A03AA1AD-4125-79CF-180C-B396C5456522";
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
	rename -uid "7EF48A0A-4101-A90A-EF65-B49A719B7D96";
	addAttr -ci true -k true -sn "fat" -ln "fat" -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "body" -p "Root";
	rename -uid "DD310E23-4A53-EF7E-39E0-F28757E108C8";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "bodyEnd" -p "body";
	rename -uid "82D62218-4468-8755-81EE-D48C7CD72372";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "control" -ln "control" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.2251988952346213 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
	setAttr -k on ".noMirrorLeft" yes;
	setAttr -k on ".control" no;
createNode joint -n "paperMain4" -p "body";
	rename -uid "AFC963F5-486B-1609-0465-43AD592AFC2E";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain4End" -p "paperMain4";
	rename -uid "E99DF200-45A1-AE34-C4DA-79A25185A673";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 1.0502704561349708e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain7" -p "body";
	rename -uid "DEA1E74C-496B-A342-1A9A-B4BAB830EFF8";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain7End" -p "paperMain7";
	rename -uid "C1EC852A-4043-E5FB-A668-8A9C0D23103E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain5" -p "body";
	rename -uid "467CC030-459D-B916-59FF-AEB78AAB5F4F";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 180 -89.999999999999858 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 180 -90 0 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain5End" -p "paperMain5";
	rename -uid "7A15B93E-4A76-7675-5960-20922AECEA42";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 2.3108581768344011e-32 6.0185314349425189e-36 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167092985348933e-15 1.3994440598439473e-13 7.0167092985348949e-15 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain8" -p "body";
	rename -uid "D53A6F42-4BC0-AA67-BF7A-5E92646AB795";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 180 -89.999999999999872 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 180 -90 0 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain8End" -p "paperMain8";
	rename -uid "464ED62C-4FB1-FAE8-15BA-1C8E57A39B11";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 -3.9443045261050599e-31 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167092985348933e-15 1.3994440598439473e-13 7.0167092985348949e-15 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain6" -p "body";
	rename -uid "B8D71188-460B-BF15-9103-189440517BD2";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain6End" -p "paperMain6";
	rename -uid "0BB4D013-46E5-36D5-3F19-B0AB658E07F4";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 1.0502704561349708e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain9" -p "body";
	rename -uid "1128A835-49DC-F604-C963-09AD4AF52EAD";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain9End" -p "paperMain9";
	rename -uid "1AB9D184-4228-D35D-FC10-09BAEBB06B81";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain3" -p "body";
	rename -uid "E52AE160-4BFE-7A9C-CB4D-5DBF15F36E4A";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain3End" -p "paperMain3";
	rename -uid "263C9645-4C19-6E33-6D64-608328E77ADF";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain2" -p "body";
	rename -uid "5E06368E-4CB5-3369-2160-B1890374F428";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -180 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 180 -90 0 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain2End" -p "paperMain2";
	rename -uid "C9B85A7F-4E66-B83A-EB0A-F0A39E43F6BC";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.6125994476173107 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.016709298534876e-15 4.2964952914991028e-31 7.016709298534876e-15 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain1" -p "body";
	rename -uid "5A5CE506-4896-2A9E-6023-F389805D1E92";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "paperMain1End" -p "paperMain1";
	rename -uid "DC41E87F-4E9F-9364-B7F2-A5A339766329";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.59124970436096191 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "9C32C293-46BA-ECED-83E0-9BA0DCCC7FA3";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "FCAEBD72-4869-1B16-CC17-47AA1D9C5166";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "E2C51DDB-4058-3A2A-D3E1-B7AD3CE2031A";
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
	setAttr -l on ".height" 2.8962906536145144e-16;
	setAttr -l on ".version" 6.64;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "87FB5871-436E-12F3-3B7F-E096CA6853D0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.501731759999998 1.2553690079999999e-15 -20.501731759999998
		1.7753598779999999e-15 1.7753598779999999e-15 -28.993827110000002
		-20.501731759999998 1.2553690079999999e-15 -20.501731759999998
		-28.993827110000002 9.2034969599999998e-32 -1.5030451170000002e-15
		-20.501731759999998 -1.2553690079999999e-15 20.501731759999998
		-2.904331491e-15 -1.7753598779999999e-15 28.993827110000002
		20.501731759999998 -1.2553690079999999e-15 20.501731759999998
		28.993827110000002 -2.4210519970000007e-31 3.9538779649999998e-15
		20.501731759999998 1.2553690079999999e-15 -20.501731759999998
		1.7753598779999999e-15 1.7753598779999999e-15 -28.993827110000002
		-20.501731759999998 1.2553690079999999e-15 -20.501731759999998
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "886FEA8F-4FA0-B1F1-6F52-80BA0446D946";
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "C9D756BA-4308-D848-F3F5-20800621B3E5";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "AC3F726A-4923-8BF9-6C64-C9A8F45C1AE9";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "F59922E9-4336-DE64-34A4-ED89B2575F64";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "25894855-4F1A-AD9F-0C1B-D594607A9E91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -1.1754174019999999e-12 -1.1754174019999999e-12
		0 1.8965091980000001e-28 -1.66229129e-12
		0 1.1754174019999999e-12 -1.1754174019999999e-12
		-6.6613381210000003e-28 1.66229129e-12 -5.1811627360000006e-28
		0 1.1754174019999999e-12 1.1754174019999999e-12
		0 5.5974963090000002e-28 1.66229129e-12
		0 -1.1754174019999999e-12 1.1754174019999999e-12
		6.6613381210000003e-28 -1.66229129e-12 8.9281653690000009e-28
		0 -1.1754174019999999e-12 -1.1754174019999999e-12
		0 1.8965091980000001e-28 -1.66229129e-12
		0 1.1754174019999999e-12 -1.1754174019999999e-12
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "B9221115-41A4-E137-A9B2-2388CCD42C62";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetbody_M" -p "FKXRoot_M";
	rename -uid "ED96AF43-4F73-9682-D4DC-5EBD1B6D5D0D";
createNode transform -n "FKExtrabody_M" -p "FKOffsetbody_M";
	rename -uid "0CD91B45-45B6-8D2A-2FB7-87A57BBE9B27";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKbody_M" -p "FKExtrabody_M";
	rename -uid "B83353F2-4A3C-2AEC-1FA1-44A2599F7FEC";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKbody_MShape" -p "FKbody_M";
	rename -uid "23C2F2ED-42A4-D065-836A-C0B6CF03A3D9";
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
		15.45667705 1.441712301e-15 -20.981142429999998
		-1.5857377909999999e-15 1.0177503740000003e-31 -18.86672639
		-15.45667705 -1.441712301e-15 -20.981142429999998
		-13.84813303 -1.0083788449999999e-14 -5.8805324700000005e-15
		-15.45667705 -1.441712301e-15 20.981142429999998
		-4.6802625990000001e-15 -4.0710014950000003e-31 18.86672639
		15.45667705 1.441712301e-15 20.981142429999998
		13.84813303 1.0083788449999999e-14 1.0133317870000001e-14
		15.45667705 1.441712301e-15 -20.981142429999998
		-1.5857377909999999e-15 1.0177503740000003e-31 -18.86672639
		-15.45667705 -1.441712301e-15 -20.981142429999998
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXbody_M" -p "FKbody_M";
	rename -uid "BCF3F049-4DEA-3F5B-C40C-58BB2BD81B62";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetpaperMain4_R" -p "FKXbody_M";
	rename -uid "968A1D79-4A63-7EF3-C880-52976F036EC5";
createNode transform -n "FKExtrapaperMain4_R" -p "FKOffsetpaperMain4_R";
	rename -uid "41DCF888-493A-DAC3-6D6D-3AA6612148FD";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain4_R" -p "FKExtrapaperMain4_R";
	rename -uid "1F1A6133-4EC0-CACA-0E80-F5A7EB9CD6F2";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain4_R" -p "FKpaperMain4_R";
	rename -uid "BACA0934-458F-E38B-22BA-8D9D7AF18FE7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain4_RShape" -p "FKpaperMain4_R";
	rename -uid "762B7C24-4888-1DC1-FB99-62A938C7B067";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain4_R_pointConstraint1" -p "FKOffsetpaperMain4_R";
	rename -uid "9D78257E-4EC6-8E0E-252D-63A6B65CBE4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain4_RW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain7_R" -p "FKXbody_M";
	rename -uid "0420C6C4-4AC1-3084-AB90-C895746AB586";
createNode transform -n "FKExtrapaperMain7_R" -p "FKOffsetpaperMain7_R";
	rename -uid "560D1883-41F4-B8D6-CD6D-5889B77B8195";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain7_R" -p "FKExtrapaperMain7_R";
	rename -uid "7D6EDC36-4EA1-55B4-0E62-00B7A9FB5036";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain7_R" -p "FKpaperMain7_R";
	rename -uid "AA64A709-438C-C2EC-5733-C5BD1BB6869A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain7_RShape" -p "FKpaperMain7_R";
	rename -uid "0A02B63B-4699-20BE-943C-C680A8709121";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain7_R_pointConstraint1" -p "FKOffsetpaperMain7_R";
	rename -uid "A7EF2315-44F7-8782-9D13-A8A5E66D3AE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain7_RW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain5_M" -p "FKXbody_M";
	rename -uid "2CA29A5C-448E-4403-98B3-D5ACE4E0E4D7";
	setAttr ".r" -type "double3" -2.2599200246016849e-29 -3.0957052049488591e-06 5.0089563161030858e-06 ;
createNode transform -n "FKExtrapaperMain5_M" -p "FKOffsetpaperMain5_M";
	rename -uid "07261434-46BF-916B-4D45-ECBF5422790E";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain5_M" -p "FKExtrapaperMain5_M";
	rename -uid "6B64EE81-4FE8-BB76-84B1-9C87EFD3AC7A";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain5_M" -p "FKpaperMain5_M";
	rename -uid "6326EA35-4F5A-6F6B-D4EC-72AEEE8FBBC7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain5_MShape" -p "FKpaperMain5_M";
	rename -uid "9B3658BF-4114-091C-D71E-D59716145700";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		;
createNode pointConstraint -n "FKOffsetpaperMain5_M_pointConstraint1" -p "FKOffsetpaperMain5_M";
	rename -uid "978AA9E0-4514-FC8A-A7FD-2D967D52F9CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain5_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 0 -1.2037062152420179e-35 0 ;
	setAttr ".rst" -type "double3" 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain8_M" -p "FKXbody_M";
	rename -uid "EF9DE9FE-4FB3-D456-2918-06B836625D4A";
	setAttr ".r" -type "double3" -2.2599200246016849e-29 -3.0957052049488591e-06 5.0089563161030858e-06 ;
createNode transform -n "FKExtrapaperMain8_M" -p "FKOffsetpaperMain8_M";
	rename -uid "8271AAAA-4651-358A-7E24-AB844C052C2F";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain8_M" -p "FKExtrapaperMain8_M";
	rename -uid "D971C66C-4C3A-AB28-9456-828C1AC10F99";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain8_M" -p "FKpaperMain8_M";
	rename -uid "4211C808-4944-0830-A0A7-14B79C7AC863";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain8_MShape" -p "FKpaperMain8_M";
	rename -uid "A0732698-4086-A705-1650-52842FF73EC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		;
createNode pointConstraint -n "FKOffsetpaperMain8_M_pointConstraint1" -p "FKOffsetpaperMain8_M";
	rename -uid "EBBDF6A6-4EC9-4B7A-A2C2-B681168C1D96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain8_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0587911840678754e-22 1.015230983512846e-29 0 ;
	setAttr ".rst" -type "double3" 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain6_L" -p "FKXbody_M";
	rename -uid "CE325388-45CC-5593-A234-D39DA87C9651";
createNode transform -n "FKExtrapaperMain6_L" -p "FKOffsetpaperMain6_L";
	rename -uid "0F9F89E3-4A1A-A112-BFB0-9CA105937F65";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain6_L" -p "FKExtrapaperMain6_L";
	rename -uid "58E2F0AA-4863-6298-A4AC-D7B22E2B05E6";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain6_L" -p "FKpaperMain6_L";
	rename -uid "709ED143-4CF8-F8EA-95A3-75BF8C78A739";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain6_LShape" -p "FKpaperMain6_L";
	rename -uid "FB410D65-4806-2437-E4F6-4F8587899C49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain6_L_pointConstraint1" -p "FKOffsetpaperMain6_L";
	rename -uid "5D0949B2-4392-B737-3498-46B72FD7864D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain6_LW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain9_L" -p "FKXbody_M";
	rename -uid "E9137740-4F46-85E4-8420-EA8AC0427AAD";
createNode transform -n "FKExtrapaperMain9_L" -p "FKOffsetpaperMain9_L";
	rename -uid "475FF7CC-4435-41DE-4B44-E99A55643BE4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain9_L" -p "FKExtrapaperMain9_L";
	rename -uid "3891EE02-44FE-64BC-8F5A-BCB25E6F577F";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain9_L" -p "FKpaperMain9_L";
	rename -uid "33A55EE0-4C89-D053-D6BC-7491A70FB190";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain9_LShape" -p "FKpaperMain9_L";
	rename -uid "995E4A80-4E85-DAA8-E36D-8B8203DEE95F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain9_L_pointConstraint1" -p "FKOffsetpaperMain9_L";
	rename -uid "94A9AEA9-4EB9-6AF7-96C4-DE8428DC5F00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain9_LW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain3_L" -p "FKXbody_M";
	rename -uid "DC6D9197-43DC-3C21-020C-75AB3873D070";
createNode transform -n "FKExtrapaperMain3_L" -p "FKOffsetpaperMain3_L";
	rename -uid "AE1BFCAF-4843-6E5E-A772-7AAD8D23048A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain3_L" -p "FKExtrapaperMain3_L";
	rename -uid "56B2329D-4690-8F93-F8E1-A9B26FB7BC42";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain3_L" -p "FKpaperMain3_L";
	rename -uid "5B3DBF08-43B7-6B31-51CD-A59FF744E539";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain3_LShape" -p "FKpaperMain3_L";
	rename -uid "61C85B64-4366-2108-CA18-F7AA1A44767F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain3_L_pointConstraint1" -p "FKOffsetpaperMain3_L";
	rename -uid "CEAD8A38-4FE6-5A26-C61C-A7A4DFA88936";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain3_LW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain2_M" -p "FKXbody_M";
	rename -uid "B04873AA-489E-07EE-2043-66AAF0E4D0C0";
	setAttr ".r" -type "double3" 4.7203329272781614e-13 -3.0957052558377355e-06 5.0089563161030858e-06 ;
createNode transform -n "FKExtrapaperMain2_M" -p "FKOffsetpaperMain2_M";
	rename -uid "D08AB2A7-4865-448F-79CA-7B9D5E45C68B";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain2_M" -p "FKExtrapaperMain2_M";
	rename -uid "42CC1649-49C2-5885-4072-458B691A8A96";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain2_M" -p "FKpaperMain2_M";
	rename -uid "6872141A-4542-C426-B2F6-67821161BF62";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain2_MShape" -p "FKpaperMain2_M";
	rename -uid "576079C8-4756-377C-8FA8-CA90C3286B8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 -3.2635183332042739
		-3.263518333204277 1.1383567439828566 3.2635183332042739
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		3.2635183332042739 1.1383567439828566 3.2635183332042739
		3.2635183332042739 1.1383567439828566 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 3.2635183332042721
		-3.2635183332042739 -1.1383567439828601 -3.2635183332042739
		;
createNode pointConstraint -n "FKOffsetpaperMain2_M_pointConstraint1" -p "FKOffsetpaperMain2_M";
	rename -uid "D89AD563-4F96-2457-B32C-78BC239F97B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -1.0587911840678754e-22 -8.3601838736275354e-30 0 ;
	setAttr ".rst" -type "double3" 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetpaperMain1_R" -p "FKXbody_M";
	rename -uid "1E3909CD-4E50-8083-D8CB-2A9DD14F55D8";
createNode transform -n "FKExtrapaperMain1_R" -p "FKOffsetpaperMain1_R";
	rename -uid "14EA5B6F-4CB7-C3F1-9A4B-2BB51CD687C4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKpaperMain1_R" -p "FKExtrapaperMain1_R";
	rename -uid "B27CD475-42DC-A90E-A0CF-4DB203A85040";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXpaperMain1_R" -p "FKpaperMain1_R";
	rename -uid "6254E407-457A-4D6C-C26F-CB9C7D18DAEF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKpaperMain1_RShape" -p "FKpaperMain1_R";
	rename -uid "F6EDFA6A-4E2F-1595-91E0-0584CC433FFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042739 -1.1383567439828592 3.2635183332042721
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 3.2635183332042721
		-3.2635183332042739 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 1.1383567439828572 -3.2635183332042796
		3.2635183332042721 -1.1383567439828572 -3.2635183332042796
		-3.2635183332042739 -1.1383567439828572 -3.2635183332042796
		;
createNode pointConstraint -n "FKOffsetpaperMain1_R_pointConstraint1" -p "FKOffsetpaperMain1_R";
	rename -uid "EB9B8E29-4707-11D6-4EDE-068F5F51761A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2paperMain1_RW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1paperMain4_R" -p "FKXbody_M";
	rename -uid "37AF087C-4E35-338F-7E9B-DE96F633BBBC";
createNode transform -n "FKPS2paperMain4_R" -p "FKPS1paperMain4_R";
	rename -uid "54776E6A-4E43-C2A5-63A6-31B14AC5BBB8";
	setAttr ".t" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
createNode scaleConstraint -n "FKPS1paperMain4_R_scaleConstraint1" -p "FKPS1paperMain4_R";
	rename -uid "D650AFA7-4EAA-DB34-A1D4-B8AADC142FF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain7_R" -p "FKXbody_M";
	rename -uid "5DEEF45E-44F2-E12D-E3F3-19BA9D8FCD6F";
createNode transform -n "FKPS2paperMain7_R" -p "FKPS1paperMain7_R";
	rename -uid "F37848B4-4810-944D-F4DB-C882D1D84A96";
	setAttr ".t" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
createNode scaleConstraint -n "FKPS1paperMain7_R_scaleConstraint1" -p "FKPS1paperMain7_R";
	rename -uid "89BA098A-43E2-60DB-4096-008C927F4CD1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain5_M" -p "FKXbody_M";
	rename -uid "771B4C37-4483-5C72-D359-D4BE521AB3B2";
createNode transform -n "FKPS2paperMain5_M" -p "FKPS1paperMain5_M";
	rename -uid "B88C364F-4EF4-0CC1-FEF1-BEB71938FBAC";
	setAttr ".t" -type "double3" 6.6435745793569377e-13 2.2760035639264417e-36 -6.0185310762101134e-36 ;
	setAttr ".r" -type "double3" 0 -3.09570520494886e-06 5.0089563161030858e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1paperMain5_M_scaleConstraint1" -p "FKPS1paperMain5_M";
	rename -uid "C92B0A27-4514-FFDC-5770-E68A1C48D82E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain8_M" -p "FKXbody_M";
	rename -uid "12614BE7-40D0-DC89-99A7-B4BF3A6221CD";
createNode transform -n "FKPS2paperMain8_M" -p "FKPS1paperMain8_M";
	rename -uid "E66FA6D6-4D99-983D-3B56-B0B9F5D04ABE";
	setAttr ".t" -type "double3" 6.6435745782981456e-13 2.4694646484077292e-30 16.555000305175781 ;
	setAttr ".r" -type "double3" 0 -3.09570520494886e-06 5.0089563161030858e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1paperMain8_M_scaleConstraint1" -p "FKPS1paperMain8_M";
	rename -uid "5B6FD614-439D-0318-357F-B5A72688A2A9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain6_L" -p "FKXbody_M";
	rename -uid "24E7E759-42EA-48DF-4CBE-9998B546346F";
createNode transform -n "FKPS2paperMain6_L" -p "FKPS1paperMain6_L";
	rename -uid "893D6341-4FE7-F6B8-2B88-97AD68BBAF9D";
	setAttr ".t" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
createNode scaleConstraint -n "FKPS1paperMain6_L_scaleConstraint1" -p "FKPS1paperMain6_L";
	rename -uid "9B7C8A20-4850-D224-0869-60ABD2083602";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain9_L" -p "FKXbody_M";
	rename -uid "7A85D943-42D0-DF60-BC4C-EE96A5400B28";
createNode transform -n "FKPS2paperMain9_L" -p "FKPS1paperMain9_L";
	rename -uid "A4E3D10A-4838-8FE8-AC4E-9D8052D13D7E";
	setAttr ".t" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
createNode scaleConstraint -n "FKPS1paperMain9_L_scaleConstraint1" -p "FKPS1paperMain9_L";
	rename -uid "28665C61-478C-1D40-307C-6D856CDDB838";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain3_L" -p "FKXbody_M";
	rename -uid "D80C35AB-4E64-25B3-ECBF-258FD83B07DE";
createNode transform -n "FKPS2paperMain3_L" -p "FKPS1paperMain3_L";
	rename -uid "3E824562-4B2C-50D7-FA92-CEB4FEF5A87D";
	setAttr ".t" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
createNode scaleConstraint -n "FKPS1paperMain3_L_scaleConstraint1" -p "FKPS1paperMain3_L";
	rename -uid "86B885ED-4D27-D13A-A56A-038996141273";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain2_M" -p "FKXbody_M";
	rename -uid "DA61043E-43AF-FFDE-0793-7988968393CF";
createNode transform -n "FKPS2paperMain2_M" -p "FKPS1paperMain2_M";
	rename -uid "DDCF374E-4FBE-A532-539A-778325A69785";
	setAttr ".t" -type "double3" 6.6435745804157279e-13 -1.6883365093444844e-29 -16.555000305175781 ;
	setAttr ".r" -type "double3" -2.2599200246016849e-29 -3.0957052558377363e-06 5.0089563161030858e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1paperMain2_M_scaleConstraint1" -p "FKPS1paperMain2_M";
	rename -uid "8A5FD7B2-494F-A77C-B2F6-5C87D17E0EF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1paperMain1_R" -p "FKXbody_M";
	rename -uid "C68A618F-4B76-C35B-6DC1-52A55ACEE48A";
createNode transform -n "FKPS2paperMain1_R" -p "FKPS1paperMain1_R";
	rename -uid "07562E9E-4893-0EDE-E51F-F4A5B1698011";
	setAttr ".t" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
createNode scaleConstraint -n "FKPS1paperMain1_R_scaleConstraint1" -p "FKPS1paperMain1_R";
	rename -uid "37813873-4A01-7B81-1363-719B93867D4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKbody_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetbody_M_pointConstraint1" -p "FKOffsetbody_M";
	rename -uid "BAF4FB93-41C4-5905-B53D-82B3AD393C2E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2body_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKPS1body_M" -p "FKXRoot_M";
	rename -uid "59EB0431-41EE-63D7-4D2B-9C9F7CC0FF12";
createNode transform -n "FKPS2body_M" -p "FKPS1body_M";
	rename -uid "AC9D6017-4FB8-F0FD-26C4-E59DA513E9BF";
createNode scaleConstraint -n "FKPS1body_M_scaleConstraint1" -p "FKPS1body_M";
	rename -uid "F8A172C6-4F81-EEFA-B483-039A037F4F65";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKRoot_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKHSRoot_M" -p "FKRoot_M";
	rename -uid "50F758BE-403D-A2BA-BF1D-E69AE9AA833A";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "B8D3A07F-498A-2734-FA01-999F0FBA991F";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "2841EDDC-404A-B44D-021C-53ACCD398BC2";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "441453D1-40CD-6734-051A-5B95E933C432";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "019A8831-48D0-9172-9D47-E5BBA1804239";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "2FF41EC2-4D4F-2472-5E6B-52AAB880776C";
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
	rename -uid "6730AADB-4A69-E703-2506-BCAAA455F6C3";
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
	rename -uid "D8353939-4973-A1F8-93AE-A59F2DAED680";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "1BFDD01C-4EEE-CCD5-36A2-CCB2572DEA96";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "7C881038-4DE5-CE71-4FD6-23BAE09BA3B5";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "B65D99C6-4AAA-22D8-25E3-D19A27C3076D";
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
	rename -uid "4B8C3D59-44F8-9C35-A9A5-8FB6C61A2FEB";
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
	rename -uid "7ED90B70-410F-C1C5-80E9-C4B89ACCD54E";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "2739A22E-40C3-DC2D-3499-1EA3D249722E";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "32FDDBA5-48A0-1EB1-AB55-D088A3758410";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "5499C46B-49A0-241C-7D68-35BB4B3F5DFD";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "14F7E872-4196-2727-5EC8-A5A84E71925B";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "813790E3-434E-5968-B8D7-BB9B0FE1313F";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "2EEAA148-4E93-5381-70B3-4C8829E5CF65";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "7339036E-47AD-C595-7725-75B176278460";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "6A7151A4-4501-372E-7A50-87974F942942";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "F5A9136F-4E7C-76F0-4ECE-8A9CB84C2C73";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "C7126077-4595-CBD2-D7D7-6BA918835ED9";
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
	rename -uid "6CE5B3AF-4B18-E43C-A2EB-29BE7A29F117";
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
	rename -uid "F0122076-4C21-99A1-DC8E-1BBDAF95D4D9";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "84EF2201-4872-5343-8539-B98E77B8B07D";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "83FA9731-4DAF-1BBA-A11F-C38F9C5BB848";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "202D8F9B-4F9A-281C-EEF3-0BB0FA773DBA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 39 0 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		-2.4513724380000004e-26 0 0
		-2.0480416099999999e-19 0 -1.696802164e-12
		-1.648220444e-13 0 -1.6968022009999998e-12
		-1.648220444e-13 0 -1.9358045630000001e-12
		-4.5997192379999995e-13 0 -1.9358045630000001e-12
		0 0 -2.3957751699999999e-12
		4.5997192379999995e-13 0 -1.9358045630000001e-12
		1.648220444e-13 0 -1.9358045630000001e-12
		1.648220444e-13 0 -1.6968022009999998e-12
		2.0480415609999998e-19 0 -1.696802239e-12
		0 0 0
		1.6968016400000001e-12 0 8.6040363320000003e-23
		1.696801872e-12 0 -1.6482283609999999e-13
		1.9358055499999999e-12 0 -1.6482283609999999e-13
		1.9358055499999999e-12 0 -4.5997069000000002e-13
		2.3957748410000003e-12 0 1.0639379020000001e-27
		1.9358055499999999e-12 0 4.5997069000000002e-13
		1.9358055499999999e-12 0 1.6482283609999999e-13
		1.696801872e-12 0 1.6482283609999999e-13
		1.6968021040000001e-12 0 -8.6040362130000016e-23
		0 0 0
		-6.2891119409999996e-19 0 1.69680217e-12
		1.648220444e-13 0 1.6968022009999998e-12
		1.648220444e-13 0 1.9358045630000001e-12
		4.5997192379999995e-13 0 1.9358045630000001e-12
		0 0 2.3957751699999999e-12
		-4.5997192379999995e-13 0 1.9358045630000001e-12
		-1.648220444e-13 0 1.9358045630000001e-12
		-1.648220444e-13 0 1.6968022009999998e-12
		6.2891119900000003e-19 0 1.6968022320000001e-12
		0 0 0
		-1.696801502e-12 0 -8.0926650800000005e-24
		-1.696801872e-12 0 1.6482283609999999e-13
		-1.9358055499999999e-12 0 1.6482283609999999e-13
		-1.9358055499999999e-12 0 4.5997069000000002e-13
		-2.3957748410000003e-12 0 0
		-1.9358055499999999e-12 0 -4.5997069000000002e-13
		-1.9358055499999999e-12 0 -1.6482283609999999e-13
		-1.696801872e-12 0 -1.6482283609999999e-13
		-1.6968022419999999e-12 0 8.0926650800000005e-24
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "EC6D6ACD-4CAC-6938-FA49-79A8D0C41946";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "A973A027-4FF5-9CB9-EB7A-14BF5BD22862";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "A6B7EA9D-451D-63A2-0658-D395B210811E";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "8D1B5807-408E-4C25-C347-15B9CFD7D65F";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "A0198626-4C0B-4963-74D6-E1BA04832BE1";
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
	rename -uid "68C98BCF-49FB-7D20-606B-FFBC7A6B8215";
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
	rename -uid "906686DD-4510-53B6-A9AB-29871DD8EF63";
	setAttr -l on ".v" no;
createNode pointConstraint -n "paperMain4_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "DA6799C0-4B9B-8913-39D6-2CBF42D5F42B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
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
	setAttr ".rst" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain4_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "1C95CA3C-47C1-5DCE-AD0D-A2BAF43CFB82";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 ;
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
createNode pointConstraint -n "paperMain7_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "4BC28FF3-4E7B-C5E6-4499-AFA4F40BC66D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain7_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
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
	setAttr ".rst" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain7_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "5C6E9F78-4284-1B00-136D-D9AE1529CF3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain7_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824219 2.4218443784488122e-22 16.555000305175781 ;
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
createNode pointConstraint -n "paperMain5_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "F7C89FE2-4A73-08E2-896A-AD9460594CB0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain5_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.0957052113099499e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain5_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "92D0848A-434D-FF1B-B277-058AABFC627B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain5_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.0957052113099499e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.9999999999998 -89.999999408772965 0 ;
	setAttr ".rsrr" -type "double3" -179.9999999999998 -89.999999408772965 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "paperMain8_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "F7645F5C-45FA-24E8-A06A-4BB58089709B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain8_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.0957052113099499e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain8_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "5DE249E9-46A6-D1CE-8484-9BBE1938872F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain8_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.0957052113099499e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.9999999999998 -89.999999408772965 0 ;
	setAttr ".rsrr" -type "double3" -179.9999999999998 -89.999999408772965 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "paperMain6_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "5C6603E2-4811-D7F1-071F-2495309540BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain6_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
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
	setAttr ".rst" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain6_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "DB93576E-4CBA-6EF4-8EE6-B68DB6A3AC94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain6_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 ;
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
createNode pointConstraint -n "paperMain9_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "D258F521-451E-30D0-EE9C-8BB6B2523087";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain9_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
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
	setAttr ".rst" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain9_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "1DF53FD6-47C3-84E1-5016-B0B0ECE4182F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain9_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 ;
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
createNode pointConstraint -n "paperMain3_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "8A90F41D-4907-C3CE-3CC7-8D828F7A44EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
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
	setAttr ".rst" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain3_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "61F556AE-4FE6-C36F-DF76-F3B7F0DAECBB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 ;
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
createNode pointConstraint -n "paperMain2_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "71B89D09-49F1-D19A-D84B-7490C750EE6B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain2_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.2599200246016849e-29 -3.095705262198825e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain2_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "0EF56307-4A6A-DF78-300F-AE96DCFD158D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain2_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.2599200246016849e-29 -3.095705262198825e-06 5.0089563275141273e-06 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.9999999999998 -89.999999408772908 0 ;
	setAttr ".rsrr" -type "double3" -179.9999999999998 -89.999999408772908 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "paperMain1_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "5C26A503-40D5-F4C3-6FBA-64A58DA8C6C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
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
	setAttr ".rst" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "paperMain1_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "26D3A19A-44A9-244E-3837-DA8A2F8977FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXpaperMain1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 ;
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
createNode pointConstraint -n "body_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "11F86560-43CF-D599-BA1E-B39C1B1CA324";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXbody_MW0" -dv 1 -min 0 -at "double";
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
createNode orientConstraint -n "body_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "4D60365A-45C1-1629-A9C9-5C9134203475";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXbody_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "FB743B48-4D21-A788-DF26-DFB3A7C28D42";
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
	rename -uid "A27391BB-4F67-D377-8134-2F918487EB8F";
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
	rename -uid "BE00F965-44ED-9891-41AB-19BC1147C8CA";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "CFC7E647-4922-63A1-248E-A5BBE3EFB31C";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "65C9BE10-420A-F179-5F8B-9489960426EC";
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
	setAttr ".udAttr" -type "string" (
		"xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtrabody_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKbody_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain4_R;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain4_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain7_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain7_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain5_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain5_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain8_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain8_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain6_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain6_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain9_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain9_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKpaperMain2_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtrapaperMain2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;");
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "07F48118-4543-7112-34B8-8B99AF9B2E7E";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "AC094429-4A51-D2F7-4BF8-839EC360CB24";
	addAttr -ci true -sn "fat" -ln "fat" -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "body_M" -p "Root_M";
	rename -uid "383CBD24-466E-A4D3-2FA8-6EAFBE236EAA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "paperMain4_R" -p "body_M";
	rename -uid "884C269B-41F3-833F-1BCB-E5BC6BF3F22D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 1;
createNode joint -n "paperMain4End_R" -p "paperMain4_R";
	rename -uid "757059ED-49F5-4523-4C90-8284D3A0DA0E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.3649988174438477 0 1.0502704561349708e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "paperMain7_R" -p "body_M";
	rename -uid "C3F298D5-4F35-AD73-D7BB-519821657F35";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824219 2.4218443784488122e-22 16.555000305175781 1;
createNode joint -n "paperMain7End_R" -p "paperMain7_R";
	rename -uid "5ABD7352-4D1D-CD47-7905-E196BC5C0322";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "paperMain5_M" -p "body_M";
	rename -uid "D181CA3D-42D2-357B-EC99-2F82308305D3";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180.00000500895632 -90.000002504478161 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999467 8.7422780003724719e-08 5.4030248608505387e-08 0
		 -8.7422780003724851e-08 0.99999999999999623 -1.461928852036464e-16 0 -5.4030248608505188e-08 -4.5772816524442814e-15 0.99999999999999856 0
		 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 1;
createNode joint -n "paperMain5End_L" -p "paperMain5_M";
	rename -uid "E7337363-4952-4CAA-58E1-37BAF498B0A5";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 -2.896288231769884e-16 5.7764875087423393e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167096047110005e-15 1.3994440598439473e-13 7.0167096047110005e-15 ;
createNode joint -n "paperMain8_M" -p "body_M";
	rename -uid "587097FC-4287-0A2C-A8B0-84B6A8F9D96D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180.00000500895632 -90.000002504478161 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999467 8.7422780003724719e-08 5.4030248608505387e-08 0
		 -8.7422780003724851e-08 0.99999999999999623 -1.461928852036464e-16 0 -5.4030248608505188e-08 -4.5772816524442814e-15 0.99999999999999856 0
		 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 1;
createNode joint -n "paperMain8End_L" -p "paperMain8_M";
	rename -uid "C382B691-4D86-EB93-B518-75852AF0C536";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 -2.8962882317698879e-16 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167096047110005e-15 1.3994440598439473e-13 7.0167096047110005e-15 ;
createNode joint -n "paperMain6_L" -p "body_M";
	rename -uid "41075182-49AD-DEB3-7740-2FA1B2282A10";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 1;
createNode joint -n "paperMain6End_L" -p "paperMain6_L";
	rename -uid "E3E2502C-4EFD-3153-56EE-CBA0D29D3500";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 1.0502704561349708e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "paperMain9_L" -p "body_M";
	rename -uid "9214EF83-4D9C-84E3-9994-06B4F8B6A402";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 1;
createNode joint -n "paperMain9End_L" -p "paperMain9_L";
	rename -uid "1911F119-4A7D-2AB4-47D2-ECA83DF3297F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "paperMain3_L" -p "body_M";
	rename -uid "1487C70C-4099-F569-9F55-5C9138C14449";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 1;
createNode joint -n "paperMain3End_L" -p "paperMain3_L";
	rename -uid "F7125FBC-4A35-8812-15EA-E9845345E73C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "paperMain2_M" -p "body_M";
	rename -uid "DB4CBF1C-4DFE-70BD-F787-56BB2ED7B2D7";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180.00000500895632 -90.000002504478161 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999467 8.7422780003724719e-08 5.4030249496683806e-08 0
		 -8.7422780003724851e-08 0.99999999999999623 -1.4619287770504624e-16 0 -5.4030249496683608e-08 -4.5772817375899082e-15 0.99999999999999856 0
		 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 1;
createNode joint -n "paperMain2End_L" -p "paperMain2_M";
	rename -uid "19608486-49F4-777E-9D05-EEA2A1ECC4EC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 -2.8962882317698835e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.0167096047110005e-15 4.2964952186169706e-31 7.0167096047110005e-15 ;
createNode joint -n "paperMain1_R" -p "body_M";
	rename -uid "6DC08383-4D0B-AB59-02A5-1A839E3A6190";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 1;
createNode joint -n "paperMain1End_R" -p "paperMain1_R";
	rename -uid "C7CE0CE6-48D3-23EF-077B-BFB6025C8447";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.59124970436096191 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 2.3649988174438477 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "bodyEnd_L" -p "body_M";
	rename -uid "C28A34A4-4996-CBAB-5DA1-0C8A454FAE7C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.6125994476173107 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" -3.2251988952346213 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 0 ;
createNode transform -n "Geometry" -p "Group";
	rename -uid "B0F27A55-4EC4-54BF-6077-D287F1A054FB";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "F84B3E7C-42CE-AAB4-E81D-ED9058BD8DEB";
createNode transform -n "PaperCard_Geo" -p "geo";
	rename -uid "3F49C02F-4FA7-0282-BFA6-CE8B1B1C18FC";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.32671924466452618 -16.278517773334656 ;
	setAttr ".sp" -type "double3" 0 0.32671924466452618 -16.278517773334656 ;
createNode mesh -n "PaperCard_GeoShape" -p "PaperCard_Geo";
	rename -uid "4DC8E724-4D42-AF56-C2F6-7E85EBDF0648";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:935]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35321648482931778 0.99800795316696167 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1152 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.70502573 0.99800795 0.67969811
		 0.99800795 0.026734842 0.99800795 0.0014072371 0.99800795 0.046441488 0.99800795
		 0.071769089 0.99800795 0.0014072371 0.99800795 0.0014072371 0.99800795 0.02673484
		 0.99800795 0.67969811 0.99800795 0.046441484 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.0014072371 0.99800795 0.70502573 0.99800795 0.63466388 0.99800795 0.071769089
		 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.63466388 0.99800795 0.70502573
		 0.99800795 0.70502573 0.99800795 0.63466388 0.99800795 0.6599915 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.071769089
		 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573
		 0.99800795 0.67969811 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915
		 0.99800795 0.026734842 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.02673484 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.046441488 0.99800795
		 0.70502573 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.026734842 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.02673484 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.026734842 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.02673484 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795
		 0.6599915 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.70502573 0.99800795 0.67969811 0.99800795 0.046441484 0.99800795
		 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.6599915 0.99800795 0.026734842 0.99800795 0.63466388 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.02673484 0.99800795 0.6599915 0.99800795 0.67969811
		 0.99800795 0.046441488 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795
		 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795 0.046441488
		 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795
		 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.67969811 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915 0.99800795
		 0.026734842 0.99800795;
	setAttr ".uvst[0].uvsp[250:499]" 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.02673484 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.046441488
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.026734842 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.02673484 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795
		 0.6599915 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795
		 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795 0.046441488 0.99800795 0.67969811
		 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795 0.67969811 0.99800795 0.046441484
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.6599915 0.99800795 0.026734842 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.02673484 0.99800795 0.6599915 0.99800795
		 0.67969811 0.99800795 0.046441488 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.071769089 0.99800795 0.046441484
		 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795
		 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795
		 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795
		 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.67969811 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915 0.99800795
		 0.026734842 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.02673484
		 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.046441488 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.071769089
		 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573
		 0.99800795 0.67969811 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915
		 0.99800795 0.026734842 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.02673484 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.046441488 0.99800795
		 0.70502573 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.026734842 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.02673484 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915
		 0.99800795;
	setAttr ".uvst[0].uvsp[500:749]" 0.071769089 0.99800795 0.70502573 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795
		 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795
		 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795 0.046441488
		 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795 0.67969811
		 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915 0.99800795 0.026734842
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.02673484 0.99800795 0.6599915
		 0.99800795 0.67969811 0.99800795 0.046441488 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.071769089 0.99800795 0.046441484
		 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795 0.6599915
		 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795
		 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842 0.99800795
		 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795
		 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484 0.99800795
		 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089 0.99800795
		 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.67969811 0.99800795 0.046441484 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795
		 0.071769089 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.6599915 0.99800795
		 0.026734842 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795
		 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.02673484
		 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.046441488 0.99800795 0.70502573
		 0.99800795 0.071769089 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.071769089
		 0.99800795 0.046441484 0.99800795 0.67969811 0.99800795 0.70502573 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.071769089 0.99800795 0.70502573 0.99800795 0.026734842
		 0.99800795 0.6599915 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.0014072371
		 0.99800795 0.63466388 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.02673484
		 0.99800795 0.046441488 0.99800795 0.67969811 0.99800795 0.6599915 0.99800795 0.071769089
		 0.99800795 0.70502573 0.99800795 0.0014072371 0.99800795 0.63466388 0.99800795 0.13511558
		 0.99800795 0.046441484 0.99800795 0.13512008 0.99800795 0.071769089 0.99800795 0.071769089
		 0.99800795 0.13512005 0.99800795 0.10979248 0.99800795 0.026734842 0.99800795 0.0014072371
		 0.99800795 0.090085186 0.99800795 0.0014072371 0.99800795 0.064776383 0.99800795
		 0.0014072371 0.99800795 0.064758211 0.99800795 0.046441488 0.99800795 0.090089172
		 0.99800795 0.071769089 0.99800795 0.10979246 0.99800795 0.071769089 0.99800795 0.13512003
		 0.99800795 0.0014072371 0.99800795 0.064776383 0.99800795 0.02673484 0.99800795 0.064758189
		 0.99800795 0.071769089 0.99800795 0.13512005 0.99800795 0.046441488 0.99800795 0.13514976
		 0.99800795 0.02673484 0.99800795 0.10981974 0.99800795 0.0014072371 0.99800795 0.09008579
		 0.99800795 0.0014072371 0.99800795 0.064758211 0.99800795 0.0014072371 0.99800795
		 0.064753942 0.99800795 0.0014072371 0.99800795 0.064787909 0.99800795 0.026734842
		 0.99800795 0.064758211 0.99800795 0.046441484 0.99800795 0.090113103 0.99800795 0.071769089
		 0.99800795 0.10979243 0.99800795 0.071769089 0.99800795 0.13514976 0.99800795 0.071769089
		 0.99800795 0.13512005 0.99800795 0.64167476 0.99800795 0.70502573 0.99800795 0.64167476
		 0.99800795 0.70502573 0.99800795 0.64168262 0.99800795 0.67969811 0.99800795 0.61634713
		 0.99800795 0.6599915 0.99800795 0.59664607 0.99800795 0.63466388 0.99800795 0.5713129
		 0.99800795 0.63466388 0.99800795 0.57132071 0.99800795 0.63466388 0.99800795 0.57131058
		 0.99800795 0.63466388 0.99800795 0.5713129 0.99800795 0.6599915 0.99800795 0.59664047
		 0.99800795 0.67969811 0.99800795 0.61635274 0.99800795 0.70502573 0.99800795 0.64168262
		 0.99800795 0.70502573 0.99800795 0.70502573 0.99800795 0.64167476 0.99800795 0.64167476
		 0.99800795 0.70502573 0.99800795 0.6416747 0.99800795 0.70502573 0.99800795 0.64167476
		 0.99800795 0.67969811 0.99800795 0.61634713 0.99800795 0.6599915 0.99800795 0.59664118
		 0.99800795 0.63466388 0.99800795 0.5713129 0.99800795 0.63466388 0.99800795 0.57131737
		 0.99800795 0.63466388 0.99800795 0.57131422 0.99800801 0.63466388 0.99800795 0.57131737
		 0.99800795 0.6599915 0.99800795 0.67969811 0.99800795 0.59664053 0.99800795 0.70502573
		 0.99800795 0.61634713 0.99800795 0.58203566 0.99800795 0.54454112 0.99800795 0.51178056
		 0.99800795 0.47995183 0.99800795 0.44846055 0.99800795 0.41790113 0.99800795;
	setAttr ".uvst[0].uvsp[750:999]" 0.39207566 0.99800795 0.3883974 0.99800795
		 0.32875741 0.99800795 0.29126465 0.99800795 0.25850579 0.99800795 0.22667885 0.99800795
		 0.19518931 0.99800795 0.16463166 0.99800795 0.13880776 0.99800795 0.13880768 0.99800795
		 0.16463168 0.99800795 0.19518931 0.99800795 0.22667885 0.99800795 0.25850579 0.99800795
		 0.29126465 0.99800795 0.32875741 0.99800795 0.3883974 0.99800795 0.39207566 0.99800795
		 0.41790113 0.99800795 0.44846055 0.99800795 0.47995183 0.99800795 0.51178056 0.99800795
		 0.54454112 0.99800795 0.58203566 0.99800795 0.13706692 0.99800795 0.16425945 0.99800795
		 0.19511604 0.99800795 0.22665231 0.99800795 0.25843254 0.99800795 0.29089239 0.99800795
		 0.32701585 0.99800795 0.3883974 0.99800795 0.3903341 0.99800795 0.41752887 0.99800795
		 0.44838727 0.99800795 0.4799253 0.99800795 0.51170725 0.99800795 0.54416889 0.99800795
		 0.58029425 0.99800795 0.13365506 0.99800795 0.16364498 0.99800795 0.19499782 0.99800795
		 0.22660965 0.99800795 0.25831431 0.99800795 0.2902779 0.99800795 0.32360435 0.99800795
		 0.3630698 0.99800795 0.38692257 0.99800795 0.4169144 0.99800795 0.44826907 0.99800795
		 0.47988263 0.99800795 0.51158905 0.99800795 0.54355443 0.99800795 0.57688266 0.99800795
		 0.12956335 0.99800795 0.16288912 0.99800795 0.19485265 0.99800795 0.2265573 0.99800795
		 0.25816914 0.99800795 0.28952205 0.99800795 0.31951213 0.99800795 0.34336317 0.99800795
		 0.38283038 0.99800795 0.41615856 0.99800795 0.44812387 0.99800795 0.47983029 0.99800795
		 0.51144385 0.99800795 0.54279852 0.99800795 0.5727905 0.99800795 0.12615129 0.99800795
		 0.1622746 0.99800795 0.19473442 0.99800795 0.22651464 0.99800795 0.25805092 0.99800795
		 0.28890756 0.99800795 0.31610063 0.99800795 0.31803557 0.99800795 0.37941888 0.99800795
		 0.41554406 0.99800795 0.44800568 0.99800795 0.47978762 0.99800795 0.51132566 0.99800795
		 0.54218405 0.99800795 0.56937885 0.99800795 0.12440997 0.99800795 0.16190229 0.99800795
		 0.19466114 0.99800795 0.2264881 0.99800795 0.25797763 0.99800795 0.28853533 0.99800795
		 0.31435907 0.99800795 0.31803557 0.99800795 0.37767729 0.99800795 0.4151718 0.99800795
		 0.44793239 0.99800795 0.47976109 0.99800795 0.5112524 0.99800795 0.54181176 0.99800795
		 0.56763738 0.99800795 0.1244084 0.99800795 0.16190217 0.99800795 0.19466113 0.99800795
		 0.2264881 0.99800795 0.25797763 0.99800795 0.28853533 0.99800795 0.31435907 0.99800795
		 0.31803557 0.99800795 0.37767729 0.99800795 0.4151718 0.99800795 0.44793239 0.99800795
		 0.47976109 0.99800795 0.5112524 0.99800795 0.54181176 0.99800795 0.56763691 0.99800795
		 0.12614989 0.99800795 0.16227442 0.99800795 0.19473439 0.99800795 0.22651464 0.99800795
		 0.25805092 0.99800795 0.28890756 0.99800795 0.31610063 0.99800795 0.31803557 0.99800795
		 0.37941888 0.99800795 0.41554406 0.99800795 0.44800568 0.99800795 0.47978762 0.99800795
		 0.51132566 0.99800795 0.542184 0.99800795 0.5693785 0.99800795 0.12956192 0.99800795
		 0.16288894 0.99800795 0.19485262 0.99800795 0.2265573 0.99800795 0.25816914 0.99800795
		 0.28952205 0.99800795 0.31951213 0.99800795 0.34336317 0.99800795 0.38283038 0.99800795
		 0.41615856 0.99800795 0.44812387 0.99800795 0.47983029 0.99800795 0.51144385 0.99800795
		 0.54279852 0.99800795 0.57279015 0.99800795 0.1336554 0.99800795 0.16364488 0.99800795
		 0.1949978 0.99800795 0.22660965 0.99800795 0.25831431 0.99800795 0.2902779 0.99800795
		 0.32360435 0.99800795 0.3630698 0.99800795 0.38692257 0.99800795 0.4169144 0.99800795
		 0.44826907 0.99800795 0.47988263 0.99800795 0.51158905 0.99800795 0.54355437 0.99800795
		 0.57688266 0.99800795 0.13706711 0.99800795 0.1642594 0.99800795 0.19511601 0.99800795
		 0.22665231 0.99800795 0.25843254 0.99800795 0.29089239 0.99800795 0.32701585 0.99800795
		 0.3883974 0.99800795 0.3903341 0.99800795 0.41752887 0.99800795 0.44838727 0.99800795
		 0.4799253 0.99800795 0.51170725 0.99800795 0.54416889 0.99800795 0.58029431 0.99800795
		 0.5815562 0.99800795 0.54467136 0.99800795 0.51187277 0.99800795 0.48001084 0.99800795
		 0.4485532 0.99800795 0.41803226 0.99800795 0.39159775 0.99800795 0.3883974 0.99800795
		 0.32827866 0.99800795 0.29139408 0.99800795 0.25859597 0.99800795 0.2267345 0.99800795
		 0.19527732 0.99800795 0.16475667 0.99800795 0.13832176 0.99800795 0.14040805 0.99800795
		 0.16530994 0.99800795 0.19541319 0.99800795 0.2267938 0.99800795 0.25873184 0.99800795
		 0.29194739 0.99800795 0.33036497 0.99800795 0.3883974 0.99800795 0.39368406 0.99800795
		 0.41858557 0.99800795 0.4486891 0.99800795 0.48007014 0.99800795 0.51200867 0.99800795
		 0.54522467 0.99800795 0.58364248 0.99800795 0.14040817 0.99800795 0.16530995 0.99800795
		 0.19541319 0.99800795 0.2267938 0.99800795 0.25873184 0.99800795 0.29194739 0.99800795
		 0.33036497 0.99800795 0.3883974 0.99800795 0.39368406 0.99800795 0.41858557 0.99800795
		 0.4486891 0.99800795 0.48007014 0.99800795 0.51200867 0.99800795 0.54522467 0.99800795
		 0.58364248 0.99800795 0.13832206 0.99800795 0.1647567 0.99800795 0.19527732 0.99800795
		 0.2267345 0.99800795 0.25859597 0.99800795 0.29139408 0.99800795 0.32827863 0.99800795
		 0.3883974 0.99800795 0.39159772 0.99800795 0.41803226 0.99800795 0.4485532 0.99800795
		 0.48001084 0.99800795 0.51187277 0.99800795 0.54467136 0.99800795 0.5815562 0.99800795
		 0.1341158 0.99800795 0.16383059 0.99800795 0.19505598 0.99800795 0.22663832 0.99800795
		 0.2583746 0.99800795 0.29046786 0.99800795 0.32407203 0.99800795 0.3630698 0.99800795
		 0.38739112 0.99800795 0.41710603 0.99800795 0.44833186 0.99800795 0.47991467 0.99800795
		 0.5116514 0.99800795 0.54374516 0.99800795 0.57734966 0.99800795 0.12908667 0.99800795;
	setAttr ".uvst[0].uvsp[1000:1151]" 0.16269076 0.99800795 0.19478399 0.99800795
		 0.22652024 0.99800795 0.25810257 0.99800795 0.28932789 0.99800795 0.31904233 0.99800795
		 0.34336317 0.99800795 0.38236141 0.99800795 0.41596606 0.99800795 0.44805983 0.99800795
		 0.47979656 0.99800795 0.51137936 0.99800795 0.54260522 0.99800795 0.5723201 0.99800795
		 0.1248806 0.99800795 0.16176467 0.99800795 0.19456264 0.99800795 0.22642405 0.99800795
		 0.25788119 0.99800795 0.28840166 0.99800795 0.31483573 0.99800795 0.31803557 0.99800795
		 0.37815478 0.99800795 0.41503984 0.99800795 0.44783846 0.99800795 0.47970039 0.99800795
		 0.51115805 0.99800795 0.54167902 0.99800795 0.56811363 0.99800795 0.12279519 0.99800795
		 0.16121146 0.99800795 0.19442677 0.99800795 0.22636476 0.99800795 0.25774533 0.99800795
		 0.28784835 0.99800795 0.31274939 0.99800795 0.31803557 0.99800795 0.37606847 0.99800795
		 0.41448653 0.99800795 0.44770256 0.99800795 0.47964108 0.99800795 0.51102215 0.99800795
		 0.54112571 0.99800795 0.56602758 0.99800795 0.12279468 0.99800795 0.16121145 0.99800795
		 0.19442677 0.99800795 0.22636476 0.99800795 0.25774533 0.99800795 0.28784835 0.99800795
		 0.31274939 0.99800795 0.31803557 0.99800795 0.37606847 0.99800795 0.41448653 0.99800795
		 0.44770256 0.99800795 0.47964108 0.99800795 0.51102215 0.99800795 0.54112571 0.99800795
		 0.56602752 0.99800795 0.12488114 0.99800795 0.16176468 0.99800795 0.19456264 0.99800795
		 0.22642405 0.99800795 0.25788119 0.99800795 0.28840166 0.99800795 0.31483573 0.99800795
		 0.31803557 0.99800795 0.37815481 0.99800795 0.41503984 0.99800795 0.44783846 0.99800795
		 0.47970039 0.99800795 0.51115805 0.99800795 0.54167902 0.99800795 0.56811386 0.99800795
		 0.12908669 0.99800795 0.16269076 0.99800795 0.19478397 0.99800795 0.22652024 0.99800795
		 0.25810257 0.99800795 0.28932789 0.99800795 0.31904233 0.99800795 0.34336317 0.99800795
		 0.38236141 0.99800795 0.41596606 0.99800795 0.44805983 0.99800795 0.47979659 0.99800795
		 0.51137936 0.99800795 0.54260522 0.99800795 0.57232016 0.99800795 0.13411567 0.99800795
		 0.16383056 0.99800795 0.19505598 0.99800795 0.22663832 0.99800795 0.2583746 0.99800795
		 0.29046786 0.99800795 0.32407203 0.99800795 0.3630698 0.99800795 0.38739112 0.99800795
		 0.41710603 0.99800795 0.44833186 0.99800795 0.47991467 0.99800795 0.5116514 0.99800795
		 0.54374516 0.99800795 0.57734972 0.99800795 0.10345943 0.99800795 0.10344457 0.99800795
		 0.10344457 0.99800795 0.10345943 0.99800795 0.078116961 0.99800795 0.058423974 0.99800795
		 0.033082724 0.99800795 0.033097573 0.99800795 0.033080589 0.99800795 0.033082724
		 0.99800795 0.058410317 0.99800795 0.078130618 0.99800795 0.10344233 0.99800795 0.078116983
		 0.99800795 0.058410015 0.99800795 0.03309181 0.99800795 0.033082724 0.99800795 0.03309181
		 0.99800795 0.033082712 0.99800795 0.058412008 0.99800795 0.078116968 0.99800795 0.10344456
		 0.99800795 0.10344457 0.99800795 0.10344458 0.99800795 0.67335021 0.99800795 0.67335021
		 0.99800795 0.64802265 0.99800795 0.62831604 0.99800795 0.60299063 0.99800795 0.60298908
		 0.99800801 0.60299063 0.99800795 0.60298836 0.99800795 0.62831634 0.99800795 0.64802265
		 0.99800795 0.67335021 0.99800795 0.67335021 0.99800795 0.67335021 0.99800795 0.67335021
		 0.99800795 0.67335415 0.99800795 0.64802265 0.99800795 0.62831879 0.99800795 0.60298836
		 0.99800795 0.6029923 0.99800795 0.60298723 0.99800795 0.60298836 0.99800795 0.62831599
		 0.99800795 0.64802539 0.99800795 0.67335415 0.99800795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 936 ".vt";
	setAttr ".vt[0:165]"  -9.58315849 0.045485571 -15.26085663 -9.58315849 -0.51451772 -15.82085991
		 -9.58315849 -0.30381235 -15.47155762 -9.1288414 0.045485571 -15.26085663 -9.1288414 -0.30381235 -15.47155762
		 -9.1288414 -0.51451772 -15.82085991 -9.58315849 0.045485571 -16.81658173 -9.58315849 -0.30381235 -16.60588074
		 -9.58315849 -0.51451772 -16.25658035 -9.1288414 0.045485571 -16.81658173 -9.1288414 -0.51451772 -16.25658035
		 -9.1288414 -0.30381235 -16.60588074 -9.58315849 1.16795623 -15.82085991 -9.58315849 0.60795301 -15.26085663
		 -9.58315849 0.95725113 -15.47155762 -9.58315849 1.16795623 -16.25658035 -9.58315849 0.95725113 -16.60588074
		 -9.58315849 0.60795301 -16.81658173 -9.1288414 1.16795623 -15.82085991 -9.1288414 0.95725113 -15.47155762
		 -9.1288414 0.60795301 -15.26085663 -9.1288414 0.95725113 -16.60588074 -9.1288414 1.16795623 -16.25658035
		 -9.1288414 0.60795301 -16.81658173 -9.58315849 -0.38532928 -15.39003944 -9.1288414 -0.38532928 -15.39003944
		 -9.58315849 -0.62642378 -15.78971863 -9.1288414 -0.62642378 -15.78971863 -9.58315849 0.014348105 -15.14895058
		 -9.1288414 0.014348105 -15.14895058 -9.58315849 0.63909048 -15.14895058 -9.1288414 0.63909048 -15.14895058
		 -9.58315849 -0.62642378 -16.287714 -9.1288414 -0.62642378 -16.287714 -9.58315849 -0.38532928 -16.68739891
		 -9.1288414 -0.38532928 -16.68739891 -9.58315849 0.014346838 -16.92848396 -9.1288414 0.014346838 -16.92848396
		 -9.58315849 0.63909173 -16.92848396 -9.1288414 0.63909173 -16.92848396 -9.58315849 1.27986228 -15.78971863
		 -9.58315849 1.27986228 -16.287714 -9.1288414 1.27986228 -15.78971863 -9.1288414 1.27986228 -16.287714
		 -9.58315849 1.038767695 -15.39003944 -9.1288414 1.038767695 -15.39003944 -9.58315849 1.038767457 -16.68739891
		 -9.1288414 1.038767457 -16.68739891 -7.24415922 0.045485571 -15.26085663 -7.24415922 -0.51451772 -15.82085991
		 -7.24415922 -0.30381235 -15.47155762 -6.78984213 0.045485571 -15.26085663 -6.78984213 -0.30381235 -15.47155762
		 -6.78984213 -0.51451772 -15.82085991 -7.24415922 0.045485571 -16.81658173 -7.24415922 -0.30381235 -16.60588074
		 -7.24415922 -0.51451772 -16.25658035 -6.78984213 0.045485571 -16.81658173 -6.78984213 -0.51451772 -16.25658035
		 -6.78984213 -0.30381235 -16.60588074 -7.24415922 1.16795623 -15.82085991 -7.24415922 0.60795301 -15.26085663
		 -7.24415922 0.95725113 -15.47155762 -7.24415922 1.16795623 -16.25658035 -7.24415922 0.95725113 -16.60588074
		 -7.24415922 0.60795301 -16.81658173 -6.78984213 1.16795623 -15.82085991 -6.78984213 0.95725113 -15.47155762
		 -6.78984213 0.60795301 -15.26085663 -6.78984213 0.95725113 -16.60588074 -6.78984213 1.16795623 -16.25658035
		 -6.78984213 0.60795301 -16.81658173 -7.24415922 -0.38532928 -15.39003944 -6.78984213 -0.38532928 -15.39003944
		 -7.24415922 -0.62642378 -15.78971863 -6.78984213 -0.62642378 -15.78971863 -7.24415922 0.014348105 -15.14895058
		 -6.78984213 0.014348105 -15.14895058 -7.24415922 0.63909048 -15.14895058 -6.78984213 0.63909048 -15.14895058
		 -7.24415922 -0.62642378 -16.287714 -6.78984213 -0.62642378 -16.287714 -7.24415922 -0.38532928 -16.68739891
		 -6.78984213 -0.38532928 -16.68739891 -7.24415922 0.014346838 -16.92848396 -6.78984213 0.014346838 -16.92848396
		 -7.24415922 0.63909173 -16.92848396 -6.78984213 0.63909173 -16.92848396 -7.24415922 1.27986228 -15.78971863
		 -7.24415922 1.27986228 -16.287714 -6.78984213 1.27986228 -15.78971863 -6.78984213 1.27986228 -16.287714
		 -7.24415922 1.038767695 -15.39003944 -6.78984213 1.038767695 -15.39003944 -7.24415922 1.038767457 -16.68739891
		 -6.78984213 1.038767457 -16.68739891 -4.90515804 0.045485571 -15.26085663 -4.90515804 -0.51451772 -15.82085991
		 -4.90515804 -0.30381235 -15.47155762 -4.45084095 0.045485571 -15.26085663 -4.45084095 -0.30381235 -15.47155762
		 -4.45084095 -0.51451772 -15.82085991 -4.90515804 0.045485571 -16.81658173 -4.90515804 -0.30381235 -16.60588074
		 -4.90515804 -0.51451772 -16.25658035 -4.45084095 0.045485571 -16.81658173 -4.45084095 -0.51451772 -16.25658035
		 -4.45084095 -0.30381235 -16.60588074 -4.90515804 1.16795623 -15.82085991 -4.90515804 0.60795301 -15.26085663
		 -4.90515804 0.95725113 -15.47155762 -4.90515804 1.16795623 -16.25658035 -4.90515804 0.95725113 -16.60588074
		 -4.90515804 0.60795301 -16.81658173 -4.45084095 1.16795623 -15.82085991 -4.45084095 0.95725113 -15.47155762
		 -4.45084095 0.60795301 -15.26085663 -4.45084095 0.95725113 -16.60588074 -4.45084095 1.16795623 -16.25658035
		 -4.45084095 0.60795301 -16.81658173 -4.90515804 -0.38532928 -15.39003944 -4.45084095 -0.38532928 -15.39003944
		 -4.90515804 -0.62642378 -15.78971863 -4.45084095 -0.62642378 -15.78971863 -4.90515804 0.014348105 -15.14895058
		 -4.45084095 0.014348105 -15.14895058 -4.90515804 0.63909048 -15.14895058 -4.45084095 0.63909048 -15.14895058
		 -4.90515804 -0.62642378 -16.287714 -4.45084095 -0.62642378 -16.287714 -4.90515804 -0.38532928 -16.68739891
		 -4.45084095 -0.38532928 -16.68739891 -4.90515804 0.014346838 -16.92848396 -4.45084095 0.014346838 -16.92848396
		 -4.90515804 0.63909173 -16.92848396 -4.45084095 0.63909173 -16.92848396 -4.90515804 1.27986228 -15.78971863
		 -4.90515804 1.27986228 -16.287714 -4.45084095 1.27986228 -15.78971863 -4.45084095 1.27986228 -16.287714
		 -4.90515804 1.038767695 -15.39003944 -4.45084095 1.038767695 -15.39003944 -4.90515804 1.038767457 -16.68739891
		 -4.45084095 1.038767457 -16.68739891 6.78984213 0.045485571 -15.26085663 6.78984213 -0.51451772 -15.82085991
		 6.78984213 -0.30381235 -15.47155762 7.24415922 0.045485571 -15.26085663 7.24415922 -0.30381235 -15.47155762
		 7.24415922 -0.51451772 -15.82085991 6.78984213 0.045485571 -16.81658173 6.78984213 -0.30381235 -16.60588074
		 6.78984213 -0.51451772 -16.25658035 7.24415922 0.045485571 -16.81658173 7.24415922 -0.51451772 -16.25658035
		 7.24415922 -0.30381235 -16.60588074 6.78984213 1.16795623 -15.82085991 6.78984213 0.60795301 -15.26085663
		 6.78984213 0.95725113 -15.47155762 6.78984213 1.16795623 -16.25658035 6.78984213 0.95725113 -16.60588074
		 6.78984213 0.60795301 -16.81658173 7.24415922 1.16795623 -15.82085991 7.24415922 0.95725113 -15.47155762
		 7.24415922 0.60795301 -15.26085663 7.24415922 0.95725113 -16.60588074;
	setAttr ".vt[166:331]" 7.24415922 1.16795623 -16.25658035 7.24415922 0.60795301 -16.81658173
		 6.78984213 -0.38532928 -15.39003944 7.24415922 -0.38532928 -15.39003944 6.78984213 -0.62642378 -15.78971863
		 7.24415922 -0.62642378 -15.78971863 6.78984213 0.014348105 -15.14895058 7.24415922 0.014348105 -15.14895058
		 6.78984213 0.63909048 -15.14895058 7.24415922 0.63909048 -15.14895058 6.78984213 -0.62642378 -16.287714
		 7.24415922 -0.62642378 -16.287714 6.78984213 -0.38532928 -16.68739891 7.24415922 -0.38532928 -16.68739891
		 6.78984213 0.014346838 -16.92848396 7.24415922 0.014346838 -16.92848396 6.78984213 0.63909173 -16.92848396
		 7.24415922 0.63909173 -16.92848396 6.78984213 1.27986228 -15.78971863 6.78984213 1.27986228 -16.287714
		 7.24415922 1.27986228 -15.78971863 7.24415922 1.27986228 -16.287714 6.78984213 1.038767695 -15.39003944
		 7.24415922 1.038767695 -15.39003944 6.78984213 1.038767457 -16.68739891 7.24415922 1.038767457 -16.68739891
		 -2.56615829 0.045485571 -15.26085663 -2.56615829 -0.51451772 -15.82085991 -2.56615829 -0.30381235 -15.47155762
		 -2.1118412 0.045485571 -15.26085663 -2.1118412 -0.30381235 -15.47155762 -2.1118412 -0.51451772 -15.82085991
		 -2.56615829 0.045485571 -16.81658173 -2.56615829 -0.30381235 -16.60588074 -2.56615829 -0.51451772 -16.25658035
		 -2.1118412 0.045485571 -16.81658173 -2.1118412 -0.51451772 -16.25658035 -2.1118412 -0.30381235 -16.60588074
		 -2.56615829 1.16795623 -15.82085991 -2.56615829 0.60795301 -15.26085663 -2.56615829 0.95725113 -15.47155762
		 -2.56615829 1.16795623 -16.25658035 -2.56615829 0.95725113 -16.60588074 -2.56615829 0.60795301 -16.81658173
		 -2.1118412 1.16795623 -15.82085991 -2.1118412 0.95725113 -15.47155762 -2.1118412 0.60795301 -15.26085663
		 -2.1118412 0.95725113 -16.60588074 -2.1118412 1.16795623 -16.25658035 -2.1118412 0.60795301 -16.81658173
		 -2.56615829 -0.38532928 -15.39003944 -2.1118412 -0.38532928 -15.39003944 -2.56615829 -0.62642378 -15.78971863
		 -2.1118412 -0.62642378 -15.78971863 -2.56615829 0.014348105 -15.14895058 -2.1118412 0.014348105 -15.14895058
		 -2.56615829 0.63909048 -15.14895058 -2.1118412 0.63909048 -15.14895058 -2.56615829 -0.62642378 -16.287714
		 -2.1118412 -0.62642378 -16.287714 -2.56615829 -0.38532928 -16.68739891 -2.1118412 -0.38532928 -16.68739891
		 -2.56615829 0.014346838 -16.92848396 -2.1118412 0.014346838 -16.92848396 -2.56615829 0.63909173 -16.92848396
		 -2.1118412 0.63909173 -16.92848396 -2.56615829 1.27986228 -15.78971863 -2.56615829 1.27986228 -16.287714
		 -2.1118412 1.27986228 -15.78971863 -2.1118412 1.27986228 -16.287714 -2.56615829 1.038767695 -15.39003944
		 -2.1118412 1.038767695 -15.39003944 -2.56615829 1.038767457 -16.68739891 -2.1118412 1.038767457 -16.68739891
		 -0.22715853 0.045485571 -15.26085663 -0.22715853 -0.51451772 -15.82085991 -0.22715853 -0.30381235 -15.47155762
		 0.22715853 0.045485571 -15.26085663 0.22715853 -0.30381235 -15.47155762 0.22715853 -0.51451772 -15.82085991
		 -0.22715853 0.045485571 -16.81658173 -0.22715853 -0.30381235 -16.60588074 -0.22715853 -0.51451772 -16.25658035
		 0.22715853 0.045485571 -16.81658173 0.22715853 -0.51451772 -16.25658035 0.22715853 -0.30381235 -16.60588074
		 -0.22715853 1.16795623 -15.82085991 -0.22715853 0.60795301 -15.26085663 -0.22715853 0.95725113 -15.47155762
		 -0.22715853 1.16795623 -16.25658035 -0.22715853 0.95725113 -16.60588074 -0.22715853 0.60795301 -16.81658173
		 0.22715853 1.16795623 -15.82085991 0.22715853 0.95725113 -15.47155762 0.22715853 0.60795301 -15.26085663
		 0.22715853 0.95725113 -16.60588074 0.22715853 1.16795623 -16.25658035 0.22715853 0.60795301 -16.81658173
		 -0.22715853 -0.38532928 -15.39003944 0.22715853 -0.38532928 -15.39003944 -0.22715853 -0.62642378 -15.78971863
		 0.22715853 -0.62642378 -15.78971863 -0.22715853 0.014348105 -15.14895058 0.22715853 0.014348105 -15.14895058
		 -0.22715853 0.63909048 -15.14895058 0.22715853 0.63909048 -15.14895058 -0.22715853 -0.62642378 -16.287714
		 0.22715853 -0.62642378 -16.287714 -0.22715853 -0.38532928 -16.68739891 0.22715853 -0.38532928 -16.68739891
		 -0.22715853 0.014346838 -16.92848396 0.22715853 0.014346838 -16.92848396 -0.22715853 0.63909173 -16.92848396
		 0.22715853 0.63909173 -16.92848396 -0.22715853 1.27986228 -15.78971863 -0.22715853 1.27986228 -16.287714
		 0.22715853 1.27986228 -15.78971863 0.22715853 1.27986228 -16.287714 -0.22715853 1.038767695 -15.39003944
		 0.22715853 1.038767695 -15.39003944 -0.22715853 1.038767457 -16.68739891 0.22715853 1.038767457 -16.68739891
		 4.45084095 0.045485571 -15.26085663 4.45084095 -0.51451772 -15.82085991 4.45084095 -0.30381235 -15.47155762
		 4.90515804 0.045485571 -15.26085663 4.90515804 -0.30381235 -15.47155762 4.90515804 -0.51451772 -15.82085991
		 4.45084095 0.045485571 -16.81658173 4.45084095 -0.30381235 -16.60588074 4.45084095 -0.51451772 -16.25658035
		 4.90515804 0.045485571 -16.81658173 4.90515804 -0.51451772 -16.25658035 4.90515804 -0.30381235 -16.60588074
		 4.45084095 1.16795623 -15.82085991 4.45084095 0.60795301 -15.26085663 4.45084095 0.95725113 -15.47155762
		 4.45084095 1.16795623 -16.25658035 4.45084095 0.95725113 -16.60588074 4.45084095 0.60795301 -16.81658173
		 4.90515804 1.16795623 -15.82085991 4.90515804 0.95725113 -15.47155762 4.90515804 0.60795301 -15.26085663
		 4.90515804 0.95725113 -16.60588074 4.90515804 1.16795623 -16.25658035 4.90515804 0.60795301 -16.81658173
		 4.45084095 -0.38532928 -15.39003944 4.90515804 -0.38532928 -15.39003944 4.45084095 -0.62642378 -15.78971863
		 4.90515804 -0.62642378 -15.78971863 4.45084095 0.014348105 -15.14895058 4.90515804 0.014348105 -15.14895058
		 4.45084095 0.63909048 -15.14895058 4.90515804 0.63909048 -15.14895058 4.45084095 -0.62642378 -16.287714
		 4.90515804 -0.62642378 -16.287714 4.45084095 -0.38532928 -16.68739891 4.90515804 -0.38532928 -16.68739891
		 4.45084095 0.014346838 -16.92848396 4.90515804 0.014346838 -16.92848396 4.45084095 0.63909173 -16.92848396
		 4.90515804 0.63909173 -16.92848396 4.45084095 1.27986228 -15.78971863 4.45084095 1.27986228 -16.287714
		 4.90515804 1.27986228 -15.78971863 4.90515804 1.27986228 -16.287714;
	setAttr ".vt[332:497]" 4.45084095 1.038767695 -15.39003944 4.90515804 1.038767695 -15.39003944
		 4.45084095 1.038767457 -16.68739891 4.90515804 1.038767457 -16.68739891 2.11184216 0.045485571 -15.26085663
		 2.11184216 -0.51451772 -15.82085991 2.11184216 -0.30381235 -15.47155762 2.56615925 0.045485571 -15.26085663
		 2.56615925 -0.30381235 -15.47155762 2.56615925 -0.51451772 -15.82085991 2.11184216 0.045485571 -16.81658173
		 2.11184216 -0.30381235 -16.60588074 2.11184216 -0.51451772 -16.25658035 2.56615925 0.045485571 -16.81658173
		 2.56615925 -0.51451772 -16.25658035 2.56615925 -0.30381235 -16.60588074 2.11184216 1.16795623 -15.82085991
		 2.11184216 0.60795301 -15.26085663 2.11184216 0.95725113 -15.47155762 2.11184216 1.16795623 -16.25658035
		 2.11184216 0.95725113 -16.60588074 2.11184216 0.60795301 -16.81658173 2.56615925 1.16795623 -15.82085991
		 2.56615925 0.95725113 -15.47155762 2.56615925 0.60795301 -15.26085663 2.56615925 0.95725113 -16.60588074
		 2.56615925 1.16795623 -16.25658035 2.56615925 0.60795301 -16.81658173 2.11184216 -0.38532928 -15.39003944
		 2.56615925 -0.38532928 -15.39003944 2.11184216 -0.62642378 -15.78971863 2.56615925 -0.62642378 -15.78971863
		 2.11184216 0.014348105 -15.14895058 2.56615925 0.014348105 -15.14895058 2.11184216 0.63909048 -15.14895058
		 2.56615925 0.63909048 -15.14895058 2.11184216 -0.62642378 -16.287714 2.56615925 -0.62642378 -16.287714
		 2.11184216 -0.38532928 -16.68739891 2.56615925 -0.38532928 -16.68739891 2.11184216 0.014346838 -16.92848396
		 2.56615925 0.014346838 -16.92848396 2.11184216 0.63909173 -16.92848396 2.56615925 0.63909173 -16.92848396
		 2.11184216 1.27986228 -15.78971863 2.11184216 1.27986228 -16.287714 2.56615925 1.27986228 -15.78971863
		 2.56615925 1.27986228 -16.287714 2.11184216 1.038767695 -15.39003944 2.56615925 1.038767695 -15.39003944
		 2.11184216 1.038767457 -16.68739891 2.56615925 1.038767457 -16.68739891 -11.69499969 0.033526756 -16.59656715
		 -11.69499969 -0.37924355 -17.0093364716 -11.69499969 -0.22393568 -16.75187111 11.69499969 0.033526756 -16.59656715
		 11.69499969 -0.22393568 -16.75187111 11.69499969 -0.37924355 -17.0093364716 -11.69499969 0.033526756 -17.74326897
		 -11.69499969 -0.22393568 -17.58796501 -11.69499969 -0.37924355 -17.33049965 11.69499969 0.033526756 -17.74326897
		 11.69499969 -0.37924355 -17.33049965 11.69499969 -0.22393568 -17.58796501 -11.69499969 0.86088359 -17.0093364716
		 -11.69499969 0.44811335 -16.59656715 -11.69499969 0.70557588 -16.75187111 -11.69499969 0.86088359 -17.33049965
		 -11.69499969 0.70557588 -17.58796501 -11.69499969 0.44811335 -17.74326897 11.69499969 0.86088359 -17.0093364716
		 11.69499969 0.70557588 -16.75187111 11.69499969 0.44811335 -16.59656715 11.69499969 0.70557588 -17.58796501
		 11.69499969 0.86088359 -17.33049965 11.69499969 0.44811335 -17.74326897 9.1288414 0.045485571 -15.26085663
		 9.1288414 -0.51451772 -15.82085991 9.1288414 -0.30381235 -15.47155762 9.58315849 0.045485571 -15.26085663
		 9.58315849 -0.30381235 -15.47155762 9.58315849 -0.51451772 -15.82085991 9.1288414 0.045485571 -16.81658173
		 9.1288414 -0.30381235 -16.60588074 9.1288414 -0.51451772 -16.25658035 9.58315849 0.045485571 -16.81658173
		 9.58315849 -0.51451772 -16.25658035 9.58315849 -0.30381235 -16.60588074 9.1288414 1.16795623 -15.82085991
		 9.1288414 0.60795301 -15.26085663 9.1288414 0.95725113 -15.47155762 9.1288414 1.16795623 -16.25658035
		 9.1288414 0.95725113 -16.60588074 9.1288414 0.60795301 -16.81658173 9.58315849 1.16795623 -15.82085991
		 9.58315849 0.95725113 -15.47155762 9.58315849 0.60795301 -15.26085663 9.58315849 0.95725113 -16.60588074
		 9.58315849 1.16795623 -16.25658035 9.58315849 0.60795301 -16.81658173 9.1288414 -0.38532928 -15.39003944
		 9.58315849 -0.38532928 -15.39003944 9.1288414 -0.62642378 -15.78971863 9.58315849 -0.62642378 -15.78971863
		 9.1288414 0.014348105 -15.14895058 9.58315849 0.014348105 -15.14895058 9.1288414 0.63909048 -15.14895058
		 9.58315849 0.63909048 -15.14895058 9.1288414 -0.62642378 -16.287714 9.58315849 -0.62642378 -16.287714
		 9.1288414 -0.38532928 -16.68739891 9.58315849 -0.38532928 -16.68739891 9.1288414 0.014346838 -16.92848396
		 9.58315849 0.014346838 -16.92848396 9.1288414 0.63909173 -16.92848396 9.58315849 0.63909173 -16.92848396
		 9.1288414 1.27986228 -15.78971863 9.1288414 1.27986228 -16.287714 9.58315849 1.27986228 -15.78971863
		 9.58315849 1.27986228 -16.287714 9.1288414 1.038767695 -15.39003944 9.58315849 1.038767695 -15.39003944
		 9.1288414 1.038767457 -16.68739891 9.58315849 1.038767457 -16.68739891 -11.69499969 -0.29677987 -16.67902565
		 11.69499969 -0.29677987 -16.67902565 -11.69499969 -0.47924355 -16.98151016 11.69499969 -0.47924355 -16.98151016
		 -11.69499969 0.0057008453 -16.49656677 11.69499969 0.0057008453 -16.49656677 -11.69499969 0.47593924 -16.49656677
		 11.69499969 0.47593924 -16.49656677 -11.69499969 -0.47924355 -17.35832596 11.69499969 -0.47924355 -17.35832596
		 -11.69499969 -0.29677951 -17.66080856 11.69499969 -0.29677951 -17.66080856 -11.69499969 0.0057008453 -17.84326935
		 11.69499969 0.0057008453 -17.84326935 -11.69499969 0.47593924 -17.84326935 11.69499969 0.47593924 -17.84326935
		 -11.69499969 0.96088362 -16.98151016 -11.69499969 0.96088362 -17.35832596 11.69499969 0.96088362 -16.98151016
		 11.69499969 0.96088362 -17.35832596 -11.69499969 0.77841973 -16.67902756 11.69499969 0.77841973 -16.67902756
		 -11.69499969 0.77842045 -17.66081047 11.69499969 0.77842045 -17.66081047 9.35506439 0.44811335 -16.59656715
		 8.18568134 0.44811335 -16.59656715 7.016298294 0.44811335 -16.59656715 5.84691525 0.44811335 -16.59656715
		 4.6775322 0.44811335 -16.59656715 3.50814915 0.44811335 -16.59656715 2.3387661 0.44811335 -16.59656715
		 1.16938305 0.44811335 -16.59656715 0 0.44811335 -16.59656715 -1.16938305 0.44811335 -16.59656715
		 -2.3387661 0.44811335 -16.59656715 -3.50814915 0.44811335 -16.59656715 -4.6775322 0.44811335 -16.59656715
		 -5.84691525 0.44811335 -16.59656715 -7.016298294 0.44811335 -16.59656715 -8.18568134 0.44811335 -16.59656715
		 -9.35506439 0.44811335 -16.59656715 -9.35506439 0.033526756 -16.59656715;
	setAttr ".vt[498:663]" -8.18568134 0.033526756 -16.59656715 -7.016298294 0.033526756 -16.59656715
		 -5.84691525 0.033526756 -16.59656715 -4.6775322 0.033526756 -16.59656715 -3.50814915 0.033526756 -16.59656715
		 -2.3387661 0.033526756 -16.59656715 -1.16938305 0.033526756 -16.59656715 0 0.033526756 -16.59656715
		 1.16938305 0.033526756 -16.59656715 2.3387661 0.033526756 -16.59656715 3.50814915 0.033526756 -16.59656715
		 4.6775322 0.033526756 -16.59656715 5.84691525 0.033526756 -16.59656715 7.016298294 0.033526756 -16.59656715
		 8.18568134 0.033526756 -16.59656715 9.35506439 0.033526756 -16.59656715 -9.35506439 -0.22393568 -16.75187111
		 -8.18568134 -0.22393568 -16.75187111 -7.016298294 -0.22393568 -16.75187111 -5.84691525 -0.22393568 -16.75187111
		 -4.6775322 -0.22393568 -16.75187111 -3.50814915 -0.22393568 -16.75187111 -2.3387661 -0.22393568 -16.75187111
		 -1.16938305 -0.22393568 -16.75187111 0 -0.22393568 -16.75187111 1.16938305 -0.22393568 -16.75187111
		 2.3387661 -0.22393568 -16.75187111 3.50814915 -0.22393568 -16.75187111 4.6775322 -0.22393568 -16.75187111
		 5.84691525 -0.22393568 -16.75187111 7.016298294 -0.22393568 -16.75187111 8.18568134 -0.22393568 -16.75187111
		 9.35506439 -0.22393568 -16.75187111 -9.35506439 -0.37924355 -17.0093364716 -8.18568134 -0.37924355 -17.0093364716
		 -7.016298294 -0.37924355 -17.0093364716 -5.84691525 -0.37924355 -17.0093364716 -4.6775322 -0.37924355 -17.0093364716
		 -3.50814915 -0.37924355 -17.0093364716 -2.3387661 -0.37924355 -17.0093364716 -1.16938305 -0.37924355 -17.0093364716
		 0 -0.37924355 -17.0093364716 1.16938305 -0.37924355 -17.0093364716 2.3387661 -0.37924355 -17.0093364716
		 3.50814915 -0.37924355 -17.0093364716 4.6775322 -0.37924355 -17.0093364716 5.84691525 -0.37924355 -17.0093364716
		 7.016298294 -0.37924355 -17.0093364716 8.18568134 -0.37924355 -17.0093364716 9.35506439 -0.37924355 -17.0093364716
		 -9.35506439 -0.37924355 -17.33049965 -8.18568134 -0.37924355 -17.33049965 -7.016298294 -0.37924355 -17.33049965
		 -5.84691525 -0.37924355 -17.33049965 -4.6775322 -0.37924355 -17.33049965 -3.50814915 -0.37924355 -17.33049965
		 -2.3387661 -0.37924355 -17.33049965 -1.16938305 -0.37924355 -17.33049965 0 -0.37924355 -17.33049965
		 1.16938305 -0.37924355 -17.33049965 2.3387661 -0.37924355 -17.33049965 3.50814915 -0.37924355 -17.33049965
		 4.6775322 -0.37924355 -17.33049965 5.84691525 -0.37924355 -17.33049965 7.016298294 -0.37924355 -17.33049965
		 8.18568134 -0.37924355 -17.33049965 9.35506439 -0.37924355 -17.33049965 -9.35506439 -0.22393568 -17.58796501
		 -8.18568134 -0.22393568 -17.58796501 -7.016298294 -0.22393568 -17.58796501 -5.84691525 -0.22393568 -17.58796501
		 -4.6775322 -0.22393568 -17.58796501 -3.50814915 -0.22393568 -17.58796501 -2.3387661 -0.22393568 -17.58796501
		 -1.16938305 -0.22393568 -17.58796501 0 -0.22393568 -17.58796501 1.16938305 -0.22393568 -17.58796501
		 2.3387661 -0.22393568 -17.58796501 3.50814915 -0.22393568 -17.58796501 4.6775322 -0.22393568 -17.58796501
		 5.84691525 -0.22393568 -17.58796501 7.016298294 -0.22393568 -17.58796501 8.18568134 -0.22393568 -17.58796501
		 9.35506439 -0.22393568 -17.58796501 -9.35506439 0.033526756 -17.74326897 -8.18568134 0.033526756 -17.74326897
		 -7.016298294 0.033526756 -17.74326897 -5.84691525 0.033526756 -17.74326897 -4.6775322 0.033526756 -17.74326897
		 -3.50814915 0.033526756 -17.74326897 -2.3387661 0.033526756 -17.74326897 -1.16938305 0.033526756 -17.74326897
		 0 0.033526756 -17.74326897 1.16938305 0.033526756 -17.74326897 2.3387661 0.033526756 -17.74326897
		 3.50814915 0.033526756 -17.74326897 4.6775322 0.033526756 -17.74326897 5.84691525 0.033526756 -17.74326897
		 7.016298294 0.033526756 -17.74326897 8.18568134 0.033526756 -17.74326897 9.35506439 0.033526756 -17.74326897
		 -9.35506439 0.44811335 -17.74326897 -8.18568134 0.44811335 -17.74326897 -7.016298294 0.44811335 -17.74326897
		 -5.84691525 0.44811335 -17.74326897 -4.6775322 0.44811335 -17.74326897 -3.50814915 0.44811335 -17.74326897
		 -2.3387661 0.44811335 -17.74326897 -1.16938305 0.44811335 -17.74326897 0 0.44811335 -17.74326897
		 1.16938305 0.44811335 -17.74326897 2.3387661 0.44811335 -17.74326897 3.50814915 0.44811335 -17.74326897
		 4.6775322 0.44811335 -17.74326897 5.84691525 0.44811335 -17.74326897 7.016298294 0.44811335 -17.74326897
		 8.18568134 0.44811335 -17.74326897 9.35506439 0.44811335 -17.74326897 -9.35506439 0.70557588 -17.58796501
		 -8.18568134 0.70557588 -17.58796501 -7.016298294 0.70557588 -17.58796501 -5.84691525 0.70557588 -17.58796501
		 -4.6775322 0.70557588 -17.58796501 -3.50814915 0.70557588 -17.58796501 -2.3387661 0.70557588 -17.58796501
		 -1.16938305 0.70557588 -17.58796501 0 0.70557588 -17.58796501 1.16938305 0.70557588 -17.58796501
		 2.3387661 0.70557588 -17.58796501 3.50814915 0.70557588 -17.58796501 4.6775322 0.70557588 -17.58796501
		 5.84691525 0.70557588 -17.58796501 7.016298294 0.70557588 -17.58796501 8.18568134 0.70557588 -17.58796501
		 9.35506439 0.70557588 -17.58796501 -9.35506439 0.86088359 -17.33049965 -8.18568134 0.86088359 -17.33049965
		 -7.016298294 0.86088359 -17.33049965 -5.84691525 0.86088359 -17.33049965 -4.6775322 0.86088359 -17.33049965
		 -3.50814915 0.86088359 -17.33049965 -2.3387661 0.86088359 -17.33049965 -1.16938305 0.86088359 -17.33049965
		 0 0.86088359 -17.33049965 1.16938305 0.86088359 -17.33049965 2.3387661 0.86088359 -17.33049965
		 3.50814915 0.86088359 -17.33049965 4.6775322 0.86088359 -17.33049965 5.84691525 0.86088359 -17.33049965
		 7.016298294 0.86088359 -17.33049965 8.18568134 0.86088359 -17.33049965 9.35506439 0.86088359 -17.33049965
		 -9.35506439 0.86088359 -17.0093364716 -8.18568134 0.86088359 -17.0093364716 -7.016298294 0.86088359 -17.0093364716
		 -5.84691525 0.86088359 -17.0093364716 -4.6775322 0.86088359 -17.0093364716 -3.50814915 0.86088359 -17.0093364716
		 -2.3387661 0.86088359 -17.0093364716 -1.16938305 0.86088359 -17.0093364716 0 0.86088359 -17.0093364716
		 1.16938305 0.86088359 -17.0093364716 2.3387661 0.86088359 -17.0093364716 3.50814915 0.86088359 -17.0093364716
		 4.6775322 0.86088359 -17.0093364716 5.84691525 0.86088359 -17.0093364716;
	setAttr ".vt[664:829]" 7.016298294 0.86088359 -17.0093364716 8.18568134 0.86088359 -17.0093364716
		 9.35506439 0.86088359 -17.0093364716 -9.35506439 0.70557588 -16.75187111 -8.18568134 0.70557588 -16.75187111
		 -7.016298294 0.70557588 -16.75187111 -5.84691525 0.70557588 -16.75187111 -4.6775322 0.70557588 -16.75187111
		 -3.50814915 0.70557588 -16.75187111 -2.3387661 0.70557588 -16.75187111 -1.16938305 0.70557588 -16.75187111
		 0 0.70557588 -16.75187111 1.16938305 0.70557588 -16.75187111 2.3387661 0.70557588 -16.75187111
		 3.50814915 0.70557588 -16.75187111 4.6775322 0.70557588 -16.75187111 5.84691525 0.70557588 -16.75187111
		 7.016298294 0.70557588 -16.75187111 8.18568134 0.70557588 -16.75187111 9.35506439 0.70557588 -16.75187111
		 9.35506439 -0.29677987 -16.67902565 8.18568134 -0.29677987 -16.67902565 7.016298294 -0.29677987 -16.67902565
		 5.84691525 -0.29677987 -16.67902565 4.6775322 -0.29677987 -16.67902565 3.50814915 -0.29677987 -16.67902565
		 2.3387661 -0.29677987 -16.67902565 1.16938305 -0.29677987 -16.67902565 0 -0.29677987 -16.67902565
		 -1.16938305 -0.29677987 -16.67902565 -2.3387661 -0.29677987 -16.67902565 -3.50814915 -0.29677987 -16.67902565
		 -4.6775322 -0.29677987 -16.67902565 -5.84691525 -0.29677987 -16.67902565 -7.016298294 -0.29677987 -16.67902565
		 -8.18568134 -0.29677987 -16.67902565 -9.35506439 -0.29677987 -16.67902565 -9.35506439 0.0057008453 -16.49656677
		 -8.18568134 0.0057008453 -16.49656677 -7.016298294 0.0057008453 -16.49656677 -5.84691525 0.0057008453 -16.49656677
		 -4.6775322 0.0057008453 -16.49656677 -3.50814915 0.0057008453 -16.49656677 -2.3387661 0.0057008453 -16.49656677
		 -1.16938305 0.0057008453 -16.49656677 0 0.0057008453 -16.49656677 1.16938305 0.0057008453 -16.49656677
		 2.3387661 0.0057008453 -16.49656677 3.50814915 0.0057008453 -16.49656677 4.6775322 0.0057008453 -16.49656677
		 5.84691525 0.0057008453 -16.49656677 7.016298294 0.0057008453 -16.49656677 8.18568134 0.0057008453 -16.49656677
		 9.35506439 0.0057008453 -16.49656677 -9.35506439 0.47593924 -16.49656677 -8.18568134 0.47593924 -16.49656677
		 -7.016298294 0.47593924 -16.49656677 -5.84691525 0.47593924 -16.49656677 -4.6775322 0.47593924 -16.49656677
		 -3.50814915 0.47593924 -16.49656677 -2.3387661 0.47593924 -16.49656677 -1.16938305 0.47593924 -16.49656677
		 0 0.47593924 -16.49656677 1.16938305 0.47593924 -16.49656677 2.3387661 0.47593924 -16.49656677
		 3.50814915 0.47593924 -16.49656677 4.6775322 0.47593924 -16.49656677 5.84691525 0.47593924 -16.49656677
		 7.016298294 0.47593924 -16.49656677 8.18568134 0.47593924 -16.49656677 9.35506439 0.47593924 -16.49656677
		 -9.35506439 0.77841973 -16.67902756 -8.18568134 0.77841973 -16.67902756 -7.016298294 0.77841973 -16.67902756
		 -5.84691525 0.77841973 -16.67902756 -4.6775322 0.77841973 -16.67902756 -3.50814915 0.77841973 -16.67902756
		 -2.3387661 0.77841973 -16.67902756 -1.16938305 0.77841973 -16.67902756 0 0.77841973 -16.67902756
		 1.16938305 0.77841973 -16.67902756 2.3387661 0.77841973 -16.67902756 3.50814915 0.77841973 -16.67902756
		 4.6775322 0.77841973 -16.67902756 5.84691525 0.77841973 -16.67902756 7.016298294 0.77841973 -16.67902756
		 8.18568134 0.77841973 -16.67902756 9.35506439 0.77841973 -16.67902756 -9.35506439 0.96088362 -16.98151016
		 -8.18568134 0.96088362 -16.98151016 -7.016298294 0.96088362 -16.98151016 -5.84691525 0.96088362 -16.98151016
		 -4.6775322 0.96088362 -16.98151016 -3.50814915 0.96088362 -16.98151016 -2.3387661 0.96088362 -16.98151016
		 -1.16938305 0.96088362 -16.98151016 0 0.96088362 -16.98151016 1.16938305 0.96088362 -16.98151016
		 2.3387661 0.96088362 -16.98151016 3.50814915 0.96088362 -16.98151016 4.6775322 0.96088362 -16.98151016
		 5.84691525 0.96088362 -16.98151016 7.016298294 0.96088362 -16.98151016 8.18568134 0.96088362 -16.98151016
		 9.35506439 0.96088362 -16.98151016 -9.35506439 0.96088362 -17.35832596 -8.18568134 0.96088362 -17.35832596
		 -7.016298294 0.96088362 -17.35832596 -5.84691525 0.96088362 -17.35832596 -4.6775322 0.96088362 -17.35832596
		 -3.50814915 0.96088362 -17.35832596 -2.3387661 0.96088362 -17.35832596 -1.16938305 0.96088362 -17.35832596
		 0 0.96088362 -17.35832596 1.16938305 0.96088362 -17.35832596 2.3387661 0.96088362 -17.35832596
		 3.50814915 0.96088362 -17.35832596 4.6775322 0.96088362 -17.35832596 5.84691525 0.96088362 -17.35832596
		 7.016298294 0.96088362 -17.35832596 8.18568134 0.96088362 -17.35832596 9.35506439 0.96088362 -17.35832596
		 -9.35506439 0.77842045 -17.66081047 -8.18568134 0.77842045 -17.66081047 -7.016298294 0.77842045 -17.66081047
		 -5.84691525 0.77842045 -17.66081047 -4.6775322 0.77842045 -17.66081047 -3.50814915 0.77842045 -17.66081047
		 -2.3387661 0.77842045 -17.66081047 -1.16938305 0.77842045 -17.66081047 0 0.77842045 -17.66081047
		 1.16938305 0.77842045 -17.66081047 2.3387661 0.77842045 -17.66081047 3.50814915 0.77842045 -17.66081047
		 4.6775322 0.77842045 -17.66081047 5.84691525 0.77842045 -17.66081047 7.016298294 0.77842045 -17.66081047
		 8.18568134 0.77842045 -17.66081047 9.35506439 0.77842045 -17.66081047 -9.35506439 0.47593924 -17.84326935
		 -8.18568134 0.47593924 -17.84326935 -7.016298294 0.47593924 -17.84326935 -5.84691525 0.47593924 -17.84326935
		 -4.6775322 0.47593924 -17.84326935 -3.50814915 0.47593924 -17.84326935 -2.3387661 0.47593924 -17.84326935
		 -1.16938305 0.47593924 -17.84326935 0 0.47593924 -17.84326935 1.16938305 0.47593924 -17.84326935
		 2.3387661 0.47593924 -17.84326935 3.50814915 0.47593924 -17.84326935 4.6775322 0.47593924 -17.84326935
		 5.84691525 0.47593924 -17.84326935 7.016298294 0.47593924 -17.84326935 8.18568134 0.47593924 -17.84326935
		 9.35506439 0.47593924 -17.84326935 -9.35506439 0.0057008453 -17.84326935 -8.18568134 0.0057008453 -17.84326935
		 -7.016298294 0.0057008453 -17.84326935 -5.84691525 0.0057008453 -17.84326935 -4.6775322 0.0057008453 -17.84326935
		 -3.50814915 0.0057008453 -17.84326935 -2.3387661 0.0057008453 -17.84326935 -1.16938305 0.0057008453 -17.84326935
		 0 0.0057008453 -17.84326935 1.16938305 0.0057008453 -17.84326935;
	setAttr ".vt[830:935]" 2.3387661 0.0057008453 -17.84326935 3.50814915 0.0057008453 -17.84326935
		 4.6775322 0.0057008453 -17.84326935 5.84691525 0.0057008453 -17.84326935 7.016298294 0.0057008453 -17.84326935
		 8.18568134 0.0057008453 -17.84326935 9.35506439 0.0057008453 -17.84326935 -9.35506439 -0.29677951 -17.66080856
		 -8.18568134 -0.29677951 -17.66080856 -7.016298294 -0.29677951 -17.66080856 -5.84691525 -0.29677951 -17.66080856
		 -4.6775322 -0.29677951 -17.66080856 -3.50814915 -0.29677951 -17.66080856 -2.3387661 -0.29677951 -17.66080856
		 -1.16938305 -0.29677951 -17.66080856 0 -0.29677951 -17.66080856 1.16938305 -0.29677951 -17.66080856
		 2.3387661 -0.29677951 -17.66080856 3.50814915 -0.29677951 -17.66080856 4.6775322 -0.29677951 -17.66080856
		 5.84691525 -0.29677951 -17.66080856 7.016298294 -0.29677951 -17.66080856 8.18568134 -0.29677951 -17.66080856
		 9.35506439 -0.29677951 -17.66080856 -9.35506439 -0.47924355 -17.35832596 -8.18568134 -0.47924355 -17.35832596
		 -7.016298294 -0.47924355 -17.35832596 -5.84691525 -0.47924355 -17.35832596 -4.6775322 -0.47924355 -17.35832596
		 -3.50814915 -0.47924355 -17.35832596 -2.3387661 -0.47924355 -17.35832596 -1.16938305 -0.47924355 -17.35832596
		 0 -0.47924355 -17.35832596 1.16938305 -0.47924355 -17.35832596 2.3387661 -0.47924355 -17.35832596
		 3.50814915 -0.47924355 -17.35832596 4.6775322 -0.47924355 -17.35832596 5.84691525 -0.47924355 -17.35832596
		 7.016298294 -0.47924355 -17.35832596 8.18568134 -0.47924355 -17.35832596 9.35506439 -0.47924355 -17.35832596
		 -9.35506439 -0.47924355 -16.98151016 -8.18568134 -0.47924355 -16.98151016 -7.016298294 -0.47924355 -16.98151016
		 -5.84691525 -0.47924355 -16.98151016 -4.6775322 -0.47924355 -16.98151016 -3.50814915 -0.47924355 -16.98151016
		 -2.3387661 -0.47924355 -16.98151016 -1.16938305 -0.47924355 -16.98151016 0 -0.47924355 -16.98151016
		 1.16938305 -0.47924355 -16.98151016 2.3387661 -0.47924355 -16.98151016 3.50814915 -0.47924355 -16.98151016
		 4.6775322 -0.47924355 -16.98151016 5.84691525 -0.47924355 -16.98151016 7.016298294 -0.47924355 -16.98151016
		 8.18568134 -0.47924355 -16.98151016 9.35506439 -0.47924355 -16.98151016 -10.52503204 0.70557588 -16.75187111
		 -10.52503204 0.44811335 -16.59656715 -10.52503204 0.033526756 -16.59656715 -10.52503204 -0.22393568 -16.75187111
		 -10.52503204 -0.37924355 -17.0093364716 -10.52503204 -0.37924355 -17.33049965 -10.52503204 -0.22393568 -17.58796501
		 -10.52503204 0.033526756 -17.74326897 -10.52503204 0.44811335 -17.74326897 -10.52503204 0.70557588 -17.58796501
		 -10.52503204 0.86088359 -17.33049965 -10.52503204 0.86088359 -17.0093364716 -10.52503204 -0.29677987 -16.67902565
		 -10.52503204 -0.47924355 -16.98151016 -10.52503204 -0.47924355 -17.35832596 -10.52503204 -0.29677951 -17.66080856
		 -10.52503204 0.0057008453 -17.84326935 -10.52503204 0.47593924 -17.84326935 -10.52503204 0.77842045 -17.66081047
		 -10.52503204 0.96088362 -17.35832596 -10.52503204 0.96088362 -16.98151016 -10.52503204 0.77841973 -16.67902756
		 -10.52503204 0.47593924 -16.49656677 -10.52503204 0.0057008453 -16.49656677 10.52503204 0.0057008453 -16.49656677
		 10.52503204 -0.29677987 -16.67902565 10.52503204 -0.47924355 -16.98151016 10.52503204 -0.47924355 -17.35832596
		 10.52503204 -0.29677951 -17.66080856 10.52503204 0.0057008453 -17.84326935 10.52503204 0.47593924 -17.84326935
		 10.52503204 0.77842045 -17.66081047 10.52503204 0.96088362 -17.35832596 10.52503204 0.96088362 -16.98151016
		 10.52503204 0.77841973 -16.67902756 10.52503204 0.47593924 -16.49656677 10.52503204 0.44811335 -16.59656715
		 10.52503204 0.033526756 -16.59656715 10.52503204 -0.22393568 -16.75187111 10.52503204 -0.37924355 -17.0093364716
		 10.52503204 -0.37924355 -17.33049965 10.52503204 -0.22393568 -17.58796501 10.52503204 0.033526756 -17.74326897
		 10.52503204 0.44811335 -17.74326897 10.52503204 0.70557588 -17.58796501 10.52503204 0.86088359 -17.33049965
		 10.52503204 0.86088359 -17.0093364716 10.52503204 0.70557588 -16.75187111;
	setAttr -s 1872 ".ed";
	setAttr ".ed[0:165]"  0 13 1 1 8 1 3 20 1 5 10 1 6 17 1 9 23 1 12 15 1 18 22 1
		 0 2 1 2 1 1 4 3 1 5 4 1 8 7 1 7 6 1 11 10 1 9 11 1 12 14 1 14 13 1 16 15 1 17 16 1
		 19 18 1 20 19 1 21 23 1 22 21 1 12 18 1 22 15 1 5 1 1 8 10 1 0 3 1 20 13 1 9 6 1
		 17 23 1 2 4 1 7 11 1 14 19 1 16 21 1 2 24 1 4 25 1 24 25 1 1 26 1 24 26 1 5 27 1
		 27 26 1 27 25 1 0 28 1 3 29 1 28 29 1 28 24 1 25 29 1 13 30 1 28 30 1 20 31 1 29 31 1
		 31 30 1 8 32 1 26 32 1 10 33 1 32 33 1 27 33 1 7 34 1 32 34 1 11 35 1 34 35 1 35 33 1
		 6 36 1 34 36 1 9 37 1 37 36 1 37 35 1 17 38 1 36 38 1 23 39 1 38 39 1 37 39 1 12 40 1
		 15 41 1 40 41 1 18 42 1 40 42 1 22 43 1 42 43 1 43 41 1 14 44 1 40 44 1 19 45 1 44 45 1
		 45 42 1 44 30 1 31 45 1 16 46 1 38 46 1 21 47 1 46 47 1 47 39 1 46 41 1 43 47 1 48 61 1
		 49 56 1 51 68 1 53 58 1 54 65 1 57 71 1 60 63 1 66 70 1 48 50 1 50 49 1 52 51 1 53 52 1
		 56 55 1 55 54 1 59 58 1 57 59 1 60 62 1 62 61 1 64 63 1 65 64 1 67 66 1 68 67 1 69 71 1
		 70 69 1 60 66 1 70 63 1 53 49 1 56 58 1 48 51 1 68 61 1 57 54 1 65 71 1 50 52 1 55 59 1
		 62 67 1 64 69 1 50 72 1 52 73 1 72 73 1 49 74 1 72 74 1 53 75 1 75 74 1 75 73 1 48 76 1
		 51 77 1 76 77 1 76 72 1 73 77 1 61 78 1 76 78 1 68 79 1 77 79 1 79 78 1 56 80 1 74 80 1
		 58 81 1 80 81 1 75 81 1 55 82 1 80 82 1 59 83 1 82 83 1 83 81 1 54 84 1 82 84 1 57 85 1
		 85 84 1 85 83 1 65 86 1;
	setAttr ".ed[166:331]" 84 86 1 71 87 1 86 87 1 85 87 1 60 88 1 63 89 1 88 89 1
		 66 90 1 88 90 1 70 91 1 90 91 1 91 89 1 62 92 1 88 92 1 67 93 1 92 93 1 93 90 1 92 78 1
		 79 93 1 64 94 1 86 94 1 69 95 1 94 95 1 95 87 1 94 89 1 91 95 1 96 109 1 97 104 1
		 99 116 1 101 106 1 102 113 1 105 119 1 108 111 1 114 118 1 96 98 1 98 97 1 100 99 1
		 101 100 1 104 103 1 103 102 1 107 106 1 105 107 1 108 110 1 110 109 1 112 111 1 113 112 1
		 115 114 1 116 115 1 117 119 1 118 117 1 108 114 1 118 111 1 101 97 1 104 106 1 96 99 1
		 116 109 1 105 102 1 113 119 1 98 100 1 103 107 1 110 115 1 112 117 1 98 120 1 100 121 1
		 120 121 1 97 122 1 120 122 1 101 123 1 123 122 1 123 121 1 96 124 1 99 125 1 124 125 1
		 124 120 1 121 125 1 109 126 1 124 126 1 116 127 1 125 127 1 127 126 1 104 128 1 122 128 1
		 106 129 1 128 129 1 123 129 1 103 130 1 128 130 1 107 131 1 130 131 1 131 129 1 102 132 1
		 130 132 1 105 133 1 133 132 1 133 131 1 113 134 1 132 134 1 119 135 1 134 135 1 133 135 1
		 108 136 1 111 137 1 136 137 1 114 138 1 136 138 1 118 139 1 138 139 1 139 137 1 110 140 1
		 136 140 1 115 141 1 140 141 1 141 138 1 140 126 1 127 141 1 112 142 1 134 142 1 117 143 1
		 142 143 1 143 135 1 142 137 1 139 143 1 144 157 1 145 152 1 147 164 1 149 154 1 150 161 1
		 153 167 1 156 159 1 162 166 1 144 146 1 146 145 1 148 147 1 149 148 1 152 151 1 151 150 1
		 155 154 1 153 155 1 156 158 1 158 157 1 160 159 1 161 160 1 163 162 1 164 163 1 165 167 1
		 166 165 1 156 162 1 166 159 1 149 145 1 152 154 1 144 147 1 164 157 1 153 150 1 161 167 1
		 146 148 1 151 155 1 158 163 1 160 165 1 146 168 1 148 169 1 168 169 1 145 170 1 168 170 1
		 149 171 1 171 170 1 171 169 1;
	setAttr ".ed[332:497]" 144 172 1 147 173 1 172 173 1 172 168 1 169 173 1 157 174 1
		 172 174 1 164 175 1 173 175 1 175 174 1 152 176 1 170 176 1 154 177 1 176 177 1 171 177 1
		 151 178 1 176 178 1 155 179 1 178 179 1 179 177 1 150 180 1 178 180 1 153 181 1 181 180 1
		 181 179 1 161 182 1 180 182 1 167 183 1 182 183 1 181 183 1 156 184 1 159 185 1 184 185 1
		 162 186 1 184 186 1 166 187 1 186 187 1 187 185 1 158 188 1 184 188 1 163 189 1 188 189 1
		 189 186 1 188 174 1 175 189 1 160 190 1 182 190 1 165 191 1 190 191 1 191 183 1 190 185 1
		 187 191 1 192 205 1 193 200 1 195 212 1 197 202 1 198 209 1 201 215 1 204 207 1 210 214 1
		 192 194 1 194 193 1 196 195 1 197 196 1 200 199 1 199 198 1 203 202 1 201 203 1 204 206 1
		 206 205 1 208 207 1 209 208 1 211 210 1 212 211 1 213 215 1 214 213 1 204 210 1 214 207 1
		 197 193 1 200 202 1 192 195 1 212 205 1 201 198 1 209 215 1 194 196 1 199 203 1 206 211 1
		 208 213 1 194 216 1 196 217 1 216 217 1 193 218 1 216 218 1 197 219 1 219 218 1 219 217 1
		 192 220 1 195 221 1 220 221 1 220 216 1 217 221 1 205 222 1 220 222 1 212 223 1 221 223 1
		 223 222 1 200 224 1 218 224 1 202 225 1 224 225 1 219 225 1 199 226 1 224 226 1 203 227 1
		 226 227 1 227 225 1 198 228 1 226 228 1 201 229 1 229 228 1 229 227 1 209 230 1 228 230 1
		 215 231 1 230 231 1 229 231 1 204 232 1 207 233 1 232 233 1 210 234 1 232 234 1 214 235 1
		 234 235 1 235 233 1 206 236 1 232 236 1 211 237 1 236 237 1 237 234 1 236 222 1 223 237 1
		 208 238 1 230 238 1 213 239 1 238 239 1 239 231 1 238 233 1 235 239 1 240 253 1 241 248 1
		 243 260 1 245 250 1 246 257 1 249 263 1 252 255 1 258 262 1 240 242 1 242 241 1 244 243 1
		 245 244 1 248 247 1 247 246 1 251 250 1 249 251 1 252 254 1 254 253 1;
	setAttr ".ed[498:663]" 256 255 1 257 256 1 259 258 1 260 259 1 261 263 1 262 261 1
		 252 258 1 262 255 1 245 241 1 248 250 1 240 243 1 260 253 1 249 246 1 257 263 1 242 244 1
		 247 251 1 254 259 1 256 261 1 242 264 1 244 265 1 264 265 1 241 266 1 264 266 1 245 267 1
		 267 266 1 267 265 1 240 268 1 243 269 1 268 269 1 268 264 1 265 269 1 253 270 1 268 270 1
		 260 271 1 269 271 1 271 270 1 248 272 1 266 272 1 250 273 1 272 273 1 267 273 1 247 274 1
		 272 274 1 251 275 1 274 275 1 275 273 1 246 276 1 274 276 1 249 277 1 277 276 1 277 275 1
		 257 278 1 276 278 1 263 279 1 278 279 1 277 279 1 252 280 1 255 281 1 280 281 1 258 282 1
		 280 282 1 262 283 1 282 283 1 283 281 1 254 284 1 280 284 1 259 285 1 284 285 1 285 282 1
		 284 270 1 271 285 1 256 286 1 278 286 1 261 287 1 286 287 1 287 279 1 286 281 1 283 287 1
		 288 301 1 289 296 1 291 308 1 293 298 1 294 305 1 297 311 1 300 303 1 306 310 1 288 290 1
		 290 289 1 292 291 1 293 292 1 296 295 1 295 294 1 299 298 1 297 299 1 300 302 1 302 301 1
		 304 303 1 305 304 1 307 306 1 308 307 1 309 311 1 310 309 1 300 306 1 310 303 1 293 289 1
		 296 298 1 288 291 1 308 301 1 297 294 1 305 311 1 290 292 1 295 299 1 302 307 1 304 309 1
		 290 312 1 292 313 1 312 313 1 289 314 1 312 314 1 293 315 1 315 314 1 315 313 1 288 316 1
		 291 317 1 316 317 1 316 312 1 313 317 1 301 318 1 316 318 1 308 319 1 317 319 1 319 318 1
		 296 320 1 314 320 1 298 321 1 320 321 1 315 321 1 295 322 1 320 322 1 299 323 1 322 323 1
		 323 321 1 294 324 1 322 324 1 297 325 1 325 324 1 325 323 1 305 326 1 324 326 1 311 327 1
		 326 327 1 325 327 1 300 328 1 303 329 1 328 329 1 306 330 1 328 330 1 310 331 1 330 331 1
		 331 329 1 302 332 1 328 332 1 307 333 1 332 333 1 333 330 1 332 318 1;
	setAttr ".ed[664:829]" 319 333 1 304 334 1 326 334 1 309 335 1 334 335 1 335 327 1
		 334 329 1 331 335 1 336 349 1 337 344 1 339 356 1 341 346 1 342 353 1 345 359 1 348 351 1
		 354 358 1 336 338 1 338 337 1 340 339 1 341 340 1 344 343 1 343 342 1 347 346 1 345 347 1
		 348 350 1 350 349 1 352 351 1 353 352 1 355 354 1 356 355 1 357 359 1 358 357 1 348 354 1
		 358 351 1 341 337 1 344 346 1 336 339 1 356 349 1 345 342 1 353 359 1 338 340 1 343 347 1
		 350 355 1 352 357 1 338 360 1 340 361 1 360 361 1 337 362 1 360 362 1 341 363 1 363 362 1
		 363 361 1 336 364 1 339 365 1 364 365 1 364 360 1 361 365 1 349 366 1 364 366 1 356 367 1
		 365 367 1 367 366 1 344 368 1 362 368 1 346 369 1 368 369 1 363 369 1 343 370 1 368 370 1
		 347 371 1 370 371 1 371 369 1 342 372 1 370 372 1 345 373 1 373 372 1 373 371 1 353 374 1
		 372 374 1 359 375 1 374 375 1 373 375 1 348 376 1 351 377 1 376 377 1 354 378 1 376 378 1
		 358 379 1 378 379 1 379 377 1 350 380 1 376 380 1 355 381 1 380 381 1 381 378 1 380 366 1
		 367 381 1 352 382 1 374 382 1 357 383 1 382 383 1 383 375 1 382 377 1 379 383 1 384 397 0
		 385 392 0 387 404 0 389 394 0 390 401 0 393 407 0 396 399 0 402 406 0 384 386 0 386 385 0
		 388 387 0 389 388 0 392 391 0 391 390 0 395 394 0 393 395 0 396 398 0 398 397 0 400 399 0
		 401 400 0 403 402 0 404 403 0 405 407 0 406 405 0 408 421 1 409 416 1 411 428 1 413 418 1
		 414 425 1 417 431 1 420 423 1 426 430 1 408 410 1 410 409 1 412 411 1 413 412 1 416 415 1
		 415 414 1 419 418 1 417 419 1 420 422 1 422 421 1 424 423 1 425 424 1 427 426 1 428 427 1
		 429 431 1 430 429 1 420 426 1 430 423 1 413 409 1 416 418 1 408 411 1 428 421 1 417 414 1
		 425 431 1 410 412 1 415 419 1 422 427 1 424 429 1 410 432 1 412 433 1;
	setAttr ".ed[830:995]" 432 433 1 409 434 1 432 434 1 413 435 1 435 434 1 435 433 1
		 408 436 1 411 437 1 436 437 1 436 432 1 433 437 1 421 438 1 436 438 1 428 439 1 437 439 1
		 439 438 1 416 440 1 434 440 1 418 441 1 440 441 1 435 441 1 415 442 1 440 442 1 419 443 1
		 442 443 1 443 441 1 414 444 1 442 444 1 417 445 1 445 444 1 445 443 1 425 446 1 444 446 1
		 431 447 1 446 447 1 445 447 1 420 448 1 423 449 1 448 449 1 426 450 1 448 450 1 430 451 1
		 450 451 1 451 449 1 422 452 1 448 452 1 427 453 1 452 453 1 453 450 1 452 438 1 439 453 1
		 424 454 1 446 454 1 429 455 1 454 455 1 455 447 1 454 449 1 451 455 1 386 456 1 388 457 1
		 385 458 1 456 458 0 389 459 1 459 457 0 384 460 1 387 461 1 460 456 0 457 461 0 397 462 1
		 460 462 0 404 463 1 461 463 0 392 464 1 458 464 0 394 465 1 459 465 0 391 466 1 464 466 0
		 395 467 1 467 465 0 390 468 1 466 468 0 393 469 1 469 467 0 401 470 1 468 470 0 407 471 1
		 469 471 0 396 472 1 399 473 1 472 473 0 402 474 1 406 475 1 474 475 0 398 476 1 472 476 0
		 403 477 1 477 474 0 476 462 0 463 477 0 400 478 1 470 478 0 405 479 1 479 471 0 478 473 0
		 475 479 0 683 480 1 496 667 1 496 495 0 495 498 1 498 497 0 497 496 1 495 494 0 494 499 1
		 499 498 0 494 493 0 493 500 1 500 499 0 493 492 0 492 501 1 501 500 0 492 491 0 491 502 1
		 502 501 0 491 490 0 490 503 1 503 502 0 490 489 0 489 504 1 504 503 0 489 488 0 488 505 1
		 505 504 0 488 487 0 487 506 1 506 505 0 487 486 0 486 507 1 507 506 0 486 485 0 485 508 1
		 508 507 0 485 484 0 484 509 1 509 508 0 484 483 0 483 510 1 510 509 0 483 482 0 482 511 1
		 511 510 0 482 481 0 481 512 1 512 511 0 481 480 0 480 513 1 513 512 0 515 514 1 514 497 1
		 516 515 1 517 516 1 518 517 1 519 518 1 520 519 1 521 520 1 522 521 1;
	setAttr ".ed[996:1161]" 523 522 1 524 523 1 525 524 1 526 525 1 527 526 1 528 527 1
		 529 528 1 513 530 1 530 529 1 532 531 0 531 514 1 533 532 0 534 533 0 535 534 0 536 535 0
		 537 536 0 538 537 0 539 538 0 540 539 0 541 540 0 542 541 0 543 542 0 544 543 0 545 544 0
		 546 545 0 530 547 1 547 546 0 549 548 0 548 531 1 550 549 0 551 550 0 552 551 0 553 552 0
		 554 553 0 555 554 0 556 555 0 557 556 0 558 557 0 559 558 0 560 559 0 561 560 0 562 561 0
		 563 562 0 547 564 1 564 563 0 566 565 1 565 548 1 567 566 1 568 567 1 569 568 1 570 569 1
		 571 570 1 572 571 1 573 572 1 574 573 1 575 574 1 576 575 1 577 576 1 578 577 1 579 578 1
		 580 579 1 564 581 1 581 580 1 583 582 0 582 565 1 584 583 0 585 584 0 586 585 0 587 586 0
		 588 587 0 589 588 0 590 589 0 591 590 0 592 591 0 593 592 0 594 593 0 595 594 0 596 595 0
		 597 596 0 581 598 1 598 597 0 600 599 0 599 582 1 601 600 0 602 601 0 603 602 0 604 603 0
		 605 604 0 606 605 0 607 606 0 608 607 0 609 608 0 610 609 0 611 610 0 612 611 0 613 612 0
		 614 613 0 598 615 1 615 614 0 617 616 1 616 599 1 618 617 1 619 618 1 620 619 1 621 620 1
		 622 621 1 623 622 1 624 623 1 625 624 1 626 625 1 627 626 1 628 627 1 629 628 1 630 629 1
		 631 630 1 615 632 1 632 631 1 634 633 0 633 616 1 635 634 0 636 635 0 637 636 0 638 637 0
		 639 638 0 640 639 0 641 640 0 642 641 0 643 642 0 644 643 0 645 644 0 646 645 0 647 646 0
		 648 647 0 632 649 1 649 648 0 651 650 0 650 633 1 652 651 0 653 652 0 654 653 0 655 654 0
		 656 655 0 657 656 0 658 657 0 659 658 0 660 659 0 661 660 0 662 661 0 663 662 0 664 663 0
		 665 664 0 649 666 1 666 665 0 668 667 1 667 650 1 669 668 1 670 669 1 671 670 1 672 671 1
		 673 672 1 674 673 1 675 674 1 676 675 1 677 676 1 678 677 1 679 678 1;
	setAttr ".ed[1162:1327]" 680 679 1 681 680 1 682 681 1 666 683 1 683 682 1 887 684 1
		 700 871 1 700 699 1 699 702 1 702 701 0 701 700 1 699 698 1 698 703 1 703 702 0 698 697 1
		 697 704 1 704 703 0 697 696 1 696 705 1 705 704 0 696 695 1 695 706 1 706 705 0 695 694 1
		 694 707 1 707 706 0 694 693 1 693 708 1 708 707 0 693 692 1 692 709 1 709 708 0 692 691 1
		 691 710 1 710 709 0 691 690 1 690 711 1 711 710 0 690 689 1 689 712 1 712 711 0 689 688 1
		 688 713 1 713 712 0 688 687 1 687 714 1 714 713 0 687 686 1 686 715 1 715 714 0 686 685 1
		 685 716 1 716 715 0 685 684 1 684 717 1 717 716 0 719 718 0 718 701 1 720 719 0 721 720 0
		 722 721 0 723 722 0 724 723 0 725 724 0 726 725 0 727 726 0 728 727 0 729 728 0 730 729 0
		 731 730 0 732 731 0 733 732 0 717 734 1 734 733 0 736 735 1 735 718 1 737 736 1 738 737 1
		 739 738 1 740 739 1 741 740 1 742 741 1 743 742 1 744 743 1 745 744 1 746 745 1 747 746 1
		 748 747 1 749 748 1 750 749 1 734 751 1 751 750 1 753 752 0 752 735 1 754 753 0 755 754 0
		 756 755 0 757 756 0 758 757 0 759 758 0 760 759 0 761 760 0 762 761 0 763 762 0 764 763 0
		 765 764 0 766 765 0 767 766 0 751 768 1 768 767 0 770 769 0 769 752 1 771 770 0 772 771 0
		 773 772 0 774 773 0 775 774 0 776 775 0 777 776 0 778 777 0 779 778 0 780 779 0 781 780 0
		 782 781 0 783 782 0 784 783 0 768 785 1 785 784 0 787 786 1 786 769 1 788 787 1 789 788 1
		 790 789 1 791 790 1 792 791 1 793 792 1 794 793 1 795 794 1 796 795 1 797 796 1 798 797 1
		 799 798 1 800 799 1 801 800 1 785 802 1 802 801 1 804 803 0 803 786 1 805 804 0 806 805 0
		 807 806 0 808 807 0 809 808 0 810 809 0 811 810 0 812 811 0 813 812 0 814 813 0 815 814 0
		 816 815 0 817 816 0 818 817 0 802 819 1 819 818 0 821 820 0 820 803 1;
	setAttr ".ed[1328:1493]" 822 821 0 823 822 0 824 823 0 825 824 0 826 825 0 827 826 0
		 828 827 0 829 828 0 830 829 0 831 830 0 832 831 0 833 832 0 834 833 0 835 834 0 819 836 1
		 836 835 0 838 837 1 837 820 1 839 838 1 840 839 1 841 840 1 842 841 1 843 842 1 844 843 1
		 845 844 1 846 845 1 847 846 1 848 847 1 849 848 1 850 849 1 851 850 1 852 851 1 836 853 1
		 853 852 1 855 854 0 854 837 1 856 855 0 857 856 0 858 857 0 859 858 0 860 859 0 861 860 0
		 862 861 0 863 862 0 864 863 0 865 864 0 866 865 0 867 866 0 868 867 0 869 868 0 853 870 1
		 870 869 0 872 871 0 871 854 1 873 872 0 874 873 0 875 874 0 876 875 0 877 876 0 878 877 0
		 879 878 0 880 879 0 881 880 0 882 881 0 883 882 0 884 883 0 885 884 0 886 885 0 870 887 1
		 887 886 0 700 900 1 458 901 0 701 911 0 718 910 0 464 902 0 466 903 1 468 904 0 470 905 0
		 472 908 0 769 907 0 476 909 1 478 906 1 398 888 1 496 889 0 396 899 0 399 898 0 400 897 1
		 401 896 0 390 895 0 391 894 1 392 893 0 385 892 0 386 891 1 384 890 0 480 924 0 387 925 0
		 388 926 1 389 927 0 394 928 0 395 929 1 393 930 0 407 931 0 405 932 1 406 933 0 402 934 0
		 403 935 1 461 912 0 684 913 1 463 923 0 477 922 1 474 921 0 475 920 0 479 919 1 471 918 0
		 469 917 0 467 916 1 465 915 0 459 914 0 512 529 1 511 528 1 510 527 1 509 526 1 508 525 1
		 507 524 1 506 523 1 505 522 1 504 521 1 503 520 1 502 519 1 501 518 1 500 517 1 499 516 1
		 498 515 1 529 546 1 528 545 1 527 544 1 526 543 1 525 542 1 524 541 1 523 540 1 522 539 1
		 521 538 1 520 537 1 519 536 1 518 535 1 517 534 1 516 533 1 515 532 1 546 563 1 545 562 1
		 544 561 1 543 560 1 542 559 1 541 558 1 540 557 1 539 556 1 538 555 1 537 554 1 536 553 1
		 535 552 1 534 551 1 533 550 1 532 549 1 563 580 1 562 579 1 561 578 1;
	setAttr ".ed[1494:1659]" 560 577 1 559 576 1 558 575 1 557 574 1 556 573 1 555 572 1
		 554 571 1 553 570 1 552 569 1 551 568 1 550 567 1 549 566 1 580 597 1 579 596 1 578 595 1
		 577 594 1 576 593 1 575 592 1 574 591 1 573 590 1 572 589 1 571 588 1 570 587 1 569 586 1
		 568 585 1 567 584 1 566 583 1 597 614 1 596 613 1 595 612 1 594 611 1 593 610 1 592 609 1
		 591 608 1 590 607 1 589 606 1 588 605 1 587 604 1 586 603 1 585 602 1 584 601 1 583 600 1
		 614 631 1 613 630 1 612 629 1 611 628 1 610 627 1 609 626 1 608 625 1 607 624 1 606 623 1
		 605 622 1 604 621 1 603 620 1 602 619 1 601 618 1 600 617 1 631 648 1 630 647 1 629 646 1
		 628 645 1 627 644 1 626 643 1 625 642 1 624 641 1 623 640 1 622 639 1 621 638 1 620 637 1
		 619 636 1 618 635 1 617 634 1 648 665 1 647 664 1 646 663 1 645 662 1 644 661 1 643 660 1
		 642 659 1 641 658 1 640 657 1 639 656 1 638 655 1 637 654 1 636 653 1 635 652 1 634 651 1
		 665 682 1 664 681 1 663 680 1 662 679 1 661 678 1 660 677 1 659 676 1 658 675 1 657 674 1
		 656 673 1 655 672 1 654 671 1 653 670 1 652 669 1 651 668 1 481 682 1 482 681 1 483 680 1
		 484 679 1 485 678 1 486 677 1 487 676 1 488 675 1 489 674 1 490 673 1 491 672 1 492 671 1
		 493 670 1 494 669 1 495 668 1 716 733 1 715 732 1 714 731 1 713 730 1 712 729 1 711 728 1
		 710 727 1 709 726 1 708 725 1 707 724 1 706 723 1 705 722 1 704 721 1 703 720 1 702 719 1
		 733 750 1 732 749 1 731 748 1 730 747 1 729 746 1 728 745 1 727 744 1 726 743 1 725 742 1
		 724 741 1 723 740 1 722 739 1 721 738 1 720 737 1 719 736 1 750 767 1 749 766 1 748 765 1
		 747 764 1 746 763 1 745 762 1 744 761 1 743 760 1 742 759 1 741 758 1 740 757 1 739 756 1
		 738 755 1 737 754 1 736 753 1 767 784 1 766 783 1 765 782 1 764 781 1;
	setAttr ".ed[1660:1825]" 763 780 1 762 779 1 761 778 1 760 777 1 759 776 1 758 775 1
		 757 774 1 756 773 1 755 772 1 754 771 1 753 770 1 784 801 1 783 800 1 782 799 1 781 798 1
		 780 797 1 779 796 1 778 795 1 777 794 1 776 793 1 775 792 1 774 791 1 773 790 1 772 789 1
		 771 788 1 770 787 1 801 818 1 800 817 1 799 816 1 798 815 1 797 814 1 796 813 1 795 812 1
		 794 811 1 793 810 1 792 809 1 791 808 1 790 807 1 789 806 1 788 805 1 787 804 1 818 835 1
		 817 834 1 816 833 1 815 832 1 814 831 1 813 830 1 812 829 1 811 828 1 810 827 1 809 826 1
		 808 825 1 807 824 1 806 823 1 805 822 1 804 821 1 835 852 1 834 851 1 833 850 1 832 849 1
		 831 848 1 830 847 1 829 846 1 828 845 1 827 844 1 826 843 1 825 842 1 824 841 1 823 840 1
		 822 839 1 821 838 1 852 869 1 851 868 1 850 867 1 849 866 1 848 865 1 847 864 1 846 863 1
		 845 862 1 844 861 1 843 860 1 842 859 1 841 858 1 840 857 1 839 856 1 838 855 1 869 886 1
		 868 885 1 867 884 1 866 883 1 865 882 1 864 881 1 863 880 1 862 879 1 861 878 1 860 877 1
		 859 876 1 858 875 1 857 874 1 856 873 1 855 872 1 685 886 1 686 885 1 687 884 1 688 883 1
		 689 882 1 690 881 1 691 880 1 692 879 1 693 878 1 694 877 1 695 876 1 696 875 1 697 874 1
		 698 873 1 699 872 1 888 667 1 889 397 0 890 497 0 891 514 1 892 531 0 893 548 0 894 565 1
		 895 582 0 896 599 0 897 616 1 898 633 0 899 650 0 888 889 1 889 890 1 890 891 1 891 892 1
		 892 893 1 893 894 1 894 895 1 895 896 1 896 897 1 897 898 1 898 899 1 899 888 1 900 456 1
		 901 871 0 902 854 0 903 837 1 904 820 0 905 803 0 906 786 1 907 473 0 908 752 0 909 735 1
		 910 462 0 911 460 0 900 901 1 901 902 1 902 903 1 903 904 1 904 905 1 905 906 1 906 907 1
		 907 908 1 908 909 1 909 910 1 910 911 1 911 900 1 912 717 0 913 457 1;
	setAttr ".ed[1826:1871]" 914 887 0 915 870 0 916 853 1 917 836 0 918 819 0 919 802 1
		 920 785 0 921 768 0 922 751 1 923 734 0 912 913 1 913 914 1 914 915 1 915 916 1 916 917 1
		 917 918 1 918 919 1 919 920 1 920 921 1 921 922 1 922 923 1 923 912 1 924 404 0 925 513 0
		 926 530 1 927 547 0 928 564 0 929 581 1 930 598 0 931 615 0 932 632 1 933 649 0 934 666 0
		 935 683 1 924 925 1 925 926 1 926 927 1 927 928 1 928 929 1 929 930 1 930 931 1 931 932 1
		 932 933 1 933 934 1 934 935 1 935 924 1;
	setAttr -s 936 -ch 3744 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -39 40 -43 43
		mu 0 4 51 48 49 50
		f 4 -47 47 38 48
		mu 0 4 53 52 48 51
		f 4 -51 46 52 53
		mu 0 4 54 52 53 55
		f 4 42 55 57 -59
		mu 0 4 50 49 56 57
		f 4 60 62 63 -58
		mu 0 4 56 58 59 57
		f 4 65 -68 68 -63
		mu 0 4 58 60 61 59
		f 4 70 72 -74 67
		mu 0 4 60 62 63 61
		f 4 -77 78 80 81
		mu 0 4 64 65 66 67
		f 4 83 85 86 -79
		mu 0 4 65 68 69 66
		f 4 87 -54 88 -86
		mu 0 4 68 54 55 69
		f 4 90 92 93 -73
		mu 0 4 62 70 71 63
		f 4 94 -82 95 -93
		mu 0 4 70 64 67 71
		f 4 -12 26 -10 32
		mu 0 4 24 27 26 25
		f 4 -11 -33 -9 28
		mu 0 4 28 24 25 29
		f 4 -30 -3 -29 0
		mu 0 4 30 31 28 29
		f 4 3 -28 -2 -27
		mu 0 4 27 33 32 26
		f 4 27 -15 -34 -13
		mu 0 4 32 33 35 34
		f 4 33 -16 30 -14
		mu 0 4 34 35 37 36
		f 4 -31 5 -32 -5
		mu 0 4 36 37 39 38
		f 4 -26 -8 -25 6
		mu 0 4 40 43 42 41
		f 4 24 -21 -35 -17
		mu 0 4 41 42 45 44
		f 4 34 -22 29 -18
		mu 0 4 44 45 31 30
		f 4 31 -23 -36 -20
		mu 0 4 38 39 47 46
		f 4 35 -24 25 -19
		mu 0 4 46 47 43 40
		f 4 9 39 -41 -37
		mu 0 4 17 10 49 48
		f 4 11 37 -44 -42
		mu 0 4 1 0 51 50
		f 4 8 36 -48 -45
		mu 0 4 16 17 48 52
		f 4 10 45 -49 -38
		mu 0 4 0 14 53 51
		f 4 -1 44 50 -50
		mu 0 4 12 16 52 54
		f 4 2 51 -53 -46
		mu 0 4 14 21 55 53
		f 4 1 54 -56 -40
		mu 0 4 10 2 56 49
		f 4 -4 41 58 -57
		mu 0 4 11 1 50 57
		f 4 12 59 -61 -55
		mu 0 4 2 3 58 56
		f 4 14 56 -64 -62
		mu 0 4 18 11 57 59
		f 4 13 64 -66 -60
		mu 0 4 3 13 60 58
		f 4 15 61 -69 -67
		mu 0 4 19 18 59 61
		f 4 4 69 -71 -65
		mu 0 4 13 7 62 60
		f 4 -6 66 73 -72
		mu 0 4 15 19 61 63
		f 4 -7 74 76 -76
		mu 0 4 8 4 65 64
		f 4 7 79 -81 -78
		mu 0 4 9 23 67 66
		f 4 16 82 -84 -75
		mu 0 4 4 5 68 65
		f 4 20 77 -87 -85
		mu 0 4 20 9 66 69
		f 4 17 49 -88 -83
		mu 0 4 5 12 54 68
		f 4 21 84 -89 -52
		mu 0 4 21 20 69 55
		f 4 19 89 -91 -70
		mu 0 4 7 6 70 62
		f 4 22 71 -94 -92
		mu 0 4 22 15 63 71
		f 4 18 75 -95 -90
		mu 0 4 6 8 64 70
		f 4 23 91 -96 -80
		mu 0 4 23 22 71 67
		f 4 -135 136 -139 139
		mu 0 4 72 73 74 75
		f 4 -143 143 134 144
		mu 0 4 76 77 73 72
		f 4 -147 142 148 149
		mu 0 4 78 77 76 79
		f 4 138 151 153 -155
		mu 0 4 75 74 80 81
		f 4 156 158 159 -154
		mu 0 4 80 82 83 81
		f 4 161 -164 164 -159
		mu 0 4 82 84 85 83
		f 4 166 168 -170 163
		mu 0 4 84 86 87 85
		f 4 -173 174 176 177
		mu 0 4 88 89 90 91
		f 4 179 181 182 -175
		mu 0 4 89 92 93 90
		f 4 183 -150 184 -182
		mu 0 4 92 78 79 93
		f 4 186 188 189 -169
		mu 0 4 86 94 95 87
		f 4 190 -178 191 -189
		mu 0 4 94 88 91 95
		f 4 -108 122 -106 128
		mu 0 4 96 97 98 99
		f 4 -107 -129 -105 124
		mu 0 4 100 96 99 101
		f 4 -126 -99 -125 96
		mu 0 4 102 103 100 101
		f 4 99 -124 -98 -123
		mu 0 4 97 104 105 98
		f 4 123 -111 -130 -109
		mu 0 4 105 104 106 107
		f 4 129 -112 126 -110
		mu 0 4 107 106 108 109
		f 4 -127 101 -128 -101
		mu 0 4 109 108 110 111
		f 4 -122 -104 -121 102
		mu 0 4 112 113 114 115
		f 4 120 -117 -131 -113
		mu 0 4 115 114 116 117
		f 4 130 -118 125 -114
		mu 0 4 117 116 103 102
		f 4 127 -119 -132 -116
		mu 0 4 111 110 118 119
		f 4 131 -120 121 -115
		mu 0 4 119 118 113 112
		f 4 105 135 -137 -133
		mu 0 4 120 121 74 73
		f 4 107 133 -140 -138
		mu 0 4 122 123 72 75
		f 4 104 132 -144 -141
		mu 0 4 124 120 73 77
		f 4 106 141 -145 -134
		mu 0 4 123 125 76 72
		f 4 -97 140 146 -146
		mu 0 4 126 124 77 78
		f 4 98 147 -149 -142
		mu 0 4 125 127 79 76
		f 4 97 150 -152 -136
		mu 0 4 121 128 80 74
		f 4 -100 137 154 -153
		mu 0 4 129 122 75 81
		f 4 108 155 -157 -151
		mu 0 4 128 130 82 80
		f 4 110 152 -160 -158
		mu 0 4 131 129 81 83
		f 4 109 160 -162 -156
		mu 0 4 130 132 84 82
		f 4 111 157 -165 -163
		mu 0 4 133 131 83 85
		f 4 100 165 -167 -161
		mu 0 4 132 134 86 84
		f 4 -102 162 169 -168
		mu 0 4 135 133 85 87
		f 4 -103 170 172 -172
		mu 0 4 136 137 89 88
		f 4 103 175 -177 -174
		mu 0 4 138 139 91 90
		f 4 112 178 -180 -171
		mu 0 4 137 140 92 89
		f 4 116 173 -183 -181
		mu 0 4 141 138 90 93
		f 4 113 145 -184 -179
		mu 0 4 140 126 78 92
		f 4 117 180 -185 -148
		mu 0 4 127 141 93 79
		f 4 115 185 -187 -166
		mu 0 4 134 142 94 86
		f 4 118 167 -190 -188
		mu 0 4 143 135 87 95
		f 4 114 171 -191 -186
		mu 0 4 142 136 88 94
		f 4 119 187 -192 -176
		mu 0 4 139 143 95 91
		f 4 -231 232 -235 235
		mu 0 4 144 145 146 147
		f 4 -239 239 230 240
		mu 0 4 148 149 145 144
		f 4 -243 238 244 245
		mu 0 4 150 149 148 151
		f 4 234 247 249 -251
		mu 0 4 147 146 152 153
		f 4 252 254 255 -250
		mu 0 4 152 154 155 153
		f 4 257 -260 260 -255
		mu 0 4 154 156 157 155
		f 4 262 264 -266 259
		mu 0 4 156 158 159 157
		f 4 -269 270 272 273
		mu 0 4 160 161 162 163
		f 4 275 277 278 -271
		mu 0 4 161 164 165 162
		f 4 279 -246 280 -278
		mu 0 4 164 150 151 165
		f 4 282 284 285 -265
		mu 0 4 158 166 167 159
		f 4 286 -274 287 -285
		mu 0 4 166 160 163 167
		f 4 -204 218 -202 224
		mu 0 4 168 169 170 171
		f 4 -203 -225 -201 220
		mu 0 4 172 168 171 173
		f 4 -222 -195 -221 192
		mu 0 4 174 175 172 173
		f 4 195 -220 -194 -219
		mu 0 4 169 176 177 170
		f 4 219 -207 -226 -205
		mu 0 4 177 176 178 179
		f 4 225 -208 222 -206
		mu 0 4 179 178 180 181
		f 4 -223 197 -224 -197
		mu 0 4 181 180 182 183
		f 4 -218 -200 -217 198
		mu 0 4 184 185 186 187
		f 4 216 -213 -227 -209
		mu 0 4 187 186 188 189
		f 4 226 -214 221 -210
		mu 0 4 189 188 175 174
		f 4 223 -215 -228 -212
		mu 0 4 183 182 190 191
		f 4 227 -216 217 -211
		mu 0 4 191 190 185 184
		f 4 201 231 -233 -229
		mu 0 4 192 193 146 145
		f 4 203 229 -236 -234
		mu 0 4 194 195 144 147
		f 4 200 228 -240 -237
		mu 0 4 196 192 145 149
		f 4 202 237 -241 -230
		mu 0 4 195 197 148 144
		f 4 -193 236 242 -242
		mu 0 4 198 196 149 150
		f 4 194 243 -245 -238
		mu 0 4 197 199 151 148
		f 4 193 246 -248 -232
		mu 0 4 193 200 152 146
		f 4 -196 233 250 -249
		mu 0 4 201 194 147 153
		f 4 204 251 -253 -247
		mu 0 4 200 202 154 152
		f 4 206 248 -256 -254
		mu 0 4 203 201 153 155
		f 4 205 256 -258 -252
		mu 0 4 202 204 156 154
		f 4 207 253 -261 -259
		mu 0 4 205 203 155 157
		f 4 196 261 -263 -257
		mu 0 4 204 206 158 156
		f 4 -198 258 265 -264
		mu 0 4 207 205 157 159
		f 4 -199 266 268 -268
		mu 0 4 208 209 161 160
		f 4 199 271 -273 -270
		mu 0 4 210 211 163 162
		f 4 208 274 -276 -267
		mu 0 4 209 212 164 161
		f 4 212 269 -279 -277
		mu 0 4 213 210 162 165
		f 4 209 241 -280 -275
		mu 0 4 212 198 150 164
		f 4 213 276 -281 -244
		mu 0 4 199 213 165 151
		f 4 211 281 -283 -262
		mu 0 4 206 214 166 158
		f 4 214 263 -286 -284
		mu 0 4 215 207 159 167
		f 4 210 267 -287 -282
		mu 0 4 214 208 160 166
		f 4 215 283 -288 -272
		mu 0 4 211 215 167 163
		f 4 -327 328 -331 331
		mu 0 4 216 217 218 219
		f 4 -335 335 326 336
		mu 0 4 220 221 217 216
		f 4 -339 334 340 341
		mu 0 4 222 221 220 223
		f 4 330 343 345 -347
		mu 0 4 219 218 224 225
		f 4 348 350 351 -346
		mu 0 4 224 226 227 225
		f 4 353 -356 356 -351
		mu 0 4 226 228 229 227
		f 4 358 360 -362 355
		mu 0 4 228 230 231 229
		f 4 -365 366 368 369
		mu 0 4 232 233 234 235
		f 4 371 373 374 -367
		mu 0 4 233 236 237 234
		f 4 375 -342 376 -374
		mu 0 4 236 222 223 237
		f 4 378 380 381 -361
		mu 0 4 230 238 239 231
		f 4 382 -370 383 -381
		mu 0 4 238 232 235 239
		f 4 -300 314 -298 320
		mu 0 4 240 241 242 243
		f 4 -299 -321 -297 316
		mu 0 4 244 240 243 245
		f 4 -318 -291 -317 288
		mu 0 4 246 247 244 245
		f 4 291 -316 -290 -315
		mu 0 4 241 248 249 242
		f 4 315 -303 -322 -301
		mu 0 4 249 248 250 251
		f 4 321 -304 318 -302
		mu 0 4 251 250 252 253
		f 4 -319 293 -320 -293
		mu 0 4 253 252 254 255
		f 4 -314 -296 -313 294
		mu 0 4 256 257 258 259
		f 4 312 -309 -323 -305
		mu 0 4 259 258 260 261
		f 4 322 -310 317 -306
		mu 0 4 261 260 247 246
		f 4 319 -311 -324 -308
		mu 0 4 255 254 262 263
		f 4 323 -312 313 -307
		mu 0 4 263 262 257 256
		f 4 297 327 -329 -325
		mu 0 4 264 265 218 217
		f 4 299 325 -332 -330
		mu 0 4 266 267 216 219
		f 4 296 324 -336 -333
		mu 0 4 268 264 217 221
		f 4 298 333 -337 -326
		mu 0 4 267 269 220 216
		f 4 -289 332 338 -338
		mu 0 4 270 268 221 222
		f 4 290 339 -341 -334
		mu 0 4 269 271 223 220
		f 4 289 342 -344 -328
		mu 0 4 265 272 224 218
		f 4 -292 329 346 -345
		mu 0 4 273 266 219 225
		f 4 300 347 -349 -343
		mu 0 4 272 274 226 224
		f 4 302 344 -352 -350
		mu 0 4 275 273 225 227
		f 4 301 352 -354 -348
		mu 0 4 274 276 228 226
		f 4 303 349 -357 -355
		mu 0 4 277 275 227 229
		f 4 292 357 -359 -353
		mu 0 4 276 278 230 228
		f 4 -294 354 361 -360
		mu 0 4 279 277 229 231
		f 4 -295 362 364 -364
		mu 0 4 280 281 233 232
		f 4 295 367 -369 -366
		mu 0 4 282 283 235 234
		f 4 304 370 -372 -363
		mu 0 4 281 284 236 233
		f 4 308 365 -375 -373
		mu 0 4 285 282 234 237
		f 4 305 337 -376 -371
		mu 0 4 284 270 222 236
		f 4 309 372 -377 -340
		mu 0 4 271 285 237 223
		f 4 307 377 -379 -358
		mu 0 4 278 286 238 230
		f 4 310 359 -382 -380
		mu 0 4 287 279 231 239
		f 4 306 363 -383 -378
		mu 0 4 286 280 232 238
		f 4 311 379 -384 -368
		mu 0 4 283 287 239 235
		f 4 -423 424 -427 427
		mu 0 4 288 289 290 291
		f 4 -431 431 422 432
		mu 0 4 292 293 289 288
		f 4 -435 430 436 437
		mu 0 4 294 293 292 295
		f 4 426 439 441 -443
		mu 0 4 291 290 296 297
		f 4 444 446 447 -442
		mu 0 4 296 298 299 297
		f 4 449 -452 452 -447
		mu 0 4 298 300 301 299
		f 4 454 456 -458 451
		mu 0 4 300 302 303 301
		f 4 -461 462 464 465
		mu 0 4 304 305 306 307
		f 4 467 469 470 -463
		mu 0 4 305 308 309 306
		f 4 471 -438 472 -470
		mu 0 4 308 294 295 309
		f 4 474 476 477 -457
		mu 0 4 302 310 311 303
		f 4 478 -466 479 -477
		mu 0 4 310 304 307 311
		f 4 -396 410 -394 416
		mu 0 4 312 313 314 315
		f 4 -395 -417 -393 412
		mu 0 4 316 312 315 317
		f 4 -414 -387 -413 384
		mu 0 4 318 319 316 317
		f 4 387 -412 -386 -411
		mu 0 4 313 320 321 314
		f 4 411 -399 -418 -397
		mu 0 4 321 320 322 323
		f 4 417 -400 414 -398
		mu 0 4 323 322 324 325
		f 4 -415 389 -416 -389
		mu 0 4 325 324 326 327
		f 4 -410 -392 -409 390
		mu 0 4 328 329 330 331
		f 4 408 -405 -419 -401
		mu 0 4 331 330 332 333
		f 4 418 -406 413 -402
		mu 0 4 333 332 319 318
		f 4 415 -407 -420 -404
		mu 0 4 327 326 334 335
		f 4 419 -408 409 -403
		mu 0 4 335 334 329 328
		f 4 393 423 -425 -421
		mu 0 4 336 337 290 289
		f 4 395 421 -428 -426
		mu 0 4 338 339 288 291
		f 4 392 420 -432 -429
		mu 0 4 340 336 289 293
		f 4 394 429 -433 -422
		mu 0 4 339 341 292 288
		f 4 -385 428 434 -434
		mu 0 4 342 340 293 294
		f 4 386 435 -437 -430
		mu 0 4 341 343 295 292
		f 4 385 438 -440 -424
		mu 0 4 337 344 296 290
		f 4 -388 425 442 -441
		mu 0 4 345 338 291 297
		f 4 396 443 -445 -439
		mu 0 4 344 346 298 296
		f 4 398 440 -448 -446
		mu 0 4 347 345 297 299
		f 4 397 448 -450 -444
		mu 0 4 346 348 300 298
		f 4 399 445 -453 -451
		mu 0 4 349 347 299 301
		f 4 388 453 -455 -449
		mu 0 4 348 350 302 300
		f 4 -390 450 457 -456
		mu 0 4 351 349 301 303
		f 4 -391 458 460 -460
		mu 0 4 352 353 305 304
		f 4 391 463 -465 -462
		mu 0 4 354 355 307 306
		f 4 400 466 -468 -459
		mu 0 4 353 356 308 305
		f 4 404 461 -471 -469
		mu 0 4 357 354 306 309
		f 4 401 433 -472 -467
		mu 0 4 356 342 294 308
		f 4 405 468 -473 -436
		mu 0 4 343 357 309 295
		f 4 403 473 -475 -454
		mu 0 4 350 358 310 302
		f 4 406 455 -478 -476
		mu 0 4 359 351 303 311
		f 4 402 459 -479 -474
		mu 0 4 358 352 304 310
		f 4 407 475 -480 -464
		mu 0 4 355 359 311 307
		f 4 -519 520 -523 523
		mu 0 4 360 361 362 363
		f 4 -527 527 518 528
		mu 0 4 364 365 361 360
		f 4 -531 526 532 533
		mu 0 4 366 365 364 367
		f 4 522 535 537 -539
		mu 0 4 363 362 368 369
		f 4 540 542 543 -538
		mu 0 4 368 370 371 369
		f 4 545 -548 548 -543
		mu 0 4 370 372 373 371
		f 4 550 552 -554 547
		mu 0 4 372 374 375 373
		f 4 -557 558 560 561
		mu 0 4 376 377 378 379
		f 4 563 565 566 -559
		mu 0 4 377 380 381 378
		f 4 567 -534 568 -566
		mu 0 4 380 366 367 381
		f 4 570 572 573 -553
		mu 0 4 374 382 383 375
		f 4 574 -562 575 -573
		mu 0 4 382 376 379 383
		f 4 -492 506 -490 512
		mu 0 4 384 385 386 387
		f 4 -491 -513 -489 508
		mu 0 4 388 384 387 389
		f 4 -510 -483 -509 480
		mu 0 4 390 391 388 389
		f 4 483 -508 -482 -507
		mu 0 4 385 392 393 386
		f 4 507 -495 -514 -493
		mu 0 4 393 392 394 395
		f 4 513 -496 510 -494
		mu 0 4 395 394 396 397
		f 4 -511 485 -512 -485
		mu 0 4 397 396 398 399
		f 4 -506 -488 -505 486
		mu 0 4 400 401 402 403
		f 4 504 -501 -515 -497
		mu 0 4 403 402 404 405
		f 4 514 -502 509 -498
		mu 0 4 405 404 391 390
		f 4 511 -503 -516 -500
		mu 0 4 399 398 406 407
		f 4 515 -504 505 -499
		mu 0 4 407 406 401 400
		f 4 489 519 -521 -517
		mu 0 4 408 409 362 361
		f 4 491 517 -524 -522
		mu 0 4 410 411 360 363
		f 4 488 516 -528 -525
		mu 0 4 412 408 361 365
		f 4 490 525 -529 -518
		mu 0 4 411 413 364 360
		f 4 -481 524 530 -530
		mu 0 4 414 412 365 366
		f 4 482 531 -533 -526
		mu 0 4 413 415 367 364
		f 4 481 534 -536 -520
		mu 0 4 409 416 368 362
		f 4 -484 521 538 -537
		mu 0 4 417 410 363 369
		f 4 492 539 -541 -535
		mu 0 4 416 418 370 368
		f 4 494 536 -544 -542
		mu 0 4 419 417 369 371
		f 4 493 544 -546 -540
		mu 0 4 418 420 372 370
		f 4 495 541 -549 -547
		mu 0 4 421 419 371 373
		f 4 484 549 -551 -545
		mu 0 4 420 422 374 372
		f 4 -486 546 553 -552
		mu 0 4 423 421 373 375
		f 4 -487 554 556 -556
		mu 0 4 424 425 377 376
		f 4 487 559 -561 -558
		mu 0 4 426 427 379 378
		f 4 496 562 -564 -555
		mu 0 4 425 428 380 377
		f 4 500 557 -567 -565
		mu 0 4 429 426 378 381
		f 4 497 529 -568 -563
		mu 0 4 428 414 366 380
		f 4 501 564 -569 -532
		mu 0 4 415 429 381 367
		f 4 499 569 -571 -550
		mu 0 4 422 430 382 374
		f 4 502 551 -574 -572
		mu 0 4 431 423 375 383
		f 4 498 555 -575 -570
		mu 0 4 430 424 376 382
		f 4 503 571 -576 -560
		mu 0 4 427 431 383 379
		f 4 -615 616 -619 619
		mu 0 4 432 433 434 435
		f 4 -623 623 614 624
		mu 0 4 436 437 433 432
		f 4 -627 622 628 629
		mu 0 4 438 437 436 439
		f 4 618 631 633 -635
		mu 0 4 435 434 440 441
		f 4 636 638 639 -634
		mu 0 4 440 442 443 441
		f 4 641 -644 644 -639
		mu 0 4 442 444 445 443
		f 4 646 648 -650 643
		mu 0 4 444 446 447 445
		f 4 -653 654 656 657
		mu 0 4 448 449 450 451
		f 4 659 661 662 -655
		mu 0 4 449 452 453 450
		f 4 663 -630 664 -662
		mu 0 4 452 438 439 453
		f 4 666 668 669 -649
		mu 0 4 446 454 455 447
		f 4 670 -658 671 -669
		mu 0 4 454 448 451 455
		f 4 -588 602 -586 608
		mu 0 4 456 457 458 459
		f 4 -587 -609 -585 604
		mu 0 4 460 456 459 461
		f 4 -606 -579 -605 576
		mu 0 4 462 463 460 461
		f 4 579 -604 -578 -603
		mu 0 4 457 464 465 458
		f 4 603 -591 -610 -589
		mu 0 4 465 464 466 467
		f 4 609 -592 606 -590
		mu 0 4 467 466 468 469
		f 4 -607 581 -608 -581
		mu 0 4 469 468 470 471
		f 4 -602 -584 -601 582
		mu 0 4 472 473 474 475
		f 4 600 -597 -611 -593
		mu 0 4 475 474 476 477
		f 4 610 -598 605 -594
		mu 0 4 477 476 463 462
		f 4 607 -599 -612 -596
		mu 0 4 471 470 478 479
		f 4 611 -600 601 -595
		mu 0 4 479 478 473 472
		f 4 585 615 -617 -613
		mu 0 4 480 481 434 433
		f 4 587 613 -620 -618
		mu 0 4 482 483 432 435
		f 4 584 612 -624 -621
		mu 0 4 484 480 433 437
		f 4 586 621 -625 -614
		mu 0 4 483 485 436 432
		f 4 -577 620 626 -626
		mu 0 4 486 484 437 438
		f 4 578 627 -629 -622
		mu 0 4 485 487 439 436
		f 4 577 630 -632 -616
		mu 0 4 481 488 440 434
		f 4 -580 617 634 -633
		mu 0 4 489 482 435 441
		f 4 588 635 -637 -631
		mu 0 4 488 490 442 440
		f 4 590 632 -640 -638
		mu 0 4 491 489 441 443
		f 4 589 640 -642 -636
		mu 0 4 490 492 444 442
		f 4 591 637 -645 -643
		mu 0 4 493 491 443 445
		f 4 580 645 -647 -641
		mu 0 4 492 494 446 444
		f 4 -582 642 649 -648
		mu 0 4 495 493 445 447
		f 4 -583 650 652 -652
		mu 0 4 496 497 449 448
		f 4 583 655 -657 -654
		mu 0 4 498 499 451 450
		f 4 592 658 -660 -651
		mu 0 4 497 500 452 449
		f 4 596 653 -663 -661
		mu 0 4 501 498 450 453
		f 4 593 625 -664 -659
		mu 0 4 500 486 438 452
		f 4 597 660 -665 -628
		mu 0 4 487 501 453 439
		f 4 595 665 -667 -646
		mu 0 4 494 502 454 446
		f 4 598 647 -670 -668
		mu 0 4 503 495 447 455
		f 4 594 651 -671 -666
		mu 0 4 502 496 448 454
		f 4 599 667 -672 -656
		mu 0 4 499 503 455 451
		f 4 -711 712 -715 715
		mu 0 4 504 505 506 507
		f 4 -719 719 710 720
		mu 0 4 508 509 505 504
		f 4 -723 718 724 725
		mu 0 4 510 509 508 511
		f 4 714 727 729 -731
		mu 0 4 507 506 512 513
		f 4 732 734 735 -730
		mu 0 4 512 514 515 513
		f 4 737 -740 740 -735
		mu 0 4 514 516 517 515
		f 4 742 744 -746 739
		mu 0 4 516 518 519 517
		f 4 -749 750 752 753
		mu 0 4 520 521 522 523
		f 4 755 757 758 -751
		mu 0 4 521 524 525 522
		f 4 759 -726 760 -758
		mu 0 4 524 510 511 525
		f 4 762 764 765 -745
		mu 0 4 518 526 527 519
		f 4 766 -754 767 -765
		mu 0 4 526 520 523 527
		f 4 -684 698 -682 704
		mu 0 4 528 529 530 531
		f 4 -683 -705 -681 700
		mu 0 4 532 528 531 533
		f 4 -702 -675 -701 672
		mu 0 4 534 535 532 533
		f 4 675 -700 -674 -699
		mu 0 4 529 536 537 530
		f 4 699 -687 -706 -685
		mu 0 4 537 536 538 539
		f 4 705 -688 702 -686
		mu 0 4 539 538 540 541
		f 4 -703 677 -704 -677
		mu 0 4 541 540 542 543
		f 4 -698 -680 -697 678
		mu 0 4 544 545 546 547
		f 4 696 -693 -707 -689
		mu 0 4 547 546 548 549
		f 4 706 -694 701 -690
		mu 0 4 549 548 535 534
		f 4 703 -695 -708 -692
		mu 0 4 543 542 550 551
		f 4 707 -696 697 -691
		mu 0 4 551 550 545 544
		f 4 681 711 -713 -709
		mu 0 4 552 553 506 505
		f 4 683 709 -716 -714
		mu 0 4 554 555 504 507
		f 4 680 708 -720 -717
		mu 0 4 556 552 505 509
		f 4 682 717 -721 -710
		mu 0 4 555 557 508 504
		f 4 -673 716 722 -722
		mu 0 4 558 556 509 510
		f 4 674 723 -725 -718
		mu 0 4 557 559 511 508
		f 4 673 726 -728 -712
		mu 0 4 553 560 512 506
		f 4 -676 713 730 -729
		mu 0 4 561 554 507 513
		f 4 684 731 -733 -727
		mu 0 4 560 562 514 512
		f 4 686 728 -736 -734
		mu 0 4 563 561 513 515
		f 4 685 736 -738 -732
		mu 0 4 562 564 516 514
		f 4 687 733 -741 -739
		mu 0 4 565 563 515 517
		f 4 676 741 -743 -737
		mu 0 4 564 566 518 516
		f 4 -678 738 745 -744
		mu 0 4 567 565 517 519
		f 4 -679 746 748 -748
		mu 0 4 568 569 521 520
		f 4 679 751 -753 -750
		mu 0 4 570 571 523 522
		f 4 688 754 -756 -747
		mu 0 4 569 572 524 521
		f 4 692 749 -759 -757
		mu 0 4 573 570 522 525
		f 4 689 721 -760 -755
		mu 0 4 572 558 510 524
		f 4 693 756 -761 -724
		mu 0 4 559 573 525 511
		f 4 691 761 -763 -742
		mu 0 4 566 574 526 518
		f 4 694 743 -766 -764
		mu 0 4 575 567 519 527
		f 4 690 747 -767 -762
		mu 0 4 574 568 520 526
		f 4 695 763 -768 -752
		mu 0 4 571 575 527 523
		f 4 -831 832 -835 835
		mu 0 4 576 577 578 579
		f 4 -839 839 830 840
		mu 0 4 580 581 577 576
		f 4 -843 838 844 845
		mu 0 4 582 581 580 583
		f 4 834 847 849 -851
		mu 0 4 579 578 584 585
		f 4 852 854 855 -850
		mu 0 4 584 586 587 585
		f 4 857 -860 860 -855
		mu 0 4 586 588 589 587
		f 4 862 864 -866 859
		mu 0 4 588 590 591 589
		f 4 -869 870 872 873
		mu 0 4 592 593 594 595
		f 4 875 877 878 -871
		mu 0 4 593 596 597 594
		f 4 879 -846 880 -878
		mu 0 4 596 582 583 597
		f 4 882 884 885 -865
		mu 0 4 590 598 599 591
		f 4 886 -874 887 -885
		mu 0 4 598 592 595 599
		f 4 -804 818 -802 824
		mu 0 4 600 601 602 603
		f 4 -803 -825 -801 820
		mu 0 4 604 600 603 605
		f 4 -822 -795 -821 792
		mu 0 4 606 607 604 605
		f 4 795 -820 -794 -819
		mu 0 4 601 608 609 602
		f 4 819 -807 -826 -805
		mu 0 4 609 608 610 611
		f 4 825 -808 822 -806
		mu 0 4 611 610 612 613
		f 4 -823 797 -824 -797
		mu 0 4 613 612 614 615
		f 4 -818 -800 -817 798
		mu 0 4 616 617 618 619
		f 4 816 -813 -827 -809
		mu 0 4 619 618 620 621
		f 4 826 -814 821 -810
		mu 0 4 621 620 607 606
		f 4 823 -815 -828 -812
		mu 0 4 615 614 622 623
		f 4 827 -816 817 -811
		mu 0 4 623 622 617 616
		f 4 801 831 -833 -829
		mu 0 4 624 625 578 577
		f 4 803 829 -836 -834
		mu 0 4 626 627 576 579
		f 4 800 828 -840 -837
		mu 0 4 628 624 577 581
		f 4 802 837 -841 -830
		mu 0 4 627 629 580 576
		f 4 -793 836 842 -842
		mu 0 4 630 628 581 582
		f 4 794 843 -845 -838
		mu 0 4 629 631 583 580
		f 4 793 846 -848 -832
		mu 0 4 625 632 584 578
		f 4 -796 833 850 -849
		mu 0 4 633 626 579 585
		f 4 804 851 -853 -847
		mu 0 4 632 634 586 584
		f 4 806 848 -856 -854
		mu 0 4 635 633 585 587
		f 4 805 856 -858 -852
		mu 0 4 634 636 588 586
		f 4 807 853 -861 -859
		mu 0 4 637 635 587 589
		f 4 796 861 -863 -857
		mu 0 4 636 638 590 588
		f 4 -798 858 865 -864
		mu 0 4 639 637 589 591
		f 4 -799 866 868 -868
		mu 0 4 640 641 593 592
		f 4 799 871 -873 -870
		mu 0 4 642 643 595 594
		f 4 808 874 -876 -867
		mu 0 4 641 644 596 593
		f 4 812 869 -879 -877
		mu 0 4 645 642 594 597
		f 4 809 841 -880 -875
		mu 0 4 644 630 582 596
		f 4 813 876 -881 -844
		mu 0 4 631 645 597 583
		f 4 811 881 -883 -862
		mu 0 4 638 646 598 590
		f 4 814 863 -886 -884
		mu 0 4 647 639 591 599
		f 4 810 867 -887 -882
		mu 0 4 646 640 592 598
		f 4 815 883 -888 -872
		mu 0 4 643 647 599 595
		f 4 777 890 -892 -889
		mu 0 4 690 688 649 651
		f 4 779 889 -894 -893
		mu 0 4 701 699 742 740
		f 4 776 888 -897 -895
		mu 0 4 692 690 651 652
		f 4 778 895 -898 -890
		mu 0 4 699 697 720 742
		f 4 -769 894 899 -899
		mu 0 4 694 692 652 666
		f 4 770 900 -902 -896
		mu 0 4 697 719 723 720
		f 4 769 902 -904 -891
		mu 0 4 688 686 655 649
		f 4 -772 892 905 -905
		mu 0 4 703 701 740 739
		f 4 780 906 -908 -903
		mu 0 4 686 684 656 655
		f 4 782 904 -910 -909
		mu 0 4 705 703 739 737
		f 4 781 910 -912 -907
		mu 0 4 684 682 658 656
		f 4 783 908 -914 -913
		mu 0 4 707 705 737 735
		f 4 772 914 -916 -911
		mu 0 4 682 680 660 658
		f 4 -774 912 917 -917
		mu 0 4 709 707 735 733
		f 4 -775 918 920 -920
		mu 0 4 676 674 662 670
		f 4 775 922 -924 -922
		mu 0 4 715 713 729 727
		f 4 784 924 -926 -919
		mu 0 4 674 672 664 662
		f 4 788 921 -928 -927
		mu 0 4 717 715 727 725
		f 4 785 898 -929 -925
		mu 0 4 672 694 666 664
		f 4 789 926 -930 -901
		mu 0 4 719 717 725 723
		f 4 787 930 -932 -915
		mu 0 4 680 678 668 660
		f 4 790 916 -934 -933
		mu 0 4 711 709 733 731
		f 4 786 919 -935 -931
		mu 0 4 678 676 670 668
		f 4 791 932 -936 -923
		mu 0 4 713 711 731 729
		f 4 938 939 940 941
		mu 0 4 673 758 759 695
		f 4 942 943 944 -940
		mu 0 4 758 757 760 759
		f 4 945 946 947 -944
		mu 0 4 757 756 761 760
		f 4 948 949 950 -947
		mu 0 4 756 755 762 761
		f 4 951 952 953 -950
		mu 0 4 755 754 763 762
		f 4 954 955 956 -953
		mu 0 4 754 753 764 763
		f 4 957 958 959 -956
		mu 0 4 753 752 765 764
		f 4 960 961 962 -959
		mu 0 4 752 751 766 765
		f 4 963 964 965 -962
		mu 0 4 751 750 767 766
		f 4 966 967 968 -965
		mu 0 4 750 749 768 767
		f 4 969 970 971 -968
		mu 0 4 749 748 769 768
		f 4 972 973 974 -971
		mu 0 4 748 747 770 769
		f 4 975 976 977 -974
		mu 0 4 747 746 771 770
		f 4 978 979 980 -977
		mu 0 4 746 745 772 771
		f 4 981 982 983 -980
		mu 0 4 745 744 773 772
		f 4 984 985 986 -983
		mu 0 4 744 696 698 773
		f 4 1169 1170 1171 1172
		mu 0 4 648 938 939 650
		f 4 1173 1174 1175 -1171
		mu 0 4 938 937 940 939
		f 4 1176 1177 1178 -1175
		mu 0 4 937 936 941 940
		f 4 1179 1180 1181 -1178
		mu 0 4 936 935 942 941
		f 4 1182 1183 1184 -1181
		mu 0 4 935 934 943 942
		f 4 1185 1186 1187 -1184
		mu 0 4 934 933 944 943
		f 4 1188 1189 1190 -1187
		mu 0 4 933 932 945 944
		f 4 1191 1192 1193 -1190
		mu 0 4 932 931 946 945
		f 4 1194 1195 1196 -1193
		mu 0 4 931 930 947 946
		f 4 1197 1198 1199 -1196
		mu 0 4 930 929 948 947
		f 4 1200 1201 1202 -1199
		mu 0 4 929 928 949 948
		f 4 1203 1204 1205 -1202
		mu 0 4 928 927 950 949
		f 4 1206 1207 1208 -1205
		mu 0 4 927 926 951 950
		f 4 1209 1210 1211 -1208
		mu 0 4 926 925 952 951
		f 4 1212 1213 1214 -1211
		mu 0 4 925 924 953 952
		f 4 1215 1216 1217 -1214
		mu 0 4 924 721 722 953
		f 4 -1169 1398 1812 1801
		mu 0 4 654 648 1116 1117
		f 4 -1173 1400 1823 -1399
		mu 0 4 648 650 1127 1116
		f 4 1822 -1401 -1220 1401
		mu 0 4 1126 1127 650 653
		f 4 -1382 -1802 1813 1802
		mu 0 4 657 654 1117 1118
		f 4 1814 1803 -1364 -1803
		mu 0 4 1118 1119 659 657
		f 4 1815 1804 -1346 -1804
		mu 0 4 1119 1120 661 659
		f 4 1816 1805 -1328 -1805
		mu 0 4 1120 1121 669 661
		f 4 1819 1808 -1274 1407
		mu 0 4 1123 1124 665 663
		f 4 1820 1809 -1256 -1809
		mu 0 4 1124 1125 667 665
		f 4 1821 -1402 -1238 -1810
		mu 0 4 1125 1126 653 667
		f 4 1817 1806 -1310 -1806
		mu 0 4 1121 1122 671 669
		f 4 1818 -1408 -1292 -1807
		mu 0 4 1122 1123 663 671;
	setAttr ".fc[500:935]"
		f 4 -786 1410 1788 1777
		mu 0 4 694 672 1104 1105
		f 4 -785 1412 1799 -1411
		mu 0 4 672 674 1115 1104
		f 4 774 1413 1798 -1413
		mu 0 4 674 676 1114 1115
		f 4 -787 1414 1797 -1414
		mu 0 4 676 678 1113 1114
		f 4 -788 1415 1796 -1415
		mu 0 4 678 680 1112 1113
		f 4 -773 1416 1795 -1416
		mu 0 4 680 682 1111 1112
		f 4 -782 1417 1794 -1417
		mu 0 4 682 684 1110 1111
		f 4 -781 1418 1793 -1418
		mu 0 4 684 686 1109 1110
		f 4 -770 1419 1792 -1419
		mu 0 4 686 688 1108 1109
		f 4 -778 1420 1791 -1420
		mu 0 4 688 690 1107 1108
		f 4 -777 1421 1790 -1421
		mu 0 4 690 692 1106 1107
		f 4 768 -1778 1789 -1422
		mu 0 4 692 694 1105 1106
		f 4 -986 1422 1860 1849
		mu 0 4 698 696 1140 1141
		f 4 -1004 -1850 1861 1850
		mu 0 4 700 698 1141 1142
		f 4 -1022 -1851 1862 1851
		mu 0 4 702 700 1142 1143
		f 4 -1040 -1852 1863 1852
		mu 0 4 704 702 1143 1144
		f 4 -1058 -1853 1864 1853
		mu 0 4 706 704 1144 1145
		f 4 -1076 -1854 1865 1854
		mu 0 4 708 706 1145 1146
		f 4 -1094 -1855 1866 1855
		mu 0 4 710 708 1146 1147
		f 4 -1112 -1856 1867 1856
		mu 0 4 712 710 1147 1148
		f 4 -1130 -1857 1868 1857
		mu 0 4 714 712 1148 1149
		f 4 -1148 -1858 1869 1858
		mu 0 4 716 714 1149 1150
		f 4 -1166 -1859 1870 1859
		mu 0 4 718 716 1150 1151
		f 4 -937 -1860 1871 -1423
		mu 0 4 696 718 1151 1140
		f 4 1434 1836 1825 897
		mu 0 4 720 1128 1129 742
		f 4 1847 -1435 901 1436
		mu 0 4 1139 1128 720 723
		f 4 1846 -1437 929 1437
		mu 0 4 1138 1139 723 725
		f 4 1845 -1438 927 1438
		mu 0 4 1137 1138 725 727
		f 4 1844 -1439 923 1439
		mu 0 4 1136 1137 727 729
		f 4 1843 -1440 935 1440
		mu 0 4 1135 1136 729 731
		f 4 1842 -1441 933 1441
		mu 0 4 1134 1135 731 733
		f 4 1841 -1442 -918 1442
		mu 0 4 1133 1134 733 735
		f 4 1840 -1443 913 1443
		mu 0 4 1132 1133 735 737
		f 4 1839 -1444 909 1444
		mu 0 4 1131 1132 737 739
		f 4 1445 1838 -1445 -906
		mu 0 4 740 1130 1131 739
		f 4 -1826 1837 -1446 893
		mu 0 4 742 1129 1130 740
		f 4 -987 1003 1004 -1447
		mu 0 4 773 698 700 788
		f 4 -984 1446 1002 -1448
		mu 0 4 772 773 788 787
		f 4 -981 1447 1001 -1449
		mu 0 4 771 772 787 786
		f 4 -978 1448 1000 -1450
		mu 0 4 770 771 786 785
		f 4 -975 1449 999 -1451
		mu 0 4 769 770 785 784
		f 4 -972 1450 998 -1452
		mu 0 4 768 769 784 783
		f 4 -969 1451 997 -1453
		mu 0 4 767 768 783 782
		f 4 -966 1452 996 -1454
		mu 0 4 766 767 782 781
		f 4 -963 1453 995 -1455
		mu 0 4 765 766 781 780
		f 4 -960 1454 994 -1456
		mu 0 4 764 765 780 779
		f 4 -957 1455 993 -1457
		mu 0 4 763 764 779 778
		f 4 -954 1456 992 -1458
		mu 0 4 762 763 778 777
		f 4 -951 1457 991 -1459
		mu 0 4 761 762 777 776
		f 4 -948 1458 990 -1460
		mu 0 4 760 761 776 775
		f 4 -941 1460 987 988
		mu 0 4 695 759 774 693
		f 4 -945 1459 989 -1461
		mu 0 4 759 760 775 774
		f 4 -1005 1021 1022 -1462
		mu 0 4 788 700 702 803
		f 4 -1003 1461 1020 -1463
		mu 0 4 787 788 803 802
		f 4 -1002 1462 1019 -1464
		mu 0 4 786 787 802 801
		f 4 -1001 1463 1018 -1465
		mu 0 4 785 786 801 800
		f 4 -1000 1464 1017 -1466
		mu 0 4 784 785 800 799
		f 4 -999 1465 1016 -1467
		mu 0 4 783 784 799 798
		f 4 -998 1466 1015 -1468
		mu 0 4 782 783 798 797
		f 4 -997 1467 1014 -1469
		mu 0 4 781 782 797 796
		f 4 -996 1468 1013 -1470
		mu 0 4 780 781 796 795
		f 4 -995 1469 1012 -1471
		mu 0 4 779 780 795 794
		f 4 -994 1470 1011 -1472
		mu 0 4 778 779 794 793
		f 4 -993 1471 1010 -1473
		mu 0 4 777 778 793 792
		f 4 -992 1472 1009 -1474
		mu 0 4 776 777 792 791
		f 4 -991 1473 1008 -1475
		mu 0 4 775 776 791 790
		f 4 -988 1475 1005 1006
		mu 0 4 693 774 789 691
		f 4 -990 1474 1007 -1476
		mu 0 4 774 775 790 789
		f 4 -1023 1039 1040 -1477
		mu 0 4 803 702 704 818
		f 4 -1021 1476 1038 -1478
		mu 0 4 802 803 818 817
		f 4 -1020 1477 1037 -1479
		mu 0 4 801 802 817 816
		f 4 -1019 1478 1036 -1480
		mu 0 4 800 801 816 815
		f 4 -1018 1479 1035 -1481
		mu 0 4 799 800 815 814
		f 4 -1017 1480 1034 -1482
		mu 0 4 798 799 814 813
		f 4 -1016 1481 1033 -1483
		mu 0 4 797 798 813 812
		f 4 -1015 1482 1032 -1484
		mu 0 4 796 797 812 811
		f 4 -1014 1483 1031 -1485
		mu 0 4 795 796 811 810
		f 4 -1013 1484 1030 -1486
		mu 0 4 794 795 810 809
		f 4 -1012 1485 1029 -1487
		mu 0 4 793 794 809 808
		f 4 -1011 1486 1028 -1488
		mu 0 4 792 793 808 807
		f 4 -1010 1487 1027 -1489
		mu 0 4 791 792 807 806
		f 4 -1009 1488 1026 -1490
		mu 0 4 790 791 806 805
		f 4 -1006 1490 1023 1024
		mu 0 4 691 789 804 689
		f 4 -1008 1489 1025 -1491
		mu 0 4 789 790 805 804
		f 4 -1041 1057 1058 -1492
		mu 0 4 818 704 706 833
		f 4 -1039 1491 1056 -1493
		mu 0 4 817 818 833 832
		f 4 -1038 1492 1055 -1494
		mu 0 4 816 817 832 831
		f 4 -1037 1493 1054 -1495
		mu 0 4 815 816 831 830
		f 4 -1036 1494 1053 -1496
		mu 0 4 814 815 830 829
		f 4 -1035 1495 1052 -1497
		mu 0 4 813 814 829 828
		f 4 -1034 1496 1051 -1498
		mu 0 4 812 813 828 827
		f 4 -1033 1497 1050 -1499
		mu 0 4 811 812 827 826
		f 4 -1032 1498 1049 -1500
		mu 0 4 810 811 826 825
		f 4 -1031 1499 1048 -1501
		mu 0 4 809 810 825 824
		f 4 -1030 1500 1047 -1502
		mu 0 4 808 809 824 823
		f 4 -1029 1501 1046 -1503
		mu 0 4 807 808 823 822
		f 4 -1028 1502 1045 -1504
		mu 0 4 806 807 822 821
		f 4 -1027 1503 1044 -1505
		mu 0 4 805 806 821 820
		f 4 -1024 1505 1041 1042
		mu 0 4 689 804 819 687
		f 4 -1026 1504 1043 -1506
		mu 0 4 804 805 820 819
		f 4 -1059 1075 1076 -1507
		mu 0 4 833 706 708 848
		f 4 -1057 1506 1074 -1508
		mu 0 4 832 833 848 847
		f 4 -1056 1507 1073 -1509
		mu 0 4 831 832 847 846
		f 4 -1055 1508 1072 -1510
		mu 0 4 830 831 846 845
		f 4 -1054 1509 1071 -1511
		mu 0 4 829 830 845 844
		f 4 -1053 1510 1070 -1512
		mu 0 4 828 829 844 843
		f 4 -1052 1511 1069 -1513
		mu 0 4 827 828 843 842
		f 4 -1051 1512 1068 -1514
		mu 0 4 826 827 842 841
		f 4 -1050 1513 1067 -1515
		mu 0 4 825 826 841 840
		f 4 -1049 1514 1066 -1516
		mu 0 4 824 825 840 839
		f 4 -1048 1515 1065 -1517
		mu 0 4 823 824 839 838
		f 4 -1047 1516 1064 -1518
		mu 0 4 822 823 838 837
		f 4 -1046 1517 1063 -1519
		mu 0 4 821 822 837 836
		f 4 -1045 1518 1062 -1520
		mu 0 4 820 821 836 835
		f 4 -1042 1520 1059 1060
		mu 0 4 687 819 834 685
		f 4 -1044 1519 1061 -1521
		mu 0 4 819 820 835 834
		f 4 -1077 1093 1094 -1522
		mu 0 4 848 708 710 863
		f 4 -1075 1521 1092 -1523
		mu 0 4 847 848 863 862
		f 4 -1074 1522 1091 -1524
		mu 0 4 846 847 862 861
		f 4 -1073 1523 1090 -1525
		mu 0 4 845 846 861 860
		f 4 -1072 1524 1089 -1526
		mu 0 4 844 845 860 859
		f 4 -1071 1525 1088 -1527
		mu 0 4 843 844 859 858
		f 4 -1070 1526 1087 -1528
		mu 0 4 842 843 858 857
		f 4 -1069 1527 1086 -1529
		mu 0 4 841 842 857 856
		f 4 -1068 1528 1085 -1530
		mu 0 4 840 841 856 855
		f 4 -1067 1529 1084 -1531
		mu 0 4 839 840 855 854
		f 4 -1066 1530 1083 -1532
		mu 0 4 838 839 854 853
		f 4 -1065 1531 1082 -1533
		mu 0 4 837 838 853 852
		f 4 -1064 1532 1081 -1534
		mu 0 4 836 837 852 851
		f 4 -1063 1533 1080 -1535
		mu 0 4 835 836 851 850
		f 4 -1060 1535 1077 1078
		mu 0 4 685 834 849 683
		f 4 -1062 1534 1079 -1536
		mu 0 4 834 835 850 849
		f 4 -1095 1111 1112 -1537
		mu 0 4 863 710 712 878
		f 4 -1093 1536 1110 -1538
		mu 0 4 862 863 878 877
		f 4 -1092 1537 1109 -1539
		mu 0 4 861 862 877 876
		f 4 -1091 1538 1108 -1540
		mu 0 4 860 861 876 875
		f 4 -1090 1539 1107 -1541
		mu 0 4 859 860 875 874
		f 4 -1089 1540 1106 -1542
		mu 0 4 858 859 874 873
		f 4 -1088 1541 1105 -1543
		mu 0 4 857 858 873 872
		f 4 -1087 1542 1104 -1544
		mu 0 4 856 857 872 871
		f 4 -1086 1543 1103 -1545
		mu 0 4 855 856 871 870
		f 4 -1085 1544 1102 -1546
		mu 0 4 854 855 870 869
		f 4 -1084 1545 1101 -1547
		mu 0 4 853 854 869 868
		f 4 -1083 1546 1100 -1548
		mu 0 4 852 853 868 867
		f 4 -1082 1547 1099 -1549
		mu 0 4 851 852 867 866
		f 4 -1081 1548 1098 -1550
		mu 0 4 850 851 866 865
		f 4 -1078 1550 1095 1096
		mu 0 4 683 849 864 681
		f 4 -1080 1549 1097 -1551
		mu 0 4 849 850 865 864
		f 4 -1113 1129 1130 -1552
		mu 0 4 878 712 714 893
		f 4 -1111 1551 1128 -1553
		mu 0 4 877 878 893 892
		f 4 -1110 1552 1127 -1554
		mu 0 4 876 877 892 891
		f 4 -1109 1553 1126 -1555
		mu 0 4 875 876 891 890
		f 4 -1108 1554 1125 -1556
		mu 0 4 874 875 890 889
		f 4 -1107 1555 1124 -1557
		mu 0 4 873 874 889 888
		f 4 -1106 1556 1123 -1558
		mu 0 4 872 873 888 887
		f 4 -1105 1557 1122 -1559
		mu 0 4 871 872 887 886
		f 4 -1104 1558 1121 -1560
		mu 0 4 870 871 886 885
		f 4 -1103 1559 1120 -1561
		mu 0 4 869 870 885 884
		f 4 -1102 1560 1119 -1562
		mu 0 4 868 869 884 883
		f 4 -1101 1561 1118 -1563
		mu 0 4 867 868 883 882
		f 4 -1100 1562 1117 -1564
		mu 0 4 866 867 882 881
		f 4 -1099 1563 1116 -1565
		mu 0 4 865 866 881 880
		f 4 -1096 1565 1113 1114
		mu 0 4 681 864 879 679
		f 4 -1098 1564 1115 -1566
		mu 0 4 864 865 880 879
		f 4 -1131 1147 1148 -1567
		mu 0 4 893 714 716 908
		f 4 -1129 1566 1146 -1568
		mu 0 4 892 893 908 907
		f 4 -1128 1567 1145 -1569
		mu 0 4 891 892 907 906
		f 4 -1127 1568 1144 -1570
		mu 0 4 890 891 906 905
		f 4 -1126 1569 1143 -1571
		mu 0 4 889 890 905 904
		f 4 -1125 1570 1142 -1572
		mu 0 4 888 889 904 903
		f 4 -1124 1571 1141 -1573
		mu 0 4 887 888 903 902
		f 4 -1123 1572 1140 -1574
		mu 0 4 886 887 902 901
		f 4 -1122 1573 1139 -1575
		mu 0 4 885 886 901 900
		f 4 -1121 1574 1138 -1576
		mu 0 4 884 885 900 899
		f 4 -1120 1575 1137 -1577
		mu 0 4 883 884 899 898
		f 4 -1119 1576 1136 -1578
		mu 0 4 882 883 898 897
		f 4 -1118 1577 1135 -1579
		mu 0 4 881 882 897 896
		f 4 -1117 1578 1134 -1580
		mu 0 4 880 881 896 895
		f 4 -1114 1580 1131 1132
		mu 0 4 679 879 894 677
		f 4 -1116 1579 1133 -1581
		mu 0 4 879 880 895 894
		f 4 -1149 1165 1166 -1582
		mu 0 4 908 716 718 923
		f 4 -1147 1581 1164 -1583
		mu 0 4 907 908 923 922
		f 4 -1146 1582 1163 -1584
		mu 0 4 906 907 922 921
		f 4 -1145 1583 1162 -1585
		mu 0 4 905 906 921 920
		f 4 -1144 1584 1161 -1586
		mu 0 4 904 905 920 919
		f 4 -1143 1585 1160 -1587
		mu 0 4 903 904 919 918
		f 4 -1142 1586 1159 -1588
		mu 0 4 902 903 918 917
		f 4 -1141 1587 1158 -1589
		mu 0 4 901 902 917 916
		f 4 -1140 1588 1157 -1590
		mu 0 4 900 901 916 915
		f 4 -1139 1589 1156 -1591
		mu 0 4 899 900 915 914
		f 4 -1138 1590 1155 -1592
		mu 0 4 898 899 914 913
		f 4 -1137 1591 1154 -1593
		mu 0 4 897 898 913 912
		f 4 -1136 1592 1153 -1594
		mu 0 4 896 897 912 911
		f 4 -1135 1593 1152 -1595
		mu 0 4 895 896 911 910
		f 4 -1132 1595 1149 1150
		mu 0 4 677 894 909 675
		f 4 -1134 1594 1151 -1596
		mu 0 4 894 895 910 909
		f 4 -985 1596 -1167 936
		mu 0 4 696 744 923 718
		f 4 -982 1597 -1165 -1597
		mu 0 4 744 745 922 923
		f 4 -979 1598 -1164 -1598
		mu 0 4 745 746 921 922
		f 4 -976 1599 -1163 -1599
		mu 0 4 746 747 920 921
		f 4 -973 1600 -1162 -1600
		mu 0 4 747 748 919 920
		f 4 -970 1601 -1161 -1601
		mu 0 4 748 749 918 919
		f 4 -967 1602 -1160 -1602
		mu 0 4 749 750 917 918
		f 4 -964 1603 -1159 -1603
		mu 0 4 750 751 916 917
		f 4 -961 1604 -1158 -1604
		mu 0 4 751 752 915 916
		f 4 -958 1605 -1157 -1605
		mu 0 4 752 753 914 915
		f 4 -955 1606 -1156 -1606
		mu 0 4 753 754 913 914
		f 4 -952 1607 -1155 -1607
		mu 0 4 754 755 912 913
		f 4 -949 1608 -1154 -1608
		mu 0 4 755 756 911 912
		f 4 -946 1609 -1153 -1609
		mu 0 4 756 757 910 911
		f 4 -943 1610 -1152 -1610
		mu 0 4 757 758 909 910
		f 4 -939 937 -1150 -1611
		mu 0 4 758 673 675 909
		f 4 -1218 1234 1235 -1612
		mu 0 4 953 722 724 968
		f 4 -1215 1611 1233 -1613
		mu 0 4 952 953 968 967
		f 4 -1212 1612 1232 -1614
		mu 0 4 951 952 967 966
		f 4 -1209 1613 1231 -1615
		mu 0 4 950 951 966 965
		f 4 -1206 1614 1230 -1616
		mu 0 4 949 950 965 964
		f 4 -1203 1615 1229 -1617
		mu 0 4 948 949 964 963
		f 4 -1200 1616 1228 -1618
		mu 0 4 947 948 963 962
		f 4 -1197 1617 1227 -1619
		mu 0 4 946 947 962 961
		f 4 -1194 1618 1226 -1620
		mu 0 4 945 946 961 960
		f 4 -1191 1619 1225 -1621
		mu 0 4 944 945 960 959
		f 4 -1188 1620 1224 -1622
		mu 0 4 943 944 959 958
		f 4 -1185 1621 1223 -1623
		mu 0 4 942 943 958 957
		f 4 -1182 1622 1222 -1624
		mu 0 4 941 942 957 956
		f 4 -1179 1623 1221 -1625
		mu 0 4 940 941 956 955
		f 4 -1172 1625 1218 1219
		mu 0 4 650 939 954 653
		f 4 -1176 1624 1220 -1626
		mu 0 4 939 940 955 954
		f 4 -1236 1252 1253 -1627
		mu 0 4 968 724 726 983
		f 4 -1234 1626 1251 -1628
		mu 0 4 967 968 983 982
		f 4 -1233 1627 1250 -1629
		mu 0 4 966 967 982 981
		f 4 -1232 1628 1249 -1630
		mu 0 4 965 966 981 980
		f 4 -1231 1629 1248 -1631
		mu 0 4 964 965 980 979
		f 4 -1230 1630 1247 -1632
		mu 0 4 963 964 979 978
		f 4 -1229 1631 1246 -1633
		mu 0 4 962 963 978 977
		f 4 -1228 1632 1245 -1634
		mu 0 4 961 962 977 976
		f 4 -1227 1633 1244 -1635
		mu 0 4 960 961 976 975
		f 4 -1226 1634 1243 -1636
		mu 0 4 959 960 975 974
		f 4 -1225 1635 1242 -1637
		mu 0 4 958 959 974 973
		f 4 -1224 1636 1241 -1638
		mu 0 4 957 958 973 972
		f 4 -1223 1637 1240 -1639
		mu 0 4 956 957 972 971
		f 4 -1222 1638 1239 -1640
		mu 0 4 955 956 971 970
		f 4 -1219 1640 1236 1237
		mu 0 4 653 954 969 667
		f 4 -1221 1639 1238 -1641
		mu 0 4 954 955 970 969
		f 4 -1254 1270 1271 -1642
		mu 0 4 983 726 728 998
		f 4 -1252 1641 1269 -1643
		mu 0 4 982 983 998 997
		f 4 -1251 1642 1268 -1644
		mu 0 4 981 982 997 996
		f 4 -1250 1643 1267 -1645
		mu 0 4 980 981 996 995
		f 4 -1249 1644 1266 -1646
		mu 0 4 979 980 995 994
		f 4 -1248 1645 1265 -1647
		mu 0 4 978 979 994 993
		f 4 -1247 1646 1264 -1648
		mu 0 4 977 978 993 992
		f 4 -1246 1647 1263 -1649
		mu 0 4 976 977 992 991
		f 4 -1245 1648 1262 -1650
		mu 0 4 975 976 991 990
		f 4 -1244 1649 1261 -1651
		mu 0 4 974 975 990 989
		f 4 -1243 1650 1260 -1652
		mu 0 4 973 974 989 988
		f 4 -1242 1651 1259 -1653
		mu 0 4 972 973 988 987
		f 4 -1241 1652 1258 -1654
		mu 0 4 971 972 987 986
		f 4 -1240 1653 1257 -1655
		mu 0 4 970 971 986 985
		f 4 -1237 1655 1254 1255
		mu 0 4 667 969 984 665
		f 4 -1239 1654 1256 -1656
		mu 0 4 969 970 985 984
		f 4 -1272 1288 1289 -1657
		mu 0 4 998 728 730 1013
		f 4 -1270 1656 1287 -1658
		mu 0 4 997 998 1013 1012
		f 4 -1269 1657 1286 -1659
		mu 0 4 996 997 1012 1011
		f 4 -1268 1658 1285 -1660
		mu 0 4 995 996 1011 1010
		f 4 -1267 1659 1284 -1661
		mu 0 4 994 995 1010 1009
		f 4 -1266 1660 1283 -1662
		mu 0 4 993 994 1009 1008
		f 4 -1265 1661 1282 -1663
		mu 0 4 992 993 1008 1007
		f 4 -1264 1662 1281 -1664
		mu 0 4 991 992 1007 1006
		f 4 -1263 1663 1280 -1665
		mu 0 4 990 991 1006 1005
		f 4 -1262 1664 1279 -1666
		mu 0 4 989 990 1005 1004
		f 4 -1261 1665 1278 -1667
		mu 0 4 988 989 1004 1003
		f 4 -1260 1666 1277 -1668
		mu 0 4 987 988 1003 1002
		f 4 -1259 1667 1276 -1669
		mu 0 4 986 987 1002 1001
		f 4 -1258 1668 1275 -1670
		mu 0 4 985 986 1001 1000
		f 4 -1255 1670 1272 1273
		mu 0 4 665 984 999 663
		f 4 -1257 1669 1274 -1671
		mu 0 4 984 985 1000 999
		f 4 -1290 1306 1307 -1672
		mu 0 4 1013 730 732 1028
		f 4 -1288 1671 1305 -1673
		mu 0 4 1012 1013 1028 1027
		f 4 -1287 1672 1304 -1674
		mu 0 4 1011 1012 1027 1026
		f 4 -1286 1673 1303 -1675
		mu 0 4 1010 1011 1026 1025
		f 4 -1285 1674 1302 -1676
		mu 0 4 1009 1010 1025 1024
		f 4 -1284 1675 1301 -1677
		mu 0 4 1008 1009 1024 1023
		f 4 -1283 1676 1300 -1678
		mu 0 4 1007 1008 1023 1022
		f 4 -1282 1677 1299 -1679
		mu 0 4 1006 1007 1022 1021
		f 4 -1281 1678 1298 -1680
		mu 0 4 1005 1006 1021 1020
		f 4 -1280 1679 1297 -1681
		mu 0 4 1004 1005 1020 1019
		f 4 -1279 1680 1296 -1682
		mu 0 4 1003 1004 1019 1018
		f 4 -1278 1681 1295 -1683
		mu 0 4 1002 1003 1018 1017
		f 4 -1277 1682 1294 -1684
		mu 0 4 1001 1002 1017 1016
		f 4 -1276 1683 1293 -1685
		mu 0 4 1000 1001 1016 1015
		f 4 -1273 1685 1290 1291
		mu 0 4 663 999 1014 671
		f 4 -1275 1684 1292 -1686
		mu 0 4 999 1000 1015 1014
		f 4 -1308 1324 1325 -1687
		mu 0 4 1028 732 734 1043
		f 4 -1306 1686 1323 -1688
		mu 0 4 1027 1028 1043 1042
		f 4 -1305 1687 1322 -1689
		mu 0 4 1026 1027 1042 1041
		f 4 -1304 1688 1321 -1690
		mu 0 4 1025 1026 1041 1040
		f 4 -1303 1689 1320 -1691
		mu 0 4 1024 1025 1040 1039
		f 4 -1302 1690 1319 -1692
		mu 0 4 1023 1024 1039 1038
		f 4 -1301 1691 1318 -1693
		mu 0 4 1022 1023 1038 1037
		f 4 -1300 1692 1317 -1694
		mu 0 4 1021 1022 1037 1036
		f 4 -1299 1693 1316 -1695
		mu 0 4 1020 1021 1036 1035
		f 4 -1298 1694 1315 -1696
		mu 0 4 1019 1020 1035 1034
		f 4 -1297 1695 1314 -1697
		mu 0 4 1018 1019 1034 1033
		f 4 -1296 1696 1313 -1698
		mu 0 4 1017 1018 1033 1032
		f 4 -1295 1697 1312 -1699
		mu 0 4 1016 1017 1032 1031
		f 4 -1294 1698 1311 -1700
		mu 0 4 1015 1016 1031 1030
		f 4 -1291 1700 1308 1309
		mu 0 4 671 1014 1029 669
		f 4 -1293 1699 1310 -1701
		mu 0 4 1014 1015 1030 1029
		f 4 -1326 1342 1343 -1702
		mu 0 4 1043 734 736 1058
		f 4 -1324 1701 1341 -1703
		mu 0 4 1042 1043 1058 1057
		f 4 -1323 1702 1340 -1704
		mu 0 4 1041 1042 1057 1056
		f 4 -1322 1703 1339 -1705
		mu 0 4 1040 1041 1056 1055
		f 4 -1321 1704 1338 -1706
		mu 0 4 1039 1040 1055 1054
		f 4 -1320 1705 1337 -1707
		mu 0 4 1038 1039 1054 1053
		f 4 -1319 1706 1336 -1708
		mu 0 4 1037 1038 1053 1052
		f 4 -1318 1707 1335 -1709
		mu 0 4 1036 1037 1052 1051
		f 4 -1317 1708 1334 -1710
		mu 0 4 1035 1036 1051 1050
		f 4 -1316 1709 1333 -1711
		mu 0 4 1034 1035 1050 1049
		f 4 -1315 1710 1332 -1712
		mu 0 4 1033 1034 1049 1048
		f 4 -1314 1711 1331 -1713
		mu 0 4 1032 1033 1048 1047
		f 4 -1313 1712 1330 -1714
		mu 0 4 1031 1032 1047 1046
		f 4 -1312 1713 1329 -1715
		mu 0 4 1030 1031 1046 1045
		f 4 -1309 1715 1326 1327
		mu 0 4 669 1029 1044 661
		f 4 -1311 1714 1328 -1716
		mu 0 4 1029 1030 1045 1044
		f 4 -1344 1360 1361 -1717
		mu 0 4 1058 736 738 1073
		f 4 -1342 1716 1359 -1718
		mu 0 4 1057 1058 1073 1072
		f 4 -1341 1717 1358 -1719
		mu 0 4 1056 1057 1072 1071
		f 4 -1340 1718 1357 -1720
		mu 0 4 1055 1056 1071 1070
		f 4 -1339 1719 1356 -1721
		mu 0 4 1054 1055 1070 1069
		f 4 -1338 1720 1355 -1722
		mu 0 4 1053 1054 1069 1068
		f 4 -1337 1721 1354 -1723
		mu 0 4 1052 1053 1068 1067
		f 4 -1336 1722 1353 -1724
		mu 0 4 1051 1052 1067 1066
		f 4 -1335 1723 1352 -1725
		mu 0 4 1050 1051 1066 1065
		f 4 -1334 1724 1351 -1726
		mu 0 4 1049 1050 1065 1064
		f 4 -1333 1725 1350 -1727
		mu 0 4 1048 1049 1064 1063
		f 4 -1332 1726 1349 -1728
		mu 0 4 1047 1048 1063 1062
		f 4 -1331 1727 1348 -1729
		mu 0 4 1046 1047 1062 1061
		f 4 -1330 1728 1347 -1730
		mu 0 4 1045 1046 1061 1060
		f 4 -1327 1730 1344 1345
		mu 0 4 661 1044 1059 659
		f 4 -1329 1729 1346 -1731
		mu 0 4 1044 1045 1060 1059
		f 4 -1362 1378 1379 -1732
		mu 0 4 1073 738 741 1088
		f 4 -1360 1731 1377 -1733
		mu 0 4 1072 1073 1088 1087
		f 4 -1359 1732 1376 -1734
		mu 0 4 1071 1072 1087 1086
		f 4 -1358 1733 1375 -1735
		mu 0 4 1070 1071 1086 1085
		f 4 -1357 1734 1374 -1736
		mu 0 4 1069 1070 1085 1084
		f 4 -1356 1735 1373 -1737
		mu 0 4 1068 1069 1084 1083
		f 4 -1355 1736 1372 -1738
		mu 0 4 1067 1068 1083 1082
		f 4 -1354 1737 1371 -1739
		mu 0 4 1066 1067 1082 1081
		f 4 -1353 1738 1370 -1740
		mu 0 4 1065 1066 1081 1080
		f 4 -1352 1739 1369 -1741
		mu 0 4 1064 1065 1080 1079
		f 4 -1351 1740 1368 -1742
		mu 0 4 1063 1064 1079 1078
		f 4 -1350 1741 1367 -1743
		mu 0 4 1062 1063 1078 1077
		f 4 -1349 1742 1366 -1744
		mu 0 4 1061 1062 1077 1076
		f 4 -1348 1743 1365 -1745
		mu 0 4 1060 1061 1076 1075
		f 4 -1345 1745 1362 1363
		mu 0 4 659 1059 1074 657
		f 4 -1347 1744 1364 -1746
		mu 0 4 1059 1060 1075 1074
		f 4 -1380 1396 1397 -1747
		mu 0 4 1088 741 743 1103
		f 4 -1378 1746 1395 -1748
		mu 0 4 1087 1088 1103 1102
		f 4 -1377 1747 1394 -1749
		mu 0 4 1086 1087 1102 1101
		f 4 -1376 1748 1393 -1750
		mu 0 4 1085 1086 1101 1100
		f 4 -1375 1749 1392 -1751
		mu 0 4 1084 1085 1100 1099
		f 4 -1374 1750 1391 -1752
		mu 0 4 1083 1084 1099 1098
		f 4 -1373 1751 1390 -1753
		mu 0 4 1082 1083 1098 1097
		f 4 -1372 1752 1389 -1754
		mu 0 4 1081 1082 1097 1096
		f 4 -1371 1753 1388 -1755
		mu 0 4 1080 1081 1096 1095
		f 4 -1370 1754 1387 -1756
		mu 0 4 1079 1080 1095 1094
		f 4 -1369 1755 1386 -1757
		mu 0 4 1078 1079 1094 1093
		f 4 -1368 1756 1385 -1758
		mu 0 4 1077 1078 1093 1092
		f 4 -1367 1757 1384 -1759
		mu 0 4 1076 1077 1092 1091
		f 4 -1366 1758 1383 -1760
		mu 0 4 1075 1076 1091 1090
		f 4 -1363 1760 1380 1381
		mu 0 4 657 1074 1089 654
		f 4 -1365 1759 1382 -1761
		mu 0 4 1074 1075 1090 1089
		f 4 -1216 1761 -1398 1167
		mu 0 4 721 924 1103 743
		f 4 -1213 1762 -1396 -1762
		mu 0 4 924 925 1102 1103
		f 4 -1210 1763 -1395 -1763
		mu 0 4 925 926 1101 1102
		f 4 -1207 1764 -1394 -1764
		mu 0 4 926 927 1100 1101
		f 4 -1204 1765 -1393 -1765
		mu 0 4 927 928 1099 1100
		f 4 -1201 1766 -1392 -1766
		mu 0 4 928 929 1098 1099
		f 4 -1198 1767 -1391 -1767
		mu 0 4 929 930 1097 1098
		f 4 -1195 1768 -1390 -1768
		mu 0 4 930 931 1096 1097
		f 4 -1192 1769 -1389 -1769
		mu 0 4 931 932 1095 1096
		f 4 -1189 1770 -1388 -1770
		mu 0 4 932 933 1094 1095
		f 4 -1186 1771 -1387 -1771
		mu 0 4 933 934 1093 1094
		f 4 -1183 1772 -1386 -1772
		mu 0 4 934 935 1092 1093
		f 4 -1180 1773 -1385 -1773
		mu 0 4 935 936 1091 1092
		f 4 -1177 1774 -1384 -1774
		mu 0 4 936 937 1090 1091
		f 4 -1174 1775 -1383 -1775
		mu 0 4 937 938 1089 1090
		f 4 -1170 1168 -1381 -1776
		mu 0 4 938 648 654 1089
		f 4 -1789 1776 -938 1411
		mu 0 4 1105 1104 675 673
		f 4 -1790 -1412 -942 -1779
		mu 0 4 1106 1105 673 695
		f 4 -1791 1778 -989 -1780
		mu 0 4 1107 1106 695 693
		f 4 -1792 1779 -1007 -1781
		mu 0 4 1108 1107 693 691
		f 4 -1793 1780 -1025 -1782
		mu 0 4 1109 1108 691 689
		f 4 -1794 1781 -1043 -1783
		mu 0 4 1110 1109 689 687
		f 4 -1795 1782 -1061 -1784
		mu 0 4 1111 1110 687 685
		f 4 -1796 1783 -1079 -1785
		mu 0 4 1112 1111 685 683
		f 4 -1797 1784 -1097 -1786
		mu 0 4 1113 1112 683 681
		f 4 -1798 1785 -1115 -1787
		mu 0 4 1114 1113 681 679
		f 4 -1799 1786 -1133 -1788
		mu 0 4 1115 1114 679 677
		f 4 -1800 1787 -1151 -1777
		mu 0 4 1104 1115 677 675
		f 4 -1813 1800 891 1399
		mu 0 4 1117 1116 651 649
		f 4 -1814 -1400 903 1402
		mu 0 4 1118 1117 649 655
		f 4 907 1403 -1815 -1403
		mu 0 4 655 656 1119 1118
		f 4 911 1404 -1816 -1404
		mu 0 4 656 658 1120 1119
		f 4 915 1405 -1817 -1405
		mu 0 4 658 660 1121 1120
		f 4 931 1409 -1818 -1406
		mu 0 4 660 668 1122 1121
		f 4 934 -1808 -1819 -1410
		mu 0 4 668 670 1123 1122
		f 4 -921 1406 -1820 1807
		mu 0 4 670 662 1124 1123
		f 4 925 1408 -1821 -1407
		mu 0 4 662 664 1125 1124
		f 4 928 -1811 -1822 -1409
		mu 0 4 664 666 1126 1125
		f 4 -900 -1812 -1823 1810
		mu 0 4 666 652 1127 1126
		f 4 -1824 1811 896 -1801
		mu 0 4 1116 1127 652 651
		f 4 -1837 1824 -1217 1435
		mu 0 4 1129 1128 722 721
		f 4 -1838 -1436 -1168 -1827
		mu 0 4 1130 1129 721 743
		f 4 -1839 1826 -1397 -1828
		mu 0 4 1131 1130 743 741
		f 4 -1379 -1829 -1840 1827
		mu 0 4 741 738 1132 1131
		f 4 -1361 -1830 -1841 1828
		mu 0 4 738 736 1133 1132
		f 4 -1343 -1831 -1842 1829
		mu 0 4 736 734 1134 1133
		f 4 -1325 -1832 -1843 1830
		mu 0 4 734 732 1135 1134
		f 4 -1307 -1833 -1844 1831
		mu 0 4 732 730 1136 1135
		f 4 -1289 -1834 -1845 1832
		mu 0 4 730 728 1137 1136
		f 4 -1271 -1835 -1846 1833
		mu 0 4 728 726 1138 1137
		f 4 -1253 -1836 -1847 1834
		mu 0 4 726 724 1139 1138
		f 4 -1235 -1825 -1848 1835
		mu 0 4 724 722 1128 1139
		f 4 -1861 1848 -771 1423
		mu 0 4 1141 1140 719 697
		f 4 -1862 -1424 -779 1424
		mu 0 4 1142 1141 697 699
		f 4 -1863 -1425 -780 1425
		mu 0 4 1143 1142 699 701
		f 4 -1864 -1426 771 1426
		mu 0 4 1144 1143 701 703
		f 4 -1865 -1427 -783 1427
		mu 0 4 1145 1144 703 705
		f 4 -1866 -1428 -784 1428
		mu 0 4 1146 1145 705 707
		f 4 -1867 -1429 773 1429
		mu 0 4 1147 1146 707 709
		f 4 -1868 -1430 -791 1430
		mu 0 4 1148 1147 709 711
		f 4 -1869 -1431 -792 1431
		mu 0 4 1149 1148 711 713
		f 4 -1870 -1432 -776 1432
		mu 0 4 1150 1149 713 715
		f 4 -1871 -1433 -789 1433
		mu 0 4 1151 1150 715 717
		f 4 -1872 -1434 -790 -1849
		mu 0 4 1140 1151 717 719;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "PaperCard_GeoShapeDeformed" -p "PaperCard_Geo";
	rename -uid "495220B1-44FC-3389-2FB9-60B3305616B5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "PaperA_Geo" -p "geo";
	rename -uid "AC47A322-4284-3A83-2CA3-DB945A6D50D1";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.0053265399370026889 0.3436889408883379 -15.035150878510676 ;
	setAttr ".sp" -type "double3" -0.0053265399370026889 0.3436889408883379 -15.035150878510676 ;
createNode mesh -n "PaperA_GeoShape" -p "PaperA_Geo";
	rename -uid "8AA3EA55-49FF-5278-2695-AA9A88A80AF8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[246:255]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 14 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]" "e[211]" "e[232]" "e[244]" "e[310]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 14 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]" "e[230]" "e[242]" "e[245]" "e[311]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 34 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209]" "e[211]" "e[230]" "e[232]" "e[242]" "e[244:255]" "e[310:311]";
	setAttr ".pv" -type "double2" 0.35321648482931778 0.85039505362510681 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 492 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0014072371 0.0019920319 0.071769089
		 0.0019920319 0.071769089 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319
		 0.14213091 0.073136047 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468
		 0.0019920319 0.28285468 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047
		 0.42357838 0.0019920319 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023
		 0.073136047 0.56430215 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319
		 0.63466388 0.073136047 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089
		 0.14428 0.0014072371 0.14428 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428
		 0.35321653 0.14428 0.42357838 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388
		 0.14428 0.70502573 0.14428 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091
		 0.21542408 0.21249282 0.21542408 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838
		 0.21542408 0.49394023 0.21542408 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573
		 0.21542408 0.071769089 0.28656805 0.0014072371 0.28656805 0.14213091 0.28656805 0.21249282
		 0.28656805 0.28285468 0.28656805 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023
		 0.28656805 0.56430215 0.28656805 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089
		 0.35771212 0.0014072371 0.35771212 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468
		 0.35771212 0.35321653 0.35771212 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215
		 0.35771212 0.63466388 0.35771212 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371
		 0.42885607 0.14213091 0.42885607 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653
		 0.42885607 0.42357838 0.42885607 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388
		 0.42885607 0.70502573 0.42885607 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5
		 0.21249282 0.5 0.28285468 0.5 0.35321653 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215
		 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089 0.57114393 0.0014072371 0.57114393
		 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468 0.57114393 0.35321653 0.57114393
		 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215 0.57114393 0.63466388 0.57114393
		 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371 0.64228803 0.14213091 0.64228803
		 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653 0.64228803 0.42357838 0.64228803
		 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388 0.64228803 0.70502573 0.64228803
		 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091 0.71343195 0.21249282 0.71343195
		 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838 0.71343195 0.49394023 0.71343195
		 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573 0.71343195 0.0014072371 0.78457606
		 0.70502573 0.92686397 0.071769089 0.99800795 0.0014072371 0.99800795 0.14213091 0.99800795
		 0.21249282 0.99800795 0.28285468 0.99800795 0.35321653 0.99800795 0.42357838 0.99800795
		 0.49394023 0.99800795 0.56430215 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.036588162 0.92686397 0.095223024 0.92686391 0.11867698 0.92686391 0.071769089 0.96243596
		 0.16558488 0.92686391 0.18903884 0.92686391 0.14213091 0.96243596 0.23594676 0.92686391
		 0.25940073 0.92686391 0.21249282 0.96243596 0.30630863 0.92686391 0.32976258 0.92686391
		 0.28285468 0.96243596 0.37667048 0.92686391 0.40012443 0.92686391 0.35321653 0.96243596
		 0.4470323 0.92686391 0.47048628 0.92686391 0.42357838 0.96243596 0.51739419 0.92686391
		 0.5408482 0.92686391 0.49394023 0.96243596 0.58775604 0.92686391 0.61120999 0.92686391
		 0.56430215 0.96243596 0.66984481 0.92686397 0.63466388 0.96243596 0.0014072371 0.88063848
		 0.70502573 0.82015157 0.071769089 0.78457606 0.0014072371 0.82015157 0.14213091 0.78457606
		 0.071769089 0.82015157 0.21249282 0.78457606 0.14213091 0.82015157 0.28285468 0.78457606
		 0.21249282 0.82015157 0.35321653 0.78457606 0.28285468 0.82015157 0.42357838 0.78457606
		 0.35321653 0.82015157 0.49394023 0.78457606 0.42357838 0.82015157 0.56430215 0.78457606
		 0.49394023 0.82015157 0.63466388 0.78457606 0.56430215 0.82015157 0.70502573 0.78457606
		 0.63466388 0.82015157 0.071769089 0.87135595 0.0014072371 0.92686397 0.14213091 0.87135595
		 0.071769089 0.89129198 0.21249282 0.87135595 0.14213091 0.89129198 0.28285468 0.87135595
		 0.21249282 0.89129198 0.35321653 0.87135595 0.28285468 0.89129198 0.42357838 0.87135595
		 0.35321653 0.89129198 0.49394023 0.87135595 0.42357838 0.89129198 0.56430215 0.87135595
		 0.49394023 0.89129198 0.63466388 0.87135595 0.56430215 0.89129198 0.70502573 0.88063854
		 0.63466388 0.89129198 0.0014072371 0.0019920319 0.071769089 0.0019920319 0.071769089
		 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319 0.14213091 0.073136047
		 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468 0.0019920319 0.28285468
		 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047 0.42357838 0.0019920319
		 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023 0.073136047 0.56430215
		 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319 0.63466388 0.073136047
		 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089 0.14428 0.0014072371 0.14428
		 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428 0.35321653 0.14428 0.42357838
		 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388 0.14428 0.70502573 0.14428
		 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091 0.21542408 0.21249282 0.21542408
		 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838 0.21542408 0.49394023 0.21542408
		 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573 0.21542408 0.071769089 0.28656805
		 0.0014072371 0.28656805 0.14213091 0.28656805;
	setAttr ".uvst[0].uvsp[250:491]" 0.21249282 0.28656805 0.28285468 0.28656805
		 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023 0.28656805 0.56430215 0.28656805
		 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089 0.35771212 0.0014072371 0.35771212
		 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468 0.35771212 0.35321653 0.35771212
		 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215 0.35771212 0.63466388 0.35771212
		 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371 0.42885607 0.14213091 0.42885607
		 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653 0.42885607 0.42357838 0.42885607
		 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388 0.42885607 0.70502573 0.42885607
		 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5 0.21249282 0.5 0.28285468 0.5 0.35321653
		 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089
		 0.57114393 0.0014072371 0.57114393 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468
		 0.57114393 0.35321653 0.57114393 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215
		 0.57114393 0.63466388 0.57114393 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371
		 0.64228803 0.14213091 0.64228803 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653
		 0.64228803 0.42357838 0.64228803 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388
		 0.64228803 0.70502573 0.64228803 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091
		 0.71343195 0.21249282 0.71343195 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838
		 0.71343195 0.49394023 0.71343195 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573
		 0.71343195 0.071769089 0.78457606 0.0014072371 0.78457606 0.14213091 0.78457606 0.21249282
		 0.78457606 0.28285468 0.78457606 0.35321653 0.78457606 0.42357838 0.78457606 0.49394023
		 0.78457606 0.56430215 0.78457606 0.63466388 0.78457606 0.70502573 0.78457606 0.0014072371
		 0.92686397 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089 0.99800795 0.0014072371
		 0.99800795 0.095223024 0.92686391 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091
		 0.99800795 0.16558488 0.92686391 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282
		 0.99800795 0.23594676 0.92686391 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468
		 0.99800795 0.30630863 0.92686391 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653
		 0.99800795 0.37667048 0.92686391 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838
		 0.99800795 0.4470323 0.92686391 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023
		 0.99800795 0.51739419 0.92686391 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215
		 0.99800795 0.63466388 0.96243596 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573
		 0.99800795 0.63466388 0.99800795 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371
		 0.88063848 0.0014072371 0.82015157 0.071769089 0.82015157 0.071769089 0.87135595
		 0.14213091 0.82015157 0.14213091 0.87135595 0.21249282 0.82015157 0.21249282 0.87135595
		 0.28285468 0.82015157 0.28285468 0.87135595 0.35321653 0.82015157 0.35321653 0.87135595
		 0.42357838 0.82015157 0.42357838 0.87135595 0.49394023 0.82015157 0.49394023 0.87135595
		 0.56430215 0.82015157 0.56430215 0.87135595 0.63466388 0.82015157 0.63466388 0.87135595
		 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091 0.89129198
		 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838 0.89129198
		 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198 0.0014072371 0.0019920319
		 0.071769089 0.0019920319 0.0014072371 0.073136047 0.14213091 0.0019920319 0.21249282
		 0.0019920319 0.28285468 0.0019920319 0.35321653 0.0019920319 0.42357838 0.0019920319
		 0.49394023 0.0019920319 0.56430215 0.0019920319 0.63466388 0.0019920319 0.70502573
		 0.0019920319 0.70502573 0.073136047 0.0014072371 0.14428 0.70502573 0.14428 0.0014072371
		 0.21542408 0.70502573 0.21542408 0.0014072371 0.28656805 0.70502573 0.28656805 0.0014072371
		 0.35771212 0.70502573 0.35771212 0.0014072371 0.42885607 0.70502573 0.42885607 0.0014072371
		 0.5 0.70502573 0.5 0.0014072371 0.57114393 0.70502573 0.57114393 0.0014072371 0.64228803
		 0.70502573 0.64228803 0.0014072371 0.71343195 0.70502573 0.71343195 0.0014072371
		 0.78457606 0.70502573 0.78457606 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089
		 0.99800795 0.0014072371 0.99800795 0.0014072371 0.92686397 0.095223024 0.92686391
		 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091 0.99800795 0.16558488 0.92686391
		 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282 0.99800795 0.23594676 0.92686391
		 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468 0.99800795 0.30630863 0.92686391
		 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653 0.99800795 0.37667048 0.92686391
		 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838 0.99800795 0.4470323 0.92686391
		 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023 0.99800795 0.51739419 0.92686391
		 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215 0.99800795 0.63466388 0.96243596
		 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573 0.99800795 0.63466388 0.99800795
		 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371 0.88063848 0.0014072371
		 0.82015157 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091
		 0.89129198 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838
		 0.89129198 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 406 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.31876811 0.34368894 0.048435636 
		-0.31888247 0.34368894 0.071564563 -0.31899679 0.34368894 0.094693489 -0.3191112 
		0.34368894 0.11782242 -0.31922552 0.34368894 0.14095135 -0.3193399 0.34368894 0.16408028 
		-0.31945425 0.34368894 0.1872092 -0.31956857 0.34368894 0.21033812 -0.31968299 0.34368894 
		0.23346706 -0.31979731 0.34368894 0.25659597 -0.31991166 0.34368894 0.2797249 -0.29538205 
		0.34368894 0.048551273 -0.29549643 0.34368894 0.071680188 -0.29561079 0.34368894 
		0.094809115 -0.29572514 0.34368894 0.11793805 -0.29583949 0.34368894 0.14106697 -0.29595384 
		0.34368894 0.1641959 -0.29606819 0.34368894 0.18732484 -0.29618257 0.34368894 0.21045375 
		-0.29629692 0.34368894 0.23358269 -0.29641128 0.34368894 0.2567116 -0.29652563 0.34368894 
		0.27984053 -0.27199602 0.34368894 0.048666891 -0.27211037 0.34368894 0.071795814 
		-0.27222475 0.34368894 0.09492474 -0.27233911 0.34368894 0.11805367 -0.27245346 0.34368894 
		0.1411826 -0.27256781 0.34368894 0.16431153 -0.27268216 0.34368894 0.18744045 -0.27279654 
		0.34368894 0.21056938 -0.27291086 0.34368894 0.23369832 -0.27302524 0.34368894 0.25682724 
		-0.2731396 0.34368894 0.27995616 -0.24861 0.34368894 0.04878252 -0.24872434 0.34368894 
		0.071911439 -0.24883871 0.34368894 0.095040374 -0.24895306 0.34368894 0.11816931 
		-0.24906743 0.34368894 0.14129823 -0.24918178 0.34368894 0.16442716 -0.24929613 0.34368894 
		0.18755609 -0.2494105 0.34368894 0.210685 -0.24952485 0.34368894 0.23381394 -0.24963921 
		0.34368894 0.25694287 -0.24975356 0.34368894 0.28007179 -0.22522399 0.34368894 0.048898146 
		-0.22533834 0.34368894 0.072027072 -0.22545271 0.34368894 0.095155992 -0.22556706 
		0.34368894 0.11828493 -0.22568141 0.34368894 0.14141385 -0.22579578 0.34368894 0.16454278 
		-0.22591013 0.34368894 0.18767172 -0.22602448 0.34368894 0.21080063 -0.22613885 0.34368894 
		0.23392957 -0.2262532 0.34368894 0.25705847 -0.22636755 0.34368894 0.2801874 -0.20183796 
		0.34368894 0.049013775 -0.20195232 0.34368894 0.072142698 -0.20206667 0.34368894 
		0.095271625 -0.20218103 0.34368894 0.11840056 -0.20229539 0.34368894 0.14152949 -0.20240974 
		0.34368894 0.16465841 -0.2025241 0.34368894 0.18778734 -0.20263846 0.34368894 0.21091627 
		-0.20275281 0.34368894 0.23404521 -0.20286717 0.34368894 0.25717413 -0.20298153 0.34368894 
		0.28030303 -0.17845193 0.34368894 0.049129404 -0.17856628 0.34368894 0.072258323 
		-0.17868064 0.34368894 0.095387258 -0.17879499 0.34368894 0.11851619 -0.17890935 
		0.34368894 0.14164512 -0.17902371 0.34368894 0.16477405 -0.17913806 0.34368894 0.18790297 
		-0.17925242 0.34368894 0.21103188 -0.17936678 0.34368894 0.23416083 -0.17948113 0.34368894 
		0.25728974 -0.1795955 0.34368894 0.28041866 -0.15506591 0.34368894 0.04924503 -0.15518028 
		0.34368894 0.072373942 -0.15529463 0.34368894 0.095502876 -0.15540898 0.34368894 
		0.11863182 -0.15552334 0.34368894 0.14176074 -0.1556377 0.34368894 0.16488966 -0.15575205 
		0.34368894 0.18801861 -0.15586641 0.34368894 0.21114752 -0.15598077 0.34368894 0.23427646 
		-0.15609512 0.34368894 0.25740537 -0.15620948 0.34368894 0.2805343 -0.13167988 0.34368894 
		0.049360659 -0.13179424 0.34368894 0.072489582 -0.1319086 0.34368894 0.095618509 
		-0.13202295 0.34368894 0.11874744 -0.13213731 0.34368894 0.14187637 -0.13225166 0.34368894 
		0.1650053 -0.13236602 0.34368894 0.18813422 -0.13248038 0.34368894 0.21126315 -0.13259473 
		0.34368894 0.23439208 -0.13270909 0.34368894 0.257521 -0.13282345 0.34368894 0.28064993 
		-0.10829386 0.34368894 0.049476285 -0.10840821 0.34368894 0.072605208 -0.10852256 
		0.34368894 0.095734134 -0.10863693 0.34368894 0.11886308 -0.10875128 0.34368894 0.141992 
		-0.10886564 0.34368894 0.16512091 -0.10898 0.34368894 0.18824986 -0.10909435 0.34368894 
		0.21137877 -0.10920871 0.34368894 0.23450771 -0.10932306 0.34368894 0.25763664 -0.10943742 
		0.34368894 0.28076553 -0.084907837 0.34368894 0.049591914 -0.085022196 0.34368894 
		0.072720841 -0.085136548 0.34368894 0.095849767 -0.085250907 0.34368894 0.1189787 
		-0.085365266 0.34368894 0.14210762 -0.085479617 0.34368894 0.16523655 -0.085593976 
		0.34368894 0.18836549 -0.085708335 0.34368894 0.2114944 -0.085822687 0.34368894 0.23462334 
		-0.085937046 0.34368894 0.25775224 -0.086051397 0.34368894 0.28088117 -0.061521802 
		0.34368894 0.049707543 -0.061636157 0.34368894 0.072836466 -0.061750524 0.34368894 
		0.095965393 -0.061864872 0.34368894 0.11909433 -0.061979238 0.34368894 0.14222325 
		-0.062093586 0.34368894 0.16535218 -0.062207941 0.34368894 0.18848111 -0.062322296 
		0.34368894 0.21161003 -0.062436655 0.34368894 0.23473896 -0.062551022 0.34368894 
		0.2578679 -0.062665366 0.34368894 0.2809968 -0.004754738 0.34368894 0.049988225 -0.0058983136 
		0.34368894 0.28127748 0.0086362539 0.34368894 0.050054424 0.0085218977 0.34368894 
		0.07318335 0.0084075406 0.34368894 0.09631227 0.0082931845 0.34368894 0.11944121 
		0.0081788087 0.34368894 0.14257014 0.0080644712 0.34368894 0.16569906 0.0079501141 
		0.34368894 0.18882799 0.0078357579 0.34368894 0.21195692 0.0077214013 0.34368894 
		0.23508584 0.0076070256 0.34368894 0.25821477 0.007492688 0.34368894 0.2813437 -0.011651043 
		0.34368894 0.073083594 -0.011765399 0.34368894 0.096212536 -0.011879756 0.34368894 
		0.11934147 -0.011994123 0.34368894 0.14247039 -0.012108469 0.34368894 0.16559932 
		-0.012222816 0.34368894 0.18872826 -0.012337183 0.34368894 0.21185717 -0.01245154 
		0.34368894 0.23498611 -0.012565905 0.34368894 0.25811502 -0.0048359404 0.34368894 
		0.066409767 -0.004902258 0.34368894 0.07982453 -0.0049502878 0.34368894 0.089538671 
		0.0019128444 0.34368894 0.073150665 -0.005016624 0.34368894 0.10295346 -0.0050646537 
		0.34368894 0.11266761 0.0017984783 0.34368894 0.096279599 -0.0051309806 0.34368894 
		0.12608239 -0.005179001 0.34368894 0.13579655 0.0016841311 0.34368894 0.11940853 
		-0.0052453373 0.34368894 0.14921132 -0.005293367 0.34368894 0.15892546;
	setAttr ".pt[166:331]" 0.001569765 0.34368894 0.14253746 -0.0053596846 0.34368894 
		0.17234024 -0.0054077236 0.34368894 0.18205439 0.0014554084 0.34368894 0.16566639 
		-0.0054740505 0.34368894 0.19546917 -0.0055220895 0.34368894 0.20518331 0.0013410517 
		0.34368894 0.18879531 -0.0055884072 0.34368894 0.2185981 -0.0056364276 0.34368894 
		0.22831224 0.0012267046 0.34368894 0.21192424 -0.0057027731 0.34368894 0.24172702 
		-0.0057507935 0.34368894 0.25144118 0.0011123478 0.34368894 0.23505317 -0.0058171111 
		0.34368894 0.26485595 0.00099798187 0.34368894 0.25818208 -0.037013687 0.34368894 
		0.049828716 -0.017787086 0.34368894 0.04992377 -0.037128042 0.34368894 0.072957642 
		-0.017901434 0.34368894 0.073052697 -0.037242401 0.34368894 0.096086562 -0.0180158 
		0.34368894 0.096181631 -0.037356757 0.34368894 0.1192155 -0.018130148 0.34368894 
		0.11931057 -0.037471123 0.34368894 0.14234443 -0.018244512 0.34368894 0.14243948 
		-0.037585471 0.34368894 0.16547336 -0.01835886 0.34368894 0.16556841 -0.037699819 
		0.34368894 0.18860228 -0.018473217 0.34368894 0.18869735 -0.037814185 0.34368894 
		0.2117312 -0.018587584 0.34368894 0.21182626 -0.03792854 0.34368894 0.23486014 -0.01870193 
		0.34368894 0.23495521 -0.038042907 0.34368894 0.25798905 -0.018816287 0.34368894 
		0.25808412 -0.018930644 0.34368894 0.28121305 -0.038157243 0.34368894 0.28111798 
		-0.31876811 0.34368894 0.048435636 -0.31888247 0.34368894 0.071564563 -0.29549643 
		0.34368894 0.071680188 -0.29538205 0.34368894 0.048551273 -0.31899679 0.34368894 
		0.094693489 -0.29561079 0.34368894 0.094809115 -0.3191112 0.34368894 0.11782242 -0.29572514 
		0.34368894 0.11793805 -0.31922552 0.34368894 0.14095135 -0.29583949 0.34368894 0.14106697 
		-0.3193399 0.34368894 0.16408028 -0.29595384 0.34368894 0.1641959 -0.31945425 0.34368894 
		0.1872092 -0.29606819 0.34368894 0.18732484 -0.31956857 0.34368894 0.21033812 -0.29618257 
		0.34368894 0.21045375 -0.31968299 0.34368894 0.23346706 -0.29629692 0.34368894 0.23358269 
		-0.31979731 0.34368894 0.25659597 -0.29641128 0.34368894 0.2567116 -0.31991166 0.34368894 
		0.2797249 -0.29652563 0.34368894 0.27984053 -0.27211037 0.34368894 0.071795814 -0.27199602 
		0.34368894 0.048666891 -0.27222475 0.34368894 0.09492474 -0.27233911 0.34368894 0.11805367 
		-0.27245346 0.34368894 0.1411826 -0.27256781 0.34368894 0.16431153 -0.27268216 0.34368894 
		0.18744045 -0.27279654 0.34368894 0.21056938 -0.27291086 0.34368894 0.23369832 -0.27302524 
		0.34368894 0.25682724 -0.2731396 0.34368894 0.27995616 -0.24872434 0.34368894 0.071911439 
		-0.24861 0.34368894 0.04878252 -0.24883871 0.34368894 0.095040374 -0.24895306 0.34368894 
		0.11816931 -0.24906743 0.34368894 0.14129823 -0.24918178 0.34368894 0.16442716 -0.24929613 
		0.34368894 0.18755609 -0.2494105 0.34368894 0.210685 -0.24952485 0.34368894 0.23381394 
		-0.24963921 0.34368894 0.25694287 -0.24975356 0.34368894 0.28007179 -0.22533834 0.34368894 
		0.072027072 -0.22522399 0.34368894 0.048898146 -0.22545271 0.34368894 0.095155992 
		-0.22556706 0.34368894 0.11828493 -0.22568141 0.34368894 0.14141385 -0.22579578 0.34368894 
		0.16454278 -0.22591013 0.34368894 0.18767172 -0.22602448 0.34368894 0.21080063 -0.22613885 
		0.34368894 0.23392957 -0.2262532 0.34368894 0.25705847 -0.22636755 0.34368894 0.2801874 
		-0.20195232 0.34368894 0.072142698 -0.20183796 0.34368894 0.049013775 -0.20206667 
		0.34368894 0.095271625 -0.20218103 0.34368894 0.11840056 -0.20229539 0.34368894 0.14152949 
		-0.20240974 0.34368894 0.16465841 -0.2025241 0.34368894 0.18778734 -0.20263846 0.34368894 
		0.21091627 -0.20275281 0.34368894 0.23404521 -0.20286717 0.34368894 0.25717413 -0.20298153 
		0.34368894 0.28030303 -0.17856628 0.34368894 0.072258323 -0.17845193 0.34368894 0.049129404 
		-0.17868064 0.34368894 0.095387258 -0.17879499 0.34368894 0.11851619 -0.17890935 
		0.34368894 0.14164512 -0.17902371 0.34368894 0.16477405 -0.17913806 0.34368894 0.18790297 
		-0.17925242 0.34368894 0.21103188 -0.17936678 0.34368894 0.23416083 -0.17948113 0.34368894 
		0.25728974 -0.1795955 0.34368894 0.28041866 -0.15518028 0.34368894 0.072373942 -0.15506591 
		0.34368894 0.04924503 -0.15529463 0.34368894 0.095502876 -0.15540898 0.34368894 0.11863182 
		-0.15552334 0.34368894 0.14176074 -0.1556377 0.34368894 0.16488966 -0.15575205 0.34368894 
		0.18801861 -0.15586641 0.34368894 0.21114752 -0.15598077 0.34368894 0.23427646 -0.15609512 
		0.34368894 0.25740537 -0.15620948 0.34368894 0.2805343 -0.13179424 0.34368894 0.072489582 
		-0.13167988 0.34368894 0.049360659 -0.1319086 0.34368894 0.095618509 -0.13202295 
		0.34368894 0.11874744 -0.13213731 0.34368894 0.14187637 -0.13225166 0.34368894 0.1650053 
		-0.13236602 0.34368894 0.18813422 -0.13248038 0.34368894 0.21126315 -0.13259473 0.34368894 
		0.23439208 -0.13270909 0.34368894 0.257521 -0.13282345 0.34368894 0.28064993 -0.10840821 
		0.34368894 0.072605208 -0.10829386 0.34368894 0.049476285 -0.10852256 0.34368894 
		0.095734134 -0.10863693 0.34368894 0.11886308 -0.10875128 0.34368894 0.141992 -0.10886564 
		0.34368894 0.16512091 -0.10898 0.34368894 0.18824986 -0.10909435 0.34368894 0.21137877 
		-0.10920871 0.34368894 0.23450771 -0.10932306 0.34368894 0.25763664 -0.10943742 0.34368894 
		0.28076553 -0.085022196 0.34368894 0.072720841 -0.084907837 0.34368894 0.049591914 
		-0.085136548 0.34368894 0.095849767 -0.085250907 0.34368894 0.1189787 -0.085365266 
		0.34368894 0.14210762 -0.085479617 0.34368894 0.16523655 -0.085593976 0.34368894 
		0.18836549 -0.085708335 0.34368894 0.2114944 -0.085822687 0.34368894 0.23462334 -0.085937046 
		0.34368894 0.25775224 -0.086051397 0.34368894 0.28088117 -0.061636157 0.34368894 
		0.072836466 -0.061521802 0.34368894 0.049707543 -0.061750524 0.34368894 0.095965393 
		-0.061864872 0.34368894 0.11909433 -0.061979238 0.34368894 0.14222325 -0.062093586 
		0.34368894 0.16535218 -0.062207941 0.34368894 0.18848111 -0.062322296 0.34368894 
		0.21161003;
	setAttr ".pt[332:405]" -0.062436655 0.34368894 0.23473896 -0.062551022 0.34368894 
		0.2578679 -0.062665366 0.34368894 0.2809968 -0.004754738 0.34368894 0.049988225 -0.0048359404 
		0.34368894 0.066409767 0.0019128444 0.34368894 0.073150665 0.0085218977 0.34368894 
		0.07318335 0.0086362539 0.34368894 0.050054424 -0.004902258 0.34368894 0.07982453 
		-0.0049502878 0.34368894 0.089538671 0.0017984783 0.34368894 0.096279599 0.0084075406 
		0.34368894 0.09631227 -0.005016624 0.34368894 0.10295346 -0.0050646537 0.34368894 
		0.11266761 0.0016841311 0.34368894 0.11940853 0.0082931845 0.34368894 0.11944121 
		-0.0051309806 0.34368894 0.12608239 -0.005179001 0.34368894 0.13579655 0.001569765 
		0.34368894 0.14253746 0.0081788087 0.34368894 0.14257014 -0.0052453373 0.34368894 
		0.14921132 -0.005293367 0.34368894 0.15892546 0.0014554084 0.34368894 0.16566639 
		0.0080644712 0.34368894 0.16569906 -0.0053596846 0.34368894 0.17234024 -0.0054077236 
		0.34368894 0.18205439 0.0013410517 0.34368894 0.18879531 0.0079501141 0.34368894 
		0.18882799 -0.0054740505 0.34368894 0.19546917 -0.0055220895 0.34368894 0.20518331 
		0.0012267046 0.34368894 0.21192424 0.0078357579 0.34368894 0.21195692 -0.0055884072 
		0.34368894 0.2185981 -0.0056364276 0.34368894 0.22831224 0.0011123478 0.34368894 
		0.23505317 0.0077214013 0.34368894 0.23508584 -0.0058171111 0.34368894 0.26485595 
		0.00099798187 0.34368894 0.25818208 -0.0058983136 0.34368894 0.28127748 0.007492688 
		0.34368894 0.2813437 0.0076070256 0.34368894 0.25821477 -0.0057027731 0.34368894 
		0.24172702 -0.0057507935 0.34368894 0.25144118 -0.017787086 0.34368894 0.04992377 
		-0.037013687 0.34368894 0.049828716 -0.037128042 0.34368894 0.072957642 -0.017901434 
		0.34368894 0.073052697 -0.037242401 0.34368894 0.096086562 -0.0180158 0.34368894 
		0.096181631 -0.037356757 0.34368894 0.1192155 -0.018130148 0.34368894 0.11931057 
		-0.037471123 0.34368894 0.14234443 -0.018244512 0.34368894 0.14243948 -0.037585471 
		0.34368894 0.16547336 -0.01835886 0.34368894 0.16556841 -0.037699819 0.34368894 0.18860228 
		-0.018473217 0.34368894 0.18869735 -0.037814185 0.34368894 0.2117312 -0.018587584 
		0.34368894 0.21182626 -0.03792854 0.34368894 0.23486014 -0.01870193 0.34368894 0.23495521 
		-0.038042907 0.34368894 0.25798905 -0.018816287 0.34368894 0.25808412 -0.038157243 
		0.34368894 0.28111798 -0.018930644 0.34368894 0.28121305 -0.011651043 0.34368894 
		0.073083594 -0.011765399 0.34368894 0.096212536 -0.011879756 0.34368894 0.11934147 
		-0.011994123 0.34368894 0.14247039 -0.012108469 0.34368894 0.16559932 -0.012222816 
		0.34368894 0.18872826 -0.012337183 0.34368894 0.21185717 -0.01245154 0.34368894 0.23498611 
		-0.012565905 0.34368894 0.25811502;
	setAttr -s 406 ".vt";
	setAttr ".vt[0:165]"  -11.69500065 0 16.55500412 -9.3560009 0 16.55500221
		 -7.017000675 0 16.55500031 -4.6779995 0 16.55500412 -2.33899999 0 16.55500221 0 0 16.55500412
		 2.3390007 0 16.55500221 4.67799997 0 16.55500031 7.017001629 0 16.55500412 9.3560009 0 16.55500221
		 11.69500065 0 16.55500221 -11.69499969 0 14.19000053 -9.3560009 0 14.19000053 -7.017000675 0 14.19000053
		 -4.6779995 0 14.19000053 -2.33900023 0 14.19000149 -1.4901161e-08 0 14.19000053 2.3390007 0 14.18999958
		 4.67800045 0 14.19000053 7.017001152 0 14.19000053 9.3560009 0 14.19000149 11.69500065 0 14.18999958
		 -11.69500065 0 11.82499886 -9.3560009 0 11.82499886 -7.017000675 0 11.82499981 -4.67799997 0 11.82499981
		 -2.33899999 0 11.82499981 0 0 11.82499981 2.3390007 0 11.82499886 4.67799997 0 11.82499981
		 7.017001629 0 11.82499886 9.35599995 0 11.82499981 11.69500065 0 11.82499981 -11.69500065 0 9.45999908
		 -9.3560009 0 9.45999813 -7.017000675 0 9.45999813 -4.6779995 0 9.45999813 -2.33899975 0 9.45999908
		 0 0 9.45999908 2.33900094 0 9.45999813 4.67799997 0 9.45999813 7.017001152 0 9.45999813
		 9.35599995 0 9.45999908 11.69499969 0 9.45999813 -11.69500065 0 7.095000744 -9.3560009 0 7.095000267
		 -7.017001152 0 7.095000267 -4.6779995 0 7.095000267 -2.33899999 0 7.095000267 0 0 7.095000267
		 2.33900094 0 7.095000744 4.67800045 0 7.095000267 7.017001152 0 7.095000744 9.35599995 0 7.09499979
		 11.69499969 0 7.095000267 -11.69500065 0 4.73000002 -9.3560009 0 4.73000002 -7.017000675 0 4.72999954
		 -4.67799997 0 4.72999954 -2.33899999 0 4.73000002 0 0 4.72999954 2.33900094 0 4.73000002
		 4.67799997 0 4.73000002 7.017001629 0 4.73000002 9.3560009 0 4.72999954 11.69499969 0 4.72999954
		 -11.69500065 0 2.36499858 -9.3560009 0 2.36499858 -7.017000675 0 2.36499882 -4.6779995 0 2.36499882
		 -2.33899999 0 2.36499858 -1.4901161e-08 0 2.36499858 2.3390007 0 2.36499882 4.67799997 0 2.36499858
		 7.017001152 0 2.36499858 9.3560009 0 2.36499858 11.69500065 0 2.36499882 -11.69500065 0 0
		 -9.35600185 0 0 -7.017001152 0 0 -4.67799997 0 0 -2.33899999 0 0 -1.4901161e-08 0 0
		 2.3390007 0 -1.4901161e-08 4.67799997 0 0 7.017001152 0 0 9.3560009 0 0 11.69500065 0 -1.4901161e-08
		 -11.69500065 0 -2.36500096 -9.3560009 0 -2.36500096 -7.017000675 0 -2.36500096 -4.67799997 0 -2.36500096
		 -2.33899999 0 -2.36500096 0 0 -2.36500096 2.33900094 0 -2.36500096 4.67799997 0 -2.36500096
		 7.017001152 0 -2.36500096 9.35599995 0 -2.36500096 11.69499969 0 -2.36500096 -11.69500065 0 -4.73000097
		 -9.3560009 0 -4.73000097 -7.017001152 0 -4.73000145 -4.6779995 0 -4.73000097 -2.33899999 0 -4.73000145
		 0 0 -4.73000097 2.3390007 0 -4.73000097 4.67799997 0 -4.73000097 7.017001152 0 -4.73000097
		 9.35599995 0 -4.73000145 11.69499969 0 -4.73000145 -11.69500065 0 -7.095000744 -9.3560009 0 -7.095000267
		 -7.017000675 0 -7.095001221 -4.67799997 0 -7.095000744 -2.33899999 0 -7.095000744
		 0 0 -7.095000744 2.3390007 0 -7.095000744 4.67799997 0 -7.095000267 7.017001152 0 -7.095000744
		 9.35599995 0 -7.095000744 11.69499969 0 -7.095001221 -11.69500065 0 -9.46000195 -9.3560009 0 -9.46000195
		 -7.017000675 0 -9.46000099 -4.67799997 0 -9.46000195 -2.33900023 0 -9.46000099 0 0 -9.46000195
		 2.3390007 0 -9.46000195 4.67799997 0 -9.46000195 7.017001152 0 -9.46000195 9.3560009 0 -9.46000099
		 11.69499969 0 -9.46000195 -11.69499969 0 -15.20078564 11.69500065 0 -15.20078468
		 -11.69500065 0 -16.55500031 -9.3560009 0 -16.55500031 -7.017001152 0 -16.55500031
		 -4.6779995 0 -16.55500031 -2.33899999 0 -16.5549984 0 0 -16.55500031 2.33900094 0 -16.55500031
		 4.67799997 0 -16.55500031 7.017001152 0 -16.55500031 9.35599995 0 -16.5549984 11.69499969 0 -16.55500031
		 -9.35600185 0 -14.51493549 -7.017000675 0 -14.51493549 -4.6779995 0 -14.51493549
		 -2.33899999 0 -14.51493454 0 0 -14.51493549 2.3390007 0 -14.51493645 4.67800045 0 -14.51493549
		 7.017001152 0 -14.51493549 9.35599995 0 -14.51493454 -10.034309387 0 -15.20078468
		 -8.67769051 0 -15.20078564 -7.69531107 0 -15.20078564 -9.35600185 0 -15.88663483
		 -6.33869028 0 -15.20078468 -5.35630989 0 -15.20078468 -7.017000675 0 -15.88663387
		 -3.99968982 0 -15.20078468 -3.017309666 0 -15.20078564 -4.67799997 0 -15.88663483
		 -1.66068995 0 -15.20078468 -0.67830992 0 -15.20078468;
	setAttr ".vt[166:331]" -2.33899999 0 -15.88663387 0.67831016 0 -15.20078564
		 1.66069043 0 -15.20078468 0 0 -15.88663387 3.017310381 0 -15.20078468 3.99968982 0 -15.20078373
		 2.3390007 0 -15.88663387 5.35631037 0 -15.20078468 6.33869028 0 -15.20078564 4.67799997 0 -15.88663483
		 7.69531059 0 -15.20078373 8.67769051 0 -15.20078468 7.017001152 0 -15.88663483 10.034310341 0 -15.20078564
		 9.35599995 0 -15.88663387 -11.69500065 0 -11.93847752 -11.6950016 0 -13.88284016
		 -9.3560009 0 -11.93847752 -9.35600185 0 -13.88284111 -7.017001152 0 -11.93847752
		 -7.017000675 0 -13.88284016 -4.67799997 0 -11.93847752 -4.6779995 0 -13.88284111
		 -2.33899999 0 -11.93847656 -2.33899999 0 -13.88284016 0 0 -11.93847752 -1.4901161e-08 0 -13.88284111
		 2.3390007 0 -11.93847847 2.3390007 0 -13.88284111 4.6779995 0 -11.93847752 4.67799997 0 -13.88284016
		 7.017001152 0 -11.93847752 7.017001629 0 -13.88284111 9.35599995 0 -11.93847656 9.35599995 0 -13.88284111
		 11.69500065 0 -13.88284111 11.69500065 0 -11.93847847 -11.69500065 0.090000004 16.55500412
		 -9.3560009 0.090000004 16.55500221 -9.3560009 0.090000004 14.19000053 -11.69499969 0.090000004 14.19000053
		 -7.017000675 0.090000004 16.55500031 -7.017000675 0.090000004 14.19000053 -4.6779995 0.090000004 16.55500412
		 -4.6779995 0.090000004 14.19000053 -2.33899999 0.090000004 16.55500221 -2.33900023 0.090000004 14.19000149
		 0 0.090000004 16.55500412 -1.4901161e-08 0.090000004 14.19000053 2.3390007 0.090000004 16.55500221
		 2.3390007 0.090000004 14.18999958 4.67799997 0.090000004 16.55500031 4.67800045 0.090000004 14.19000053
		 7.017001629 0.090000004 16.55500412 7.017001152 0.090000004 14.19000053 9.3560009 0.090000004 16.55500221
		 9.3560009 0.090000004 14.19000149 11.69500065 0.090000004 16.55500221 11.69500065 0.090000004 14.18999958
		 -9.3560009 0.090000004 11.82499886 -11.69500065 0.090000004 11.82499886 -7.017000675 0.090000004 11.82499981
		 -4.67799997 0.090000004 11.82499981 -2.33899999 0.090000004 11.82499981 0 0.090000004 11.82499981
		 2.3390007 0.090000004 11.82499886 4.67799997 0.090000004 11.82499981 7.017001629 0.090000004 11.82499886
		 9.35599995 0.090000004 11.82499981 11.69500065 0.090000004 11.82499981 -9.3560009 0.090000004 9.45999813
		 -11.69500065 0.090000004 9.45999908 -7.017000675 0.090000004 9.45999813 -4.6779995 0.090000004 9.45999813
		 -2.33899975 0.090000004 9.45999908 0 0.090000004 9.45999908 2.33900094 0.090000004 9.45999813
		 4.67799997 0.090000004 9.45999813 7.017001152 0.090000004 9.45999813 9.35599995 0.090000004 9.45999908
		 11.69499969 0.090000004 9.45999813 -9.3560009 0.090000004 7.095000267 -11.69500065 0.090000004 7.095000744
		 -7.017001152 0.090000004 7.095000267 -4.6779995 0.090000004 7.095000267 -2.33899999 0.090000004 7.095000267
		 0 0.090000004 7.095000267 2.33900094 0.090000004 7.095000744 4.67800045 0.090000004 7.095000267
		 7.017001152 0.090000004 7.095000744 9.35599995 0.090000004 7.09499979 11.69499969 0.090000004 7.095000267
		 -9.3560009 0.090000004 4.73000002 -11.69500065 0.090000004 4.73000002 -7.017000675 0.090000004 4.72999954
		 -4.67799997 0.090000004 4.72999954 -2.33899999 0.090000004 4.73000002 0 0.090000004 4.72999954
		 2.33900094 0.090000004 4.73000002 4.67799997 0.090000004 4.73000002 7.017001629 0.090000004 4.73000002
		 9.3560009 0.090000004 4.72999954 11.69499969 0.090000004 4.72999954 -9.3560009 0.090000004 2.36499858
		 -11.69500065 0.090000004 2.36499858 -7.017000675 0.090000004 2.36499882 -4.6779995 0.090000004 2.36499882
		 -2.33899999 0.090000004 2.36499858 -1.4901161e-08 0.090000004 2.36499858 2.3390007 0.090000004 2.36499882
		 4.67799997 0.090000004 2.36499858 7.017001152 0.090000004 2.36499858 9.3560009 0.090000004 2.36499858
		 11.69500065 0.090000004 2.36499882 -9.35600185 0.090000004 0 -11.69500065 0.090000004 0
		 -7.017001152 0.090000004 0 -4.67799997 0.090000004 0 -2.33899999 0.090000004 0 -1.4901161e-08 0.090000004 0
		 2.3390007 0.090000004 -1.4901161e-08 4.67799997 0.090000004 0 7.017001152 0.090000004 0
		 9.3560009 0.090000004 0 11.69500065 0.090000004 -1.4901161e-08 -9.3560009 0.090000004 -2.36500096
		 -11.69500065 0.090000004 -2.36500096 -7.017000675 0.090000004 -2.36500096 -4.67799997 0.090000004 -2.36500096
		 -2.33899999 0.090000004 -2.36500096 0 0.090000004 -2.36500096 2.33900094 0.090000004 -2.36500096
		 4.67799997 0.090000004 -2.36500096 7.017001152 0.090000004 -2.36500096 9.35599995 0.090000004 -2.36500096
		 11.69499969 0.090000004 -2.36500096 -9.3560009 0.090000004 -4.73000097 -11.69500065 0.090000004 -4.73000097
		 -7.017001152 0.090000004 -4.73000145 -4.6779995 0.090000004 -4.73000097 -2.33899999 0.090000004 -4.73000145
		 0 0.090000004 -4.73000097 2.3390007 0.090000004 -4.73000097 4.67799997 0.090000004 -4.73000097
		 7.017001152 0.090000004 -4.73000097 9.35599995 0.090000004 -4.73000145 11.69499969 0.090000004 -4.73000145
		 -9.3560009 0.090000004 -7.095000267 -11.69500065 0.090000004 -7.095000744 -7.017000675 0.090000004 -7.095001221
		 -4.67799997 0.090000004 -7.095000744 -2.33899999 0.090000004 -7.095000744 0 0.090000004 -7.095000744
		 2.3390007 0.090000004 -7.095000744 4.67799997 0.090000004 -7.095000267 7.017001152 0.090000004 -7.095000744
		 9.35599995 0.090000004 -7.095000744 11.69499969 0.090000004 -7.095001221 -9.3560009 0.090000004 -9.46000195
		 -11.69500065 0.090000004 -9.46000195 -7.017000675 0.090000004 -9.46000099 -4.67799997 0.090000004 -9.46000195
		 -2.33900023 0.090000004 -9.46000099 0 0.090000004 -9.46000195 2.3390007 0.090000004 -9.46000195
		 4.67799997 0.090000004 -9.46000195;
	setAttr ".vt[332:405]" 7.017001152 0.090000004 -9.46000195 9.3560009 0.090000004 -9.46000099
		 11.69499969 0.090000004 -9.46000195 -11.69499969 0.090000004 -15.20078564 -10.034309387 0.090000004 -15.20078468
		 -9.35600185 0.090000004 -15.88663483 -9.3560009 0.090000004 -16.55500031 -11.69500065 0.090000004 -16.55500031
		 -8.67769051 0.090000004 -15.20078564 -7.69531107 0.090000004 -15.20078564 -7.017000675 0.090000004 -15.88663387
		 -7.017001152 0.090000004 -16.55500031 -6.33869028 0.090000004 -15.20078468 -5.35630989 0.090000004 -15.20078468
		 -4.67799997 0.090000004 -15.88663483 -4.6779995 0.090000004 -16.55500031 -3.99968982 0.090000004 -15.20078468
		 -3.017309666 0.090000004 -15.20078564 -2.33899999 0.090000004 -15.88663387 -2.33899999 0.090000004 -16.5549984
		 -1.66068995 0.090000004 -15.20078468 -0.67830992 0.090000004 -15.20078468 0 0.090000004 -15.88663387
		 0 0.090000004 -16.55500031 0.67831016 0.090000004 -15.20078564 1.66069043 0.090000004 -15.20078468
		 2.3390007 0.090000004 -15.88663387 2.33900094 0.090000004 -16.55500031 3.017310381 0.090000004 -15.20078468
		 3.99968982 0.090000004 -15.20078373 4.67799997 0.090000004 -15.88663483 4.67799997 0.090000004 -16.55500031
		 5.35631037 0.090000004 -15.20078468 6.33869028 0.090000004 -15.20078564 7.017001152 0.090000004 -15.88663483
		 7.017001152 0.090000004 -16.55500031 10.034310341 0.090000004 -15.20078564 9.35599995 0.090000004 -15.88663387
		 11.69500065 0.090000004 -15.20078468 11.69499969 0.090000004 -16.55500031 9.35599995 0.090000004 -16.5549984
		 7.69531059 0.090000004 -15.20078373 8.67769051 0.090000004 -15.20078468 -11.6950016 0.090000004 -13.88284016
		 -11.69500065 0.090000004 -11.93847752 -9.3560009 0.090000004 -11.93847752 -9.35600185 0.090000004 -13.88284111
		 -7.017001152 0.090000004 -11.93847752 -7.017000675 0.090000004 -13.88284016 -4.67799997 0.090000004 -11.93847752
		 -4.6779995 0.090000004 -13.88284111 -2.33899999 0.090000004 -11.93847656 -2.33899999 0.090000004 -13.88284016
		 0 0.090000004 -11.93847752 -1.4901161e-08 0.090000004 -13.88284111 2.3390007 0.090000004 -11.93847847
		 2.3390007 0.090000004 -13.88284111 4.6779995 0.090000004 -11.93847752 4.67799997 0.090000004 -13.88284016
		 7.017001152 0.090000004 -11.93847752 7.017001629 0.090000004 -13.88284111 9.35599995 0.090000004 -11.93847656
		 9.35599995 0.090000004 -13.88284111 11.69500065 0.090000004 -11.93847847 11.69500065 0.090000004 -13.88284111
		 -9.35600185 0.090000004 -14.51493549 -7.017000675 0.090000004 -14.51493549 -4.6779995 0.090000004 -14.51493549
		 -2.33899999 0.090000004 -14.51493454 0 0.090000004 -14.51493549 2.3390007 0.090000004 -14.51493645
		 4.67800045 0.090000004 -14.51493549 7.017001152 0.090000004 -14.51493549 9.35599995 0.090000004 -14.51493454;
	setAttr -s 808 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 1
		 110 121 0 111 112 1 111 122 1 112 113 1 112 123 1 113 114 1 113 124 1 114 115 1 114 125 1
		 115 116 1 115 126 1 116 117 1 116 127 1 117 118 1 117 128 1 118 119 1 118 129 1 119 120 1
		 119 130 1 120 131 0 121 122 1 121 181 0 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 128 1 128 129 1 129 130 1 130 131 1 131 202 0 132 154 1 132 134 0 133 144 0 134 135 0
		 135 136 0 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0 141 142 0 142 143 0 143 144 0
		 155 156 1 157 135 1 158 159 1 160 136 1 161 162 1 163 137 1 164 165 1 166 138 1 167 168 1
		 169 139 1 170 171 1 172 140 1 173 174 1 175 141 1 176 177 1 178 142 1 179 133 1 180 143 1
		 154 145 0 145 155 0 155 157 0 157 154 0 156 146 0 146 158 0 158 160 0 160 156 0 159 147 0
		 147 161 0 161 163 0 163 159 0 162 148 0 148 164 0 164 166 0 166 162 0 165 149 0 149 167 0
		 167 169 0 169 165 0 168 150 0 150 170 0 170 172 0 172 168 0 171 151 0 151 173 0 173 175 0
		 175 171 0 174 152 0 152 176 0 176 178 0 178 174 0 177 153 0 153 179 0 179 180 0 180 177 0
		 182 132 0 201 133 0 182 181 0 181 183 1 183 184 1 184 182 1 183 185 1 185 186 1 186 184 1
		 185 187 1 187 188 1 188 186 1 187 189 1 189 190 1 190 188 1 189 191 1 191 192 1 192 190 1
		 191 193 1 193 194 1 194 192 1 193 195 1;
	setAttr ".ed[332:497]" 195 196 1 196 194 1 195 197 1 197 198 1 198 196 1 197 199 1
		 199 200 1 200 198 1 199 202 1 202 201 0 201 200 1 122 183 1 123 185 1 124 187 1 125 189 1
		 126 191 1 127 193 1 128 195 1 129 197 1 130 199 1 184 145 1 186 146 1 188 147 1 190 148 1
		 192 149 1 194 150 1 196 151 1 198 152 1 200 153 1 0 203 0 1 204 1 203 204 0 204 205 1
		 11 206 1 206 205 1 203 206 0 2 207 1 204 207 0 207 208 1 205 208 1 3 209 1 207 209 0
		 209 210 1 208 210 1 4 211 1 209 211 0 211 212 1 210 212 1 5 213 1 211 213 0 213 214 1
		 212 214 1 6 215 1 213 215 0 215 216 1 214 216 1 7 217 1 215 217 0 217 218 1 216 218 1
		 8 219 1 217 219 0 219 220 1 218 220 1 9 221 1 219 221 0 221 222 1 220 222 1 10 223 0
		 221 223 0 21 224 1 223 224 0 222 224 1 205 225 1 22 226 1 226 225 1 206 226 0 208 227 1
		 225 227 1 210 228 1 227 228 1 212 229 1 228 229 1 214 230 1 229 230 1 216 231 1 230 231 1
		 218 232 1 231 232 1 220 233 1 232 233 1 222 234 1 233 234 1 32 235 1 224 235 0 234 235 1
		 225 236 1 33 237 1 237 236 1 226 237 0 227 238 1 236 238 1 228 239 1 238 239 1 229 240 1
		 239 240 1 230 241 1 240 241 1 231 242 1 241 242 1 232 243 1 242 243 1 233 244 1 243 244 1
		 234 245 1 244 245 1 43 246 1 235 246 0 245 246 1 236 247 1 44 248 1 248 247 1 237 248 0
		 238 249 1 247 249 1 239 250 1 249 250 1 240 251 1 250 251 1 241 252 1 251 252 1 242 253 1
		 252 253 1 243 254 1 253 254 1 244 255 1 254 255 1 245 256 1 255 256 1 54 257 1 246 257 0
		 256 257 1 247 258 1 55 259 1 259 258 1 248 259 0 249 260 1 258 260 1 250 261 1 260 261 1
		 251 262 1 261 262 1 252 263 1 262 263 1 253 264 1 263 264 1 254 265 1 264 265 1 255 266 1
		 265 266 1 256 267 1 266 267 1 65 268 1 257 268 0 267 268 1 258 269 1;
	setAttr ".ed[498:663]" 66 270 1 270 269 1 259 270 0 260 271 1 269 271 1 261 272 1
		 271 272 1 262 273 1 272 273 1 263 274 1 273 274 1 264 275 1 274 275 1 265 276 1 275 276 1
		 266 277 1 276 277 1 267 278 1 277 278 1 76 279 1 268 279 0 278 279 1 269 280 1 77 281 1
		 281 280 1 270 281 0 271 282 1 280 282 1 272 283 1 282 283 1 273 284 1 283 284 1 274 285 1
		 284 285 1 275 286 1 285 286 1 276 287 1 286 287 1 277 288 1 287 288 1 278 289 1 288 289 1
		 87 290 1 279 290 0 289 290 1 280 291 1 88 292 1 292 291 1 281 292 0 282 293 1 291 293 1
		 283 294 1 293 294 1 284 295 1 294 295 1 285 296 1 295 296 1 286 297 1 296 297 1 287 298 1
		 297 298 1 288 299 1 298 299 1 289 300 1 299 300 1 98 301 1 290 301 0 300 301 1 291 302 1
		 99 303 1 303 302 1 292 303 0 293 304 1 302 304 1 294 305 1 304 305 1 295 306 1 305 306 1
		 296 307 1 306 307 1 297 308 1 307 308 1 298 309 1 308 309 1 299 310 1 309 310 1 300 311 1
		 310 311 1 109 312 1 301 312 0 311 312 1 302 313 1 110 314 1 314 313 1 303 314 0 304 315 1
		 313 315 1 305 316 1 315 316 1 306 317 1 316 317 1 307 318 1 317 318 1 308 319 1 318 319 1
		 309 320 1 319 320 1 310 321 1 320 321 1 311 322 1 321 322 1 120 323 1 312 323 0 322 323 1
		 313 324 1 121 325 1 325 324 1 314 325 0 315 326 1 324 326 1 316 327 1 326 327 1 317 328 1
		 327 328 1 318 329 1 328 329 1 319 330 1 329 330 1 320 331 1 330 331 1 321 332 1 331 332 1
		 322 333 1 332 333 1 131 334 1 323 334 0 333 334 1 132 335 1 154 336 0 335 336 1 157 337 0
		 337 336 0 135 338 1 337 338 1 134 339 0 339 338 0 335 339 0 155 340 0 340 337 0 156 341 0
		 340 341 1 160 342 0 342 341 0 136 343 1 342 343 1 338 343 0 158 344 0 344 342 0 159 345 0
		 344 345 1 163 346 0 346 345 0 137 347 1 346 347 1 343 347 0 161 348 0;
	setAttr ".ed[664:807]" 348 346 0 162 349 0 348 349 1 166 350 0 350 349 0 138 351 1
		 350 351 1 347 351 0 164 352 0 352 350 0 165 353 0 352 353 1 169 354 0 354 353 0 139 355 1
		 354 355 1 351 355 0 167 356 0 356 354 0 168 357 0 356 357 1 172 358 0 358 357 0 140 359 1
		 358 359 1 355 359 0 170 360 0 360 358 0 171 361 0 360 361 1 175 362 0 362 361 0 141 363 1
		 362 363 1 359 363 0 173 364 0 364 362 0 174 365 0 364 365 1 178 366 0 366 365 0 142 367 1
		 366 367 1 363 367 0 179 368 0 180 369 0 368 369 0 133 370 1 368 370 1 144 371 0 370 371 0
		 143 372 1 372 371 0 369 372 1 176 373 0 373 366 0 177 374 0 373 374 1 369 374 0 367 372 0
		 182 375 1 181 376 1 375 376 0 376 377 1 377 378 1 378 375 1 377 379 1 379 380 1 380 378 1
		 379 381 1 381 382 1 382 380 1 381 383 1 383 384 1 384 382 1 383 385 1 385 386 1 386 384 1
		 385 387 1 387 388 1 388 386 1 387 389 1 389 390 1 390 388 1 389 391 1 391 392 1 392 390 1
		 391 393 1 393 394 1 394 392 1 202 395 1 393 395 1 201 396 1 395 396 0 396 394 1 324 377 1
		 325 376 0 326 379 1 327 381 1 328 383 1 329 385 1 330 387 1 331 389 1 332 391 1 333 393 1
		 334 395 0 145 397 0 378 397 1 336 397 0 375 335 0 146 398 0 380 398 1 341 398 0 397 340 0
		 147 399 0 382 399 1 345 399 0 398 344 0 148 400 0 384 400 1 349 400 0 399 348 0 149 401 0
		 386 401 1 353 401 0 400 352 0 150 402 0 388 402 1 357 402 0 401 356 0 151 403 0 390 403 1
		 361 403 0 402 360 0 152 404 0 392 404 1 365 404 0 403 364 0 153 405 0 394 405 1 374 405 0
		 404 373 0 396 370 0 405 368 0;
	setAttr -s 386 -ch 1616 ".fc[0:385]" -type "polyFaces" 
		f 4 363 364 -367 -368
		mu 0 4 406 407 2 408
		f 4 369 370 -372 -365
		mu 0 4 407 409 5 2
		f 4 373 374 -376 -371
		mu 0 4 409 410 7 5
		f 4 377 378 -380 -375
		mu 0 4 410 411 9 7
		f 4 381 382 -384 -379
		mu 0 4 411 412 11 9
		f 4 385 386 -388 -383
		mu 0 4 412 413 13 11
		f 4 389 390 -392 -387
		mu 0 4 413 414 15 13
		f 4 393 394 -396 -391
		mu 0 4 414 415 17 15
		f 4 397 398 -400 -395
		mu 0 4 415 416 19 17
		f 4 401 403 -405 -399
		mu 0 4 416 417 418 19
		f 4 366 405 -408 -409
		mu 0 4 408 2 22 419
		f 4 371 409 -411 -406
		mu 0 4 2 5 24 22
		f 4 375 411 -413 -410
		mu 0 4 5 7 25 24
		f 4 379 413 -415 -412
		mu 0 4 7 9 26 25
		f 4 383 415 -417 -414
		mu 0 4 9 11 27 26
		f 4 387 417 -419 -416
		mu 0 4 11 13 28 27
		f 4 391 419 -421 -418
		mu 0 4 13 15 29 28
		f 4 395 421 -423 -420
		mu 0 4 15 17 30 29
		f 4 399 423 -425 -422
		mu 0 4 17 19 31 30
		f 4 404 426 -428 -424
		mu 0 4 19 418 420 31
		f 4 407 428 -431 -432
		mu 0 4 419 22 33 421
		f 4 410 432 -434 -429
		mu 0 4 22 24 35 33
		f 4 412 434 -436 -433
		mu 0 4 24 25 36 35
		f 4 414 436 -438 -435
		mu 0 4 25 26 37 36
		f 4 416 438 -440 -437
		mu 0 4 26 27 38 37
		f 4 418 440 -442 -439
		mu 0 4 27 28 39 38
		f 4 420 442 -444 -441
		mu 0 4 28 29 40 39
		f 4 422 444 -446 -443
		mu 0 4 29 30 41 40
		f 4 424 446 -448 -445
		mu 0 4 30 31 42 41
		f 4 427 449 -451 -447
		mu 0 4 31 420 422 42
		f 4 430 451 -454 -455
		mu 0 4 421 33 44 423
		f 4 433 455 -457 -452
		mu 0 4 33 35 46 44
		f 4 435 457 -459 -456
		mu 0 4 35 36 47 46
		f 4 437 459 -461 -458
		mu 0 4 36 37 48 47
		f 4 439 461 -463 -460
		mu 0 4 37 38 49 48
		f 4 441 463 -465 -462
		mu 0 4 38 39 50 49
		f 4 443 465 -467 -464
		mu 0 4 39 40 51 50
		f 4 445 467 -469 -466
		mu 0 4 40 41 52 51
		f 4 447 469 -471 -468
		mu 0 4 41 42 53 52
		f 4 450 472 -474 -470
		mu 0 4 42 422 424 53
		f 4 453 474 -477 -478
		mu 0 4 423 44 55 425
		f 4 456 478 -480 -475
		mu 0 4 44 46 57 55
		f 4 458 480 -482 -479
		mu 0 4 46 47 58 57
		f 4 460 482 -484 -481
		mu 0 4 47 48 59 58
		f 4 462 484 -486 -483
		mu 0 4 48 49 60 59
		f 4 464 486 -488 -485
		mu 0 4 49 50 61 60
		f 4 466 488 -490 -487
		mu 0 4 50 51 62 61
		f 4 468 490 -492 -489
		mu 0 4 51 52 63 62
		f 4 470 492 -494 -491
		mu 0 4 52 53 64 63
		f 4 473 495 -497 -493
		mu 0 4 53 424 426 64
		f 4 476 497 -500 -501
		mu 0 4 425 55 66 427
		f 4 479 501 -503 -498
		mu 0 4 55 57 68 66
		f 4 481 503 -505 -502
		mu 0 4 57 58 69 68
		f 4 483 505 -507 -504
		mu 0 4 58 59 70 69
		f 4 485 507 -509 -506
		mu 0 4 59 60 71 70
		f 4 487 509 -511 -508
		mu 0 4 60 61 72 71
		f 4 489 511 -513 -510
		mu 0 4 61 62 73 72
		f 4 491 513 -515 -512
		mu 0 4 62 63 74 73
		f 4 493 515 -517 -514
		mu 0 4 63 64 75 74
		f 4 496 518 -520 -516
		mu 0 4 64 426 428 75
		f 4 499 520 -523 -524
		mu 0 4 427 66 77 429
		f 4 502 524 -526 -521
		mu 0 4 66 68 79 77
		f 4 504 526 -528 -525
		mu 0 4 68 69 80 79
		f 4 506 528 -530 -527
		mu 0 4 69 70 81 80
		f 4 508 530 -532 -529
		mu 0 4 70 71 82 81
		f 4 510 532 -534 -531
		mu 0 4 71 72 83 82
		f 4 512 534 -536 -533
		mu 0 4 72 73 84 83
		f 4 514 536 -538 -535
		mu 0 4 73 74 85 84
		f 4 516 538 -540 -537
		mu 0 4 74 75 86 85
		f 4 519 541 -543 -539
		mu 0 4 75 428 430 86
		f 4 522 543 -546 -547
		mu 0 4 429 77 88 431
		f 4 525 547 -549 -544
		mu 0 4 77 79 90 88
		f 4 527 549 -551 -548
		mu 0 4 79 80 91 90
		f 4 529 551 -553 -550
		mu 0 4 80 81 92 91
		f 4 531 553 -555 -552
		mu 0 4 81 82 93 92
		f 4 533 555 -557 -554
		mu 0 4 82 83 94 93
		f 4 535 557 -559 -556
		mu 0 4 83 84 95 94
		f 4 537 559 -561 -558
		mu 0 4 84 85 96 95
		f 4 539 561 -563 -560
		mu 0 4 85 86 97 96
		f 4 542 564 -566 -562
		mu 0 4 86 430 432 97
		f 4 545 566 -569 -570
		mu 0 4 431 88 99 433
		f 4 548 570 -572 -567
		mu 0 4 88 90 101 99
		f 4 550 572 -574 -571
		mu 0 4 90 91 102 101
		f 4 552 574 -576 -573
		mu 0 4 91 92 103 102
		f 4 554 576 -578 -575
		mu 0 4 92 93 104 103
		f 4 556 578 -580 -577
		mu 0 4 93 94 105 104
		f 4 558 580 -582 -579
		mu 0 4 94 95 106 105
		f 4 560 582 -584 -581
		mu 0 4 95 96 107 106
		f 4 562 584 -586 -583
		mu 0 4 96 97 108 107
		f 4 565 587 -589 -585
		mu 0 4 97 432 434 108
		f 4 568 589 -592 -593
		mu 0 4 433 99 110 435
		f 4 571 593 -595 -590
		mu 0 4 99 101 112 110
		f 4 573 595 -597 -594
		mu 0 4 101 102 113 112
		f 4 575 597 -599 -596
		mu 0 4 102 103 114 113
		f 4 577 599 -601 -598
		mu 0 4 103 104 115 114
		f 4 579 601 -603 -600
		mu 0 4 104 105 116 115
		f 4 581 603 -605 -602
		mu 0 4 105 106 117 116
		f 4 583 605 -607 -604
		mu 0 4 106 107 118 117
		f 4 585 607 -609 -606
		mu 0 4 107 108 119 118
		f 4 588 610 -612 -608
		mu 0 4 108 434 436 119
		f 4 591 612 -615 -616
		mu 0 4 435 110 163 437
		f 4 594 616 -618 -613
		mu 0 4 110 112 165 163
		f 4 596 618 -620 -617
		mu 0 4 112 113 167 165
		f 4 598 620 -622 -619
		mu 0 4 113 114 169 167
		f 4 600 622 -624 -621
		mu 0 4 114 115 171 169
		f 4 602 624 -626 -623
		mu 0 4 115 116 173 171
		f 4 604 626 -628 -625
		mu 0 4 116 117 175 173
		f 4 606 628 -630 -627
		mu 0 4 117 118 177 175
		f 4 608 630 -632 -629
		mu 0 4 118 119 179 177
		f 4 611 633 -635 -631
		mu 0 4 119 436 438 179
		f 5 637 -640 641 -644 -645
		mu 0 5 443 439 440 441 442
		f 6 -647 648 -651 652 -654 -642
		mu 0 6 440 444 445 446 447 441
		f 6 -656 657 -660 661 -663 -653
		mu 0 6 446 448 449 450 451 447
		f 6 -665 666 -669 670 -672 -662
		mu 0 6 450 452 453 454 455 451
		f 6 -674 675 -678 679 -681 -671
		mu 0 6 454 456 457 458 459 455
		f 6 -683 684 -687 688 -690 -680
		mu 0 6 458 460 461 462 463 459
		f 6 -692 693 -696 697 -699 -689
		mu 0 6 462 464 465 466 467 463
		f 6 -701 702 -705 706 -708 -698
		mu 0 6 466 468 469 470 471 467
		f 5 -711 712 714 -717 -718
		mu 0 5 472 473 474 475 476
		f 6 -720 721 -723 717 -724 -707
		mu 0 6 470 477 478 472 476 471
		f 4 726 727 728 729
		mu 0 4 479 480 166 183
		f 4 -729 730 731 732
		mu 0 4 183 166 168 185
		f 4 -732 733 734 735
		mu 0 4 185 168 170 187
		f 4 -735 736 737 738
		mu 0 4 187 170 172 189
		f 4 -738 739 740 741
		mu 0 4 189 172 174 191
		f 4 -741 742 743 744
		mu 0 4 191 174 176 193
		f 4 -744 745 746 747
		mu 0 4 193 176 178 195
		f 4 -747 748 749 750
		mu 0 4 195 178 180 197
		f 4 -750 751 752 753
		mu 0 4 197 180 182 199
		f 4 -753 755 757 758
		mu 0 4 199 182 481 482
		f 4 614 759 -728 -761
		mu 0 4 437 163 166 480
		f 4 617 761 -731 -760
		mu 0 4 163 165 168 166
		f 4 619 762 -734 -762
		mu 0 4 165 167 170 168
		f 4 621 763 -737 -763
		mu 0 4 167 169 172 170
		f 4 623 764 -740 -764
		mu 0 4 169 171 174 172
		f 4 625 765 -743 -765
		mu 0 4 171 173 176 174
		f 4 627 766 -746 -766
		mu 0 4 173 175 178 176
		f 4 629 767 -749 -767
		mu 0 4 175 177 180 178
		f 4 631 768 -752 -768
		mu 0 4 177 179 182 180
		f 4 634 769 -756 -769
		mu 0 4 179 438 481 182
		f 5 -730 771 -773 -638 -774
		mu 0 5 479 183 483 439 443
		f 6 -733 775 -777 -649 -778 -772
		mu 0 6 183 185 484 445 444 483
		f 6 -736 779 -781 -658 -782 -776
		mu 0 6 185 187 485 449 448 484
		f 6 -739 783 -785 -667 -786 -780
		mu 0 6 187 189 486 453 452 485
		f 6 -742 787 -789 -676 -790 -784
		mu 0 6 189 191 487 457 456 486
		f 6 -745 791 -793 -685 -794 -788
		mu 0 6 191 193 488 461 460 487
		f 6 -748 795 -797 -694 -798 -792
		mu 0 6 193 195 489 465 464 488
		f 6 -751 799 -801 -703 -802 -796
		mu 0 6 195 197 490 469 468 489
		f 6 -754 803 -805 -722 -806 -800
		mu 0 6 197 199 491 478 477 490
		f 5 -759 806 -713 -808 -804
		mu 0 5 199 482 474 473 491
		f 4 1 21 -4 -1
		mu 0 4 203 206 205 204
		f 4 3 23 -6 -3
		mu 0 4 204 205 208 207
		f 4 5 25 -8 -5
		mu 0 4 207 208 210 209
		f 4 7 27 -10 -7
		mu 0 4 209 210 212 211
		f 4 9 29 -12 -9
		mu 0 4 211 212 214 213
		f 4 11 31 -14 -11
		mu 0 4 213 214 216 215
		f 4 13 33 -16 -13
		mu 0 4 215 216 218 217
		f 4 15 35 -18 -15
		mu 0 4 217 218 220 219
		f 4 17 37 -20 -17
		mu 0 4 219 220 222 221
		f 4 19 39 -21 -19
		mu 0 4 221 222 224 223
		f 4 22 42 -25 -22
		mu 0 4 206 226 225 205
		f 4 24 44 -27 -24
		mu 0 4 205 225 227 208
		f 4 26 46 -29 -26
		mu 0 4 208 227 228 210
		f 4 28 48 -31 -28
		mu 0 4 210 228 229 212
		f 4 30 50 -33 -30
		mu 0 4 212 229 230 214
		f 4 32 52 -35 -32
		mu 0 4 214 230 231 216
		f 4 34 54 -37 -34
		mu 0 4 216 231 232 218
		f 4 36 56 -39 -36
		mu 0 4 218 232 233 220
		f 4 38 58 -41 -38
		mu 0 4 220 233 234 222
		f 4 40 60 -42 -40
		mu 0 4 222 234 235 224
		f 4 43 63 -46 -43
		mu 0 4 226 237 236 225
		f 4 45 65 -48 -45
		mu 0 4 225 236 238 227
		f 4 47 67 -50 -47
		mu 0 4 227 238 239 228
		f 4 49 69 -52 -49
		mu 0 4 228 239 240 229
		f 4 51 71 -54 -51
		mu 0 4 229 240 241 230
		f 4 53 73 -56 -53
		mu 0 4 230 241 242 231
		f 4 55 75 -58 -55
		mu 0 4 231 242 243 232
		f 4 57 77 -60 -57
		mu 0 4 232 243 244 233
		f 4 59 79 -62 -59
		mu 0 4 233 244 245 234
		f 4 61 81 -63 -61
		mu 0 4 234 245 246 235
		f 4 64 84 -67 -64
		mu 0 4 237 248 247 236
		f 4 66 86 -69 -66
		mu 0 4 236 247 249 238
		f 4 68 88 -71 -68
		mu 0 4 238 249 250 239
		f 4 70 90 -73 -70
		mu 0 4 239 250 251 240
		f 4 72 92 -75 -72
		mu 0 4 240 251 252 241
		f 4 74 94 -77 -74
		mu 0 4 241 252 253 242
		f 4 76 96 -79 -76
		mu 0 4 242 253 254 243
		f 4 78 98 -81 -78
		mu 0 4 243 254 255 244
		f 4 80 100 -83 -80
		mu 0 4 244 255 256 245
		f 4 82 102 -84 -82
		mu 0 4 245 256 257 246
		f 4 85 105 -88 -85
		mu 0 4 248 259 258 247
		f 4 87 107 -90 -87
		mu 0 4 247 258 260 249
		f 4 89 109 -92 -89
		mu 0 4 249 260 261 250
		f 4 91 111 -94 -91
		mu 0 4 250 261 262 251
		f 4 93 113 -96 -93
		mu 0 4 251 262 263 252
		f 4 95 115 -98 -95
		mu 0 4 252 263 264 253
		f 4 97 117 -100 -97
		mu 0 4 253 264 265 254
		f 4 99 119 -102 -99
		mu 0 4 254 265 266 255
		f 4 101 121 -104 -101
		mu 0 4 255 266 267 256
		f 4 103 123 -105 -103
		mu 0 4 256 267 268 257
		f 4 106 126 -109 -106
		mu 0 4 259 270 269 258
		f 4 108 128 -111 -108
		mu 0 4 258 269 271 260
		f 4 110 130 -113 -110
		mu 0 4 260 271 272 261
		f 4 112 132 -115 -112
		mu 0 4 261 272 273 262
		f 4 114 134 -117 -114
		mu 0 4 262 273 274 263
		f 4 116 136 -119 -116
		mu 0 4 263 274 275 264
		f 4 118 138 -121 -118
		mu 0 4 264 275 276 265
		f 4 120 140 -123 -120
		mu 0 4 265 276 277 266
		f 4 122 142 -125 -122
		mu 0 4 266 277 278 267
		f 4 124 144 -126 -124
		mu 0 4 267 278 279 268
		f 4 127 147 -130 -127
		mu 0 4 270 281 280 269
		f 4 129 149 -132 -129
		mu 0 4 269 280 282 271
		f 4 131 151 -134 -131
		mu 0 4 271 282 283 272
		f 4 133 153 -136 -133
		mu 0 4 272 283 284 273
		f 4 135 155 -138 -135
		mu 0 4 273 284 285 274
		f 4 137 157 -140 -137
		mu 0 4 274 285 286 275
		f 4 139 159 -142 -139
		mu 0 4 275 286 287 276
		f 4 141 161 -144 -141
		mu 0 4 276 287 288 277
		f 4 143 163 -146 -143
		mu 0 4 277 288 289 278
		f 4 145 165 -147 -145
		mu 0 4 278 289 290 279
		f 4 148 168 -151 -148
		mu 0 4 281 292 291 280
		f 4 150 170 -153 -150
		mu 0 4 280 291 293 282
		f 4 152 172 -155 -152
		mu 0 4 282 293 294 283
		f 4 154 174 -157 -154
		mu 0 4 283 294 295 284
		f 4 156 176 -159 -156
		mu 0 4 284 295 296 285
		f 4 158 178 -161 -158
		mu 0 4 285 296 297 286
		f 4 160 180 -163 -160
		mu 0 4 286 297 298 287
		f 4 162 182 -165 -162
		mu 0 4 287 298 299 288
		f 4 164 184 -167 -164
		mu 0 4 288 299 300 289
		f 4 166 186 -168 -166
		mu 0 4 289 300 301 290
		f 4 169 189 -172 -169
		mu 0 4 292 303 302 291
		f 4 171 191 -174 -171
		mu 0 4 291 302 304 293
		f 4 173 193 -176 -173
		mu 0 4 293 304 305 294
		f 4 175 195 -178 -175
		mu 0 4 294 305 306 295
		f 4 177 197 -180 -177
		mu 0 4 295 306 307 296
		f 4 179 199 -182 -179
		mu 0 4 296 307 308 297
		f 4 181 201 -184 -181
		mu 0 4 297 308 309 298
		f 4 183 203 -186 -183
		mu 0 4 298 309 310 299
		f 4 185 205 -188 -185
		mu 0 4 299 310 311 300
		f 4 187 207 -189 -187
		mu 0 4 300 311 312 301
		f 4 190 210 -193 -190
		mu 0 4 303 314 313 302
		f 4 192 212 -195 -192
		mu 0 4 302 313 315 304
		f 4 194 214 -197 -194
		mu 0 4 304 315 316 305
		f 4 196 216 -199 -196
		mu 0 4 305 316 317 306
		f 4 198 218 -201 -198
		mu 0 4 306 317 318 307
		f 4 200 220 -203 -200
		mu 0 4 307 318 319 308
		f 4 202 222 -205 -202
		mu 0 4 308 319 320 309
		f 4 204 224 -207 -204
		mu 0 4 309 320 321 310
		f 4 206 226 -209 -206
		mu 0 4 310 321 322 311
		f 4 208 228 -210 -208
		mu 0 4 311 322 323 312
		f 4 211 231 -214 -211
		mu 0 4 314 325 324 313
		f 4 213 233 -216 -213
		mu 0 4 313 324 326 315
		f 4 215 234 -218 -215
		mu 0 4 315 326 327 316
		f 4 217 235 -220 -217
		mu 0 4 316 327 328 317
		f 4 219 236 -222 -219
		mu 0 4 317 328 329 318
		f 4 221 237 -224 -221
		mu 0 4 318 329 330 319
		f 4 223 238 -226 -223
		mu 0 4 319 330 331 320
		f 4 225 239 -228 -225
		mu 0 4 320 331 332 321
		f 4 227 240 -230 -227
		mu 0 4 321 332 333 322
		f 4 229 241 -231 -229
		mu 0 4 322 333 334 323
		f 5 244 246 -258 277 -244
		mu 0 5 335 339 338 337 336
		f 6 257 247 -260 281 -257 276
		mu 0 6 337 338 343 342 341 340
		f 6 259 248 -262 285 -259 280
		mu 0 6 342 343 347 346 345 344
		f 6 261 249 -264 289 -261 284
		mu 0 6 346 347 351 350 349 348
		f 6 263 250 -266 293 -263 288
		mu 0 6 350 351 355 354 353 352
		f 6 265 251 -268 297 -265 292
		mu 0 6 354 355 359 358 357 356
		f 6 267 252 -270 301 -267 296
		mu 0 6 358 359 363 362 361 360
		f 6 269 253 -272 305 -269 300
		mu 0 6 362 363 367 366 365 364
		f 5 273 255 -246 -273 308
		mu 0 5 368 372 371 370 369
		f 6 271 254 -274 309 -271 304
		mu 0 6 366 367 372 368 374 373
		f 4 -316 -315 -314 -313
		mu 0 4 375 378 377 376
		f 4 -319 -318 -317 314
		mu 0 4 378 380 379 377
		f 4 -322 -321 -320 317
		mu 0 4 380 382 381 379
		f 4 -325 -324 -323 320
		mu 0 4 382 384 383 381
		f 4 -328 -327 -326 323
		mu 0 4 384 386 385 383
		f 4 -331 -330 -329 326
		mu 0 4 386 388 387 385
		f 4 -334 -333 -332 329
		mu 0 4 388 390 389 387
		f 4 -337 -336 -335 332
		mu 0 4 390 392 391 389
		f 4 -340 -339 -338 335
		mu 0 4 392 394 393 391
		f 4 -343 -342 -341 338
		mu 0 4 394 396 395 393
		f 4 232 313 -344 -232
		mu 0 4 325 376 377 324
		f 4 343 316 -345 -234
		mu 0 4 324 377 379 326
		f 4 344 319 -346 -235
		mu 0 4 326 379 381 327
		f 4 345 322 -347 -236
		mu 0 4 327 381 383 328
		f 4 346 325 -348 -237
		mu 0 4 328 383 385 329
		f 4 347 328 -349 -238
		mu 0 4 329 385 387 330
		f 4 348 331 -350 -239
		mu 0 4 330 387 389 331
		f 4 349 334 -351 -240
		mu 0 4 331 389 391 332
		f 4 350 337 -352 -241
		mu 0 4 332 391 393 333
		f 4 351 340 -243 -242
		mu 0 4 333 393 395 334
		f 5 310 243 274 -353 315
		mu 0 5 375 335 336 397 378
		f 6 352 275 256 278 -354 318
		mu 0 6 378 397 340 341 398 380
		f 6 353 279 258 282 -355 321
		mu 0 6 380 398 344 345 399 382
		f 6 354 283 260 286 -356 324
		mu 0 6 382 399 348 349 400 384
		f 6 355 287 262 290 -357 327
		mu 0 6 384 400 352 353 401 386
		f 6 356 291 264 294 -358 330
		mu 0 6 386 401 356 357 402 388
		f 6 357 295 266 298 -359 333
		mu 0 6 388 402 360 361 403 390
		f 6 358 299 268 302 -360 336
		mu 0 6 390 403 364 365 404 392
		f 6 359 303 270 306 -361 339
		mu 0 6 392 404 373 374 405 394
		f 5 360 307 272 -312 342
		mu 0 5 394 405 369 370 396
		f 4 0 362 -364 -362
		mu 0 4 0 1 407 406
		f 4 -2 361 367 -366
		mu 0 4 3 0 406 408
		f 4 2 368 -370 -363
		mu 0 4 1 4 409 407
		f 4 4 372 -374 -369
		mu 0 4 4 6 410 409
		f 4 6 376 -378 -373
		mu 0 4 6 8 411 410
		f 4 8 380 -382 -377
		mu 0 4 8 10 412 411
		f 4 10 384 -386 -381
		mu 0 4 10 12 413 412
		f 4 12 388 -390 -385
		mu 0 4 12 14 414 413
		f 4 14 392 -394 -389
		mu 0 4 14 16 415 414
		f 4 16 396 -398 -393
		mu 0 4 16 18 416 415
		f 4 18 400 -402 -397
		mu 0 4 18 20 417 416
		f 4 20 402 -404 -401
		mu 0 4 20 21 418 417
		f 4 -23 365 408 -407
		mu 0 4 23 3 408 419
		f 4 41 425 -427 -403
		mu 0 4 21 32 420 418
		f 4 -44 406 431 -430
		mu 0 4 34 23 419 421
		f 4 62 448 -450 -426
		mu 0 4 32 43 422 420
		f 4 -65 429 454 -453
		mu 0 4 45 34 421 423
		f 4 83 471 -473 -449
		mu 0 4 43 54 424 422
		f 4 -86 452 477 -476
		mu 0 4 56 45 423 425
		f 4 104 494 -496 -472
		mu 0 4 54 65 426 424
		f 4 -107 475 500 -499
		mu 0 4 67 56 425 427
		f 4 125 517 -519 -495
		mu 0 4 65 76 428 426
		f 4 -128 498 523 -522
		mu 0 4 78 67 427 429
		f 4 146 540 -542 -518
		mu 0 4 76 87 430 428
		f 4 -149 521 546 -545
		mu 0 4 89 78 429 431
		f 4 167 563 -565 -541
		mu 0 4 87 98 432 430
		f 4 -170 544 569 -568
		mu 0 4 100 89 431 433
		f 4 188 586 -588 -564
		mu 0 4 98 109 434 432
		f 4 -191 567 592 -591
		mu 0 4 111 100 433 435
		f 4 209 609 -611 -587
		mu 0 4 109 120 436 434
		f 4 -212 590 615 -614
		mu 0 4 121 111 435 437
		f 4 230 632 -634 -610
		mu 0 4 120 181 438 436
		f 4 -278 638 639 -637
		mu 0 4 134 137 440 439
		f 4 -247 642 643 -641
		mu 0 4 123 124 442 441
		f 4 -245 635 644 -643
		mu 0 4 124 184 443 442
		f 4 -277 645 646 -639
		mu 0 4 137 135 444 440
		f 4 -282 649 650 -648
		mu 0 4 136 140 446 445
		f 4 -248 640 653 -652
		mu 0 4 125 123 441 447
		f 4 -281 654 655 -650
		mu 0 4 140 138 448 446
		f 4 -286 658 659 -657
		mu 0 4 139 143 450 449
		f 4 -249 651 662 -661
		mu 0 4 126 125 447 451
		f 4 -285 663 664 -659
		mu 0 4 143 141 452 450
		f 4 -290 667 668 -666
		mu 0 4 142 146 454 453
		f 4 -250 660 671 -670
		mu 0 4 127 126 451 455
		f 4 -289 672 673 -668
		mu 0 4 146 144 456 454
		f 4 -294 676 677 -675
		mu 0 4 145 149 458 457
		f 4 -251 669 680 -679
		mu 0 4 128 127 455 459
		f 4 -293 681 682 -677
		mu 0 4 149 147 460 458
		f 4 -298 685 686 -684
		mu 0 4 148 152 462 461
		f 4 -252 678 689 -688
		mu 0 4 129 128 459 463
		f 4 -297 690 691 -686
		mu 0 4 152 150 464 462
		f 4 -302 694 695 -693
		mu 0 4 151 155 466 465
		f 4 -253 687 698 -697
		mu 0 4 130 129 463 467
		f 4 -301 699 700 -695
		mu 0 4 155 153 468 466
		f 4 -306 703 704 -702
		mu 0 4 154 158 470 469
		f 4 -254 696 707 -706
		mu 0 4 131 130 467 471
		f 4 -309 708 710 -710
		mu 0 4 160 159 473 472
		f 4 245 713 -715 -712
		mu 0 4 122 133 475 474
		f 4 -256 715 716 -714
		mu 0 4 133 132 476 475
		f 4 -305 718 719 -704
		mu 0 4 158 156 477 470
		f 4 -310 709 722 -721
		mu 0 4 157 160 472 478
		f 4 -255 705 723 -716
		mu 0 4 132 131 471 476
		f 4 312 725 -727 -725
		mu 0 4 161 164 480 479
		f 4 341 756 -758 -755
		mu 0 4 162 201 482 481
		f 4 -233 613 760 -726
		mu 0 4 164 121 437 480
		f 4 242 754 -770 -633
		mu 0 4 181 162 481 438
		f 4 -275 636 772 -771
		mu 0 4 186 134 439 483
		f 4 -311 724 773 -636
		mu 0 4 184 161 479 443
		f 4 -279 647 776 -775
		mu 0 4 188 136 445 484
		f 4 -276 770 777 -646
		mu 0 4 135 186 483 444
		f 4 -283 656 780 -779
		mu 0 4 190 139 449 485
		f 4 -280 774 781 -655
		mu 0 4 138 188 484 448
		f 4 -287 665 784 -783
		mu 0 4 192 142 453 486
		f 4 -284 778 785 -664
		mu 0 4 141 190 485 452
		f 4 -291 674 788 -787
		mu 0 4 194 145 457 487
		f 4 -288 782 789 -673
		mu 0 4 144 192 486 456
		f 4 -295 683 792 -791
		mu 0 4 196 148 461 488
		f 4 -292 786 793 -682
		mu 0 4 147 194 487 460
		f 4 -299 692 796 -795
		mu 0 4 198 151 465 489
		f 4 -296 790 797 -691
		mu 0 4 150 196 488 464
		f 4 -303 701 800 -799
		mu 0 4 200 154 469 490
		f 4 -300 794 801 -700
		mu 0 4 153 198 489 468
		f 4 -307 720 804 -803
		mu 0 4 202 157 478 491
		f 4 -304 798 805 -719
		mu 0 4 156 200 490 477
		f 4 311 711 -807 -757
		mu 0 4 201 122 474 482
		f 4 -308 802 807 -709
		mu 0 4 159 202 491 473;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "PaperA_GeoShapeDeformed" -p "PaperA_Geo";
	rename -uid "86C3BEA7-49AB-CD0E-B974-09B92F73AB45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "PaperB_Geo" -p "geo";
	rename -uid "6AF2F105-4E36-A416-B2B4-8B84BE2FF498";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.0027244101910887664 0.14901000451792346 -15.298288213689805 ;
	setAttr ".sp" -type "double3" -0.0027244101910887664 0.14901000451792346 -15.298288213689805 ;
createNode mesh -n "PaperB_GeoShape" -p "PaperB_Geo";
	rename -uid "E656119A-4DE2-E472-C45A-64960E9B0EE9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[246:255]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 14 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]" "e[211]" "e[232]" "e[244]" "e[310]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 14 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]" "e[230]" "e[242]" "e[245]" "e[311]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 34 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209]" "e[211]" "e[230]" "e[232]" "e[242]" "e[244:255]" "e[310:311]";
	setAttr ".pv" -type "double2" 0.35321648482931778 0.85039505362510681 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 492 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0014072371 0.0019920319 0.071769089
		 0.0019920319 0.071769089 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319
		 0.14213091 0.073136047 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468
		 0.0019920319 0.28285468 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047
		 0.42357838 0.0019920319 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023
		 0.073136047 0.56430215 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319
		 0.63466388 0.073136047 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089
		 0.14428 0.0014072371 0.14428 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428
		 0.35321653 0.14428 0.42357838 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388
		 0.14428 0.70502573 0.14428 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091
		 0.21542408 0.21249282 0.21542408 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838
		 0.21542408 0.49394023 0.21542408 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573
		 0.21542408 0.071769089 0.28656805 0.0014072371 0.28656805 0.14213091 0.28656805 0.21249282
		 0.28656805 0.28285468 0.28656805 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023
		 0.28656805 0.56430215 0.28656805 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089
		 0.35771212 0.0014072371 0.35771212 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468
		 0.35771212 0.35321653 0.35771212 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215
		 0.35771212 0.63466388 0.35771212 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371
		 0.42885607 0.14213091 0.42885607 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653
		 0.42885607 0.42357838 0.42885607 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388
		 0.42885607 0.70502573 0.42885607 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5
		 0.21249282 0.5 0.28285468 0.5 0.35321653 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215
		 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089 0.57114393 0.0014072371 0.57114393
		 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468 0.57114393 0.35321653 0.57114393
		 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215 0.57114393 0.63466388 0.57114393
		 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371 0.64228803 0.14213091 0.64228803
		 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653 0.64228803 0.42357838 0.64228803
		 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388 0.64228803 0.70502573 0.64228803
		 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091 0.71343195 0.21249282 0.71343195
		 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838 0.71343195 0.49394023 0.71343195
		 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573 0.71343195 0.0014072371 0.78457606
		 0.70502573 0.92686397 0.071769089 0.99800795 0.0014072371 0.99800795 0.14213091 0.99800795
		 0.21249282 0.99800795 0.28285468 0.99800795 0.35321653 0.99800795 0.42357838 0.99800795
		 0.49394023 0.99800795 0.56430215 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.036588162 0.92686397 0.095223024 0.92686391 0.11867698 0.92686391 0.071769089 0.96243596
		 0.16558488 0.92686391 0.18903884 0.92686391 0.14213091 0.96243596 0.23594676 0.92686391
		 0.25940073 0.92686391 0.21249282 0.96243596 0.30630863 0.92686391 0.32976258 0.92686391
		 0.28285468 0.96243596 0.37667048 0.92686391 0.40012443 0.92686391 0.35321653 0.96243596
		 0.4470323 0.92686391 0.47048628 0.92686391 0.42357838 0.96243596 0.51739419 0.92686391
		 0.5408482 0.92686391 0.49394023 0.96243596 0.58775604 0.92686391 0.61120999 0.92686391
		 0.56430215 0.96243596 0.66984481 0.92686397 0.63466388 0.96243596 0.0014072371 0.88063848
		 0.70502573 0.82015157 0.071769089 0.78457606 0.0014072371 0.82015157 0.14213091 0.78457606
		 0.071769089 0.82015157 0.21249282 0.78457606 0.14213091 0.82015157 0.28285468 0.78457606
		 0.21249282 0.82015157 0.35321653 0.78457606 0.28285468 0.82015157 0.42357838 0.78457606
		 0.35321653 0.82015157 0.49394023 0.78457606 0.42357838 0.82015157 0.56430215 0.78457606
		 0.49394023 0.82015157 0.63466388 0.78457606 0.56430215 0.82015157 0.70502573 0.78457606
		 0.63466388 0.82015157 0.071769089 0.87135595 0.0014072371 0.92686397 0.14213091 0.87135595
		 0.071769089 0.89129198 0.21249282 0.87135595 0.14213091 0.89129198 0.28285468 0.87135595
		 0.21249282 0.89129198 0.35321653 0.87135595 0.28285468 0.89129198 0.42357838 0.87135595
		 0.35321653 0.89129198 0.49394023 0.87135595 0.42357838 0.89129198 0.56430215 0.87135595
		 0.49394023 0.89129198 0.63466388 0.87135595 0.56430215 0.89129198 0.70502573 0.88063854
		 0.63466388 0.89129198 0.0014072371 0.0019920319 0.071769089 0.0019920319 0.071769089
		 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319 0.14213091 0.073136047
		 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468 0.0019920319 0.28285468
		 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047 0.42357838 0.0019920319
		 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023 0.073136047 0.56430215
		 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319 0.63466388 0.073136047
		 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089 0.14428 0.0014072371 0.14428
		 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428 0.35321653 0.14428 0.42357838
		 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388 0.14428 0.70502573 0.14428
		 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091 0.21542408 0.21249282 0.21542408
		 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838 0.21542408 0.49394023 0.21542408
		 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573 0.21542408 0.071769089 0.28656805
		 0.0014072371 0.28656805 0.14213091 0.28656805;
	setAttr ".uvst[0].uvsp[250:491]" 0.21249282 0.28656805 0.28285468 0.28656805
		 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023 0.28656805 0.56430215 0.28656805
		 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089 0.35771212 0.0014072371 0.35771212
		 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468 0.35771212 0.35321653 0.35771212
		 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215 0.35771212 0.63466388 0.35771212
		 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371 0.42885607 0.14213091 0.42885607
		 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653 0.42885607 0.42357838 0.42885607
		 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388 0.42885607 0.70502573 0.42885607
		 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5 0.21249282 0.5 0.28285468 0.5 0.35321653
		 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089
		 0.57114393 0.0014072371 0.57114393 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468
		 0.57114393 0.35321653 0.57114393 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215
		 0.57114393 0.63466388 0.57114393 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371
		 0.64228803 0.14213091 0.64228803 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653
		 0.64228803 0.42357838 0.64228803 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388
		 0.64228803 0.70502573 0.64228803 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091
		 0.71343195 0.21249282 0.71343195 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838
		 0.71343195 0.49394023 0.71343195 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573
		 0.71343195 0.071769089 0.78457606 0.0014072371 0.78457606 0.14213091 0.78457606 0.21249282
		 0.78457606 0.28285468 0.78457606 0.35321653 0.78457606 0.42357838 0.78457606 0.49394023
		 0.78457606 0.56430215 0.78457606 0.63466388 0.78457606 0.70502573 0.78457606 0.0014072371
		 0.92686397 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089 0.99800795 0.0014072371
		 0.99800795 0.095223024 0.92686391 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091
		 0.99800795 0.16558488 0.92686391 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282
		 0.99800795 0.23594676 0.92686391 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468
		 0.99800795 0.30630863 0.92686391 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653
		 0.99800795 0.37667048 0.92686391 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838
		 0.99800795 0.4470323 0.92686391 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023
		 0.99800795 0.51739419 0.92686391 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215
		 0.99800795 0.63466388 0.96243596 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573
		 0.99800795 0.63466388 0.99800795 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371
		 0.88063848 0.0014072371 0.82015157 0.071769089 0.82015157 0.071769089 0.87135595
		 0.14213091 0.82015157 0.14213091 0.87135595 0.21249282 0.82015157 0.21249282 0.87135595
		 0.28285468 0.82015157 0.28285468 0.87135595 0.35321653 0.82015157 0.35321653 0.87135595
		 0.42357838 0.82015157 0.42357838 0.87135595 0.49394023 0.82015157 0.49394023 0.87135595
		 0.56430215 0.82015157 0.56430215 0.87135595 0.63466388 0.82015157 0.63466388 0.87135595
		 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091 0.89129198
		 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838 0.89129198
		 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198 0.0014072371 0.0019920319
		 0.071769089 0.0019920319 0.0014072371 0.073136047 0.14213091 0.0019920319 0.21249282
		 0.0019920319 0.28285468 0.0019920319 0.35321653 0.0019920319 0.42357838 0.0019920319
		 0.49394023 0.0019920319 0.56430215 0.0019920319 0.63466388 0.0019920319 0.70502573
		 0.0019920319 0.70502573 0.073136047 0.0014072371 0.14428 0.70502573 0.14428 0.0014072371
		 0.21542408 0.70502573 0.21542408 0.0014072371 0.28656805 0.70502573 0.28656805 0.0014072371
		 0.35771212 0.70502573 0.35771212 0.0014072371 0.42885607 0.70502573 0.42885607 0.0014072371
		 0.5 0.70502573 0.5 0.0014072371 0.57114393 0.70502573 0.57114393 0.0014072371 0.64228803
		 0.70502573 0.64228803 0.0014072371 0.71343195 0.70502573 0.71343195 0.0014072371
		 0.78457606 0.70502573 0.78457606 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089
		 0.99800795 0.0014072371 0.99800795 0.0014072371 0.92686397 0.095223024 0.92686391
		 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091 0.99800795 0.16558488 0.92686391
		 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282 0.99800795 0.23594676 0.92686391
		 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468 0.99800795 0.30630863 0.92686391
		 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653 0.99800795 0.37667048 0.92686391
		 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838 0.99800795 0.4470323 0.92686391
		 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023 0.99800795 0.51739419 0.92686391
		 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215 0.99800795 0.63466388 0.96243596
		 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573 0.99800795 0.63466388 0.99800795
		 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371 0.88063848 0.0014072371
		 0.82015157 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091
		 0.89129198 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838
		 0.89129198 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 406 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.61868256 0.14901 0.12449099 0.61823791 
		0.14901 0.078884482 0.6177932 0.14901 0.033277966 0.61734855 0.14901 -0.012328553 
		0.61690384 0.14901 -0.057935063 0.61645925 0.14901 -0.10354157 0.61601454 0.14901 
		-0.14914809 0.61556989 0.14901 -0.19475459 0.61512524 0.14901 -0.24036112 0.61468053 
		0.14901 -0.28596762 0.61423588 0.14901 -0.33157411 0.57256913 0.14901 0.12494057 
		0.57212448 0.14901 0.079334095 0.57167977 0.14901 0.033727583 0.57123512 0.14901 
		-0.011878952 0.57079047 0.14901 -0.057485454 0.57034576 0.14901 -0.10309196 0.56990111 
		0.14901 -0.14869848 0.56945646 0.14901 -0.19430499 0.56901175 0.14901 -0.23991151 
		0.5685671 0.14901 -0.28551802 0.56812245 0.14901 -0.33112451 0.52645558 0.14901 0.12539019 
		0.52601099 0.14901 0.079783723 0.52556634 0.14901 0.034177195 0.52512163 0.14901 
		-0.011429343 0.52467698 0.14901 -0.057035848 0.52423227 0.14901 -0.10264235 0.52378762 
		0.14901 -0.14824888 0.52334297 0.14901 -0.19385538 0.52289832 0.14901 -0.2394619 
		0.52245361 0.14901 -0.28506839 0.52200896 0.14901 -0.33067489 0.48034215 0.14901 
		0.1258398 0.4798975 0.14901 0.080233291 0.47945282 0.14901 0.034626804 0.47900817 
		0.14901 -0.010979724 0.47856349 0.14901 -0.056586236 0.47811881 0.14901 -0.10219274 
		0.47767416 0.14901 -0.14779927 0.47722948 0.14901 -0.19340576 0.47678483 0.14901 
		-0.2390123 0.47634017 0.14901 -0.28461879 0.47589549 0.14901 -0.33022529 0.43422872 
		0.14901 0.12628941 0.43378404 0.14901 0.080682926 0.43333936 0.14901 0.035076413 
		0.43289471 0.14901 -0.010530123 0.43245003 0.14901 -0.056136627 0.43200538 0.14901 
		-0.10174313 0.4315607 0.14901 -0.14734966 0.43111601 0.14901 -0.19295615 0.43067136 
		0.14901 -0.23856267 0.43022668 0.14901 -0.2841692 0.42978203 0.14901 -0.32977569 
		0.38811523 0.14901 0.12673903 0.38767058 0.14901 0.081132531 0.3872259 0.14901 0.035526022 
		0.38678125 0.14901 -0.010080504 0.38633657 0.14901 -0.055687014 0.38589188 0.14901 
		-0.10129352 0.38544723 0.14901 -0.14690004 0.38500255 0.14901 -0.19250654 0.3845579 
		0.14901 -0.23811308 0.38411322 0.14901 -0.28371957 0.38366854 0.14901 -0.32932606 
		0.34200174 0.14901 0.12718864 0.34155709 0.14901 0.081582144 0.34111241 0.14901 0.035975635 
		0.34066775 0.14901 -0.0096309036 0.34022307 0.14901 -0.055237409 0.33977842 0.14901 
		-0.10084391 0.33933374 0.14901 -0.14645045 0.33888909 0.14901 -0.19205692 0.33844441 
		0.14901 -0.23766346 0.33799976 0.14901 -0.28326994 0.33755508 0.14901 -0.32887647 
		0.2958883 0.14901 0.12763824 0.29544362 0.14901 0.082031749 0.29499897 0.14901 0.036425244 
		0.29455429 0.14901 -0.0091812843 0.29410964 0.14901 -0.0547878 0.29366496 0.14901 
		-0.1003943 0.29322031 0.14901 -0.14600083 0.29277563 0.14901 -0.19160733 0.29233098 
		0.14901 -0.23721385 0.2918863 0.14901 -0.28282034 0.29144162 0.14901 -0.32842684 
		0.24977483 0.14901 0.12808783 0.24933015 0.14901 0.08248134 0.2488855 0.14901 0.036874853 
		0.24844082 0.14901 -0.0087316753 0.24799615 0.14901 -0.054338187 0.24755149 0.14901 
		-0.099944696 0.24710682 0.14901 -0.14555122 0.24666215 0.14901 -0.19115771 0.24621749 
		0.14901 -0.23676424 0.24577282 0.14901 -0.28237078 0.24532816 0.14901 -0.32797724 
		0.20366134 0.14901 0.12853746 0.20321667 0.14901 0.082930975 0.20277201 0.14901 0.037324462 
		0.20232734 0.14901 -0.0082820747 0.20188268 0.14901 -0.053888574 0.20143801 0.14901 
		-0.099495083 0.20099334 0.14901 -0.14510161 0.20054866 0.14901 -0.1907081 0.20010401 
		0.14901 -0.23631462 0.19965935 0.14901 -0.28192115 0.19921468 0.14901 -0.32752764 
		0.15754789 0.14901 0.12898707 0.15710323 0.14901 0.083380565 0.15665856 0.14901 0.037774071 
		0.15621389 0.14901 -0.0078324554 0.15576921 0.14901 -0.053438965 0.15532455 0.14901 
		-0.09904547 0.15487988 0.14901 -0.14465199 0.15443522 0.14901 -0.19025849 0.15399055 
		0.14901 -0.23586503 0.15354589 0.14901 -0.28147152 0.15310122 0.14901 -0.32707804 
		0.11143441 0.14901 0.12943669 0.11098976 0.14901 0.083830193 0.11054507 0.14901 0.038223684 
		0.11010043 0.14901 -0.0073828455 0.10965575 0.14901 -0.052989356 0.10921109 0.14901 
		-0.098595865 0.10876642 0.14901 -0.1442024 0.10832173 0.14901 -0.18980888 0.10787707 
		0.14901 -0.23541541 0.1074324 0.14901 -0.28102192 0.10698775 0.14901 -0.32662842 
		-0.00050105725 0.14901 0.13052806 -0.0049477075 0.14901 -0.32553703 -0.026906028 
		0.14901 0.13078551 -0.027350659 0.14901 0.085179001 -0.027795361 0.14901 0.039572511 
		-0.028240029 0.14901 -0.0060340161 -0.028684696 0.14901 -0.051640529 -0.029129364 
		0.14901 -0.097247034 -0.029573992 0.14901 -0.14285356 -0.030018697 0.14901 -0.18846005 
		-0.030463364 0.14901 -0.23406658 -0.03090803 0.14901 -0.2796731 -0.031352699 0.14901 
		-0.32527959 0.012427166 0.14901 0.084791161 0.0119825 0.14901 0.039184682 0.011537832 
		0.14901 -0.0064218529 0.011093166 0.14901 -0.052028365 0.010648499 0.14901 -0.097634867 
		0.010203832 0.14901 -0.14324141 0.0097591653 0.14901 -0.18884788 0.0093144979 0.14901 
		-0.23445442 0.0088698315 0.14901 -0.28006092 -0.00081677083 0.14901 0.09814743 -0.0010746772 
		0.14901 0.071695693 -0.0012614374 0.14901 0.052540947 -0.014318614 0.14901 0.085051954 
		-0.0015193443 0.14901 0.026089165 -0.0017061045 0.14901 0.0069344211 -0.014763281 
		0.14901 0.039445449 -0.0019640112 0.14901 -0.019517358 -0.0021507714 0.14901 -0.038672093 
		-0.015207948 0.14901 -0.0061610797 -0.0024086596 0.14901 -0.065123864 -0.0025954382 
		0.14901 -0.084278598;
	setAttr ".pt[166:331]" -0.015652616 0.14901 -0.051767595 -0.0028533265 0.14901 
		-0.11073037 -0.0030401051 0.14901 -0.12988512 -0.016097281 0.14901 -0.097374097 -0.0032979934 
		0.14901 -0.15633689 -0.0034847534 0.14901 -0.17549162 -0.016541949 0.14901 -0.14298062 
		-0.0037426602 0.14901 -0.20194338 -0.0039294204 0.14901 -0.22109812 -0.016986653 
		0.14901 -0.1885871 -0.0041873455 0.14901 -0.24754991 -0.0043740873 0.14901 -0.26670465 
		-0.017431302 0.14901 -0.23419364 -0.004632012 0.14901 -0.29315639 -0.017875949 0.14901 
		-0.27980015 0.063108355 0.14901 0.12990786 0.025196616 0.14901 0.1302775 0.062663704 
		0.14901 0.084301353 0.024751948 0.14901 0.084671013 0.062219039 0.14901 0.038694866 
		0.024307281 0.14901 0.039064515 0.061774373 0.14901 -0.0069116722 0.023862615 0.14901 
		-0.0065420205 0.061329704 0.14901 -0.05251817 0.023417948 0.14901 -0.052148536 0.060885038 
		0.14901 -0.098124683 0.02297328 0.14901 -0.097755037 0.060440373 0.14901 -0.14373121 
		0.022528613 0.14901 -0.14336157 0.059995685 0.14901 -0.1893377 0.022083947 0.14901 
		-0.18896806 0.059551019 0.14901 -0.23494422 0.02163928 0.14901 -0.23457459 0.059106354 
		0.14901 -0.28055075 0.021194613 0.14901 -0.28018108 0.020749966 0.14901 -0.32578757 
		0.058661703 0.14901 -0.32615724 0.61868256 0.14901 0.12449099 0.61823791 0.14901 
		0.078884482 0.57212448 0.14901 0.079334095 0.57256913 0.14901 0.12494057 0.6177932 
		0.14901 0.033277966 0.57167977 0.14901 0.033727583 0.61734855 0.14901 -0.012328553 
		0.57123512 0.14901 -0.011878952 0.61690384 0.14901 -0.057935063 0.57079047 0.14901 
		-0.057485454 0.61645925 0.14901 -0.10354157 0.57034576 0.14901 -0.10309196 0.61601454 
		0.14901 -0.14914809 0.56990111 0.14901 -0.14869848 0.61556989 0.14901 -0.19475459 
		0.56945646 0.14901 -0.19430499 0.61512524 0.14901 -0.24036112 0.56901175 0.14901 
		-0.23991151 0.61468053 0.14901 -0.28596762 0.5685671 0.14901 -0.28551802 0.61423588 
		0.14901 -0.33157411 0.56812245 0.14901 -0.33112451 0.52601099 0.14901 0.079783723 
		0.52645558 0.14901 0.12539019 0.52556634 0.14901 0.034177195 0.52512163 0.14901 -0.011429343 
		0.52467698 0.14901 -0.057035848 0.52423227 0.14901 -0.10264235 0.52378762 0.14901 
		-0.14824888 0.52334297 0.14901 -0.19385538 0.52289832 0.14901 -0.2394619 0.52245361 
		0.14901 -0.28506839 0.52200896 0.14901 -0.33067489 0.4798975 0.14901 0.080233291 
		0.48034215 0.14901 0.1258398 0.47945282 0.14901 0.034626804 0.47900817 0.14901 -0.010979724 
		0.47856349 0.14901 -0.056586236 0.47811881 0.14901 -0.10219274 0.47767416 0.14901 
		-0.14779927 0.47722948 0.14901 -0.19340576 0.47678483 0.14901 -0.2390123 0.47634017 
		0.14901 -0.28461879 0.47589549 0.14901 -0.33022529 0.43378404 0.14901 0.080682926 
		0.43422872 0.14901 0.12628941 0.43333936 0.14901 0.035076413 0.43289471 0.14901 -0.010530123 
		0.43245003 0.14901 -0.056136627 0.43200538 0.14901 -0.10174313 0.4315607 0.14901 
		-0.14734966 0.43111601 0.14901 -0.19295615 0.43067136 0.14901 -0.23856267 0.43022668 
		0.14901 -0.2841692 0.42978203 0.14901 -0.32977569 0.38767058 0.14901 0.081132531 
		0.38811523 0.14901 0.12673903 0.3872259 0.14901 0.035526022 0.38678125 0.14901 -0.010080504 
		0.38633657 0.14901 -0.055687014 0.38589188 0.14901 -0.10129352 0.38544723 0.14901 
		-0.14690004 0.38500255 0.14901 -0.19250654 0.3845579 0.14901 -0.23811308 0.38411322 
		0.14901 -0.28371957 0.38366854 0.14901 -0.32932606 0.34155709 0.14901 0.081582144 
		0.34200174 0.14901 0.12718864 0.34111241 0.14901 0.035975635 0.34066775 0.14901 -0.0096309036 
		0.34022307 0.14901 -0.055237409 0.33977842 0.14901 -0.10084391 0.33933374 0.14901 
		-0.14645045 0.33888909 0.14901 -0.19205692 0.33844441 0.14901 -0.23766346 0.33799976 
		0.14901 -0.28326994 0.33755508 0.14901 -0.32887647 0.29544362 0.14901 0.082031749 
		0.2958883 0.14901 0.12763824 0.29499897 0.14901 0.036425244 0.29455429 0.14901 -0.0091812843 
		0.29410964 0.14901 -0.0547878 0.29366496 0.14901 -0.1003943 0.29322031 0.14901 -0.14600083 
		0.29277563 0.14901 -0.19160733 0.29233098 0.14901 -0.23721385 0.2918863 0.14901 -0.28282034 
		0.29144162 0.14901 -0.32842684 0.24933015 0.14901 0.08248134 0.24977483 0.14901 0.12808783 
		0.2488855 0.14901 0.036874853 0.24844082 0.14901 -0.0087316753 0.24799615 0.14901 
		-0.054338187 0.24755149 0.14901 -0.099944696 0.24710682 0.14901 -0.14555122 0.24666215 
		0.14901 -0.19115771 0.24621749 0.14901 -0.23676424 0.24577282 0.14901 -0.28237078 
		0.24532816 0.14901 -0.32797724 0.20321667 0.14901 0.082930975 0.20366134 0.14901 
		0.12853746 0.20277201 0.14901 0.037324462 0.20232734 0.14901 -0.0082820747 0.20188268 
		0.14901 -0.053888574 0.20143801 0.14901 -0.099495083 0.20099334 0.14901 -0.14510161 
		0.20054866 0.14901 -0.1907081 0.20010401 0.14901 -0.23631462 0.19965935 0.14901 -0.28192115 
		0.19921468 0.14901 -0.32752764 0.15710323 0.14901 0.083380565 0.15754789 0.14901 
		0.12898707 0.15665856 0.14901 0.037774071 0.15621389 0.14901 -0.0078324554 0.15576921 
		0.14901 -0.053438965 0.15532455 0.14901 -0.09904547 0.15487988 0.14901 -0.14465199 
		0.15443522 0.14901 -0.19025849 0.15399055 0.14901 -0.23586503 0.15354589 0.14901 
		-0.28147152 0.15310122 0.14901 -0.32707804 0.11098976 0.14901 0.083830193 0.11143441 
		0.14901 0.12943669 0.11054507 0.14901 0.038223684 0.11010043 0.14901 -0.0073828455 
		0.10965575 0.14901 -0.052989356 0.10921109 0.14901 -0.098595865 0.10876642 0.14901 
		-0.1442024 0.10832173 0.14901 -0.18980888;
	setAttr ".pt[332:405]" 0.10787707 0.14901 -0.23541541 0.1074324 0.14901 -0.28102192 
		0.10698775 0.14901 -0.32662842 -0.00050105725 0.14901 0.13052806 -0.00081677083 0.14901 
		0.09814743 -0.014318614 0.14901 0.085051954 -0.027350659 0.14901 0.085179001 -0.026906028 
		0.14901 0.13078551 -0.0010746772 0.14901 0.071695693 -0.0012614374 0.14901 0.052540947 
		-0.014763281 0.14901 0.039445449 -0.027795361 0.14901 0.039572511 -0.0015193443 0.14901 
		0.026089165 -0.0017061045 0.14901 0.0069344211 -0.015207948 0.14901 -0.0061610797 
		-0.028240029 0.14901 -0.0060340161 -0.0019640112 0.14901 -0.019517358 -0.0021507714 
		0.14901 -0.038672093 -0.015652616 0.14901 -0.051767595 -0.028684696 0.14901 -0.051640529 
		-0.0024086596 0.14901 -0.065123864 -0.0025954382 0.14901 -0.084278598 -0.016097281 
		0.14901 -0.097374097 -0.029129364 0.14901 -0.097247034 -0.0028533265 0.14901 -0.11073037 
		-0.0030401051 0.14901 -0.12988512 -0.016541949 0.14901 -0.14298062 -0.029573992 0.14901 
		-0.14285356 -0.0032979934 0.14901 -0.15633689 -0.0034847534 0.14901 -0.17549162 -0.016986653 
		0.14901 -0.1885871 -0.030018697 0.14901 -0.18846005 -0.0037426602 0.14901 -0.20194338 
		-0.0039294204 0.14901 -0.22109812 -0.017431302 0.14901 -0.23419364 -0.030463364 0.14901 
		-0.23406658 -0.004632012 0.14901 -0.29315639 -0.017875949 0.14901 -0.27980015 -0.0049477075 
		0.14901 -0.32553703 -0.031352699 0.14901 -0.32527959 -0.03090803 0.14901 -0.2796731 
		-0.0041873455 0.14901 -0.24754991 -0.0043740873 0.14901 -0.26670465 0.025196616 0.14901 
		0.1302775 0.063108355 0.14901 0.12990786 0.062663704 0.14901 0.084301353 0.024751948 
		0.14901 0.084671013 0.062219039 0.14901 0.038694866 0.024307281 0.14901 0.039064515 
		0.061774373 0.14901 -0.0069116722 0.023862615 0.14901 -0.0065420205 0.061329704 0.14901 
		-0.05251817 0.023417948 0.14901 -0.052148536 0.060885038 0.14901 -0.098124683 0.02297328 
		0.14901 -0.097755037 0.060440373 0.14901 -0.14373121 0.022528613 0.14901 -0.14336157 
		0.059995685 0.14901 -0.1893377 0.022083947 0.14901 -0.18896806 0.059551019 0.14901 
		-0.23494422 0.02163928 0.14901 -0.23457459 0.059106354 0.14901 -0.28055075 0.021194613 
		0.14901 -0.28018108 0.058661703 0.14901 -0.32615724 0.020749966 0.14901 -0.32578757 
		0.012427166 0.14901 0.084791161 0.0119825 0.14901 0.039184682 0.011537832 0.14901 
		-0.0064218529 0.011093166 0.14901 -0.052028365 0.010648499 0.14901 -0.097634867 0.010203832 
		0.14901 -0.14324141 0.0097591653 0.14901 -0.18884788 0.0093144979 0.14901 -0.23445442 
		0.0088698315 0.14901 -0.28006092;
	setAttr -s 406 ".vt";
	setAttr ".vt[0:165]"  -11.69499969 0 16.5549984 -9.35599995 0 16.5549984
		 -7.016999722 0 16.5549984 -4.6779995 0 16.5549984 -2.33899975 0 16.55499649 -2.9802322e-08 0 16.5549984
		 2.33900046 0 16.5549984 4.6779995 0 16.5549984 7.017000675 0 16.5549984 9.35599899 0 16.5549984
		 11.69499874 0 16.5549984 -11.69499779 0 14.18999958 -9.35599995 0 14.19000053 -7.017000198 0 14.19000053
		 -4.67799902 0 14.18999958 -2.33899975 0 14.18999958 -2.9802322e-08 0 14.18999958
		 2.33900046 0 14.19000053 4.67799997 0 14.19000053 7.017000198 0 14.18999958 9.35599995 0 14.18999958
		 11.69499874 0 14.19000053 -11.69499874 0 11.8249979 -9.3560009 0 11.82499886 -7.017000198 0 11.82499981
		 -4.67799902 0 11.82499981 -2.33899951 0 11.82499886 2.9802322e-08 0 11.82499886 2.33900094 0 11.82499886
		 4.6779995 0 11.82499886 7.017000198 0 11.82499886 9.35599899 0 11.8249979 11.69499779 0 11.82499886
		 -11.69499874 0 9.45999813 -9.35599899 0 9.45999908 -7.017000198 0 9.45999908 -4.6779995 0 9.45999908
		 -2.33899951 0 9.45999908 2.9802322e-08 0 9.45999813 2.33900094 0 9.45999813 4.6779995 0 9.45999813
		 7.017000675 0 9.45999908 9.35599995 0 9.45999908 11.69499874 0 9.45999908 -11.69499874 0 7.09499979
		 -9.35599995 0 7.09499979 -7.017000198 0 7.094999313 -4.67799902 0 7.09499979 -2.33899951 0 7.094999313
		 0 0 7.094999313 2.3390007 0 7.09499979 4.6779995 0 7.094999313 7.017000198 0 7.09499979
		 9.35599995 0 7.094999313 11.69499874 0 7.094999313 -11.69499874 0 4.72999907 -9.35599995 0 4.72999954
		 -7.017000198 0 4.72999954 -4.6779995 0 4.72999954 -2.33899975 0 4.72999954 -2.9802322e-08 0 4.72999907
		 2.3390007 0 4.72999907 4.6779995 0 4.72999954 7.017000675 0 4.72999954 9.35599995 0 4.72999954
		 11.69499874 0 4.72999907 -11.69499874 0 2.36499882 -9.35599995 0 2.36499882 -7.017000198 0 2.36499882
		 -4.67799902 0 2.36499882 -2.33899951 0 2.36499882 0 0 2.36499882 2.3390007 0 2.36499882
		 4.6779995 0 2.36499882 7.017000198 0 2.36499858 9.35599899 0 2.36499882 11.69499874 0 2.36499882
		 -11.69499874 0 2.2351742e-08 -9.35599995 0 -7.4505806e-09 -7.017000198 0 7.4505806e-09
		 -4.6779995 0 -7.4505806e-09 -2.33899951 0 -7.4505806e-09 -2.9802322e-08 0 0 2.3390007 0 0
		 4.6779995 0 0 7.017000198 0 7.4505806e-09 9.35599899 0 7.4505806e-09 11.69499874 0 -2.2351742e-08
		 -11.69499779 0 -2.36500049 -9.35599899 0 -2.36500072 -7.017000198 0 -2.36500025 -4.6779995 0 -2.36500049
		 -2.33899951 0 -2.36500049 -2.9802322e-08 0 -2.36500049 2.3390007 0 -2.36500072 4.6779995 0 -2.36500025
		 7.017000198 0 -2.36500049 9.3560009 0 -2.36500049 11.69499874 0 -2.36500049 -11.69499874 0 -4.73000097
		 -9.35599995 0 -4.73000097 -7.017000198 0 -4.73000145 -4.67799902 0 -4.73000097 -2.33899975 0 -4.73000097
		 0 0 -4.73000097 2.3390007 0 -4.73000097 4.6779995 0 -4.73000145 7.017000198 0 -4.73000097
		 9.35599995 0 -4.73000097 11.69499874 0 -4.73000097 -11.69499874 0 -7.095000267 -9.35599899 0 -7.095000267
		 -7.017000198 0 -7.095000267 -4.6779995 0 -7.095000267 -2.33899975 0 -7.095000267
		 -2.9802322e-08 0 -7.095000267 2.3390007 0 -7.095000267 4.6779995 0 -7.095000267 7.017000675 0 -7.095000267
		 9.35599995 0 -7.095000267 11.69499969 0 -7.095000267 -11.69499874 0 -9.46000099 -9.35599995 0 -9.46000004
		 -7.017000198 0 -9.46000099 -4.6779995 0 -9.46000004 -2.33899975 0 -9.46000004 0 0 -9.46000004
		 2.3390007 0 -9.46000004 4.67799902 0 -9.46000099 7.017000198 0 -9.46000099 9.35599995 0 -9.46000099
		 11.69499874 0 -9.46000004 -11.69499874 0 -15.20078278 11.69499874 0 -15.20078182
		 -11.69499874 0 -16.55500221 -9.35599899 0 -16.55500031 -7.017000198 0 -16.55500221
		 -4.6779995 0 -16.55500221 -2.33899951 0 -16.55500221 2.9802322e-08 0 -16.55500221
		 2.3390007 0 -16.55500031 4.6779995 0 -16.55500221 7.017000198 0 -16.55500221 9.35599995 0 -16.55500221
		 11.69499969 0 -16.55500221 -9.35599899 0 -14.51493359 -7.017000675 0 -14.51493359
		 -4.6779995 0 -14.51493359 -2.33899951 0 -14.51493359 -2.9802322e-08 0 -14.51493359
		 2.33900094 0 -14.51493359 4.6779995 0 -14.51493359 7.017000198 0 -14.51493359 9.35599995 0 -14.51493359
		 -10.034308434 0 -15.20078278 -8.67769051 0 -15.20078278 -7.69531012 0 -15.20078278
		 -9.35599995 0 -15.88663197 -6.3386898 0 -15.20078278 -5.35630941 0 -15.20078278 -7.017000198 0 -15.88663197
		 -3.99968934 0 -15.20078278 -3.017309427 0 -15.20078278 -4.6779995 0 -15.88663197
		 -1.66068971 0 -15.20078182 -0.67830986 0 -15.20078278;
	setAttr ".vt[166:331]" -2.33899951 0 -15.88663197 0.67831004 0 -15.20078182
		 1.66069043 0 -15.20078278 0 0 -15.88663197 3.017310381 0 -15.20078182 3.99968958 0 -15.20078182
		 2.3390007 0 -15.88663197 5.35630941 0 -15.20078182 6.33868933 0 -15.20078182 4.67799902 0 -15.88663387
		 7.69530964 0 -15.20078278 8.67769051 0 -15.20078182 7.017000198 0 -15.88663292 10.03430748 0 -15.20078278
		 9.35599995 0 -15.88663197 -11.69499874 0 -11.93847656 -11.69499874 0 -13.88283825
		 -9.35599899 0 -11.93847561 -9.35599995 0 -13.88283825 -7.017000198 0 -11.93847561
		 -7.017000675 0 -13.88283825 -4.67799902 0 -11.93847561 -4.6779995 0 -13.88283825
		 -2.33899975 0 -11.93847561 -2.33899951 0 -13.88283825 0 0 -11.93847561 -2.9802322e-08 0 -13.88283825
		 2.33900046 0 -11.93847561 2.33900094 0 -13.88283825 4.6779995 0 -11.93847656 4.6779995 0 -13.88283825
		 7.017000198 0 -11.93847656 7.017000198 0 -13.88283825 9.35599995 0 -11.93847656 9.35599899 0 -13.88283825
		 11.69499874 0 -13.8828373 11.69499969 0 -11.93847561 -11.69499969 0.090000004 16.5549984
		 -9.35599995 0.090000004 16.5549984 -9.35599995 0.090000004 14.19000053 -11.69499779 0.090000004 14.18999958
		 -7.016999722 0.090000004 16.5549984 -7.017000198 0.090000004 14.19000053 -4.6779995 0.090000004 16.5549984
		 -4.67799902 0.090000004 14.18999958 -2.33899975 0.090000004 16.55499649 -2.33899975 0.090000004 14.18999958
		 -2.9802322e-08 0.090000004 16.5549984 -2.9802322e-08 0.090000004 14.18999958 2.33900046 0.090000004 16.5549984
		 2.33900046 0.090000004 14.19000053 4.6779995 0.090000004 16.5549984 4.67799997 0.090000004 14.19000053
		 7.017000675 0.090000004 16.5549984 7.017000198 0.090000004 14.18999958 9.35599899 0.090000004 16.5549984
		 9.35599995 0.090000004 14.18999958 11.69499874 0.090000004 16.5549984 11.69499874 0.090000004 14.19000053
		 -9.3560009 0.090000004 11.82499886 -11.69499874 0.090000004 11.8249979 -7.017000198 0.090000004 11.82499981
		 -4.67799902 0.090000004 11.82499981 -2.33899951 0.090000004 11.82499886 2.9802322e-08 0.090000004 11.82499886
		 2.33900094 0.090000004 11.82499886 4.6779995 0.090000004 11.82499886 7.017000198 0.090000004 11.82499886
		 9.35599899 0.090000004 11.8249979 11.69499779 0.090000004 11.82499886 -9.35599899 0.090000004 9.45999908
		 -11.69499874 0.090000004 9.45999813 -7.017000198 0.090000004 9.45999908 -4.6779995 0.090000004 9.45999908
		 -2.33899951 0.090000004 9.45999908 2.9802322e-08 0.090000004 9.45999813 2.33900094 0.090000004 9.45999813
		 4.6779995 0.090000004 9.45999813 7.017000675 0.090000004 9.45999908 9.35599995 0.090000004 9.45999908
		 11.69499874 0.090000004 9.45999908 -9.35599995 0.090000004 7.09499979 -11.69499874 0.090000004 7.09499979
		 -7.017000198 0.090000004 7.094999313 -4.67799902 0.090000004 7.09499979 -2.33899951 0.090000004 7.094999313
		 0 0.090000004 7.094999313 2.3390007 0.090000004 7.09499979 4.6779995 0.090000004 7.094999313
		 7.017000198 0.090000004 7.09499979 9.35599995 0.090000004 7.094999313 11.69499874 0.090000004 7.094999313
		 -9.35599995 0.090000004 4.72999954 -11.69499874 0.090000004 4.72999907 -7.017000198 0.090000004 4.72999954
		 -4.6779995 0.090000004 4.72999954 -2.33899975 0.090000004 4.72999954 -2.9802322e-08 0.090000004 4.72999907
		 2.3390007 0.090000004 4.72999907 4.6779995 0.090000004 4.72999954 7.017000675 0.090000004 4.72999954
		 9.35599995 0.090000004 4.72999954 11.69499874 0.090000004 4.72999907 -9.35599995 0.090000004 2.36499882
		 -11.69499874 0.090000004 2.36499882 -7.017000198 0.090000004 2.36499882 -4.67799902 0.090000004 2.36499882
		 -2.33899951 0.090000004 2.36499882 0 0.090000004 2.36499882 2.3390007 0.090000004 2.36499882
		 4.6779995 0.090000004 2.36499882 7.017000198 0.090000004 2.36499858 9.35599899 0.090000004 2.36499882
		 11.69499874 0.090000004 2.36499882 -9.35599995 0.090000004 -7.4505806e-09 -11.69499874 0.090000004 2.2351742e-08
		 -7.017000198 0.090000004 7.4505806e-09 -4.6779995 0.090000004 -7.4505806e-09 -2.33899951 0.090000004 -7.4505806e-09
		 -2.9802322e-08 0.090000004 0 2.3390007 0.090000004 0 4.6779995 0.090000004 0 7.017000198 0.090000004 7.4505806e-09
		 9.35599899 0.090000004 7.4505806e-09 11.69499874 0.090000004 -2.2351742e-08 -9.35599899 0.090000004 -2.36500072
		 -11.69499779 0.090000004 -2.36500049 -7.017000198 0.090000004 -2.36500025 -4.6779995 0.090000004 -2.36500049
		 -2.33899951 0.090000004 -2.36500049 -2.9802322e-08 0.090000004 -2.36500049 2.3390007 0.090000004 -2.36500072
		 4.6779995 0.090000004 -2.36500025 7.017000198 0.090000004 -2.36500049 9.3560009 0.090000004 -2.36500049
		 11.69499874 0.090000004 -2.36500049 -9.35599995 0.090000004 -4.73000097 -11.69499874 0.090000004 -4.73000097
		 -7.017000198 0.090000004 -4.73000145 -4.67799902 0.090000004 -4.73000097 -2.33899975 0.090000004 -4.73000097
		 0 0.090000004 -4.73000097 2.3390007 0.090000004 -4.73000097 4.6779995 0.090000004 -4.73000145
		 7.017000198 0.090000004 -4.73000097 9.35599995 0.090000004 -4.73000097 11.69499874 0.090000004 -4.73000097
		 -9.35599899 0.090000004 -7.095000267 -11.69499874 0.090000004 -7.095000267 -7.017000198 0.090000004 -7.095000267
		 -4.6779995 0.090000004 -7.095000267 -2.33899975 0.090000004 -7.095000267 -2.9802322e-08 0.090000004 -7.095000267
		 2.3390007 0.090000004 -7.095000267 4.6779995 0.090000004 -7.095000267 7.017000675 0.090000004 -7.095000267
		 9.35599995 0.090000004 -7.095000267 11.69499969 0.090000004 -7.095000267 -9.35599995 0.090000004 -9.46000004
		 -11.69499874 0.090000004 -9.46000099 -7.017000198 0.090000004 -9.46000099 -4.6779995 0.090000004 -9.46000004
		 -2.33899975 0.090000004 -9.46000004 0 0.090000004 -9.46000004 2.3390007 0.090000004 -9.46000004
		 4.67799902 0.090000004 -9.46000099;
	setAttr ".vt[332:405]" 7.017000198 0.090000004 -9.46000099 9.35599995 0.090000004 -9.46000099
		 11.69499874 0.090000004 -9.46000004 -11.69499874 0.090000004 -15.20078278 -10.034308434 0.090000004 -15.20078278
		 -9.35599995 0.090000004 -15.88663197 -9.35599899 0.090000004 -16.55500031 -11.69499874 0.090000004 -16.55500221
		 -8.67769051 0.090000004 -15.20078278 -7.69531012 0.090000004 -15.20078278 -7.017000198 0.090000004 -15.88663197
		 -7.017000198 0.090000004 -16.55500221 -6.3386898 0.090000004 -15.20078278 -5.35630941 0.090000004 -15.20078278
		 -4.6779995 0.090000004 -15.88663197 -4.6779995 0.090000004 -16.55500221 -3.99968934 0.090000004 -15.20078278
		 -3.017309427 0.090000004 -15.20078278 -2.33899951 0.090000004 -15.88663197 -2.33899951 0.090000004 -16.55500221
		 -1.66068971 0.090000004 -15.20078182 -0.67830986 0.090000004 -15.20078278 0 0.090000004 -15.88663197
		 2.9802322e-08 0.090000004 -16.55500221 0.67831004 0.090000004 -15.20078182 1.66069043 0.090000004 -15.20078278
		 2.3390007 0.090000004 -15.88663197 2.3390007 0.090000004 -16.55500031 3.017310381 0.090000004 -15.20078182
		 3.99968958 0.090000004 -15.20078182 4.67799902 0.090000004 -15.88663387 4.6779995 0.090000004 -16.55500221
		 5.35630941 0.090000004 -15.20078182 6.33868933 0.090000004 -15.20078182 7.017000198 0.090000004 -15.88663292
		 7.017000198 0.090000004 -16.55500221 10.03430748 0.090000004 -15.20078278 9.35599995 0.090000004 -15.88663197
		 11.69499874 0.090000004 -15.20078182 11.69499969 0.090000004 -16.55500221 9.35599995 0.090000004 -16.55500221
		 7.69530964 0.090000004 -15.20078278 8.67769051 0.090000004 -15.20078182 -11.69499874 0.090000004 -13.88283825
		 -11.69499874 0.090000004 -11.93847656 -9.35599899 0.090000004 -11.93847561 -9.35599995 0.090000004 -13.88283825
		 -7.017000198 0.090000004 -11.93847561 -7.017000675 0.090000004 -13.88283825 -4.67799902 0.090000004 -11.93847561
		 -4.6779995 0.090000004 -13.88283825 -2.33899975 0.090000004 -11.93847561 -2.33899951 0.090000004 -13.88283825
		 0 0.090000004 -11.93847561 -2.9802322e-08 0.090000004 -13.88283825 2.33900046 0.090000004 -11.93847561
		 2.33900094 0.090000004 -13.88283825 4.6779995 0.090000004 -11.93847656 4.6779995 0.090000004 -13.88283825
		 7.017000198 0.090000004 -11.93847656 7.017000198 0.090000004 -13.88283825 9.35599995 0.090000004 -11.93847656
		 9.35599899 0.090000004 -13.88283825 11.69499969 0.090000004 -11.93847561 11.69499874 0.090000004 -13.8828373
		 -9.35599899 0.090000004 -14.51493359 -7.017000675 0.090000004 -14.51493359 -4.6779995 0.090000004 -14.51493359
		 -2.33899951 0.090000004 -14.51493359 -2.9802322e-08 0.090000004 -14.51493359 2.33900094 0.090000004 -14.51493359
		 4.6779995 0.090000004 -14.51493359 7.017000198 0.090000004 -14.51493359 9.35599995 0.090000004 -14.51493359;
	setAttr -s 808 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 1
		 110 121 0 111 112 1 111 122 1 112 113 1 112 123 1 113 114 1 113 124 1 114 115 1 114 125 1
		 115 116 1 115 126 1 116 117 1 116 127 1 117 118 1 117 128 1 118 119 1 118 129 1 119 120 1
		 119 130 1 120 131 0 121 122 1 121 181 0 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 128 1 128 129 1 129 130 1 130 131 1 131 202 0 132 154 1 132 134 0 133 144 0 134 135 0
		 135 136 0 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0 141 142 0 142 143 0 143 144 0
		 155 156 1 157 135 1 158 159 1 160 136 1 161 162 1 163 137 1 164 165 1 166 138 1 167 168 1
		 169 139 1 170 171 1 172 140 1 173 174 1 175 141 1 176 177 1 178 142 1 179 133 1 180 143 1
		 154 145 0 145 155 0 155 157 0 157 154 0 156 146 0 146 158 0 158 160 0 160 156 0 159 147 0
		 147 161 0 161 163 0 163 159 0 162 148 0 148 164 0 164 166 0 166 162 0 165 149 0 149 167 0
		 167 169 0 169 165 0 168 150 0 150 170 0 170 172 0 172 168 0 171 151 0 151 173 0 173 175 0
		 175 171 0 174 152 0 152 176 0 176 178 0 178 174 0 177 153 0 153 179 0 179 180 0 180 177 0
		 182 132 0 201 133 0 182 181 0 181 183 1 183 184 1 184 182 1 183 185 1 185 186 1 186 184 1
		 185 187 1 187 188 1 188 186 1 187 189 1 189 190 1 190 188 1 189 191 1 191 192 1 192 190 1
		 191 193 1 193 194 1 194 192 1 193 195 1;
	setAttr ".ed[332:497]" 195 196 1 196 194 1 195 197 1 197 198 1 198 196 1 197 199 1
		 199 200 1 200 198 1 199 202 1 202 201 0 201 200 1 122 183 1 123 185 1 124 187 1 125 189 1
		 126 191 1 127 193 1 128 195 1 129 197 1 130 199 1 184 145 1 186 146 1 188 147 1 190 148 1
		 192 149 1 194 150 1 196 151 1 198 152 1 200 153 1 0 203 0 1 204 1 203 204 0 204 205 1
		 11 206 1 206 205 1 203 206 0 2 207 1 204 207 0 207 208 1 205 208 1 3 209 1 207 209 0
		 209 210 1 208 210 1 4 211 1 209 211 0 211 212 1 210 212 1 5 213 1 211 213 0 213 214 1
		 212 214 1 6 215 1 213 215 0 215 216 1 214 216 1 7 217 1 215 217 0 217 218 1 216 218 1
		 8 219 1 217 219 0 219 220 1 218 220 1 9 221 1 219 221 0 221 222 1 220 222 1 10 223 0
		 221 223 0 21 224 1 223 224 0 222 224 1 205 225 1 22 226 1 226 225 1 206 226 0 208 227 1
		 225 227 1 210 228 1 227 228 1 212 229 1 228 229 1 214 230 1 229 230 1 216 231 1 230 231 1
		 218 232 1 231 232 1 220 233 1 232 233 1 222 234 1 233 234 1 32 235 1 224 235 0 234 235 1
		 225 236 1 33 237 1 237 236 1 226 237 0 227 238 1 236 238 1 228 239 1 238 239 1 229 240 1
		 239 240 1 230 241 1 240 241 1 231 242 1 241 242 1 232 243 1 242 243 1 233 244 1 243 244 1
		 234 245 1 244 245 1 43 246 1 235 246 0 245 246 1 236 247 1 44 248 1 248 247 1 237 248 0
		 238 249 1 247 249 1 239 250 1 249 250 1 240 251 1 250 251 1 241 252 1 251 252 1 242 253 1
		 252 253 1 243 254 1 253 254 1 244 255 1 254 255 1 245 256 1 255 256 1 54 257 1 246 257 0
		 256 257 1 247 258 1 55 259 1 259 258 1 248 259 0 249 260 1 258 260 1 250 261 1 260 261 1
		 251 262 1 261 262 1 252 263 1 262 263 1 253 264 1 263 264 1 254 265 1 264 265 1 255 266 1
		 265 266 1 256 267 1 266 267 1 65 268 1 257 268 0 267 268 1 258 269 1;
	setAttr ".ed[498:663]" 66 270 1 270 269 1 259 270 0 260 271 1 269 271 1 261 272 1
		 271 272 1 262 273 1 272 273 1 263 274 1 273 274 1 264 275 1 274 275 1 265 276 1 275 276 1
		 266 277 1 276 277 1 267 278 1 277 278 1 76 279 1 268 279 0 278 279 1 269 280 1 77 281 1
		 281 280 1 270 281 0 271 282 1 280 282 1 272 283 1 282 283 1 273 284 1 283 284 1 274 285 1
		 284 285 1 275 286 1 285 286 1 276 287 1 286 287 1 277 288 1 287 288 1 278 289 1 288 289 1
		 87 290 1 279 290 0 289 290 1 280 291 1 88 292 1 292 291 1 281 292 0 282 293 1 291 293 1
		 283 294 1 293 294 1 284 295 1 294 295 1 285 296 1 295 296 1 286 297 1 296 297 1 287 298 1
		 297 298 1 288 299 1 298 299 1 289 300 1 299 300 1 98 301 1 290 301 0 300 301 1 291 302 1
		 99 303 1 303 302 1 292 303 0 293 304 1 302 304 1 294 305 1 304 305 1 295 306 1 305 306 1
		 296 307 1 306 307 1 297 308 1 307 308 1 298 309 1 308 309 1 299 310 1 309 310 1 300 311 1
		 310 311 1 109 312 1 301 312 0 311 312 1 302 313 1 110 314 1 314 313 1 303 314 0 304 315 1
		 313 315 1 305 316 1 315 316 1 306 317 1 316 317 1 307 318 1 317 318 1 308 319 1 318 319 1
		 309 320 1 319 320 1 310 321 1 320 321 1 311 322 1 321 322 1 120 323 1 312 323 0 322 323 1
		 313 324 1 121 325 1 325 324 1 314 325 0 315 326 1 324 326 1 316 327 1 326 327 1 317 328 1
		 327 328 1 318 329 1 328 329 1 319 330 1 329 330 1 320 331 1 330 331 1 321 332 1 331 332 1
		 322 333 1 332 333 1 131 334 1 323 334 0 333 334 1 132 335 1 154 336 0 335 336 1 157 337 0
		 337 336 0 135 338 1 337 338 1 134 339 0 339 338 0 335 339 0 155 340 0 340 337 0 156 341 0
		 340 341 1 160 342 0 342 341 0 136 343 1 342 343 1 338 343 0 158 344 0 344 342 0 159 345 0
		 344 345 1 163 346 0 346 345 0 137 347 1 346 347 1 343 347 0 161 348 0;
	setAttr ".ed[664:807]" 348 346 0 162 349 0 348 349 1 166 350 0 350 349 0 138 351 1
		 350 351 1 347 351 0 164 352 0 352 350 0 165 353 0 352 353 1 169 354 0 354 353 0 139 355 1
		 354 355 1 351 355 0 167 356 0 356 354 0 168 357 0 356 357 1 172 358 0 358 357 0 140 359 1
		 358 359 1 355 359 0 170 360 0 360 358 0 171 361 0 360 361 1 175 362 0 362 361 0 141 363 1
		 362 363 1 359 363 0 173 364 0 364 362 0 174 365 0 364 365 1 178 366 0 366 365 0 142 367 1
		 366 367 1 363 367 0 179 368 0 180 369 0 368 369 0 133 370 1 368 370 1 144 371 0 370 371 0
		 143 372 1 372 371 0 369 372 1 176 373 0 373 366 0 177 374 0 373 374 1 369 374 0 367 372 0
		 182 375 1 181 376 1 375 376 0 376 377 1 377 378 1 378 375 1 377 379 1 379 380 1 380 378 1
		 379 381 1 381 382 1 382 380 1 381 383 1 383 384 1 384 382 1 383 385 1 385 386 1 386 384 1
		 385 387 1 387 388 1 388 386 1 387 389 1 389 390 1 390 388 1 389 391 1 391 392 1 392 390 1
		 391 393 1 393 394 1 394 392 1 202 395 1 393 395 1 201 396 1 395 396 0 396 394 1 324 377 1
		 325 376 0 326 379 1 327 381 1 328 383 1 329 385 1 330 387 1 331 389 1 332 391 1 333 393 1
		 334 395 0 145 397 0 378 397 1 336 397 0 375 335 0 146 398 0 380 398 1 341 398 0 397 340 0
		 147 399 0 382 399 1 345 399 0 398 344 0 148 400 0 384 400 1 349 400 0 399 348 0 149 401 0
		 386 401 1 353 401 0 400 352 0 150 402 0 388 402 1 357 402 0 401 356 0 151 403 0 390 403 1
		 361 403 0 402 360 0 152 404 0 392 404 1 365 404 0 403 364 0 153 405 0 394 405 1 374 405 0
		 404 373 0 396 370 0 405 368 0;
	setAttr -s 386 -ch 1616 ".fc[0:385]" -type "polyFaces" 
		f 4 363 364 -367 -368
		mu 0 4 406 407 2 408
		f 4 369 370 -372 -365
		mu 0 4 407 409 5 2
		f 4 373 374 -376 -371
		mu 0 4 409 410 7 5
		f 4 377 378 -380 -375
		mu 0 4 410 411 9 7
		f 4 381 382 -384 -379
		mu 0 4 411 412 11 9
		f 4 385 386 -388 -383
		mu 0 4 412 413 13 11
		f 4 389 390 -392 -387
		mu 0 4 413 414 15 13
		f 4 393 394 -396 -391
		mu 0 4 414 415 17 15
		f 4 397 398 -400 -395
		mu 0 4 415 416 19 17
		f 4 401 403 -405 -399
		mu 0 4 416 417 418 19
		f 4 366 405 -408 -409
		mu 0 4 408 2 22 419
		f 4 371 409 -411 -406
		mu 0 4 2 5 24 22
		f 4 375 411 -413 -410
		mu 0 4 5 7 25 24
		f 4 379 413 -415 -412
		mu 0 4 7 9 26 25
		f 4 383 415 -417 -414
		mu 0 4 9 11 27 26
		f 4 387 417 -419 -416
		mu 0 4 11 13 28 27
		f 4 391 419 -421 -418
		mu 0 4 13 15 29 28
		f 4 395 421 -423 -420
		mu 0 4 15 17 30 29
		f 4 399 423 -425 -422
		mu 0 4 17 19 31 30
		f 4 404 426 -428 -424
		mu 0 4 19 418 420 31
		f 4 407 428 -431 -432
		mu 0 4 419 22 33 421
		f 4 410 432 -434 -429
		mu 0 4 22 24 35 33
		f 4 412 434 -436 -433
		mu 0 4 24 25 36 35
		f 4 414 436 -438 -435
		mu 0 4 25 26 37 36
		f 4 416 438 -440 -437
		mu 0 4 26 27 38 37
		f 4 418 440 -442 -439
		mu 0 4 27 28 39 38
		f 4 420 442 -444 -441
		mu 0 4 28 29 40 39
		f 4 422 444 -446 -443
		mu 0 4 29 30 41 40
		f 4 424 446 -448 -445
		mu 0 4 30 31 42 41
		f 4 427 449 -451 -447
		mu 0 4 31 420 422 42
		f 4 430 451 -454 -455
		mu 0 4 421 33 44 423
		f 4 433 455 -457 -452
		mu 0 4 33 35 46 44
		f 4 435 457 -459 -456
		mu 0 4 35 36 47 46
		f 4 437 459 -461 -458
		mu 0 4 36 37 48 47
		f 4 439 461 -463 -460
		mu 0 4 37 38 49 48
		f 4 441 463 -465 -462
		mu 0 4 38 39 50 49
		f 4 443 465 -467 -464
		mu 0 4 39 40 51 50
		f 4 445 467 -469 -466
		mu 0 4 40 41 52 51
		f 4 447 469 -471 -468
		mu 0 4 41 42 53 52
		f 4 450 472 -474 -470
		mu 0 4 42 422 424 53
		f 4 453 474 -477 -478
		mu 0 4 423 44 55 425
		f 4 456 478 -480 -475
		mu 0 4 44 46 57 55
		f 4 458 480 -482 -479
		mu 0 4 46 47 58 57
		f 4 460 482 -484 -481
		mu 0 4 47 48 59 58
		f 4 462 484 -486 -483
		mu 0 4 48 49 60 59
		f 4 464 486 -488 -485
		mu 0 4 49 50 61 60
		f 4 466 488 -490 -487
		mu 0 4 50 51 62 61
		f 4 468 490 -492 -489
		mu 0 4 51 52 63 62
		f 4 470 492 -494 -491
		mu 0 4 52 53 64 63
		f 4 473 495 -497 -493
		mu 0 4 53 424 426 64
		f 4 476 497 -500 -501
		mu 0 4 425 55 66 427
		f 4 479 501 -503 -498
		mu 0 4 55 57 68 66
		f 4 481 503 -505 -502
		mu 0 4 57 58 69 68
		f 4 483 505 -507 -504
		mu 0 4 58 59 70 69
		f 4 485 507 -509 -506
		mu 0 4 59 60 71 70
		f 4 487 509 -511 -508
		mu 0 4 60 61 72 71
		f 4 489 511 -513 -510
		mu 0 4 61 62 73 72
		f 4 491 513 -515 -512
		mu 0 4 62 63 74 73
		f 4 493 515 -517 -514
		mu 0 4 63 64 75 74
		f 4 496 518 -520 -516
		mu 0 4 64 426 428 75
		f 4 499 520 -523 -524
		mu 0 4 427 66 77 429
		f 4 502 524 -526 -521
		mu 0 4 66 68 79 77
		f 4 504 526 -528 -525
		mu 0 4 68 69 80 79
		f 4 506 528 -530 -527
		mu 0 4 69 70 81 80
		f 4 508 530 -532 -529
		mu 0 4 70 71 82 81
		f 4 510 532 -534 -531
		mu 0 4 71 72 83 82
		f 4 512 534 -536 -533
		mu 0 4 72 73 84 83
		f 4 514 536 -538 -535
		mu 0 4 73 74 85 84
		f 4 516 538 -540 -537
		mu 0 4 74 75 86 85
		f 4 519 541 -543 -539
		mu 0 4 75 428 430 86
		f 4 522 543 -546 -547
		mu 0 4 429 77 88 431
		f 4 525 547 -549 -544
		mu 0 4 77 79 90 88
		f 4 527 549 -551 -548
		mu 0 4 79 80 91 90
		f 4 529 551 -553 -550
		mu 0 4 80 81 92 91
		f 4 531 553 -555 -552
		mu 0 4 81 82 93 92
		f 4 533 555 -557 -554
		mu 0 4 82 83 94 93
		f 4 535 557 -559 -556
		mu 0 4 83 84 95 94
		f 4 537 559 -561 -558
		mu 0 4 84 85 96 95
		f 4 539 561 -563 -560
		mu 0 4 85 86 97 96
		f 4 542 564 -566 -562
		mu 0 4 86 430 432 97
		f 4 545 566 -569 -570
		mu 0 4 431 88 99 433
		f 4 548 570 -572 -567
		mu 0 4 88 90 101 99
		f 4 550 572 -574 -571
		mu 0 4 90 91 102 101
		f 4 552 574 -576 -573
		mu 0 4 91 92 103 102
		f 4 554 576 -578 -575
		mu 0 4 92 93 104 103
		f 4 556 578 -580 -577
		mu 0 4 93 94 105 104
		f 4 558 580 -582 -579
		mu 0 4 94 95 106 105
		f 4 560 582 -584 -581
		mu 0 4 95 96 107 106
		f 4 562 584 -586 -583
		mu 0 4 96 97 108 107
		f 4 565 587 -589 -585
		mu 0 4 97 432 434 108
		f 4 568 589 -592 -593
		mu 0 4 433 99 110 435
		f 4 571 593 -595 -590
		mu 0 4 99 101 112 110
		f 4 573 595 -597 -594
		mu 0 4 101 102 113 112
		f 4 575 597 -599 -596
		mu 0 4 102 103 114 113
		f 4 577 599 -601 -598
		mu 0 4 103 104 115 114
		f 4 579 601 -603 -600
		mu 0 4 104 105 116 115
		f 4 581 603 -605 -602
		mu 0 4 105 106 117 116
		f 4 583 605 -607 -604
		mu 0 4 106 107 118 117
		f 4 585 607 -609 -606
		mu 0 4 107 108 119 118
		f 4 588 610 -612 -608
		mu 0 4 108 434 436 119
		f 4 591 612 -615 -616
		mu 0 4 435 110 163 437
		f 4 594 616 -618 -613
		mu 0 4 110 112 165 163
		f 4 596 618 -620 -617
		mu 0 4 112 113 167 165
		f 4 598 620 -622 -619
		mu 0 4 113 114 169 167
		f 4 600 622 -624 -621
		mu 0 4 114 115 171 169
		f 4 602 624 -626 -623
		mu 0 4 115 116 173 171
		f 4 604 626 -628 -625
		mu 0 4 116 117 175 173
		f 4 606 628 -630 -627
		mu 0 4 117 118 177 175
		f 4 608 630 -632 -629
		mu 0 4 118 119 179 177
		f 4 611 633 -635 -631
		mu 0 4 119 436 438 179
		f 5 637 -640 641 -644 -645
		mu 0 5 443 439 440 441 442
		f 6 -647 648 -651 652 -654 -642
		mu 0 6 440 444 445 446 447 441
		f 6 -656 657 -660 661 -663 -653
		mu 0 6 446 448 449 450 451 447
		f 6 -665 666 -669 670 -672 -662
		mu 0 6 450 452 453 454 455 451
		f 6 -674 675 -678 679 -681 -671
		mu 0 6 454 456 457 458 459 455
		f 6 -683 684 -687 688 -690 -680
		mu 0 6 458 460 461 462 463 459
		f 6 -692 693 -696 697 -699 -689
		mu 0 6 462 464 465 466 467 463
		f 6 -701 702 -705 706 -708 -698
		mu 0 6 466 468 469 470 471 467
		f 5 -711 712 714 -717 -718
		mu 0 5 472 473 474 475 476
		f 6 -720 721 -723 717 -724 -707
		mu 0 6 470 477 478 472 476 471
		f 4 726 727 728 729
		mu 0 4 479 480 166 183
		f 4 -729 730 731 732
		mu 0 4 183 166 168 185
		f 4 -732 733 734 735
		mu 0 4 185 168 170 187
		f 4 -735 736 737 738
		mu 0 4 187 170 172 189
		f 4 -738 739 740 741
		mu 0 4 189 172 174 191
		f 4 -741 742 743 744
		mu 0 4 191 174 176 193
		f 4 -744 745 746 747
		mu 0 4 193 176 178 195
		f 4 -747 748 749 750
		mu 0 4 195 178 180 197
		f 4 -750 751 752 753
		mu 0 4 197 180 182 199
		f 4 -753 755 757 758
		mu 0 4 199 182 481 482
		f 4 614 759 -728 -761
		mu 0 4 437 163 166 480
		f 4 617 761 -731 -760
		mu 0 4 163 165 168 166
		f 4 619 762 -734 -762
		mu 0 4 165 167 170 168
		f 4 621 763 -737 -763
		mu 0 4 167 169 172 170
		f 4 623 764 -740 -764
		mu 0 4 169 171 174 172
		f 4 625 765 -743 -765
		mu 0 4 171 173 176 174
		f 4 627 766 -746 -766
		mu 0 4 173 175 178 176
		f 4 629 767 -749 -767
		mu 0 4 175 177 180 178
		f 4 631 768 -752 -768
		mu 0 4 177 179 182 180
		f 4 634 769 -756 -769
		mu 0 4 179 438 481 182
		f 5 -730 771 -773 -638 -774
		mu 0 5 479 183 483 439 443
		f 6 -733 775 -777 -649 -778 -772
		mu 0 6 183 185 484 445 444 483
		f 6 -736 779 -781 -658 -782 -776
		mu 0 6 185 187 485 449 448 484
		f 6 -739 783 -785 -667 -786 -780
		mu 0 6 187 189 486 453 452 485
		f 6 -742 787 -789 -676 -790 -784
		mu 0 6 189 191 487 457 456 486
		f 6 -745 791 -793 -685 -794 -788
		mu 0 6 191 193 488 461 460 487
		f 6 -748 795 -797 -694 -798 -792
		mu 0 6 193 195 489 465 464 488
		f 6 -751 799 -801 -703 -802 -796
		mu 0 6 195 197 490 469 468 489
		f 6 -754 803 -805 -722 -806 -800
		mu 0 6 197 199 491 478 477 490
		f 5 -759 806 -713 -808 -804
		mu 0 5 199 482 474 473 491
		f 4 1 21 -4 -1
		mu 0 4 203 206 205 204
		f 4 3 23 -6 -3
		mu 0 4 204 205 208 207
		f 4 5 25 -8 -5
		mu 0 4 207 208 210 209
		f 4 7 27 -10 -7
		mu 0 4 209 210 212 211
		f 4 9 29 -12 -9
		mu 0 4 211 212 214 213
		f 4 11 31 -14 -11
		mu 0 4 213 214 216 215
		f 4 13 33 -16 -13
		mu 0 4 215 216 218 217
		f 4 15 35 -18 -15
		mu 0 4 217 218 220 219
		f 4 17 37 -20 -17
		mu 0 4 219 220 222 221
		f 4 19 39 -21 -19
		mu 0 4 221 222 224 223
		f 4 22 42 -25 -22
		mu 0 4 206 226 225 205
		f 4 24 44 -27 -24
		mu 0 4 205 225 227 208
		f 4 26 46 -29 -26
		mu 0 4 208 227 228 210
		f 4 28 48 -31 -28
		mu 0 4 210 228 229 212
		f 4 30 50 -33 -30
		mu 0 4 212 229 230 214
		f 4 32 52 -35 -32
		mu 0 4 214 230 231 216
		f 4 34 54 -37 -34
		mu 0 4 216 231 232 218
		f 4 36 56 -39 -36
		mu 0 4 218 232 233 220
		f 4 38 58 -41 -38
		mu 0 4 220 233 234 222
		f 4 40 60 -42 -40
		mu 0 4 222 234 235 224
		f 4 43 63 -46 -43
		mu 0 4 226 237 236 225
		f 4 45 65 -48 -45
		mu 0 4 225 236 238 227
		f 4 47 67 -50 -47
		mu 0 4 227 238 239 228
		f 4 49 69 -52 -49
		mu 0 4 228 239 240 229
		f 4 51 71 -54 -51
		mu 0 4 229 240 241 230
		f 4 53 73 -56 -53
		mu 0 4 230 241 242 231
		f 4 55 75 -58 -55
		mu 0 4 231 242 243 232
		f 4 57 77 -60 -57
		mu 0 4 232 243 244 233
		f 4 59 79 -62 -59
		mu 0 4 233 244 245 234
		f 4 61 81 -63 -61
		mu 0 4 234 245 246 235
		f 4 64 84 -67 -64
		mu 0 4 237 248 247 236
		f 4 66 86 -69 -66
		mu 0 4 236 247 249 238
		f 4 68 88 -71 -68
		mu 0 4 238 249 250 239
		f 4 70 90 -73 -70
		mu 0 4 239 250 251 240
		f 4 72 92 -75 -72
		mu 0 4 240 251 252 241
		f 4 74 94 -77 -74
		mu 0 4 241 252 253 242
		f 4 76 96 -79 -76
		mu 0 4 242 253 254 243
		f 4 78 98 -81 -78
		mu 0 4 243 254 255 244
		f 4 80 100 -83 -80
		mu 0 4 244 255 256 245
		f 4 82 102 -84 -82
		mu 0 4 245 256 257 246
		f 4 85 105 -88 -85
		mu 0 4 248 259 258 247
		f 4 87 107 -90 -87
		mu 0 4 247 258 260 249
		f 4 89 109 -92 -89
		mu 0 4 249 260 261 250
		f 4 91 111 -94 -91
		mu 0 4 250 261 262 251
		f 4 93 113 -96 -93
		mu 0 4 251 262 263 252
		f 4 95 115 -98 -95
		mu 0 4 252 263 264 253
		f 4 97 117 -100 -97
		mu 0 4 253 264 265 254
		f 4 99 119 -102 -99
		mu 0 4 254 265 266 255
		f 4 101 121 -104 -101
		mu 0 4 255 266 267 256
		f 4 103 123 -105 -103
		mu 0 4 256 267 268 257
		f 4 106 126 -109 -106
		mu 0 4 259 270 269 258
		f 4 108 128 -111 -108
		mu 0 4 258 269 271 260
		f 4 110 130 -113 -110
		mu 0 4 260 271 272 261
		f 4 112 132 -115 -112
		mu 0 4 261 272 273 262
		f 4 114 134 -117 -114
		mu 0 4 262 273 274 263
		f 4 116 136 -119 -116
		mu 0 4 263 274 275 264
		f 4 118 138 -121 -118
		mu 0 4 264 275 276 265
		f 4 120 140 -123 -120
		mu 0 4 265 276 277 266
		f 4 122 142 -125 -122
		mu 0 4 266 277 278 267
		f 4 124 144 -126 -124
		mu 0 4 267 278 279 268
		f 4 127 147 -130 -127
		mu 0 4 270 281 280 269
		f 4 129 149 -132 -129
		mu 0 4 269 280 282 271
		f 4 131 151 -134 -131
		mu 0 4 271 282 283 272
		f 4 133 153 -136 -133
		mu 0 4 272 283 284 273
		f 4 135 155 -138 -135
		mu 0 4 273 284 285 274
		f 4 137 157 -140 -137
		mu 0 4 274 285 286 275
		f 4 139 159 -142 -139
		mu 0 4 275 286 287 276
		f 4 141 161 -144 -141
		mu 0 4 276 287 288 277
		f 4 143 163 -146 -143
		mu 0 4 277 288 289 278
		f 4 145 165 -147 -145
		mu 0 4 278 289 290 279
		f 4 148 168 -151 -148
		mu 0 4 281 292 291 280
		f 4 150 170 -153 -150
		mu 0 4 280 291 293 282
		f 4 152 172 -155 -152
		mu 0 4 282 293 294 283
		f 4 154 174 -157 -154
		mu 0 4 283 294 295 284
		f 4 156 176 -159 -156
		mu 0 4 284 295 296 285
		f 4 158 178 -161 -158
		mu 0 4 285 296 297 286
		f 4 160 180 -163 -160
		mu 0 4 286 297 298 287
		f 4 162 182 -165 -162
		mu 0 4 287 298 299 288
		f 4 164 184 -167 -164
		mu 0 4 288 299 300 289
		f 4 166 186 -168 -166
		mu 0 4 289 300 301 290
		f 4 169 189 -172 -169
		mu 0 4 292 303 302 291
		f 4 171 191 -174 -171
		mu 0 4 291 302 304 293
		f 4 173 193 -176 -173
		mu 0 4 293 304 305 294
		f 4 175 195 -178 -175
		mu 0 4 294 305 306 295
		f 4 177 197 -180 -177
		mu 0 4 295 306 307 296
		f 4 179 199 -182 -179
		mu 0 4 296 307 308 297
		f 4 181 201 -184 -181
		mu 0 4 297 308 309 298
		f 4 183 203 -186 -183
		mu 0 4 298 309 310 299
		f 4 185 205 -188 -185
		mu 0 4 299 310 311 300
		f 4 187 207 -189 -187
		mu 0 4 300 311 312 301
		f 4 190 210 -193 -190
		mu 0 4 303 314 313 302
		f 4 192 212 -195 -192
		mu 0 4 302 313 315 304
		f 4 194 214 -197 -194
		mu 0 4 304 315 316 305
		f 4 196 216 -199 -196
		mu 0 4 305 316 317 306
		f 4 198 218 -201 -198
		mu 0 4 306 317 318 307
		f 4 200 220 -203 -200
		mu 0 4 307 318 319 308
		f 4 202 222 -205 -202
		mu 0 4 308 319 320 309
		f 4 204 224 -207 -204
		mu 0 4 309 320 321 310
		f 4 206 226 -209 -206
		mu 0 4 310 321 322 311
		f 4 208 228 -210 -208
		mu 0 4 311 322 323 312
		f 4 211 231 -214 -211
		mu 0 4 314 325 324 313
		f 4 213 233 -216 -213
		mu 0 4 313 324 326 315
		f 4 215 234 -218 -215
		mu 0 4 315 326 327 316
		f 4 217 235 -220 -217
		mu 0 4 316 327 328 317
		f 4 219 236 -222 -219
		mu 0 4 317 328 329 318
		f 4 221 237 -224 -221
		mu 0 4 318 329 330 319
		f 4 223 238 -226 -223
		mu 0 4 319 330 331 320
		f 4 225 239 -228 -225
		mu 0 4 320 331 332 321
		f 4 227 240 -230 -227
		mu 0 4 321 332 333 322
		f 4 229 241 -231 -229
		mu 0 4 322 333 334 323
		f 5 244 246 -258 277 -244
		mu 0 5 335 339 338 337 336
		f 6 257 247 -260 281 -257 276
		mu 0 6 337 338 343 342 341 340
		f 6 259 248 -262 285 -259 280
		mu 0 6 342 343 347 346 345 344
		f 6 261 249 -264 289 -261 284
		mu 0 6 346 347 351 350 349 348
		f 6 263 250 -266 293 -263 288
		mu 0 6 350 351 355 354 353 352
		f 6 265 251 -268 297 -265 292
		mu 0 6 354 355 359 358 357 356
		f 6 267 252 -270 301 -267 296
		mu 0 6 358 359 363 362 361 360
		f 6 269 253 -272 305 -269 300
		mu 0 6 362 363 367 366 365 364
		f 5 273 255 -246 -273 308
		mu 0 5 368 372 371 370 369
		f 6 271 254 -274 309 -271 304
		mu 0 6 366 367 372 368 374 373
		f 4 -316 -315 -314 -313
		mu 0 4 375 378 377 376
		f 4 -319 -318 -317 314
		mu 0 4 378 380 379 377
		f 4 -322 -321 -320 317
		mu 0 4 380 382 381 379
		f 4 -325 -324 -323 320
		mu 0 4 382 384 383 381
		f 4 -328 -327 -326 323
		mu 0 4 384 386 385 383
		f 4 -331 -330 -329 326
		mu 0 4 386 388 387 385
		f 4 -334 -333 -332 329
		mu 0 4 388 390 389 387
		f 4 -337 -336 -335 332
		mu 0 4 390 392 391 389
		f 4 -340 -339 -338 335
		mu 0 4 392 394 393 391
		f 4 -343 -342 -341 338
		mu 0 4 394 396 395 393
		f 4 232 313 -344 -232
		mu 0 4 325 376 377 324
		f 4 343 316 -345 -234
		mu 0 4 324 377 379 326
		f 4 344 319 -346 -235
		mu 0 4 326 379 381 327
		f 4 345 322 -347 -236
		mu 0 4 327 381 383 328
		f 4 346 325 -348 -237
		mu 0 4 328 383 385 329
		f 4 347 328 -349 -238
		mu 0 4 329 385 387 330
		f 4 348 331 -350 -239
		mu 0 4 330 387 389 331
		f 4 349 334 -351 -240
		mu 0 4 331 389 391 332
		f 4 350 337 -352 -241
		mu 0 4 332 391 393 333
		f 4 351 340 -243 -242
		mu 0 4 333 393 395 334
		f 5 310 243 274 -353 315
		mu 0 5 375 335 336 397 378
		f 6 352 275 256 278 -354 318
		mu 0 6 378 397 340 341 398 380
		f 6 353 279 258 282 -355 321
		mu 0 6 380 398 344 345 399 382
		f 6 354 283 260 286 -356 324
		mu 0 6 382 399 348 349 400 384
		f 6 355 287 262 290 -357 327
		mu 0 6 384 400 352 353 401 386
		f 6 356 291 264 294 -358 330
		mu 0 6 386 401 356 357 402 388
		f 6 357 295 266 298 -359 333
		mu 0 6 388 402 360 361 403 390
		f 6 358 299 268 302 -360 336
		mu 0 6 390 403 364 365 404 392
		f 6 359 303 270 306 -361 339
		mu 0 6 392 404 373 374 405 394
		f 5 360 307 272 -312 342
		mu 0 5 394 405 369 370 396
		f 4 0 362 -364 -362
		mu 0 4 0 1 407 406
		f 4 -2 361 367 -366
		mu 0 4 3 0 406 408
		f 4 2 368 -370 -363
		mu 0 4 1 4 409 407
		f 4 4 372 -374 -369
		mu 0 4 4 6 410 409
		f 4 6 376 -378 -373
		mu 0 4 6 8 411 410
		f 4 8 380 -382 -377
		mu 0 4 8 10 412 411
		f 4 10 384 -386 -381
		mu 0 4 10 12 413 412
		f 4 12 388 -390 -385
		mu 0 4 12 14 414 413
		f 4 14 392 -394 -389
		mu 0 4 14 16 415 414
		f 4 16 396 -398 -393
		mu 0 4 16 18 416 415
		f 4 18 400 -402 -397
		mu 0 4 18 20 417 416
		f 4 20 402 -404 -401
		mu 0 4 20 21 418 417
		f 4 -23 365 408 -407
		mu 0 4 23 3 408 419
		f 4 41 425 -427 -403
		mu 0 4 21 32 420 418
		f 4 -44 406 431 -430
		mu 0 4 34 23 419 421
		f 4 62 448 -450 -426
		mu 0 4 32 43 422 420
		f 4 -65 429 454 -453
		mu 0 4 45 34 421 423
		f 4 83 471 -473 -449
		mu 0 4 43 54 424 422
		f 4 -86 452 477 -476
		mu 0 4 56 45 423 425
		f 4 104 494 -496 -472
		mu 0 4 54 65 426 424
		f 4 -107 475 500 -499
		mu 0 4 67 56 425 427
		f 4 125 517 -519 -495
		mu 0 4 65 76 428 426
		f 4 -128 498 523 -522
		mu 0 4 78 67 427 429
		f 4 146 540 -542 -518
		mu 0 4 76 87 430 428
		f 4 -149 521 546 -545
		mu 0 4 89 78 429 431
		f 4 167 563 -565 -541
		mu 0 4 87 98 432 430
		f 4 -170 544 569 -568
		mu 0 4 100 89 431 433
		f 4 188 586 -588 -564
		mu 0 4 98 109 434 432
		f 4 -191 567 592 -591
		mu 0 4 111 100 433 435
		f 4 209 609 -611 -587
		mu 0 4 109 120 436 434
		f 4 -212 590 615 -614
		mu 0 4 121 111 435 437
		f 4 230 632 -634 -610
		mu 0 4 120 181 438 436
		f 4 -278 638 639 -637
		mu 0 4 134 137 440 439
		f 4 -247 642 643 -641
		mu 0 4 123 124 442 441
		f 4 -245 635 644 -643
		mu 0 4 124 184 443 442
		f 4 -277 645 646 -639
		mu 0 4 137 135 444 440
		f 4 -282 649 650 -648
		mu 0 4 136 140 446 445
		f 4 -248 640 653 -652
		mu 0 4 125 123 441 447
		f 4 -281 654 655 -650
		mu 0 4 140 138 448 446
		f 4 -286 658 659 -657
		mu 0 4 139 143 450 449
		f 4 -249 651 662 -661
		mu 0 4 126 125 447 451
		f 4 -285 663 664 -659
		mu 0 4 143 141 452 450
		f 4 -290 667 668 -666
		mu 0 4 142 146 454 453
		f 4 -250 660 671 -670
		mu 0 4 127 126 451 455
		f 4 -289 672 673 -668
		mu 0 4 146 144 456 454
		f 4 -294 676 677 -675
		mu 0 4 145 149 458 457
		f 4 -251 669 680 -679
		mu 0 4 128 127 455 459
		f 4 -293 681 682 -677
		mu 0 4 149 147 460 458
		f 4 -298 685 686 -684
		mu 0 4 148 152 462 461
		f 4 -252 678 689 -688
		mu 0 4 129 128 459 463
		f 4 -297 690 691 -686
		mu 0 4 152 150 464 462
		f 4 -302 694 695 -693
		mu 0 4 151 155 466 465
		f 4 -253 687 698 -697
		mu 0 4 130 129 463 467
		f 4 -301 699 700 -695
		mu 0 4 155 153 468 466
		f 4 -306 703 704 -702
		mu 0 4 154 158 470 469
		f 4 -254 696 707 -706
		mu 0 4 131 130 467 471
		f 4 -309 708 710 -710
		mu 0 4 160 159 473 472
		f 4 245 713 -715 -712
		mu 0 4 122 133 475 474
		f 4 -256 715 716 -714
		mu 0 4 133 132 476 475
		f 4 -305 718 719 -704
		mu 0 4 158 156 477 470
		f 4 -310 709 722 -721
		mu 0 4 157 160 472 478
		f 4 -255 705 723 -716
		mu 0 4 132 131 471 476
		f 4 312 725 -727 -725
		mu 0 4 161 164 480 479
		f 4 341 756 -758 -755
		mu 0 4 162 201 482 481
		f 4 -233 613 760 -726
		mu 0 4 164 121 437 480
		f 4 242 754 -770 -633
		mu 0 4 181 162 481 438
		f 4 -275 636 772 -771
		mu 0 4 186 134 439 483
		f 4 -311 724 773 -636
		mu 0 4 184 161 479 443
		f 4 -279 647 776 -775
		mu 0 4 188 136 445 484
		f 4 -276 770 777 -646
		mu 0 4 135 186 483 444
		f 4 -283 656 780 -779
		mu 0 4 190 139 449 485
		f 4 -280 774 781 -655
		mu 0 4 138 188 484 448
		f 4 -287 665 784 -783
		mu 0 4 192 142 453 486
		f 4 -284 778 785 -664
		mu 0 4 141 190 485 452
		f 4 -291 674 788 -787
		mu 0 4 194 145 457 487
		f 4 -288 782 789 -673
		mu 0 4 144 192 486 456
		f 4 -295 683 792 -791
		mu 0 4 196 148 461 488
		f 4 -292 786 793 -682
		mu 0 4 147 194 487 460
		f 4 -299 692 796 -795
		mu 0 4 198 151 465 489
		f 4 -296 790 797 -691
		mu 0 4 150 196 488 464
		f 4 -303 701 800 -799
		mu 0 4 200 154 469 490
		f 4 -300 794 801 -700
		mu 0 4 153 198 489 468
		f 4 -307 720 804 -803
		mu 0 4 202 157 478 491
		f 4 -304 798 805 -719
		mu 0 4 156 200 490 477
		f 4 311 711 -807 -757
		mu 0 4 201 122 474 482
		f 4 -308 802 807 -709
		mu 0 4 159 202 491 473;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "PaperB_GeoShapeDeformed" -p "PaperB_Geo";
	rename -uid "DD28F24A-42CD-F738-9FC0-B1885A92BE45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "PaperC_Geo" -p "geo";
	rename -uid "38E01E66-4C52-189A-43FC-25961B08210F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.6478378357714975e-13 0 0 ;
	setAttr ".sp" -type "double3" 6.6478378357714975e-13 0 0 ;
createNode mesh -n "PaperC_GeoShape" -p "PaperC_Geo";
	rename -uid "88545A2D-4039-4DB6-E9DE-E5B5D20FC335";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[246:255]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 14 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]" "e[211]" "e[232]" "e[244]" "e[310]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 14 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]" "e[230]" "e[242]" "e[245]" "e[311]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 34 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209]" "e[211]" "e[230]" "e[232]" "e[242]" "e[244:255]" "e[310:311]";
	setAttr ".pv" -type "double2" 0.35321648482931778 0.85039505362510681 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 492 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0014072371 0.0019920319 0.071769089
		 0.0019920319 0.071769089 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319
		 0.14213091 0.073136047 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468
		 0.0019920319 0.28285468 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047
		 0.42357838 0.0019920319 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023
		 0.073136047 0.56430215 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319
		 0.63466388 0.073136047 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089
		 0.14428 0.0014072371 0.14428 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428
		 0.35321653 0.14428 0.42357838 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388
		 0.14428 0.70502573 0.14428 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091
		 0.21542408 0.21249282 0.21542408 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838
		 0.21542408 0.49394023 0.21542408 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573
		 0.21542408 0.071769089 0.28656805 0.0014072371 0.28656805 0.14213091 0.28656805 0.21249282
		 0.28656805 0.28285468 0.28656805 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023
		 0.28656805 0.56430215 0.28656805 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089
		 0.35771212 0.0014072371 0.35771212 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468
		 0.35771212 0.35321653 0.35771212 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215
		 0.35771212 0.63466388 0.35771212 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371
		 0.42885607 0.14213091 0.42885607 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653
		 0.42885607 0.42357838 0.42885607 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388
		 0.42885607 0.70502573 0.42885607 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5
		 0.21249282 0.5 0.28285468 0.5 0.35321653 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215
		 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089 0.57114393 0.0014072371 0.57114393
		 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468 0.57114393 0.35321653 0.57114393
		 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215 0.57114393 0.63466388 0.57114393
		 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371 0.64228803 0.14213091 0.64228803
		 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653 0.64228803 0.42357838 0.64228803
		 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388 0.64228803 0.70502573 0.64228803
		 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091 0.71343195 0.21249282 0.71343195
		 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838 0.71343195 0.49394023 0.71343195
		 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573 0.71343195 0.0014072371 0.78457606
		 0.70502573 0.92686397 0.071769089 0.99800795 0.0014072371 0.99800795 0.14213091 0.99800795
		 0.21249282 0.99800795 0.28285468 0.99800795 0.35321653 0.99800795 0.42357838 0.99800795
		 0.49394023 0.99800795 0.56430215 0.99800795 0.63466388 0.99800795 0.70502573 0.99800795
		 0.036588162 0.92686397 0.095223024 0.92686391 0.11867698 0.92686391 0.071769089 0.96243596
		 0.16558488 0.92686391 0.18903884 0.92686391 0.14213091 0.96243596 0.23594676 0.92686391
		 0.25940073 0.92686391 0.21249282 0.96243596 0.30630863 0.92686391 0.32976258 0.92686391
		 0.28285468 0.96243596 0.37667048 0.92686391 0.40012443 0.92686391 0.35321653 0.96243596
		 0.4470323 0.92686391 0.47048628 0.92686391 0.42357838 0.96243596 0.51739419 0.92686391
		 0.5408482 0.92686391 0.49394023 0.96243596 0.58775604 0.92686391 0.61120999 0.92686391
		 0.56430215 0.96243596 0.66984481 0.92686397 0.63466388 0.96243596 0.0014072371 0.88063848
		 0.70502573 0.82015157 0.071769089 0.78457606 0.0014072371 0.82015157 0.14213091 0.78457606
		 0.071769089 0.82015157 0.21249282 0.78457606 0.14213091 0.82015157 0.28285468 0.78457606
		 0.21249282 0.82015157 0.35321653 0.78457606 0.28285468 0.82015157 0.42357838 0.78457606
		 0.35321653 0.82015157 0.49394023 0.78457606 0.42357838 0.82015157 0.56430215 0.78457606
		 0.49394023 0.82015157 0.63466388 0.78457606 0.56430215 0.82015157 0.70502573 0.78457606
		 0.63466388 0.82015157 0.071769089 0.87135595 0.0014072371 0.92686397 0.14213091 0.87135595
		 0.071769089 0.89129198 0.21249282 0.87135595 0.14213091 0.89129198 0.28285468 0.87135595
		 0.21249282 0.89129198 0.35321653 0.87135595 0.28285468 0.89129198 0.42357838 0.87135595
		 0.35321653 0.89129198 0.49394023 0.87135595 0.42357838 0.89129198 0.56430215 0.87135595
		 0.49394023 0.89129198 0.63466388 0.87135595 0.56430215 0.89129198 0.70502573 0.88063854
		 0.63466388 0.89129198 0.0014072371 0.0019920319 0.071769089 0.0019920319 0.071769089
		 0.073136047 0.0014072371 0.073136047 0.14213091 0.0019920319 0.14213091 0.073136047
		 0.21249282 0.0019920319 0.21249282 0.073136047 0.28285468 0.0019920319 0.28285468
		 0.073136047 0.35321653 0.0019920319 0.35321653 0.073136047 0.42357838 0.0019920319
		 0.42357838 0.073136047 0.49394023 0.0019920319 0.49394023 0.073136047 0.56430215
		 0.0019920319 0.56430215 0.073136047 0.63466388 0.0019920319 0.63466388 0.073136047
		 0.70502573 0.0019920319 0.70502573 0.073136047 0.071769089 0.14428 0.0014072371 0.14428
		 0.14213091 0.14428 0.21249282 0.14428 0.28285468 0.14428 0.35321653 0.14428 0.42357838
		 0.14428 0.49394023 0.14428 0.56430215 0.14428 0.63466388 0.14428 0.70502573 0.14428
		 0.071769089 0.21542408 0.0014072371 0.21542408 0.14213091 0.21542408 0.21249282 0.21542408
		 0.28285468 0.21542408 0.35321653 0.21542408 0.42357838 0.21542408 0.49394023 0.21542408
		 0.56430215 0.21542408 0.63466388 0.21542408 0.70502573 0.21542408 0.071769089 0.28656805
		 0.0014072371 0.28656805 0.14213091 0.28656805;
	setAttr ".uvst[0].uvsp[250:491]" 0.21249282 0.28656805 0.28285468 0.28656805
		 0.35321653 0.28656805 0.42357838 0.28656805 0.49394023 0.28656805 0.56430215 0.28656805
		 0.63466388 0.28656805 0.70502573 0.28656805 0.071769089 0.35771212 0.0014072371 0.35771212
		 0.14213091 0.35771212 0.21249282 0.35771212 0.28285468 0.35771212 0.35321653 0.35771212
		 0.42357838 0.35771212 0.49394023 0.35771212 0.56430215 0.35771212 0.63466388 0.35771212
		 0.70502573 0.35771212 0.071769089 0.42885607 0.0014072371 0.42885607 0.14213091 0.42885607
		 0.21249282 0.42885607 0.28285468 0.42885607 0.35321653 0.42885607 0.42357838 0.42885607
		 0.49394023 0.42885607 0.56430215 0.42885607 0.63466388 0.42885607 0.70502573 0.42885607
		 0.071769089 0.5 0.0014072371 0.5 0.14213091 0.5 0.21249282 0.5 0.28285468 0.5 0.35321653
		 0.5 0.42357838 0.5 0.49394023 0.5 0.56430215 0.5 0.63466388 0.5 0.70502573 0.5 0.071769089
		 0.57114393 0.0014072371 0.57114393 0.14213091 0.57114393 0.21249282 0.57114393 0.28285468
		 0.57114393 0.35321653 0.57114393 0.42357838 0.57114393 0.49394023 0.57114393 0.56430215
		 0.57114393 0.63466388 0.57114393 0.70502573 0.57114393 0.071769089 0.64228803 0.0014072371
		 0.64228803 0.14213091 0.64228803 0.21249282 0.64228803 0.28285468 0.64228803 0.35321653
		 0.64228803 0.42357838 0.64228803 0.49394023 0.64228803 0.56430215 0.64228803 0.63466388
		 0.64228803 0.70502573 0.64228803 0.071769089 0.71343195 0.0014072371 0.71343195 0.14213091
		 0.71343195 0.21249282 0.71343195 0.28285468 0.71343195 0.35321653 0.71343195 0.42357838
		 0.71343195 0.49394023 0.71343195 0.56430215 0.71343195 0.63466388 0.71343195 0.70502573
		 0.71343195 0.071769089 0.78457606 0.0014072371 0.78457606 0.14213091 0.78457606 0.21249282
		 0.78457606 0.28285468 0.78457606 0.35321653 0.78457606 0.42357838 0.78457606 0.49394023
		 0.78457606 0.56430215 0.78457606 0.63466388 0.78457606 0.70502573 0.78457606 0.0014072371
		 0.92686397 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089 0.99800795 0.0014072371
		 0.99800795 0.095223024 0.92686391 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091
		 0.99800795 0.16558488 0.92686391 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282
		 0.99800795 0.23594676 0.92686391 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468
		 0.99800795 0.30630863 0.92686391 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653
		 0.99800795 0.37667048 0.92686391 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838
		 0.99800795 0.4470323 0.92686391 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023
		 0.99800795 0.51739419 0.92686391 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215
		 0.99800795 0.63466388 0.96243596 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573
		 0.99800795 0.63466388 0.99800795 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371
		 0.88063848 0.0014072371 0.82015157 0.071769089 0.82015157 0.071769089 0.87135595
		 0.14213091 0.82015157 0.14213091 0.87135595 0.21249282 0.82015157 0.21249282 0.87135595
		 0.28285468 0.82015157 0.28285468 0.87135595 0.35321653 0.82015157 0.35321653 0.87135595
		 0.42357838 0.82015157 0.42357838 0.87135595 0.49394023 0.82015157 0.49394023 0.87135595
		 0.56430215 0.82015157 0.56430215 0.87135595 0.63466388 0.82015157 0.63466388 0.87135595
		 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091 0.89129198
		 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838 0.89129198
		 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198 0.0014072371 0.0019920319
		 0.071769089 0.0019920319 0.0014072371 0.073136047 0.14213091 0.0019920319 0.21249282
		 0.0019920319 0.28285468 0.0019920319 0.35321653 0.0019920319 0.42357838 0.0019920319
		 0.49394023 0.0019920319 0.56430215 0.0019920319 0.63466388 0.0019920319 0.70502573
		 0.0019920319 0.70502573 0.073136047 0.0014072371 0.14428 0.70502573 0.14428 0.0014072371
		 0.21542408 0.70502573 0.21542408 0.0014072371 0.28656805 0.70502573 0.28656805 0.0014072371
		 0.35771212 0.70502573 0.35771212 0.0014072371 0.42885607 0.70502573 0.42885607 0.0014072371
		 0.5 0.70502573 0.5 0.0014072371 0.57114393 0.70502573 0.57114393 0.0014072371 0.64228803
		 0.70502573 0.64228803 0.0014072371 0.71343195 0.70502573 0.71343195 0.0014072371
		 0.78457606 0.70502573 0.78457606 0.036588162 0.92686397 0.071769089 0.96243596 0.071769089
		 0.99800795 0.0014072371 0.99800795 0.0014072371 0.92686397 0.095223024 0.92686391
		 0.11867698 0.92686391 0.14213091 0.96243596 0.14213091 0.99800795 0.16558488 0.92686391
		 0.18903884 0.92686391 0.21249282 0.96243596 0.21249282 0.99800795 0.23594676 0.92686391
		 0.25940073 0.92686391 0.28285468 0.96243596 0.28285468 0.99800795 0.30630863 0.92686391
		 0.32976258 0.92686391 0.35321653 0.96243596 0.35321653 0.99800795 0.37667048 0.92686391
		 0.40012443 0.92686391 0.42357838 0.96243596 0.42357838 0.99800795 0.4470323 0.92686391
		 0.47048628 0.92686391 0.49394023 0.96243596 0.49394023 0.99800795 0.51739419 0.92686391
		 0.5408482 0.92686391 0.56430215 0.96243596 0.56430215 0.99800795 0.63466388 0.96243596
		 0.66984481 0.92686397 0.70502573 0.92686397 0.70502573 0.99800795 0.63466388 0.99800795
		 0.58775604 0.92686391 0.61120999 0.92686391 0.0014072371 0.88063848 0.0014072371
		 0.82015157 0.70502573 0.82015157 0.70502573 0.88063854 0.071769089 0.89129198 0.14213091
		 0.89129198 0.21249282 0.89129198 0.28285468 0.89129198 0.35321653 0.89129198 0.42357838
		 0.89129198 0.49394023 0.89129198 0.56430215 0.89129198 0.63466388 0.89129198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 406 ".vt";
	setAttr ".vt[0:165]"  -11.69499969 0 16.55500031 -9.35599995 0 16.55500031
		 -7.017000675 0 16.55500031 -4.6779995 0 16.55500031 -2.33899975 0 16.55500031 6.6478377e-13 0 16.55500031
		 2.3390007 0 16.55500031 4.6779995 0 16.55500031 7.017000675 0 16.55500031 9.35599995 0 16.55500031
		 11.69499969 0 16.55500031 -11.69499969 0 14.19000053 -9.35599995 0 14.19000053 -7.017000675 0 14.19000053
		 -4.6779995 0 14.19000053 -2.33899975 0 14.19000053 6.6478377e-13 0 14.19000053 2.3390007 0 14.19000053
		 4.6779995 0 14.19000053 7.017000675 0 14.19000053 9.35599995 0 14.19000053 11.69499969 0 14.19000053
		 -11.69499969 0 11.82499981 -9.35599995 0 11.82499981 -7.017000675 0 11.82499981 -4.6779995 0 11.82499981
		 -2.33899975 0 11.82499981 6.6478377e-13 0 11.82499981 2.3390007 0 11.82499981 4.6779995 0 11.82499981
		 7.017000675 0 11.82499981 9.35599995 0 11.82499981 11.69499969 0 11.82499981 -11.69499969 0 9.45999908
		 -9.35599995 0 9.45999908 -7.017000675 0 9.45999908 -4.6779995 0 9.45999908 -2.33899975 0 9.45999908
		 6.6478377e-13 0 9.45999908 2.3390007 0 9.45999908 4.6779995 0 9.45999908 7.017000675 0 9.45999908
		 9.35599995 0 9.45999908 11.69499969 0 9.45999908 -11.69499969 0 7.09499979 -9.35599995 0 7.09499979
		 -7.017000675 0 7.09499979 -4.6779995 0 7.09499979 -2.33899975 0 7.09499979 6.6478377e-13 0 7.09499979
		 2.3390007 0 7.09499979 4.6779995 0 7.09499979 7.017000675 0 7.09499979 9.35599995 0 7.09499979
		 11.69499969 0 7.09499979 -11.69499969 0 4.72999954 -9.35599995 0 4.72999954 -7.017000675 0 4.72999954
		 -4.6779995 0 4.72999954 -2.33899975 0 4.72999954 6.6478377e-13 0 4.72999954 2.3390007 0 4.72999954
		 4.6779995 0 4.72999954 7.017000675 0 4.72999954 9.35599995 0 4.72999954 11.69499969 0 4.72999954
		 -11.69499969 0 2.36499882 -9.35599995 0 2.36499882 -7.017000675 0 2.36499882 -4.6779995 0 2.36499882
		 -2.33899975 0 2.36499882 6.6478377e-13 0 2.36499882 2.3390007 0 2.36499882 4.6779995 0 2.36499882
		 7.017000675 0 2.36499882 9.35599995 0 2.36499882 11.69499969 0 2.36499882 -11.69499969 0 0
		 -9.35599995 0 0 -7.017000675 0 0 -4.6779995 0 0 -2.33899975 0 0 6.6478377e-13 0 0
		 2.3390007 0 0 4.6779995 0 0 7.017000675 0 0 9.35599995 0 0 11.69499969 0 0 -11.69499969 0 -2.36500072
		 -9.35599995 0 -2.36500072 -7.017000675 0 -2.36500072 -4.6779995 0 -2.36500072 -2.33899975 0 -2.36500072
		 6.6478377e-13 0 -2.36500072 2.3390007 0 -2.36500072 4.6779995 0 -2.36500072 7.017000675 0 -2.36500072
		 9.35599995 0 -2.36500072 11.69499969 0 -2.36500072 -11.69499969 0 -4.73000145 -9.35599995 0 -4.73000145
		 -7.017000675 0 -4.73000145 -4.6779995 0 -4.73000145 -2.33899975 0 -4.73000145 6.6478377e-13 0 -4.73000145
		 2.3390007 0 -4.73000145 4.6779995 0 -4.73000145 7.017000675 0 -4.73000145 9.35599995 0 -4.73000145
		 11.69499969 0 -4.73000145 -11.69499969 0 -7.095000744 -9.35599995 0 -7.095000744
		 -7.017000675 0 -7.095000744 -4.6779995 0 -7.095000744 -2.33899975 0 -7.095000744
		 6.6478377e-13 0 -7.095000744 2.3390007 0 -7.095000744 4.6779995 0 -7.095000744 7.017000675 0 -7.095000744
		 9.35599995 0 -7.095000744 11.69499969 0 -7.095000744 -11.69499969 0 -9.46000099 -9.35599995 0 -9.46000099
		 -7.017000675 0 -9.46000099 -4.6779995 0 -9.46000099 -2.33899975 0 -9.46000099 6.6478377e-13 0 -9.46000099
		 2.3390007 0 -9.46000099 4.6779995 0 -9.46000099 7.017000675 0 -9.46000099 9.35599995 0 -9.46000099
		 11.69499969 0 -9.46000099 -11.69499969 0 -15.20078373 11.69499969 0 -15.20078373
		 -11.69499969 0 -16.55500031 -9.35599995 0 -16.55500031 -7.017000675 0 -16.55500031
		 -4.6779995 0 -16.55500031 -2.33899975 0 -16.55500031 6.6478377e-13 0 -16.55500031
		 2.3390007 0 -16.55500031 4.6779995 0 -16.55500031 7.017000675 0 -16.55500031 9.35599995 0 -16.55500031
		 11.69499969 0 -16.55500031 -9.35599995 0 -14.51493454 -7.017000675 0 -14.51493454
		 -4.6779995 0 -14.51493454 -2.33899975 0 -14.51493454 6.6478377e-13 0 -14.51493454
		 2.3390007 0 -14.51493454 4.6779995 0 -14.51493454 7.017000675 0 -14.51493454 9.35599995 0 -14.51493454
		 -10.034309387 0 -15.20078373 -8.67769051 0 -15.20078373 -7.69531059 0 -15.20078373
		 -9.35599995 0 -15.88663292 -6.33869028 0 -15.20078373 -5.35630989 0 -15.20078373
		 -7.017000675 0 -15.88663292 -3.99968958 0 -15.20078373 -3.017309666 0 -15.20078373
		 -4.6779995 0 -15.88663292 -1.66068983 0 -15.20078373 -0.67830992 0 -15.20078373;
	setAttr ".vt[166:331]" -2.33899975 0 -15.88663292 0.67831016 0 -15.20078373
		 1.66069055 0 -15.20078373 6.6478377e-13 0 -15.88663292 3.017310381 0 -15.20078373
		 3.99968982 0 -15.20078373 2.3390007 0 -15.88663292 5.35630989 0 -15.20078373 6.33869028 0 -15.20078373
		 4.6779995 0 -15.88663292 7.69531059 0 -15.20078373 8.67769051 0 -15.20078373 7.017000675 0 -15.88663292
		 10.034309387 0 -15.20078373 9.35599995 0 -15.88663292 -11.69499969 0 -11.93847656
		 -11.69499969 0 -13.8828392 -9.35599995 0 -11.93847656 -9.35599995 0 -13.8828392 -7.017000675 0 -11.93847656
		 -7.017000675 0 -13.8828392 -4.6779995 0 -11.93847656 -4.6779995 0 -13.8828392 -2.33899975 0 -11.93847656
		 -2.33899975 0 -13.8828392 6.6478377e-13 0 -11.93847656 6.6478377e-13 0 -13.8828392
		 2.3390007 0 -11.93847656 2.3390007 0 -13.8828392 4.6779995 0 -11.93847656 4.6779995 0 -13.8828392
		 7.017000675 0 -11.93847656 7.017000675 0 -13.8828392 9.35599995 0 -11.93847656 9.35599995 0 -13.8828392
		 11.69499969 0 -13.8828392 11.69499969 0 -11.93847656 -11.69499969 0.090000004 16.55500031
		 -9.35599995 0.090000004 16.55500031 -9.35599995 0.090000004 14.19000053 -11.69499969 0.090000004 14.19000053
		 -7.017000675 0.090000004 16.55500031 -7.017000675 0.090000004 14.19000053 -4.6779995 0.090000004 16.55500031
		 -4.6779995 0.090000004 14.19000053 -2.33899975 0.090000004 16.55500031 -2.33899975 0.090000004 14.19000053
		 6.6478377e-13 0.090000004 16.55500031 6.6478377e-13 0.090000004 14.19000053 2.3390007 0.090000004 16.55500031
		 2.3390007 0.090000004 14.19000053 4.6779995 0.090000004 16.55500031 4.6779995 0.090000004 14.19000053
		 7.017000675 0.090000004 16.55500031 7.017000675 0.090000004 14.19000053 9.35599995 0.090000004 16.55500031
		 9.35599995 0.090000004 14.19000053 11.69499969 0.090000004 16.55500031 11.69499969 0.090000004 14.19000053
		 -9.35599995 0.090000004 11.82499981 -11.69499969 0.090000004 11.82499981 -7.017000675 0.090000004 11.82499981
		 -4.6779995 0.090000004 11.82499981 -2.33899975 0.090000004 11.82499981 6.6478377e-13 0.090000004 11.82499981
		 2.3390007 0.090000004 11.82499981 4.6779995 0.090000004 11.82499981 7.017000675 0.090000004 11.82499981
		 9.35599995 0.090000004 11.82499981 11.69499969 0.090000004 11.82499981 -9.35599995 0.090000004 9.45999908
		 -11.69499969 0.090000004 9.45999908 -7.017000675 0.090000004 9.45999908 -4.6779995 0.090000004 9.45999908
		 -2.33899975 0.090000004 9.45999908 6.6478377e-13 0.090000004 9.45999908 2.3390007 0.090000004 9.45999908
		 4.6779995 0.090000004 9.45999908 7.017000675 0.090000004 9.45999908 9.35599995 0.090000004 9.45999908
		 11.69499969 0.090000004 9.45999908 -9.35599995 0.090000004 7.09499979 -11.69499969 0.090000004 7.09499979
		 -7.017000675 0.090000004 7.09499979 -4.6779995 0.090000004 7.09499979 -2.33899975 0.090000004 7.09499979
		 6.6478377e-13 0.090000004 7.09499979 2.3390007 0.090000004 7.09499979 4.6779995 0.090000004 7.09499979
		 7.017000675 0.090000004 7.09499979 9.35599995 0.090000004 7.09499979 11.69499969 0.090000004 7.09499979
		 -9.35599995 0.090000004 4.72999954 -11.69499969 0.090000004 4.72999954 -7.017000675 0.090000004 4.72999954
		 -4.6779995 0.090000004 4.72999954 -2.33899975 0.090000004 4.72999954 6.6478377e-13 0.090000004 4.72999954
		 2.3390007 0.090000004 4.72999954 4.6779995 0.090000004 4.72999954 7.017000675 0.090000004 4.72999954
		 9.35599995 0.090000004 4.72999954 11.69499969 0.090000004 4.72999954 -9.35599995 0.090000004 2.36499882
		 -11.69499969 0.090000004 2.36499882 -7.017000675 0.090000004 2.36499882 -4.6779995 0.090000004 2.36499882
		 -2.33899975 0.090000004 2.36499882 6.6478377e-13 0.090000004 2.36499882 2.3390007 0.090000004 2.36499882
		 4.6779995 0.090000004 2.36499882 7.017000675 0.090000004 2.36499882 9.35599995 0.090000004 2.36499882
		 11.69499969 0.090000004 2.36499882 -9.35599995 0.090000004 0 -11.69499969 0.090000004 0
		 -7.017000675 0.090000004 0 -4.6779995 0.090000004 0 -2.33899975 0.090000004 0 6.6478377e-13 0.090000004 0
		 2.3390007 0.090000004 0 4.6779995 0.090000004 0 7.017000675 0.090000004 0 9.35599995 0.090000004 0
		 11.69499969 0.090000004 0 -9.35599995 0.090000004 -2.36500072 -11.69499969 0.090000004 -2.36500072
		 -7.017000675 0.090000004 -2.36500072 -4.6779995 0.090000004 -2.36500072 -2.33899975 0.090000004 -2.36500072
		 6.6478377e-13 0.090000004 -2.36500072 2.3390007 0.090000004 -2.36500072 4.6779995 0.090000004 -2.36500072
		 7.017000675 0.090000004 -2.36500072 9.35599995 0.090000004 -2.36500072 11.69499969 0.090000004 -2.36500072
		 -9.35599995 0.090000004 -4.73000145 -11.69499969 0.090000004 -4.73000145 -7.017000675 0.090000004 -4.73000145
		 -4.6779995 0.090000004 -4.73000145 -2.33899975 0.090000004 -4.73000145 6.6478377e-13 0.090000004 -4.73000145
		 2.3390007 0.090000004 -4.73000145 4.6779995 0.090000004 -4.73000145 7.017000675 0.090000004 -4.73000145
		 9.35599995 0.090000004 -4.73000145 11.69499969 0.090000004 -4.73000145 -9.35599995 0.090000004 -7.095000744
		 -11.69499969 0.090000004 -7.095000744 -7.017000675 0.090000004 -7.095000744 -4.6779995 0.090000004 -7.095000744
		 -2.33899975 0.090000004 -7.095000744 6.6478377e-13 0.090000004 -7.095000744 2.3390007 0.090000004 -7.095000744
		 4.6779995 0.090000004 -7.095000744 7.017000675 0.090000004 -7.095000744 9.35599995 0.090000004 -7.095000744
		 11.69499969 0.090000004 -7.095000744 -9.35599995 0.090000004 -9.46000099 -11.69499969 0.090000004 -9.46000099
		 -7.017000675 0.090000004 -9.46000099 -4.6779995 0.090000004 -9.46000099 -2.33899975 0.090000004 -9.46000099
		 6.6478377e-13 0.090000004 -9.46000099 2.3390007 0.090000004 -9.46000099 4.6779995 0.090000004 -9.46000099;
	setAttr ".vt[332:405]" 7.017000675 0.090000004 -9.46000099 9.35599995 0.090000004 -9.46000099
		 11.69499969 0.090000004 -9.46000099 -11.69499969 0.090000004 -15.20078373 -10.034309387 0.090000004 -15.20078373
		 -9.35599995 0.090000004 -15.88663292 -9.35599995 0.090000004 -16.55500031 -11.69499969 0.090000004 -16.55500031
		 -8.67769051 0.090000004 -15.20078373 -7.69531059 0.090000004 -15.20078373 -7.017000675 0.090000004 -15.88663292
		 -7.017000675 0.090000004 -16.55500031 -6.33869028 0.090000004 -15.20078373 -5.35630989 0.090000004 -15.20078373
		 -4.6779995 0.090000004 -15.88663292 -4.6779995 0.090000004 -16.55500031 -3.99968958 0.090000004 -15.20078373
		 -3.017309666 0.090000004 -15.20078373 -2.33899975 0.090000004 -15.88663292 -2.33899975 0.090000004 -16.55500031
		 -1.66068983 0.090000004 -15.20078373 -0.67830992 0.090000004 -15.20078373 6.6478377e-13 0.090000004 -15.88663292
		 6.6478377e-13 0.090000004 -16.55500031 0.67831016 0.090000004 -15.20078373 1.66069055 0.090000004 -15.20078373
		 2.3390007 0.090000004 -15.88663292 2.3390007 0.090000004 -16.55500031 3.017310381 0.090000004 -15.20078373
		 3.99968982 0.090000004 -15.20078373 4.6779995 0.090000004 -15.88663292 4.6779995 0.090000004 -16.55500031
		 5.35630989 0.090000004 -15.20078373 6.33869028 0.090000004 -15.20078373 7.017000675 0.090000004 -15.88663292
		 7.017000675 0.090000004 -16.55500031 10.034309387 0.090000004 -15.20078373 9.35599995 0.090000004 -15.88663292
		 11.69499969 0.090000004 -15.20078373 11.69499969 0.090000004 -16.55500031 9.35599995 0.090000004 -16.55500031
		 7.69531059 0.090000004 -15.20078373 8.67769051 0.090000004 -15.20078373 -11.69499969 0.090000004 -13.8828392
		 -11.69499969 0.090000004 -11.93847656 -9.35599995 0.090000004 -11.93847656 -9.35599995 0.090000004 -13.8828392
		 -7.017000675 0.090000004 -11.93847656 -7.017000675 0.090000004 -13.8828392 -4.6779995 0.090000004 -11.93847656
		 -4.6779995 0.090000004 -13.8828392 -2.33899975 0.090000004 -11.93847656 -2.33899975 0.090000004 -13.8828392
		 6.6478377e-13 0.090000004 -11.93847656 6.6478377e-13 0.090000004 -13.8828392 2.3390007 0.090000004 -11.93847656
		 2.3390007 0.090000004 -13.8828392 4.6779995 0.090000004 -11.93847656 4.6779995 0.090000004 -13.8828392
		 7.017000675 0.090000004 -11.93847656 7.017000675 0.090000004 -13.8828392 9.35599995 0.090000004 -11.93847656
		 9.35599995 0.090000004 -13.8828392 11.69499969 0.090000004 -11.93847656 11.69499969 0.090000004 -13.8828392
		 -9.35599995 0.090000004 -14.51493454 -7.017000675 0.090000004 -14.51493454 -4.6779995 0.090000004 -14.51493454
		 -2.33899975 0.090000004 -14.51493454 6.6478377e-13 0.090000004 -14.51493454 2.3390007 0.090000004 -14.51493454
		 4.6779995 0.090000004 -14.51493454 7.017000675 0.090000004 -14.51493454 9.35599995 0.090000004 -14.51493454;
	setAttr -s 808 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 1
		 110 121 0 111 112 1 111 122 1 112 113 1 112 123 1 113 114 1 113 124 1 114 115 1 114 125 1
		 115 116 1 115 126 1 116 117 1 116 127 1 117 118 1 117 128 1 118 119 1 118 129 1 119 120 1
		 119 130 1 120 131 0 121 122 1 121 181 0 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 128 1 128 129 1 129 130 1 130 131 1 131 202 0 132 154 1 132 134 0 133 144 0 134 135 0
		 135 136 0 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0 141 142 0 142 143 0 143 144 0
		 155 156 1 157 135 1 158 159 1 160 136 1 161 162 1 163 137 1 164 165 1 166 138 1 167 168 1
		 169 139 1 170 171 1 172 140 1 173 174 1 175 141 1 176 177 1 178 142 1 179 133 1 180 143 1
		 154 145 0 145 155 0 155 157 0 157 154 0 156 146 0 146 158 0 158 160 0 160 156 0 159 147 0
		 147 161 0 161 163 0 163 159 0 162 148 0 148 164 0 164 166 0 166 162 0 165 149 0 149 167 0
		 167 169 0 169 165 0 168 150 0 150 170 0 170 172 0 172 168 0 171 151 0 151 173 0 173 175 0
		 175 171 0 174 152 0 152 176 0 176 178 0 178 174 0 177 153 0 153 179 0 179 180 0 180 177 0
		 182 132 0 201 133 0 182 181 0 181 183 1 183 184 1 184 182 1 183 185 1 185 186 1 186 184 1
		 185 187 1 187 188 1 188 186 1 187 189 1 189 190 1 190 188 1 189 191 1 191 192 1 192 190 1
		 191 193 1 193 194 1 194 192 1 193 195 1;
	setAttr ".ed[332:497]" 195 196 1 196 194 1 195 197 1 197 198 1 198 196 1 197 199 1
		 199 200 1 200 198 1 199 202 1 202 201 0 201 200 1 122 183 1 123 185 1 124 187 1 125 189 1
		 126 191 1 127 193 1 128 195 1 129 197 1 130 199 1 184 145 1 186 146 1 188 147 1 190 148 1
		 192 149 1 194 150 1 196 151 1 198 152 1 200 153 1 0 203 0 1 204 1 203 204 0 204 205 1
		 11 206 1 206 205 1 203 206 0 2 207 1 204 207 0 207 208 1 205 208 1 3 209 1 207 209 0
		 209 210 1 208 210 1 4 211 1 209 211 0 211 212 1 210 212 1 5 213 1 211 213 0 213 214 1
		 212 214 1 6 215 1 213 215 0 215 216 1 214 216 1 7 217 1 215 217 0 217 218 1 216 218 1
		 8 219 1 217 219 0 219 220 1 218 220 1 9 221 1 219 221 0 221 222 1 220 222 1 10 223 0
		 221 223 0 21 224 1 223 224 0 222 224 1 205 225 1 22 226 1 226 225 1 206 226 0 208 227 1
		 225 227 1 210 228 1 227 228 1 212 229 1 228 229 1 214 230 1 229 230 1 216 231 1 230 231 1
		 218 232 1 231 232 1 220 233 1 232 233 1 222 234 1 233 234 1 32 235 1 224 235 0 234 235 1
		 225 236 1 33 237 1 237 236 1 226 237 0 227 238 1 236 238 1 228 239 1 238 239 1 229 240 1
		 239 240 1 230 241 1 240 241 1 231 242 1 241 242 1 232 243 1 242 243 1 233 244 1 243 244 1
		 234 245 1 244 245 1 43 246 1 235 246 0 245 246 1 236 247 1 44 248 1 248 247 1 237 248 0
		 238 249 1 247 249 1 239 250 1 249 250 1 240 251 1 250 251 1 241 252 1 251 252 1 242 253 1
		 252 253 1 243 254 1 253 254 1 244 255 1 254 255 1 245 256 1 255 256 1 54 257 1 246 257 0
		 256 257 1 247 258 1 55 259 1 259 258 1 248 259 0 249 260 1 258 260 1 250 261 1 260 261 1
		 251 262 1 261 262 1 252 263 1 262 263 1 253 264 1 263 264 1 254 265 1 264 265 1 255 266 1
		 265 266 1 256 267 1 266 267 1 65 268 1 257 268 0 267 268 1 258 269 1;
	setAttr ".ed[498:663]" 66 270 1 270 269 1 259 270 0 260 271 1 269 271 1 261 272 1
		 271 272 1 262 273 1 272 273 1 263 274 1 273 274 1 264 275 1 274 275 1 265 276 1 275 276 1
		 266 277 1 276 277 1 267 278 1 277 278 1 76 279 1 268 279 0 278 279 1 269 280 1 77 281 1
		 281 280 1 270 281 0 271 282 1 280 282 1 272 283 1 282 283 1 273 284 1 283 284 1 274 285 1
		 284 285 1 275 286 1 285 286 1 276 287 1 286 287 1 277 288 1 287 288 1 278 289 1 288 289 1
		 87 290 1 279 290 0 289 290 1 280 291 1 88 292 1 292 291 1 281 292 0 282 293 1 291 293 1
		 283 294 1 293 294 1 284 295 1 294 295 1 285 296 1 295 296 1 286 297 1 296 297 1 287 298 1
		 297 298 1 288 299 1 298 299 1 289 300 1 299 300 1 98 301 1 290 301 0 300 301 1 291 302 1
		 99 303 1 303 302 1 292 303 0 293 304 1 302 304 1 294 305 1 304 305 1 295 306 1 305 306 1
		 296 307 1 306 307 1 297 308 1 307 308 1 298 309 1 308 309 1 299 310 1 309 310 1 300 311 1
		 310 311 1 109 312 1 301 312 0 311 312 1 302 313 1 110 314 1 314 313 1 303 314 0 304 315 1
		 313 315 1 305 316 1 315 316 1 306 317 1 316 317 1 307 318 1 317 318 1 308 319 1 318 319 1
		 309 320 1 319 320 1 310 321 1 320 321 1 311 322 1 321 322 1 120 323 1 312 323 0 322 323 1
		 313 324 1 121 325 1 325 324 1 314 325 0 315 326 1 324 326 1 316 327 1 326 327 1 317 328 1
		 327 328 1 318 329 1 328 329 1 319 330 1 329 330 1 320 331 1 330 331 1 321 332 1 331 332 1
		 322 333 1 332 333 1 131 334 1 323 334 0 333 334 1 132 335 1 154 336 0 335 336 1 157 337 0
		 337 336 0 135 338 1 337 338 1 134 339 0 339 338 0 335 339 0 155 340 0 340 337 0 156 341 0
		 340 341 1 160 342 0 342 341 0 136 343 1 342 343 1 338 343 0 158 344 0 344 342 0 159 345 0
		 344 345 1 163 346 0 346 345 0 137 347 1 346 347 1 343 347 0 161 348 0;
	setAttr ".ed[664:807]" 348 346 0 162 349 0 348 349 1 166 350 0 350 349 0 138 351 1
		 350 351 1 347 351 0 164 352 0 352 350 0 165 353 0 352 353 1 169 354 0 354 353 0 139 355 1
		 354 355 1 351 355 0 167 356 0 356 354 0 168 357 0 356 357 1 172 358 0 358 357 0 140 359 1
		 358 359 1 355 359 0 170 360 0 360 358 0 171 361 0 360 361 1 175 362 0 362 361 0 141 363 1
		 362 363 1 359 363 0 173 364 0 364 362 0 174 365 0 364 365 1 178 366 0 366 365 0 142 367 1
		 366 367 1 363 367 0 179 368 0 180 369 0 368 369 0 133 370 1 368 370 1 144 371 0 370 371 0
		 143 372 1 372 371 0 369 372 1 176 373 0 373 366 0 177 374 0 373 374 1 369 374 0 367 372 0
		 182 375 1 181 376 1 375 376 0 376 377 1 377 378 1 378 375 1 377 379 1 379 380 1 380 378 1
		 379 381 1 381 382 1 382 380 1 381 383 1 383 384 1 384 382 1 383 385 1 385 386 1 386 384 1
		 385 387 1 387 388 1 388 386 1 387 389 1 389 390 1 390 388 1 389 391 1 391 392 1 392 390 1
		 391 393 1 393 394 1 394 392 1 202 395 1 393 395 1 201 396 1 395 396 0 396 394 1 324 377 1
		 325 376 0 326 379 1 327 381 1 328 383 1 329 385 1 330 387 1 331 389 1 332 391 1 333 393 1
		 334 395 0 145 397 0 378 397 1 336 397 0 375 335 0 146 398 0 380 398 1 341 398 0 397 340 0
		 147 399 0 382 399 1 345 399 0 398 344 0 148 400 0 384 400 1 349 400 0 399 348 0 149 401 0
		 386 401 1 353 401 0 400 352 0 150 402 0 388 402 1 357 402 0 401 356 0 151 403 0 390 403 1
		 361 403 0 402 360 0 152 404 0 392 404 1 365 404 0 403 364 0 153 405 0 394 405 1 374 405 0
		 404 373 0 396 370 0 405 368 0;
	setAttr -s 386 -ch 1616 ".fc[0:385]" -type "polyFaces" 
		f 4 363 364 -367 -368
		mu 0 4 406 407 2 408
		f 4 369 370 -372 -365
		mu 0 4 407 409 5 2
		f 4 373 374 -376 -371
		mu 0 4 409 410 7 5
		f 4 377 378 -380 -375
		mu 0 4 410 411 9 7
		f 4 381 382 -384 -379
		mu 0 4 411 412 11 9
		f 4 385 386 -388 -383
		mu 0 4 412 413 13 11
		f 4 389 390 -392 -387
		mu 0 4 413 414 15 13
		f 4 393 394 -396 -391
		mu 0 4 414 415 17 15
		f 4 397 398 -400 -395
		mu 0 4 415 416 19 17
		f 4 401 403 -405 -399
		mu 0 4 416 417 418 19
		f 4 366 405 -408 -409
		mu 0 4 408 2 22 419
		f 4 371 409 -411 -406
		mu 0 4 2 5 24 22
		f 4 375 411 -413 -410
		mu 0 4 5 7 25 24
		f 4 379 413 -415 -412
		mu 0 4 7 9 26 25
		f 4 383 415 -417 -414
		mu 0 4 9 11 27 26
		f 4 387 417 -419 -416
		mu 0 4 11 13 28 27
		f 4 391 419 -421 -418
		mu 0 4 13 15 29 28
		f 4 395 421 -423 -420
		mu 0 4 15 17 30 29
		f 4 399 423 -425 -422
		mu 0 4 17 19 31 30
		f 4 404 426 -428 -424
		mu 0 4 19 418 420 31
		f 4 407 428 -431 -432
		mu 0 4 419 22 33 421
		f 4 410 432 -434 -429
		mu 0 4 22 24 35 33
		f 4 412 434 -436 -433
		mu 0 4 24 25 36 35
		f 4 414 436 -438 -435
		mu 0 4 25 26 37 36
		f 4 416 438 -440 -437
		mu 0 4 26 27 38 37
		f 4 418 440 -442 -439
		mu 0 4 27 28 39 38
		f 4 420 442 -444 -441
		mu 0 4 28 29 40 39
		f 4 422 444 -446 -443
		mu 0 4 29 30 41 40
		f 4 424 446 -448 -445
		mu 0 4 30 31 42 41
		f 4 427 449 -451 -447
		mu 0 4 31 420 422 42
		f 4 430 451 -454 -455
		mu 0 4 421 33 44 423
		f 4 433 455 -457 -452
		mu 0 4 33 35 46 44
		f 4 435 457 -459 -456
		mu 0 4 35 36 47 46
		f 4 437 459 -461 -458
		mu 0 4 36 37 48 47
		f 4 439 461 -463 -460
		mu 0 4 37 38 49 48
		f 4 441 463 -465 -462
		mu 0 4 38 39 50 49
		f 4 443 465 -467 -464
		mu 0 4 39 40 51 50
		f 4 445 467 -469 -466
		mu 0 4 40 41 52 51
		f 4 447 469 -471 -468
		mu 0 4 41 42 53 52
		f 4 450 472 -474 -470
		mu 0 4 42 422 424 53
		f 4 453 474 -477 -478
		mu 0 4 423 44 55 425
		f 4 456 478 -480 -475
		mu 0 4 44 46 57 55
		f 4 458 480 -482 -479
		mu 0 4 46 47 58 57
		f 4 460 482 -484 -481
		mu 0 4 47 48 59 58
		f 4 462 484 -486 -483
		mu 0 4 48 49 60 59
		f 4 464 486 -488 -485
		mu 0 4 49 50 61 60
		f 4 466 488 -490 -487
		mu 0 4 50 51 62 61
		f 4 468 490 -492 -489
		mu 0 4 51 52 63 62
		f 4 470 492 -494 -491
		mu 0 4 52 53 64 63
		f 4 473 495 -497 -493
		mu 0 4 53 424 426 64
		f 4 476 497 -500 -501
		mu 0 4 425 55 66 427
		f 4 479 501 -503 -498
		mu 0 4 55 57 68 66
		f 4 481 503 -505 -502
		mu 0 4 57 58 69 68
		f 4 483 505 -507 -504
		mu 0 4 58 59 70 69
		f 4 485 507 -509 -506
		mu 0 4 59 60 71 70
		f 4 487 509 -511 -508
		mu 0 4 60 61 72 71
		f 4 489 511 -513 -510
		mu 0 4 61 62 73 72
		f 4 491 513 -515 -512
		mu 0 4 62 63 74 73
		f 4 493 515 -517 -514
		mu 0 4 63 64 75 74
		f 4 496 518 -520 -516
		mu 0 4 64 426 428 75
		f 4 499 520 -523 -524
		mu 0 4 427 66 77 429
		f 4 502 524 -526 -521
		mu 0 4 66 68 79 77
		f 4 504 526 -528 -525
		mu 0 4 68 69 80 79
		f 4 506 528 -530 -527
		mu 0 4 69 70 81 80
		f 4 508 530 -532 -529
		mu 0 4 70 71 82 81
		f 4 510 532 -534 -531
		mu 0 4 71 72 83 82
		f 4 512 534 -536 -533
		mu 0 4 72 73 84 83
		f 4 514 536 -538 -535
		mu 0 4 73 74 85 84
		f 4 516 538 -540 -537
		mu 0 4 74 75 86 85
		f 4 519 541 -543 -539
		mu 0 4 75 428 430 86
		f 4 522 543 -546 -547
		mu 0 4 429 77 88 431
		f 4 525 547 -549 -544
		mu 0 4 77 79 90 88
		f 4 527 549 -551 -548
		mu 0 4 79 80 91 90
		f 4 529 551 -553 -550
		mu 0 4 80 81 92 91
		f 4 531 553 -555 -552
		mu 0 4 81 82 93 92
		f 4 533 555 -557 -554
		mu 0 4 82 83 94 93
		f 4 535 557 -559 -556
		mu 0 4 83 84 95 94
		f 4 537 559 -561 -558
		mu 0 4 84 85 96 95
		f 4 539 561 -563 -560
		mu 0 4 85 86 97 96
		f 4 542 564 -566 -562
		mu 0 4 86 430 432 97
		f 4 545 566 -569 -570
		mu 0 4 431 88 99 433
		f 4 548 570 -572 -567
		mu 0 4 88 90 101 99
		f 4 550 572 -574 -571
		mu 0 4 90 91 102 101
		f 4 552 574 -576 -573
		mu 0 4 91 92 103 102
		f 4 554 576 -578 -575
		mu 0 4 92 93 104 103
		f 4 556 578 -580 -577
		mu 0 4 93 94 105 104
		f 4 558 580 -582 -579
		mu 0 4 94 95 106 105
		f 4 560 582 -584 -581
		mu 0 4 95 96 107 106
		f 4 562 584 -586 -583
		mu 0 4 96 97 108 107
		f 4 565 587 -589 -585
		mu 0 4 97 432 434 108
		f 4 568 589 -592 -593
		mu 0 4 433 99 110 435
		f 4 571 593 -595 -590
		mu 0 4 99 101 112 110
		f 4 573 595 -597 -594
		mu 0 4 101 102 113 112
		f 4 575 597 -599 -596
		mu 0 4 102 103 114 113
		f 4 577 599 -601 -598
		mu 0 4 103 104 115 114
		f 4 579 601 -603 -600
		mu 0 4 104 105 116 115
		f 4 581 603 -605 -602
		mu 0 4 105 106 117 116
		f 4 583 605 -607 -604
		mu 0 4 106 107 118 117
		f 4 585 607 -609 -606
		mu 0 4 107 108 119 118
		f 4 588 610 -612 -608
		mu 0 4 108 434 436 119
		f 4 591 612 -615 -616
		mu 0 4 435 110 163 437
		f 4 594 616 -618 -613
		mu 0 4 110 112 165 163
		f 4 596 618 -620 -617
		mu 0 4 112 113 167 165
		f 4 598 620 -622 -619
		mu 0 4 113 114 169 167
		f 4 600 622 -624 -621
		mu 0 4 114 115 171 169
		f 4 602 624 -626 -623
		mu 0 4 115 116 173 171
		f 4 604 626 -628 -625
		mu 0 4 116 117 175 173
		f 4 606 628 -630 -627
		mu 0 4 117 118 177 175
		f 4 608 630 -632 -629
		mu 0 4 118 119 179 177
		f 4 611 633 -635 -631
		mu 0 4 119 436 438 179
		f 5 637 -640 641 -644 -645
		mu 0 5 443 439 440 441 442
		f 6 -647 648 -651 652 -654 -642
		mu 0 6 440 444 445 446 447 441
		f 6 -656 657 -660 661 -663 -653
		mu 0 6 446 448 449 450 451 447
		f 6 -665 666 -669 670 -672 -662
		mu 0 6 450 452 453 454 455 451
		f 6 -674 675 -678 679 -681 -671
		mu 0 6 454 456 457 458 459 455
		f 6 -683 684 -687 688 -690 -680
		mu 0 6 458 460 461 462 463 459
		f 6 -692 693 -696 697 -699 -689
		mu 0 6 462 464 465 466 467 463
		f 6 -701 702 -705 706 -708 -698
		mu 0 6 466 468 469 470 471 467
		f 5 -711 712 714 -717 -718
		mu 0 5 472 473 474 475 476
		f 6 -720 721 -723 717 -724 -707
		mu 0 6 470 477 478 472 476 471
		f 4 726 727 728 729
		mu 0 4 479 480 166 183
		f 4 -729 730 731 732
		mu 0 4 183 166 168 185
		f 4 -732 733 734 735
		mu 0 4 185 168 170 187
		f 4 -735 736 737 738
		mu 0 4 187 170 172 189
		f 4 -738 739 740 741
		mu 0 4 189 172 174 191
		f 4 -741 742 743 744
		mu 0 4 191 174 176 193
		f 4 -744 745 746 747
		mu 0 4 193 176 178 195
		f 4 -747 748 749 750
		mu 0 4 195 178 180 197
		f 4 -750 751 752 753
		mu 0 4 197 180 182 199
		f 4 -753 755 757 758
		mu 0 4 199 182 481 482
		f 4 614 759 -728 -761
		mu 0 4 437 163 166 480
		f 4 617 761 -731 -760
		mu 0 4 163 165 168 166
		f 4 619 762 -734 -762
		mu 0 4 165 167 170 168
		f 4 621 763 -737 -763
		mu 0 4 167 169 172 170
		f 4 623 764 -740 -764
		mu 0 4 169 171 174 172
		f 4 625 765 -743 -765
		mu 0 4 171 173 176 174
		f 4 627 766 -746 -766
		mu 0 4 173 175 178 176
		f 4 629 767 -749 -767
		mu 0 4 175 177 180 178
		f 4 631 768 -752 -768
		mu 0 4 177 179 182 180
		f 4 634 769 -756 -769
		mu 0 4 179 438 481 182
		f 5 -730 771 -773 -638 -774
		mu 0 5 479 183 483 439 443
		f 6 -733 775 -777 -649 -778 -772
		mu 0 6 183 185 484 445 444 483
		f 6 -736 779 -781 -658 -782 -776
		mu 0 6 185 187 485 449 448 484
		f 6 -739 783 -785 -667 -786 -780
		mu 0 6 187 189 486 453 452 485
		f 6 -742 787 -789 -676 -790 -784
		mu 0 6 189 191 487 457 456 486
		f 6 -745 791 -793 -685 -794 -788
		mu 0 6 191 193 488 461 460 487
		f 6 -748 795 -797 -694 -798 -792
		mu 0 6 193 195 489 465 464 488
		f 6 -751 799 -801 -703 -802 -796
		mu 0 6 195 197 490 469 468 489
		f 6 -754 803 -805 -722 -806 -800
		mu 0 6 197 199 491 478 477 490
		f 5 -759 806 -713 -808 -804
		mu 0 5 199 482 474 473 491
		f 4 1 21 -4 -1
		mu 0 4 203 206 205 204
		f 4 3 23 -6 -3
		mu 0 4 204 205 208 207
		f 4 5 25 -8 -5
		mu 0 4 207 208 210 209
		f 4 7 27 -10 -7
		mu 0 4 209 210 212 211
		f 4 9 29 -12 -9
		mu 0 4 211 212 214 213
		f 4 11 31 -14 -11
		mu 0 4 213 214 216 215
		f 4 13 33 -16 -13
		mu 0 4 215 216 218 217
		f 4 15 35 -18 -15
		mu 0 4 217 218 220 219
		f 4 17 37 -20 -17
		mu 0 4 219 220 222 221
		f 4 19 39 -21 -19
		mu 0 4 221 222 224 223
		f 4 22 42 -25 -22
		mu 0 4 206 226 225 205
		f 4 24 44 -27 -24
		mu 0 4 205 225 227 208
		f 4 26 46 -29 -26
		mu 0 4 208 227 228 210
		f 4 28 48 -31 -28
		mu 0 4 210 228 229 212
		f 4 30 50 -33 -30
		mu 0 4 212 229 230 214
		f 4 32 52 -35 -32
		mu 0 4 214 230 231 216
		f 4 34 54 -37 -34
		mu 0 4 216 231 232 218
		f 4 36 56 -39 -36
		mu 0 4 218 232 233 220
		f 4 38 58 -41 -38
		mu 0 4 220 233 234 222
		f 4 40 60 -42 -40
		mu 0 4 222 234 235 224
		f 4 43 63 -46 -43
		mu 0 4 226 237 236 225
		f 4 45 65 -48 -45
		mu 0 4 225 236 238 227
		f 4 47 67 -50 -47
		mu 0 4 227 238 239 228
		f 4 49 69 -52 -49
		mu 0 4 228 239 240 229
		f 4 51 71 -54 -51
		mu 0 4 229 240 241 230
		f 4 53 73 -56 -53
		mu 0 4 230 241 242 231
		f 4 55 75 -58 -55
		mu 0 4 231 242 243 232
		f 4 57 77 -60 -57
		mu 0 4 232 243 244 233
		f 4 59 79 -62 -59
		mu 0 4 233 244 245 234
		f 4 61 81 -63 -61
		mu 0 4 234 245 246 235
		f 4 64 84 -67 -64
		mu 0 4 237 248 247 236
		f 4 66 86 -69 -66
		mu 0 4 236 247 249 238
		f 4 68 88 -71 -68
		mu 0 4 238 249 250 239
		f 4 70 90 -73 -70
		mu 0 4 239 250 251 240
		f 4 72 92 -75 -72
		mu 0 4 240 251 252 241
		f 4 74 94 -77 -74
		mu 0 4 241 252 253 242
		f 4 76 96 -79 -76
		mu 0 4 242 253 254 243
		f 4 78 98 -81 -78
		mu 0 4 243 254 255 244
		f 4 80 100 -83 -80
		mu 0 4 244 255 256 245
		f 4 82 102 -84 -82
		mu 0 4 245 256 257 246
		f 4 85 105 -88 -85
		mu 0 4 248 259 258 247
		f 4 87 107 -90 -87
		mu 0 4 247 258 260 249
		f 4 89 109 -92 -89
		mu 0 4 249 260 261 250
		f 4 91 111 -94 -91
		mu 0 4 250 261 262 251
		f 4 93 113 -96 -93
		mu 0 4 251 262 263 252
		f 4 95 115 -98 -95
		mu 0 4 252 263 264 253
		f 4 97 117 -100 -97
		mu 0 4 253 264 265 254
		f 4 99 119 -102 -99
		mu 0 4 254 265 266 255
		f 4 101 121 -104 -101
		mu 0 4 255 266 267 256
		f 4 103 123 -105 -103
		mu 0 4 256 267 268 257
		f 4 106 126 -109 -106
		mu 0 4 259 270 269 258
		f 4 108 128 -111 -108
		mu 0 4 258 269 271 260
		f 4 110 130 -113 -110
		mu 0 4 260 271 272 261
		f 4 112 132 -115 -112
		mu 0 4 261 272 273 262
		f 4 114 134 -117 -114
		mu 0 4 262 273 274 263
		f 4 116 136 -119 -116
		mu 0 4 263 274 275 264
		f 4 118 138 -121 -118
		mu 0 4 264 275 276 265
		f 4 120 140 -123 -120
		mu 0 4 265 276 277 266
		f 4 122 142 -125 -122
		mu 0 4 266 277 278 267
		f 4 124 144 -126 -124
		mu 0 4 267 278 279 268
		f 4 127 147 -130 -127
		mu 0 4 270 281 280 269
		f 4 129 149 -132 -129
		mu 0 4 269 280 282 271
		f 4 131 151 -134 -131
		mu 0 4 271 282 283 272
		f 4 133 153 -136 -133
		mu 0 4 272 283 284 273
		f 4 135 155 -138 -135
		mu 0 4 273 284 285 274
		f 4 137 157 -140 -137
		mu 0 4 274 285 286 275
		f 4 139 159 -142 -139
		mu 0 4 275 286 287 276
		f 4 141 161 -144 -141
		mu 0 4 276 287 288 277
		f 4 143 163 -146 -143
		mu 0 4 277 288 289 278
		f 4 145 165 -147 -145
		mu 0 4 278 289 290 279
		f 4 148 168 -151 -148
		mu 0 4 281 292 291 280
		f 4 150 170 -153 -150
		mu 0 4 280 291 293 282
		f 4 152 172 -155 -152
		mu 0 4 282 293 294 283
		f 4 154 174 -157 -154
		mu 0 4 283 294 295 284
		f 4 156 176 -159 -156
		mu 0 4 284 295 296 285
		f 4 158 178 -161 -158
		mu 0 4 285 296 297 286
		f 4 160 180 -163 -160
		mu 0 4 286 297 298 287
		f 4 162 182 -165 -162
		mu 0 4 287 298 299 288
		f 4 164 184 -167 -164
		mu 0 4 288 299 300 289
		f 4 166 186 -168 -166
		mu 0 4 289 300 301 290
		f 4 169 189 -172 -169
		mu 0 4 292 303 302 291
		f 4 171 191 -174 -171
		mu 0 4 291 302 304 293
		f 4 173 193 -176 -173
		mu 0 4 293 304 305 294
		f 4 175 195 -178 -175
		mu 0 4 294 305 306 295
		f 4 177 197 -180 -177
		mu 0 4 295 306 307 296
		f 4 179 199 -182 -179
		mu 0 4 296 307 308 297
		f 4 181 201 -184 -181
		mu 0 4 297 308 309 298
		f 4 183 203 -186 -183
		mu 0 4 298 309 310 299
		f 4 185 205 -188 -185
		mu 0 4 299 310 311 300
		f 4 187 207 -189 -187
		mu 0 4 300 311 312 301
		f 4 190 210 -193 -190
		mu 0 4 303 314 313 302
		f 4 192 212 -195 -192
		mu 0 4 302 313 315 304
		f 4 194 214 -197 -194
		mu 0 4 304 315 316 305
		f 4 196 216 -199 -196
		mu 0 4 305 316 317 306
		f 4 198 218 -201 -198
		mu 0 4 306 317 318 307
		f 4 200 220 -203 -200
		mu 0 4 307 318 319 308
		f 4 202 222 -205 -202
		mu 0 4 308 319 320 309
		f 4 204 224 -207 -204
		mu 0 4 309 320 321 310
		f 4 206 226 -209 -206
		mu 0 4 310 321 322 311
		f 4 208 228 -210 -208
		mu 0 4 311 322 323 312
		f 4 211 231 -214 -211
		mu 0 4 314 325 324 313
		f 4 213 233 -216 -213
		mu 0 4 313 324 326 315
		f 4 215 234 -218 -215
		mu 0 4 315 326 327 316
		f 4 217 235 -220 -217
		mu 0 4 316 327 328 317
		f 4 219 236 -222 -219
		mu 0 4 317 328 329 318
		f 4 221 237 -224 -221
		mu 0 4 318 329 330 319
		f 4 223 238 -226 -223
		mu 0 4 319 330 331 320
		f 4 225 239 -228 -225
		mu 0 4 320 331 332 321
		f 4 227 240 -230 -227
		mu 0 4 321 332 333 322
		f 4 229 241 -231 -229
		mu 0 4 322 333 334 323
		f 5 244 246 -258 277 -244
		mu 0 5 335 339 338 337 336
		f 6 257 247 -260 281 -257 276
		mu 0 6 337 338 343 342 341 340
		f 6 259 248 -262 285 -259 280
		mu 0 6 342 343 347 346 345 344
		f 6 261 249 -264 289 -261 284
		mu 0 6 346 347 351 350 349 348
		f 6 263 250 -266 293 -263 288
		mu 0 6 350 351 355 354 353 352
		f 6 265 251 -268 297 -265 292
		mu 0 6 354 355 359 358 357 356
		f 6 267 252 -270 301 -267 296
		mu 0 6 358 359 363 362 361 360
		f 6 269 253 -272 305 -269 300
		mu 0 6 362 363 367 366 365 364
		f 5 273 255 -246 -273 308
		mu 0 5 368 372 371 370 369
		f 6 271 254 -274 309 -271 304
		mu 0 6 366 367 372 368 374 373
		f 4 -316 -315 -314 -313
		mu 0 4 375 378 377 376
		f 4 -319 -318 -317 314
		mu 0 4 378 380 379 377
		f 4 -322 -321 -320 317
		mu 0 4 380 382 381 379
		f 4 -325 -324 -323 320
		mu 0 4 382 384 383 381
		f 4 -328 -327 -326 323
		mu 0 4 384 386 385 383
		f 4 -331 -330 -329 326
		mu 0 4 386 388 387 385
		f 4 -334 -333 -332 329
		mu 0 4 388 390 389 387
		f 4 -337 -336 -335 332
		mu 0 4 390 392 391 389
		f 4 -340 -339 -338 335
		mu 0 4 392 394 393 391
		f 4 -343 -342 -341 338
		mu 0 4 394 396 395 393
		f 4 232 313 -344 -232
		mu 0 4 325 376 377 324
		f 4 343 316 -345 -234
		mu 0 4 324 377 379 326
		f 4 344 319 -346 -235
		mu 0 4 326 379 381 327
		f 4 345 322 -347 -236
		mu 0 4 327 381 383 328
		f 4 346 325 -348 -237
		mu 0 4 328 383 385 329
		f 4 347 328 -349 -238
		mu 0 4 329 385 387 330
		f 4 348 331 -350 -239
		mu 0 4 330 387 389 331
		f 4 349 334 -351 -240
		mu 0 4 331 389 391 332
		f 4 350 337 -352 -241
		mu 0 4 332 391 393 333
		f 4 351 340 -243 -242
		mu 0 4 333 393 395 334
		f 5 310 243 274 -353 315
		mu 0 5 375 335 336 397 378
		f 6 352 275 256 278 -354 318
		mu 0 6 378 397 340 341 398 380
		f 6 353 279 258 282 -355 321
		mu 0 6 380 398 344 345 399 382
		f 6 354 283 260 286 -356 324
		mu 0 6 382 399 348 349 400 384
		f 6 355 287 262 290 -357 327
		mu 0 6 384 400 352 353 401 386
		f 6 356 291 264 294 -358 330
		mu 0 6 386 401 356 357 402 388
		f 6 357 295 266 298 -359 333
		mu 0 6 388 402 360 361 403 390
		f 6 358 299 268 302 -360 336
		mu 0 6 390 403 364 365 404 392
		f 6 359 303 270 306 -361 339
		mu 0 6 392 404 373 374 405 394
		f 5 360 307 272 -312 342
		mu 0 5 394 405 369 370 396
		f 4 0 362 -364 -362
		mu 0 4 0 1 407 406
		f 4 -2 361 367 -366
		mu 0 4 3 0 406 408
		f 4 2 368 -370 -363
		mu 0 4 1 4 409 407
		f 4 4 372 -374 -369
		mu 0 4 4 6 410 409
		f 4 6 376 -378 -373
		mu 0 4 6 8 411 410
		f 4 8 380 -382 -377
		mu 0 4 8 10 412 411
		f 4 10 384 -386 -381
		mu 0 4 10 12 413 412
		f 4 12 388 -390 -385
		mu 0 4 12 14 414 413
		f 4 14 392 -394 -389
		mu 0 4 14 16 415 414
		f 4 16 396 -398 -393
		mu 0 4 16 18 416 415
		f 4 18 400 -402 -397
		mu 0 4 18 20 417 416
		f 4 20 402 -404 -401
		mu 0 4 20 21 418 417
		f 4 -23 365 408 -407
		mu 0 4 23 3 408 419
		f 4 41 425 -427 -403
		mu 0 4 21 32 420 418
		f 4 -44 406 431 -430
		mu 0 4 34 23 419 421
		f 4 62 448 -450 -426
		mu 0 4 32 43 422 420
		f 4 -65 429 454 -453
		mu 0 4 45 34 421 423
		f 4 83 471 -473 -449
		mu 0 4 43 54 424 422
		f 4 -86 452 477 -476
		mu 0 4 56 45 423 425
		f 4 104 494 -496 -472
		mu 0 4 54 65 426 424
		f 4 -107 475 500 -499
		mu 0 4 67 56 425 427
		f 4 125 517 -519 -495
		mu 0 4 65 76 428 426
		f 4 -128 498 523 -522
		mu 0 4 78 67 427 429
		f 4 146 540 -542 -518
		mu 0 4 76 87 430 428
		f 4 -149 521 546 -545
		mu 0 4 89 78 429 431
		f 4 167 563 -565 -541
		mu 0 4 87 98 432 430
		f 4 -170 544 569 -568
		mu 0 4 100 89 431 433
		f 4 188 586 -588 -564
		mu 0 4 98 109 434 432
		f 4 -191 567 592 -591
		mu 0 4 111 100 433 435
		f 4 209 609 -611 -587
		mu 0 4 109 120 436 434
		f 4 -212 590 615 -614
		mu 0 4 121 111 435 437
		f 4 230 632 -634 -610
		mu 0 4 120 181 438 436
		f 4 -278 638 639 -637
		mu 0 4 134 137 440 439
		f 4 -247 642 643 -641
		mu 0 4 123 124 442 441
		f 4 -245 635 644 -643
		mu 0 4 124 184 443 442
		f 4 -277 645 646 -639
		mu 0 4 137 135 444 440
		f 4 -282 649 650 -648
		mu 0 4 136 140 446 445
		f 4 -248 640 653 -652
		mu 0 4 125 123 441 447
		f 4 -281 654 655 -650
		mu 0 4 140 138 448 446
		f 4 -286 658 659 -657
		mu 0 4 139 143 450 449
		f 4 -249 651 662 -661
		mu 0 4 126 125 447 451
		f 4 -285 663 664 -659
		mu 0 4 143 141 452 450
		f 4 -290 667 668 -666
		mu 0 4 142 146 454 453
		f 4 -250 660 671 -670
		mu 0 4 127 126 451 455
		f 4 -289 672 673 -668
		mu 0 4 146 144 456 454
		f 4 -294 676 677 -675
		mu 0 4 145 149 458 457
		f 4 -251 669 680 -679
		mu 0 4 128 127 455 459
		f 4 -293 681 682 -677
		mu 0 4 149 147 460 458
		f 4 -298 685 686 -684
		mu 0 4 148 152 462 461
		f 4 -252 678 689 -688
		mu 0 4 129 128 459 463
		f 4 -297 690 691 -686
		mu 0 4 152 150 464 462
		f 4 -302 694 695 -693
		mu 0 4 151 155 466 465
		f 4 -253 687 698 -697
		mu 0 4 130 129 463 467
		f 4 -301 699 700 -695
		mu 0 4 155 153 468 466
		f 4 -306 703 704 -702
		mu 0 4 154 158 470 469
		f 4 -254 696 707 -706
		mu 0 4 131 130 467 471
		f 4 -309 708 710 -710
		mu 0 4 160 159 473 472
		f 4 245 713 -715 -712
		mu 0 4 122 133 475 474
		f 4 -256 715 716 -714
		mu 0 4 133 132 476 475
		f 4 -305 718 719 -704
		mu 0 4 158 156 477 470
		f 4 -310 709 722 -721
		mu 0 4 157 160 472 478
		f 4 -255 705 723 -716
		mu 0 4 132 131 471 476
		f 4 312 725 -727 -725
		mu 0 4 161 164 480 479
		f 4 341 756 -758 -755
		mu 0 4 162 201 482 481
		f 4 -233 613 760 -726
		mu 0 4 164 121 437 480
		f 4 242 754 -770 -633
		mu 0 4 181 162 481 438
		f 4 -275 636 772 -771
		mu 0 4 186 134 439 483
		f 4 -311 724 773 -636
		mu 0 4 184 161 479 443
		f 4 -279 647 776 -775
		mu 0 4 188 136 445 484
		f 4 -276 770 777 -646
		mu 0 4 135 186 483 444
		f 4 -283 656 780 -779
		mu 0 4 190 139 449 485
		f 4 -280 774 781 -655
		mu 0 4 138 188 484 448
		f 4 -287 665 784 -783
		mu 0 4 192 142 453 486
		f 4 -284 778 785 -664
		mu 0 4 141 190 485 452
		f 4 -291 674 788 -787
		mu 0 4 194 145 457 487
		f 4 -288 782 789 -673
		mu 0 4 144 192 486 456
		f 4 -295 683 792 -791
		mu 0 4 196 148 461 488
		f 4 -292 786 793 -682
		mu 0 4 147 194 487 460
		f 4 -299 692 796 -795
		mu 0 4 198 151 465 489
		f 4 -296 790 797 -691
		mu 0 4 150 196 488 464
		f 4 -303 701 800 -799
		mu 0 4 200 154 469 490
		f 4 -300 794 801 -700
		mu 0 4 153 198 489 468
		f 4 -307 720 804 -803
		mu 0 4 202 157 478 491
		f 4 -304 798 805 -719
		mu 0 4 156 200 490 477
		f 4 311 711 -807 -757
		mu 0 4 201 122 474 482
		f 4 -308 802 807 -709
		mu 0 4 159 202 491 473;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "PaperC_GeoShapeDeformed" -p "PaperC_Geo";
	rename -uid "C6BA26C4-4625-90F6-E5C5-D2A92039F422";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B8ECEE26-4767-A7FC-88DC-C5A9069D5CF8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "17678753-42A4-CD1E-BB47-F486C07D16D4";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "65387958-4FDD-6B61-34D6-998D4B358069";
createNode displayLayerManager -n "layerManager";
	rename -uid "F82C33A5-46B5-7C36-AB23-C7A3AEF69C72";
createNode displayLayer -n "defaultLayer";
	rename -uid "CC0428E2-473D-4EDC-C840-E28F56B957F7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "14A32EB7-485D-84BD-E887-308EBB819B7F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EA62FDEA-4B2B-3794-029F-7685579E751B";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DB4CE602-499E-7F0E-9287-D08B25B3484E";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "38A97EA3-4034-9873-FFB2-BD8D50A005EA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B798E5F9-4287-0D83-9C8E-DC9CA81C3D4F";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "C1B83253-44C9-7FF8-AD5E-A386269E7F24";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "907F19DD-4AEA-BA19-035E-2E9AC232A172";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F66E1E71-418F-0C59-5761-9380796F6FF9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 430\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1002\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1002\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1002\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "52ACB0F6-4135-CFFE-34B1-26AE9B3280A0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "RootFat";
	rename -uid "A412A46D-45F9-D538-4F39-A2BF59F8FE15";
createNode multiplyDivide -n "bodyFat";
	rename -uid "03C98096-469A-194C-A03C-68A871437BF0";
createNode multiplyDivide -n "paperMain1Fat";
	rename -uid "2B7DEF71-4AB6-66F5-CB5D-CD82B24C92BA";
createNode multiplyDivide -n "paperMain1EndFat";
	rename -uid "F33A2C29-4D8E-272D-09FD-34A085E1BCFF";
createNode multiplyDivide -n "paperMain2Fat";
	rename -uid "4E381491-435B-9300-22DB-5F976DA80D76";
createNode multiplyDivide -n "paperMain2EndFat";
	rename -uid "B4543541-41FE-8853-8B94-C69B1D824DC3";
createNode multiplyDivide -n "paperMain3Fat";
	rename -uid "DCFF889E-442F-7445-F66A-B8911D00D4CD";
createNode multiplyDivide -n "paperMain3EndFat";
	rename -uid "2325F0C9-4590-FA38-C207-80B7E0140D80";
createNode multiplyDivide -n "paperMain9Fat";
	rename -uid "78860911-461F-00EA-C741-C1A46EE414A7";
createNode multiplyDivide -n "paperMain9EndFat";
	rename -uid "D0E0038E-4F52-ABF7-E487-8C9B53662916";
createNode multiplyDivide -n "paperMain6Fat";
	rename -uid "53BB0D83-49C6-B8D3-18F9-548292D7BE39";
createNode multiplyDivide -n "paperMain6EndFat";
	rename -uid "D3177F90-4B38-EA7A-8186-FFA901C5EBD4";
createNode multiplyDivide -n "paperMain8Fat";
	rename -uid "94785790-40F8-95A5-5CEE-F790B3BB43DA";
createNode multiplyDivide -n "paperMain8EndFat";
	rename -uid "6DFD118A-43A0-2B2C-FCBD-5AB8F938EC68";
createNode multiplyDivide -n "paperMain5Fat";
	rename -uid "C40E6DF3-4580-7F11-7D78-B1B6B7573CD5";
createNode multiplyDivide -n "paperMain5EndFat";
	rename -uid "3DDA008C-411A-E46F-F18A-CA8CCAB99276";
createNode multiplyDivide -n "paperMain7Fat";
	rename -uid "43ADE81A-4E5F-4104-B21E-E787FFBF5A71";
createNode multiplyDivide -n "paperMain7EndFat";
	rename -uid "A4E55435-4FFC-5908-08A3-7A903520D086";
createNode multiplyDivide -n "paperMain4Fat";
	rename -uid "2EDAA82D-412A-631C-97BA-C39EE9138EA3";
createNode multiplyDivide -n "paperMain4EndFat";
	rename -uid "2A70FA61-4B01-8E9A-4FD7-13BB8AB94347";
createNode multiplyDivide -n "bodyEndFat";
	rename -uid "211CFCDA-46F9-5D99-FEDE-2B896ECDC130";
createNode objectSet -n "ControlSet";
	rename -uid "2BB3D579-465E-F67A-5815-0AA20623FD9E";
	setAttr ".ihi" 0;
	setAttr -s 25 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "07E5545D-4DCE-A1CA-8766-F2A7722E7BF1";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "BA68864F-439D-C97E-3C69-8582D23033B8";
	setAttr ".ihi" 0;
	setAttr -s 183 ".dsm";
	setAttr -s 23 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "2A1211CE-4474-17A8-4D1C-80A401C0E9D3";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "9648E138-4224-B77E-6AFC-5780D7F0B1B8";
	setAttr ".ihi" 0;
createNode unitConversion -n "LegLockRoot_MUnitConversion";
	rename -uid "4082E71A-4B71-A2FF-78D8-7888F7C16257";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKOffsetRootMM_M";
	rename -uid "5994F56A-4118-CD34-0522-DD9A7274A345";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FKOffsetRootDM_M";
	rename -uid "A5FBEE51-46CE-F33D-75FB-96A1D63540AE";
	setAttr ".ihi" 0;
createNode blendMatrix -n "paperMain4BM_R";
	rename -uid "E288B727-4930-8316-31FB-D196D1338AD5";
createNode blendMatrix -n "paperMain7BM_R";
	rename -uid "5C37B2B7-41BA-12AC-96ED-93AF0B37FF89";
createNode blendMatrix -n "paperMain5BM_M";
	rename -uid "AACCED61-4326-B76A-CE49-8CB9F6A835A4";
createNode blendMatrix -n "paperMain8BM_M";
	rename -uid "0266D4D0-47BC-6A8B-58D1-CCADC4AB404B";
createNode blendMatrix -n "paperMain6BM_L";
	rename -uid "78DAE8E0-4DC7-24B2-DBD2-D6A3A4BF7B81";
createNode blendMatrix -n "paperMain9BM_L";
	rename -uid "0BE51D6D-4D44-F826-2F2B-B5B594150FFD";
createNode blendMatrix -n "paperMain3BM_L";
	rename -uid "711CAFED-4C3C-D322-99A4-8D85F3C73E43";
createNode blendMatrix -n "paperMain2BM_M";
	rename -uid "86BB0E18-4337-E327-5608-21BAC3330DCA";
createNode blendMatrix -n "paperMain1BM_R";
	rename -uid "B33CFD8A-4F4C-D3B0-1275-EA8B00B2D9A1";
createNode blendMatrix -n "bodyBM_M";
	rename -uid "F3DE03FF-4CEE-8348-4E0C-D4A4B642758F";
createNode blendMatrix -n "RootBM_M";
	rename -uid "C0AEE1F8-4AF3-DAB4-1EEC-2DBA42DB1855";
createNode multMatrix -n "FKRootRemoveInbtRotMM_M";
	rename -uid "3E737EB2-4E2B-E56F-E529-D1A4F540145B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LegLockConstrainedDM2_M";
	rename -uid "86BC0426-4516-E3EB-3CFF-CC9139986BCD";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKRootRemoveInbtRotMM2_M";
	rename -uid "F93DC4A9-407F-45FA-C790-708EA2599259";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FKRootRemoveInbtRotPM_M";
	rename -uid "CE3B3165-4460-6614-D939-A68060844518";
	setAttr ".ihi" 0;
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode blendMatrix -n "FKRootRemoveInbtRotBM_M";
	rename -uid "980D99AF-4952-32F0-4905-6F8DBDC946A2";
	setAttr ".ihi" 0;
createNode inverseMatrix -n "FKRootRemoveInbtRotIM_M";
	rename -uid "9B1F9B6F-4EFA-53BB-FBFA-98BF2CBD1EA9";
	setAttr ".ihi" 0;
createNode blendMatrix -n "FKRootRemoveInbtRotBM2_M";
	rename -uid "73CD6B57-41F3-A7DF-65D5-F0A72C1476C3";
	setAttr ".ihi" 0;
createNode multMatrix -n "RootXformInverterRemoveInbtRotMM_M";
	rename -uid "AED6145B-41E9-407F-221C-018DE0CC1A6E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode dagPose -n "bindPose1";
	rename -uid "9F271711-466C-0A9A-C48F-62B5A9E0003B";
	setAttr -s 13 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 13 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.694999694824221 1.7019796248281238e-22
		 1.0587911840678754e-22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.694999694824219 2.4218443784488122e-22
		 16.555000305175781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -3.1415926535897896 -1.5707963164760381
		 0 0 6.6435745793569377e-13 -9.761058588493737e-36 -6.0185310762101134e-36 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710676573223652 3.0908620960936135e-08 0.70710679664085685 -3.0908619609877377e-08 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -3.1415926535897896 -1.5707963164760381
		 0 0 6.6435745793569367e-13 1.2621774483536189e-29 16.555000305175781 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710676573223652 3.0908620960936135e-08 0.70710679664085685 -3.0908619609877377e-08 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.694999694824221 -1.7019796248281238e-22
		 -1.0587911840678754e-22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.694999694824221 -9.8211504004009659e-23
		 16.555000305175781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.694999694824219 -2.4218443784488122e-22
		 -16.555000305175781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -3.1415926535897896 -1.5707963164760372
		 0 0 6.6435745793569367e-13 -2.5243548967072378e-29 -16.555000305175781 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710676573223652 3.0908620960936135e-08 0.70710679664085685 -3.0908619609877377e-08 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.694999694824221 9.8211504004009659e-23
		 -16.555000305175781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 13 ".m";
	setAttr -s 13 ".p";
	setAttr -s 13 ".g[0:12]" yes yes yes yes no no no no no no no no no;
	setAttr ".bp" yes;
createNode ngst2SkinLayerData -n "ngSkinToolsData_skinCluster1";
	rename -uid "A7215507-45C4-E4AB-F1CD-3FB7F86C76A2";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 16 8871 {
"yF5cpQAAAAEAAAAMAAAAQmFzZSB3ZWlnaHRzARQJAQTwPwkIBAAAASwACQ0N2J7pLseNZqY/mT5wxujIoT/wIFyzayGfP1PRXsLtd5k/psVtgtQ2kT+LFxeGmkSBPyqCV2bOWWUVTF4BAPBAchErFDVJtj8LerwM4CqzP28JrldiN7A/VY/yz44BqT/fkR31yXCgP9zz+rfLvZA/MGDBll8adT9eXMvFFJTjPgBaWQD0BgTp9N8AFSXIPxlo0kUxs8U/f2ANR/Enwj8Sl+rGWzq7PzHrKeO4jbE/3+bzZbMsoj+S/mhjhF+JPyn5D2mOhmg/5R+p51X53T7WrN9YKLjPPj1gtYMzf8g+auqOtBfu1T/SAW+GID7UPzcHHfHZ99A/tsl+YJgZyT/G8m8/8Nu/P66kynbQpbA/e/+k/Akrmj+fOq2BOnOBP9rELWtvImk/KLrMLwqpVj/2g4i2W1pKP9h35Z7QzeA/REzvFHx/3z/RJHhukmPaP9Ss9hgCQNM/VnwAnDfoxz9UajExveq4P2wkSTsfuqU/cvlaJ8W9kT/yJxn3/gp/P35FHs6YJ20/nhgAfjqSXj/BnsRE7FPmPwrhngsDCOU/gA0TDViF4T9uclN4XBrZP9ow1mMRC84/DC1RnkWivT+tdmEyLWKpP+syMbYUNpU/NjP4uvX1gj/yspSnyTdxP0kExKGYsWA/iKp42oxw6j/9mjBLoPXoPwRxzVKgi+Q/pvEactvN3D8B3IYxPn3QP/38cVK2Yr0/O7xrYnFkpj9kWHzz0I2RP2SGplOgGH8/Glvo2J8Qaz+IxsvgKnNYP/6RSoX1Few/aheASaGZ6j/4QFlGZcPlP947Jc+QHN4/6nh1PIO20D+yGM8ItYG7P3gD1sZwhqI/hPjVaOPiij/8sSwN3jZ4PzoD/xkMt2Q/dSGPPl0IUj/afl1yWHHqPx7ehX7I7+g/WUPQlOqL5D+6peqG7c7cPzQuNEmmfdA/orC9CBxjvT9+50Nzk2SmPzbtcrLEjZE/9fvsmfIXfz8MwLu2DA9rP5IkCDc8cVg/BD/gmzhU5j8wbKxUjQjlPyaU0H1phuE/1J94l3wb2T+IljILuwvOP5Slok+Oor0//GDIGT5iqT97kTOi6zWVP7FyT8xR9YI/tvyHGYQ2cT/x/69DN7BgPzKoRW7ozeA/W1AUW9V/3z9Dqq7kL2TaP/EnJL9XQNM/dRrqNm7oxz8EjDqb1uq4P75HRZgnuqU/Z7maEsC9kT9GBFkGwAp/P21gJBYGJ20/bNI2gYqRXj9Hg202I+7VP4FGoE00PtQ/UFyPL/v30D8O3ALjvRnJPyBnF0UJ3L8/QEXCY9alsD8y210iDg==",
"K5o/lIIqjTlzgT/x4HMRXCJpP9Xsd/TYqFY/z192pRtaSj+SpICFGCXIP6bFPE03s8U/OWxg2Psnwj+O14nOZzq7P2y4d6G8jbE/fuXEsrQsoj/HSCKdhF+JPy66rByNhmg/G13EjEv53T7fXmpdBrjPPiVhFqIpf8g+BnpzozVJtj+sKENH4SqzP9Ni3+tkN7A/uugon5EBqT/edPCOynCgPzRC0Y3LvZA/DARw1V4adT/6ngLOEpTjYiAEDGh/l2uB0AyYuxy3gdAsDqoJhWwhnz89Hcb4gdBQKOlZMNQ2kT/GE63tmUSBPw80o2LNitAEoUj0WwJspPq/UjrsP7BRoM/eo+o/hUXH6FbR5T8KSL1LqlreP/bxup6oJtE/CMWXN0tFvT88ZZVfBaqjP9q8HC8HGIo/pQCJVjU7dz9w9RStzRprP9JsKSpsZGQ/XoUcyaJt6j/IW6HLJ+boP0KZaSEGfuQ/msyBkjXF3D9+eQha2JHQP17o66wfw70/Km9j2jGHpj90O9X/GVWRP2AJSEULB4A/rsg5773ycT82Rem8mjtpP3aBzWZLSOY/SQvyDHH55D9eFJC+0XPhPzENXPaNB9k/uB9RbZ8Mzj9OY6OLPrq9P/yof81hcak/6m6tMTZGlT8zKK1ZbtWDP8I0V9t10XU/gTsJs04Ebj8Ec/9wQsfgP8oz8qoVbt8/1XROPkFU2j/fri6SlDjTPykfiTqh6Mc/PgvSpQHzuD8QH55E0sOlP0AJ6rBH1ZE/wswVMZ0fgD/YKixzLXxxP1V+jUROJ2g/qOvo4Hvn1T+BjMAGITnUP3iIVehd8tA/va4YGC8RyT+GKgBhDtO/P8IgKlnTo7A/Oh19Cuosmj/J8RBg7IKBP5IpPTyJ8Gk/uKQvzE+0Wj8OhfDmjRVUP2xPqs8cGMg/mqHBmnGpxT9lEupgFxrCP2LbJrVKELs/ynoIpftjsT/U/jU9zQWiP4Z+1oyxNok/mSgNwbmDaD8n4/zwlqLePuthDDsSL9I+5440zZHA1T5j+MUfY3C1P9skptMpkLI/Iv+K8moTrz90GLmG2YSnP04wcOWBT54/yDURGUf4jj+NGpFJNDZzP/rnbXcbEuM+AAAAAAAAAAAAAAAALu8G2Am1EN/FHpw/aMhU5fPJlj8nx7US6t6TP+7TlJaG6o4/vo+xFVYXgz9JzuOqRa5xP1VZf31v3PJiFAMRAbjAeGa91JN6P25AA40yY3M//FyB8XjacT+LEBUmEIJsPz4ijRKWI18/qxue61qn4oJQABEBeFRPlUEy5FQ/0oNHkRR3SD+GUrdD5mPxPtNiL8qXid+iSAA+AQBYx8FcwdeNMj+VBFWnQzDxPg==",
"rJZS5m2VsuJQABEBOA/JwjCdmec+5tw3a04rte5QAAVQEQEYY43OeQ0Ip/5QABVQ/gEA/gEA3gEA9MMIAgAAAEQUXLlq34Q/7G5+TqoSiD8WjMIPqUiSPw5UJXzcQpk/8VqlaW19nT+qOHmDo1ueP/JibYwZap4/xXpgMd69nT/WECV3uhmaP+0KYL+q+5Q/KWNWDhWpkz+QffOXXMCSP3Gu45mvOpc/FJ/2Z4N9oT/cat5XSdaoPyZAfzqrCa8/tPT8urIasT9CGNcWPCGxP9fExPFqQa8/TLFvR4GEqT+U5b74w3+jPyaR1GVx56A/AMC2Aqtjoj/q3vTmbBeoP+NXzWs1grI/osUepKYTuz82RgKai5DBP24bhz0VBsQ/Qxw9KB4NxD+YnRsoAa3BP+6nawlRvbs/DmrS5JNgtD/rFKPHHLewPwiGHvDTYq0/AH3jps9ttD+VvPs4yXrAP2LAHV0L88g/Yw66702V0D+cUWk46SfTP3hUcy1PLtM/sVZEchuu0D9zuG74cIDJP17noGQtAsI/4h29iuoHvD9c/erPdemyP/4vPjGbIbw/gGp0bGE9yD9Kqa6wTRXTP6rbwUy64tk/CLvAIZ8n3j+3GZYhLzHeP18pcnPsBto/M+AtOQJ50z8Ot4Tg+17KPxDLo+WuccM/7W5ZZrCzsz/ec88yU+y/P2Dm3BnaIM4/8DhYWEnX2D+I10iDjzLhP91Tujw7N+Q/vdadJgY95D8MLTxaUkjhP5zPUEoMTNk/B2mhL7tO0D8XH6dQ+4zGPxLALQl+8bA/y2wnkBzZvj9uMcGVn2zQPxm89wOehtw/Axo7gJxB5D/Sge+aEyHoP+bNxvblJeg/z9ZmislV5D/QBmlMb/PcP/pkTlPNoNE/s4wt8zmDxj+Mg5BtHb2sP47RUTK0gLw/mCzJ3iSg0D9zd03xQdzdP41DUcWKheU/gH3hoLLt6T/u7hIqVPLpP6cxbwt+luU/FqrgrpA73j+5MWLNt8HRPwSHW6JJmcU/AI9RRyrysD8KASSD59G+PwKYwe8QbdA/sir+egGH3D/Kfro2rUHkP1cs/A0TIeg/Yp20xdMl6D91RzEvj1XkP/Z31At58tw/D81r9Iuf0T/Krm5BX4HGP4zg9Y5MtLM/0oGsAfXtvz8a6geChSLOP+nk+arO19g/OkYKqKIy4T+LQ8wGOzfkPwIownPzPOQ/9c3IBw5I4T9XO1bl00rZP7CT9YsoTdA/ClVoHsKKxj+zynZdremyP2K44+EPIrw/LsXxw889yD9Adc4PbRXTPwaMfTrD4tk/O2F35Z4n3j+QtM+7JTHeP01/3kvLBto/ocXDabV40z86Wa+TJV7KPw==",
"ZoSz7wBxwz+ErnUe72KtP3nSeeTnbbQ/1PFsmt56wD8bVPzoFvPIP/XUtlxPldA/TfVSvOgn0z9UA+vRTC7TP4YuNIsUrtA/aAKUcFKAyT8OxapaAQLCP4gbm2iXB7w/dTAsaq9joj9lvAzucxeoPxSnx1g7grI/sH7v+KgTuz/dnNwgi5DBP6yVFfYTBsQ//ESfORwNxD8o82je/azBP0w3WXdFvbs//fPI34NgtD9KoNN+C7ewP79LMFVdwJI/Y0dfvLA6lz/JlzxkhH2hP60OCxpJ1qg/CBRU4KkJrz+5HF/DsRqxP7z+Ue86IbE/1ou872dBrz/KigAJfYSpP8j7xoi+f6M/kKsK4WrnoD8AVV5Uat+EP8Wb/N2pEog/OJ+0uahIkj/GFmmL20KZP8RSfgVsfZ0/3l6366Fbnj8Sc1bJF2qeP/yzkCPcvZ0/qjwFCLgZmj/kxUD9p/uUP4yrYHMRqZM/AwAAAOD14+WUErA/LHxc3o+Pvj+awtZxRhXRPybZMlieHt4/zkjXpcGP5T/aDf6aitLpP/zgJxwn2Ok/f3SPRCKk5T8wTDH89ozeP0gg37gAgNI/xFnz0KFTyD+QdmBsaTGxP/Y6F0Y6P78/eyfMdWCD0D+A2RNL2YHcP8dx6FklNuQ/Si9Y3ZYP6D+wVxgVlBXoPz+DY2PdS+Q/634GATXw3D+2MMjBG8XRP7N0J78SNcc/7OftbdC7sz8Eu8JVTQHAP6mI7XO1Is4/mLCBvbTI2D+zwwmGIybhPzCzE3mULOQ/9OmC3YIy5D88SP3QFjzhP6xnISeHPNk/khZUwrJP0D/uxTjDqafGP+GdMCFK7LI/aBu8yLwlvD9eUnjJAT7IPwj1aoRsENM/KCNOckLa2T/gnzEImiDeP8C594ZVKt4/Z2GRueL+2T86Bk9cVnTTP2sT2IWjX8o/a2EltvF2wz8UHbzixWCtP2PXLIygbLQ/BXQtrF92wD+TnfBm7OjIP1X7MMM1kNA/qYh1zZ4k0z9ifZ8lcivTP5VO+ydlqtA/bRc1X7B5yT8cMW7c6/3BP6wFundPA7w/+TTSarJQoj+Ri/1l3vOnPwqJ4R45V7I/tlwtWnnQuj8ZRY59zHbBP6kXJEEd+MM/ABMhPvsBxD8AJl8CxpzBP492kGUIkrs/Gi1Ve4o0tD8YY5aM0pOwPwO5n1WsvJE/+2qf5DLklT82rCBb4yKgP3wLJgb04KY/MEPqGI1UrT8g/lsQKYCwP7zqM2Jtk7A/Y8Xgbr3lrT8sDkwHz/inP0Svwmqk/KE/PlOfIXUJnz/KnTxq02l3PwMRf3JNhns/cHcWudg8hD/firxNEPyLP7EVIIdjzpE/H0Z/NA==",
"HmCTP3PlWfDltJM/mrElSZb4kj/HjhRTrmyPP6Emowaq/YY/0ooABoPxhD+1Fo7xA6LyPvsA79CYglQ/OhwK/iEKYT+Cd4MzYv5mP2tJ4Bs8p20/4GFefBEkbj8kM0cYmjtvP2L0NPAM3XA/wA2WPwHLbD9lgVvvg4RjPwqjv43D9GI/AAAAAAAAAAAAAAAAAAAAAHs6dguiNM8+AAAAAAAAAAAy5C+UC37cPgAAAAAAAAAAAAAAAAAAAADAlejX1hnhPkf0zhB2/t0+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP58Cf58Cd58Cf4BAP4BAP4BAG4BAAAEqt0AuMWhOafaVmU/dgosSPZOgT941PRA/GKRP4Srd52/PJo/mEJOrofioD9r2UxKhjylgtAU2JD1Sr+yf+M+MPsolgMIdT8A2xlPvbaQP5aPz9t6eqA/c5E+qS08qT8Rvx2ec4mwP+Yy5PHfy7MVWPTHAx7D5/97PLQ+X8Vsy+lvzj7DGCqnEqfdPpi6pxLEXGg/nAnFizU5iT95Twz7BxSiP3PnP4Xld7E/UNWriA8Nuz/3LlfBZd7BP3Hll1rJwcQ//LGrvsLrzz482dvwxBU/P/RCKvxXGlU/TpSmAX7HaD/vT372/U2BP3Sdh+Jw9Zk/moqAfbmBsD+lpAtW24S/P0v4W/y8p8g/3H6xz1dY0D93gX896Z/SP+ipNW5FiTg/2wKJvtSiVD9uXHU+hpBrP+p5W8qdn34/agmIYmOUkT8ZRimBAIalPwcEON4fp7g/fRhhniCSxz/Ugzd5Mc3SPzq74Cf0LNk/KbMz6ip+3D/BRGon/tHiPrpHNL2YaFU/kLSB0WhscD9J/xmtaL2CP5hQm5y5ApU/4jY6RnofqT/IUjGPaEq9PyiH2dNEms0/5TPHiRGH2D/Hee6Yzb7gP4GWRp/yDuM/Ayg2bfMmyj6ddX05ZpxMP1G0s6Lj+Gk/A16O3P/Ifj9ZfRzG1GKRP68uqu76JqY/hP1bxAoKvT/MZwYfpkTQP5b/mhzuQdw/khkFbVLI4z/uI204q73mPwAAAAAAAAAAElB28JPw6j7LXeob525jP/C3LYKp+3c/SOZfJAqiij99CCA+3lGiPyr1+d6lMLs/S+TQFaGB0D+gjNtuf57dPxD53aSNCuU/t/0dP/xK6D/T1r9AyyvKPpbfPNkalUw/Uh86fX/5aT8kLtouNsl+P3Px7+e9YpE/iqz946Ampj8pxCndLAm9P3z0L5TaQ9A/xi88nOo/3D89GY6xxsbjP4ZHR2pvvOY/IWDWuTLS4j6IXCkcu2lVP2GVl3oebQ==",
"cD9rneMXqr2CP130L9+yApU/GqsJ2jsfqT9cIgtTv0m9P4Y8ajDjmM0/9ObtYQOF2D8hlnIjAL3gP6FuKkVpDeM/0C1VKWyJOD/v8aJDE6NUP/BsDmzXkGs/kH5oJbWffj9Yi+XdXpSRP8T7TBXrhaU/c4aOeuimuD+itGBJs5HHP5+SCymXzNI/fptxsegr2T/A8NbHNH3cP0+EzVrL688+gvTzqe4VPz9w8aSdcxpVPx7CPzGFx2g/LzC6hftNgT9nX4ZlZvWZP7Xe9yusgbA/DNz61qiEvz+GDxcseKfIP6qR1UocWNA/xXHbsKuf0j8AAAAAAAAAABCpp4uAPLQ+yqLJgv5vzj6CI24SFqfdPnq0rPLAXGg/BoGxYjA5iT9XyYcjAhSiP8JqC2jbd7E/AB7JSfUMuz9SdhcRT97BP6GbypuuwcQ/AAAAAAAAAABegwTQESKsmbB/4z5So600AQh1Pz1gr/e6tpA/rHflNnd6oD/REgLUJDypPwBW4fxribA/TiIKuNWdIH4BAPRIAo6ZEPLYVmU/AFJ01PROgT/VdwpV+mKRP2tjv4C7PJo/zwPeOITioD+jneLsgDylPwUAAADODO7LtOdSP07slwG5q1o/bhiLwjW1aD98HucJrsJ2P3xMqdr+0Yk/4Zs501l4oz9hr6LPkPq8PyfcQpbt9NA/kpoojbTQ3T9kdgMF3+7kP9IcfhKi5ec/6zk0OScLWj/YYN5uir5iPzv0aiOGwnA/D6/4/YZ9fz/GodjMdCaRP+m36AsHS6Y/3+UBBjVvvT+kj1+3T1vQP4J8acZ8N9w/2M3t72Gw4z/jEoygjJHmP/k2yxT/uGA/oe5rqt31Zz/y90jbI5t0P+F7qEnhg4M/8LUv9boPlT9Yb3yY5S6pP8Fbu1IHY70/ZMGC0M+bzT/U4/tBF3LYP+7ndMjPqOA/Js48LLXw4j8Q0+utMrdbP01fZ3H6jWM/wAXX3vyYcD/geDKlg8d/P9T6NBIwq5E/9o2kUImPpT+/YbcOCK+4P7KYxVi5kcc/bPZOwVDE0j9gd2JbJRrZPw6CosolZdw/FYOZ7NVNRz87YbVcvthNP6tqaAlrCVk/q+lK1v+RaT+z84t0Sl2BP0IM2+Dd9Zk/CVSi5BB+sD+n3hh+qXa/P07njhXOmcg/wQopwJNP0D/x4ppUepXSP29w4eNV58k+SZr20E1txT7vs8LKmanRPnp4jVx8W94+AmVt1IRVaD/WTt++EQiJP0aMpOkF46E/bx2k5yg9sT/eC/XCvMG6P+hgQmSzwsE/UE39AxqqxD8AAAAAAGppAti2EZI/4uXiPs6KgH2CBnM/nYtVZEqKjj+c1eWsT7WdPw==",
"16z0tW4Qpz+IjiH9kg+vP0LQu1HBr7LV5H4BALgopudGs7DyPp6ccZz3vHA/rHsZAD9dgT//JYadPvqLPxI/P8FeyZM/ocMwzJBimaJYABEBmMC/sV0ZfOI+d8tpioPwWD/+kbVlNWBmP1eplLF2NnE/BkwAw7kQeMJYAD4BAFhrhQdJ9tNxPhnS8fnEcOI+yA/RVhRB4f74EyL4EzhslCGdo5eEPiea6xWPgL7+WAAVWBEBGJZubhmeHX/+WABCWAD+AQD+AQDeAQAABv65AP65AN65AP4BAP4BAIoBABD3akkYm/5sAl1sME5jeWihl4Q+03REy4vuHANtHFBepPEM9dNxPjvSRsqUbeI+Sipk1xLKzAOYKTZsx/574j6mRorw+O5YPxhYM1KlXWY/8LPFHB40cT8xogAMtQ54onwEuDT3872XsPI+MsQRHZe8cD+RSyZZaFyBPxb5Z7nM94s/rW+VmU/Hkz9SqW3o32CZglgA9EgCC/qd2cfl4j7SB7GWWwZzP7M2rOLYiY4/FN0VaWa0nT8/LTmDJQ+nPzyx+6BtDa8/vEdKK+Ousj+mLvG3VOfJPlfeZOBMbcU+tcB1Epmp0T6SqOlYe1vePpgBCniJVWg/8nV4OAQIiT+WW2ZX6+KhP0bTTcrePLE/wlyVfKvAuj/GVCIupcHBP70c2EMzqcQ/nQ2QhNRNRz9QJgmtvdhNP2vMGBxtCVk/tDBE8/6RaT8gpCzDSV2BP6rYjMXb9Zk/Jd7KyA1+sD89E5TrmXa/P4gqxGCymcg/m66gd3dP0D+syF/ZYpXSPza5TGYxt1s/plRasPmNYz/ElApx/JhwP5YtVOSCx38/rhqtzi+rkT+5CKUbiY+lP3jPMKYHr7g/znssXLiRxz+2z1nmTsTSP+VdT28hGtk/THc4cSJl3D+6WnkV/rhgP7IrjGXc9Wc/CjCr4yKbdD8OthGB4IODP5WSYk26D5U/Gq/XKOUuqT9A86U3B2O9PxHT3/jPm80/sxs4Yhdy2D/NMUnYz6jgP9SRBk618OI/v5b4rCULWj87bpJvib5iPwAyMFiFwnA/5X3skYV9fz89yoEpdCaRP1YqYXkGS6Y/GM+VtTRvvT+0WFSwT1vQPz5ST+V8N9w/Ecv9EGKw4z+2yi/RjJHmP8hpfM+z51I/akpO2LerWj86nfjJNLVoP5Z8hC+twnY/1taTE/7RiT/txr5zWXijPzZVJJeQ+rw/ptf9je300D+8AyubtNDdP5BloBff7uQ/GE0oM6Ll5z8H/nQE/nQEinQE/gEA/gEA/gEA/gEA3gEAGL7cbmcHfNxCGAhYH/M6jc5z4T7KEUyY2yThPt4gFazuGtcVKPQhAw==",
"x6NE69OX8j5073TSkwzqPh7TYhHR8lk/cC93FapQZT/m4nButENtPzCjGgoBIG4/zn05HeB7bz84eY3I/XFxP9cH1tdEF3A/S1H8wpYKaT+EGZ36d+tmP9Hqv0/DunY/WH7fliBFeT/IJW521YuCPwjODWRIFYs/zxoXdXqvkT+KoLdidl6TP/lsxttJyZM/4PTailFPkz89EfDL6aGQPzFAb1nT2Ik/9Ni4++Xyhj8u6ixRU52RP2/7UhBnjJU/RWxN5Bqznz/ayx/N2bmmP0zuVBfjSa0/JPWHk9B/sD8DbZxB25awP55tCQHMAq4/NAugfgtIqD96e47Bv3miP0+tRlixwZ8/JaRGnSJKoj/Q1uUbOuWnP0H35rK1SbI/1z3BAE/Juj9RvOUWyHXBP4Dm2QgI+MM/8qUyOZ0CxD8aE+crZZ/BP6pTHopZoLs/vqU0zc1LtD/eFatKaKawP9xCzWC9Xq0/1BX6yZlqtD+XyMk7knTAP6Sm9nLz58g/WcpHMBCQ0D8go/43myTTP6td8RyJK9M/IwLmOcGq0D+gfpNWnHvJP/jKdQEUAcI/vpKdpOQIvD8wWqzKCeyyP+4Dj9dNJbw/xPpkpaM9yD9o9bCNUhDTP6HCmW862tk/bP4do5kg3j/uhDkPWyreP95Xvcv2/tk/1afaDop00z/42lPeTmDKP3TBflidd8M/2I5uCcO7sz9rTceAQwHAP+989OWlIs4/mKgMmrDI2D8sAbsZIybhP2LGktCULOQ/iArxvoMy5D82osTjGDzhP/fHsYOQPNk/pv2VDMJP0D9SzUOpzKfGPxhbashmMbE/ZiWu+DY/vz8zn/tPX4PQP2KbqL7Ygdw/TUCeYyU25D9LI3sPlw/oP1LqBl+UFeg/iu3e1d1L5D+ipkaKNvDcP7ZMrhcexdE/LNoWwBg1xz9NLH4elBKwP6WHyRyPj74/OLQjOEYV0T9GCok/nh7ePzZUMbLBj+U/PPJfs4rS6T9oFn47J9jpP2jwDmsipOU/2gY7WveM3j9u5IUwAYDSP0R5whyjU8g/CAAAAAAAAAAAAP6SBP6SBKaSBBDYdObYDP7EIErEIDDqku6em5nnPuJ5HdJM/nQhKnQhUJuwmaDRjTI/K6RrIEIw8T4Gz0BBbO4kIhokInR2qLcJEORUP/zcgxNlekg/AL4wjfdk8T6rDhMamorm1CKw7mSXK/KSej/n0UKHFWpzP70466VY3HE/I/UiWsKDbD/azHuLiyRfPwYTT7tiqoQj0O7h/O0oH5w/aVGLjNjIlj8Mtk8669+TP+aMM+jz644/LyiA6soXgz9YLIu+c65xP4UK8LZ2ijQk8D66PcuNIXG1P65Mxg==",
"qE6Lsj/a5OOMuBOvP2biJDiAhac/JWYz4fJPnj+gBaYNePiOP9IgBMFCNnM/wxtRQiQS49UkPgEA9NMBsKAPDUEYyD8AHmitIarFP90+ZxLDGsI/E68rHtcQuz+WisJ/GWSxP4gZZ+jVBaI/Pps3H682iT+wUufukINoP3OFhqeVot4+H5qpexEv0j4pdYL1kMDVPvh+gGR/59U/PnfLBiw51D+g3yNab/LQP0bKK0o9Eck/Pno39xTTvz+DruNy1KOwP1zy0DXqLJo/+9ncIuuCgT+QU4VEhvBpP7wJwS1ItFo/kOhkOIsVVD/eUpsIQ8fgP6qECYgXbt8/EdJCR0RU2j9Holv2lTjTP+7WoRKi6Mc/4HNC9wHzuD8TXRRA0sOlP0xckFpH1ZE/Fw6Rm5wfgD8F9zaCLHxxP6biLhxNJ2g/YUXt7EtI5j8CE7mUcfnkP45lKULSc+E/uGH2iI4H2T8afQTanwzOPysnGpU+ur0/ch0/cGFxqT+0dAmDNUaVP9e/8nNt1YM/sviexHTRdT/WSpgbTQRuP8ZqAgajbeo/vCPiACjm6D/a+zRTBn7kP3SLatI1xdw/TZ7haNiR0D8GCViNH8O9P44OPG8xh6Y/0v0FbxlVkT+T3BmPCgeAP2FP2w+98nE/tCH/aJk7aT8TWaLgUjrsP1SilOreo+o/qLKyAlfR5T+H8HVzDgQp2Bw1o6eoJtE/qwvtKktFvT/ObeMpBaqjP5qZUosGGIo/tvC+gjQ7dz8fVkyXzBprP8wwWTprZGQOwAwOYyleAQAEmpkBAQS5PwEkAHgO5C4sY2xvc2VzdFBvaW50HswuDiAaASEIBQAAEoQkDogkDmAfAQQBHAEBARwBJA70D0wIAAAABwAAAAcAAAAIAAAABgAAAA=="};
	setAttr ".imo" -type "string" "{\"_InfluenceMappingConfig__mirror_axis\": 0, \"dg_destination_attribute\": \"oppositeInfluence\", \"globs\": [[\"L_*\", \"R_*\"], [\"l_*\", \"r_*\"], [\"lf_*\", \"rt_*\"], [\"*_lf\", \"*_rt\"], [\"*_L\", \"*_R\"]]}";
createNode skinCluster -n "skinCluster6";
	rename -uid "93558F72-42EE-8C11-61FD-019DA9C15508";
	setAttr -s 406 ".wl";
	setAttr ".wl[0:79].w"
		5 0 0.043751172999999997 1 0.88211966099999994 2 0.010191758 
		3 0.062783533000000002 5 0.001153875
		5 0 0.034735940999999999 1 0.83250377100000006 2 0.011754351 
		3 0.119378082 5 0.0016278550000000001
		5 0 0.030400927000000001 1 0.68180414300000014 2 0.017855302 
		3 0.26692353299999999 5 0.0030160949999999999
		5 0 0.024871554000000001 1 0.47428376799999994 2 0.024669118 
		3 0.470618806 5 0.0055567539999999997
		5 0 0.016810722 1 0.26798453799999999 2 0.02879878 3 0.67379839499999994 
		5 0.012607564999999999
		6 0 0.0084316319999999997 1 0.114338589 2 0.029646447999999999 
		3 0.80695086099999991 4 0.0026048909999999998 5 0.038027578999999999
		6 0 0.0026062989999999999 1 0.038406532 2 0.029701613000000002 
		3 0.80763583900000002 4 0.0084513890000000001 5 0.113198328
		5 1 0.012741142 2 0.029044601 3 0.67628587299999998 4 
		0.016979161 5 0.26494922300000001
		5 1 0.0056716989999999997 2 0.025488770000000001 3 0.47735381000000005 
		4 0.025622361999999999 5 0.46586335899999998
		5 1 0.0033086790000000001 2 0.020491282999999999 3 0.28906267200000002 
		4 0.032978286000000002 5 0.65415907999999989
		5 1 0.0024892909999999998 2 0.019199685000000001 3 0.19005224800000001 
		4 0.041477390000000003 5 0.74678138599999999
		5 0 0.087054555000000006 1 0.82588373200000009 2 0.018311925999999999 
		3 0.067160213999999996 5 0.0015895729999999999
		5 0 0.074872972999999995 1 0.77809557200000012 2 0.022684805999999998 
		3 0.122058527 5 0.0022881220000000001
		5 0 0.063345095000000004 1 0.64038382500000002 2 0.034160715000000001 
		3 0.25801860300000001 5 0.0040917619999999997
		5 0 0.048840010000000003 1 0.44953670200000001 2 0.048509876 
		3 0.44542534099999997 5 0.0076880710000000003
		6 0 0.032110510000000002 1 0.258901679 2 0.060620642000000002 
		3 0.63160961100000002 4 9.2969999999999992e-06 5 0.016748261
		6 0 0.016349012999999999 1 0.116258601 2 0.066813630999999998 
		3 0.75190299599999999 4 0.0051345949999999996 5 0.043541164
		6 0 0.0051521040000000002 1 0.044000203000000002 2 0.066913370999999999 
		3 0.75263409100000001 4 0.016322094999999998 5 0.11497813599999999
		6 0 9.3349999999999996e-06 1 0.016926198999999999 2 0.061045971999999997 
		3 0.63426084199999999 4 0.032184446999999998 5 0.25557320500000003
		5 1 0.0078259349999999991 2 0.049839056999999999 3 0.45216107700000002 
		4 0.049287248999999998 5 0.44088668199999997
		5 1 0.0043818870000000001 2 0.038084147999999998 3 0.277655543 
		4 0.064597345 5 0.61528107700000001
		5 1 0.0030801790000000002 2 0.033015769 3 0.18130716599999999 
		4 0.077329631999999995 5 0.70526725400000001
		6 0 0.18863165400000001 1 0.69632509999999992 2 0.035916655999999998 
		3 0.077084565999999993 5 0.0020413380000000002 8 6.8599999999999998e-07
		6 0 0.16953102 1 0.65544946199999998 2 0.047053721 3 0.12503973600000001 
		4 1.206e-06 5 0.0029248550000000001
		6 0 0.141843948 1 0.54538810500000001 2 0.072299325999999997 
		3 0.235434228 4 3.6279999999999998e-06 5 0.0050307650000000004
		6 0 0.10635923 1 0.39108609499999991 2 0.105768599 3 0.387250123 
		4 7.0690000000000004e-06 5 0.0095288839999999996
		6 0 0.068568759000000007 1 0.23476021599999999 2 0.13722367299999999 
		3 0.53590561299999995 4 0.002973921 5 0.020567818000000002
		6 0 0.035497289000000001 1 0.116123112 2 0.15643563699999999 
		3 0.63044189399999995 4 0.012316149 5 0.049185919000000002
		6 0 0.012389215 1 0.049693161 2 0.15665032300000001 3 
		0.63116591999999994 4 0.035309075000000002 5 0.114792306
		6 0 0.0029938479999999999 1 0.020775648000000001 2 0.13809217800000001 
		3 0.53858510199999998 4 0.068235725999999997 5 0.23131749800000001
		6 0 7.1459999999999999e-06 1 0.0096844310000000003 2 0.108357491 
		3 0.39431934000000002 4 0.10566804 5 0.38196355199999998
		6 0 3.7809999999999999e-06 1 0.0053267100000000001 2 0.079598658000000003 
		3 0.25486439599999999 4 0.139599532 5 0.520606923
		6 0 2.92e-06 1 0.0036641629999999998 2 0.065294072999999994 
		3 0.17699167199999999 4 0.162163895 5 0.59188327699999999
		7 0 0.34265701799999998 1 0.52432368399999996 2 0.057394621 
		3 0.073917992000000002 4 3.805e-06 5 0.001691627 8 1.1253000000000001e-05
		7 0 0.316291934 1 0.49109403699999998 2 0.079800584999999993 
		3 0.109950827 4 0.00047432000000000003 5 0.0023870359999999999 8 
		1.2610000000000001e-06
		6 0 0.265127644 1 0.41139275300000006 2 0.12874713199999999 
		3 0.18939230200000001 4 0.0012880190000000001 5 0.00405215
		6 0 0.196093604 1 0.30032839299999992 2 0.194917126 3 
		0.29787743500000002 4 0.003024812 5 0.0077586299999999999
		6 0 0.124449744 1 0.186786798 2 0.25911281899999999 3 
		0.40394650800000004 4 0.0084495390000000007 5 0.017254591999999999
		6 0 0.065030124999999994 1 0.097457982999999998 2 0.29931097499999998 
		3 0.47073985200000001 4 0.025350345 5 0.042110719999999997
		6 0 0.025554805 1 0.042509623000000003 2 0.29970149400000001 
		3 0.47133387100000002 4 0.064479439 5 0.096420768000000004
		6 0 0.0085205620000000006 1 0.017415160999999998 2 0.26062666000000001 
		3 0.40618199100000008 4 0.123120983 5 0.18413464299999999
		6 0 0.0030681770000000001 1 0.0078727980000000003 2 0.19923221699999999 
		3 0.30397570000000007 4 0.192618964 5 0.29323214399999997
		6 0 0.0013830750000000001 1 0.0042688149999999996 2 0.140691446 
		3 0.20604366299999999 4 0.25539202900000002 5 0.39222097200000006
		7 0 0.00080422800000000004 1 0.0029484289999999998 2 0.109495791 
		3 0.152067388 4 0.291010198 5 0.44367385100000001 6 1.15e-07
		7 0 0.52512389400000004 1 0.34225365600000002 2 0.073874819999999994 
		3 0.057378944000000001 4 0.00037439199999999998 5 0.000711183 8 
		0.00028311100000000001
		7 0 0.49215604999999985 1 0.31598687800000003 2 0.10988779 
		3 0.079782517999999997 4 0.0012595250000000001 5 0.000910847 8 
		1.6392000000000002e-05
		7 0 0.41232739399999996 1 0.26479289700000003 2 0.189373186 
		3 0.128612479 4 0.0033648129999999999 5 0.0015281240000000001 8 
		1.1069999999999999e-06
		6 0 0.30078175299999993 1 0.195836912 2 0.29817526100000002 
		3 0.19460825900000001 4 0.00747644 5 0.003121375
		6 0 0.186774207 1 0.12431421099999999 2 0.40446336500000002 
		3 0.25880187999999998 4 0.017167617999999999 5 0.0084787189999999991
		6 0 0.097331833000000006 1 0.064999778999999994 2 0.47116831399999992 
		3 0.299110127 4 0.042037977999999997 5 0.025351968999999999
		6 0 0.042435622999999999 1 0.025561958999999999 2 0.47175196100000005 
		3 0.29952672600000002 4 0.096300117000000005 5 0.064423614000000004
		6 0 0.017325477999999998 1 0.0085504970000000007 2 0.40667258799999989 
		3 0.26040009400000003 4 0.184146954 5 0.122904389
		6 0 0.0075788449999999999 1 0.003166454 2 0.30426079099999997 
		3 0.19902615200000001 4 0.29377400199999998 5 0.19219375599999999
		7 0 0.0035589200000000001 1 0.001629903 2 0.20602367799999999 
		3 0.140561564 4 0.39336877900000006 5 0.25485700300000003 6 1.5300000000000001e-07
		7 0 0.001865918 1 0.001225842 2 0.15190683499999999 3 
		0.109425513 4 0.44520067000000008 5 0.290373404 6 1.818e-06
		7 0 0.69774450100000007 1 0.18823585600000001 2 0.076960586999999997 
		3 0.035771918 4 8.9740000000000008e-06 5 3.0869999999999998e-06 8 
		0.0012750769999999999
		7 0 0.657228017 1 0.169233513 2 0.12469978299999999 3 
		0.046782444999999999 4 0.0013066760000000001 5 2.554e-06 8 0.00074701200000000002
		7 0 0.54752733999999981 1 0.141421243 2 0.23537756200000001 
		3 0.071643419 4 0.0040096369999999999 5 4.211e-06 8 1.6588000000000001e-05
		7 0 0.39223396299999991 1 0.10571734300000001 2 0.38814004499999999 
		3 0.104743561 4 0.0091503309999999994 5 7.2370000000000003e-06 8 
		7.5199999999999992e-06
		7 0 0.23471276599999999 1 0.067931869000000006 2 0.53742195000000015 
		3 0.136437951 4 0.020518207 5 0.0029704660000000002 7 6.7909999999999999e-06
		6 0 0.115757323 1 0.035200513000000003 2 0.63174211600000008 
		3 0.15600934599999999 4 0.049068279999999999 5 0.012222422
		6 0 0.049577151999999999 1 0.01231135 2 0.632449225 3 
		0.15631046800000001 4 0.114416632 5 0.034935173
		7 0 0.020714113999999999 1 0.002992499 2 0.54007833500000002 
		3 0.13759684599999999 4 0.23127041100000001 5 0.067339473999999996 
		7 8.3210000000000005e-06
		8 0 0.0092581929999999996 1 7.3030000000000002e-06 2 0.3952666070000001 
		3 0.107697033 4 0.38324392699999998 5 0.10451869699999999 6 6.5999999999999995e-08 
		7 8.174e-06
		8 0 0.0042035930000000003 1 4.335e-06 2 0.25480536999999998 
		3 0.078926710999999997 4 0.52329140100000004 5 0.138754295 6 
		8.7870000000000007e-06 7 5.5079999999999996e-06
		7 0 0.0020378089999999998 1 5.186e-06 2 0.17617742 3 0.064755591000000001 
		4 0.59557467799999997 5 0.16144108900000001 6 8.2269999999999993e-06
		7 0 0.82623904300000006 1 0.083746141999999996 2 0.066184880000000001 
		3 0.017321293000000001 4 3.117e-06 7 1.7731e-05 8 0.0064877939999999999
		7 0 0.77998366399999985 1 0.072512257999999996 2 0.120500359 
		3 0.021378320999999999 4 0.00087313600000000005 7 1.2421e-05 8 
		0.0047398409999999998
		7 0 0.64204422500000002 1 0.060695020000000002 2 0.256629844 
		3 0.031516175 4 0.0031704369999999999 7 0.00158377 8 0.0043605290000000001
		7 0 0.45006453099999999 1 0.045935437000000003 2 0.44571638400000002 
		3 0.044685005999999999 4 0.0075159060000000001 7 0.0026019400000000001 
		8 0.003480796
		8 0 0.25764422199999998 1 0.029600171000000002 2 0.63300919899999997 
		3 0.057285699000000002 4 0.016978573 5 9.0110000000000006e-06 7 
		0.0035723230000000001 8 0.001900802
		8 0 0.114787478 1 0.015121989000000001 2 0.75403767199999994 
		3 0.064455572000000003 4 0.043266144999999999 5 0.0046448799999999997 
		7 0.0036773700000000001 8 8.8939999999999999e-06
		8 0 0.043735068000000002 1 0.0046903650000000002 2 0.75462625999999999 
		3 0.064749560999999997 4 0.113434479 5 0.014912205 6 8.8140000000000007e-06 
		7 0.0038432480000000001
		8 0 0.017142548000000001 1 9.0929999999999992e-06 2 0.63547208199999994 
		3 0.058393400999999998 4 0.254189997 5 0.029011959 6 0.001521819 
		7 0.0042591010000000004
		7 0 0.0075918440000000004 2 0.45235808299999986 3 0.046820133999999999 
		4 0.44152405500000003 5 0.045047244 6 0.0027301999999999999 7 
		0.0039284400000000001
		7 0 0.0033038249999999998 2 0.27543957800000002 3 0.035130632000000002 
		4 0.61820336999999992 5 0.060665695999999998 6 0.0042000930000000002 
		7 0.003056806
		7 0 0.0014923009999999999 2 0.17587970999999999 3 0.030309514999999999 
		4 0.71065293699999998 5 0.072994310000000007 6 0.0058734 7 0.0027978270000000001
		6 0 0.87768055299999992 1 0.027461138999999999 2 0.056130331999999998 
		3 0.0057161570000000004 7 0.0055492040000000003 8 0.027462614999999999
		7 0 0.83125366900000008 1 0.022254763 2 0.111338865 3 
		0.006719877 4 1.2845e-05 7 0.00616944 8 0.022250540999999999
		7 0 0.68010200499999995 1 0.019405037999999999 2 0.25977441499999998 
		3 0.0098816800000000003 4 0.0023722180000000002 7 0.0090557740000000008 
		8 0.019408870000000002;
	setAttr ".wl[80:159].w"
		7 0 0.470493512 1 0.015095759 2 0.46656845600000002 3 
		0.013664367 4 0.0058552379999999996 7 0.013224187 8 0.015098481
		7 0 0.26113968700000001 1 0.0093218539999999992 2 0.67255152500000004 
		3 0.017388872999999999 4 0.013004378 7 0.017270958999999999 8 
		0.0093227239999999992
		9 0 0.107447924 1 0.004316589 2 0.81026584400000001 3 
		0.018921348000000001 4 0.035780854000000001 5 1.7824000000000001e-05 6 
		1.7822999999999999e-05 7 0.018915033000000001 8 0.0043167609999999997
		9 0 0.036181948999999998 1 1.7986999999999999e-05 2 0.81083115199999989 
		3 0.019244759 4 0.106211058 5 0.0040864630000000002 6 0.0040861029999999998 
		7 0.019322542000000002 8 1.7986999999999999e-05
		7 0 0.013128067 2 0.67462065299999996 3 0.018526409000000001 
		4 0.25791194000000001 5 0.0084786340000000005 6 0.0084770339999999996 
		7 0.018857262999999999
		7 0 0.0059116999999999998 2 0.47238557099999995 3 0.015344010999999999 
		4 0.46279893700000002 5 0.013660897 6 0.013656234 7 0.016242650000000001
		7 0 0.0025286890000000002 2 0.27744860700000001 3 0.011226013 
		4 0.65753824699999996 5 0.019322853000000001 6 0.019314998 7 
		0.012620592999999999
		7 0 0.0011006270000000001 2 0.16874046700000001 3 0.010226272 
		4 0.75915348599999999 5 0.024790059999999999 6 0.024783609000000002 
		7 0.011205479000000001
		7 0 0.82633612400000001 1 0.0064886379999999997 2 0.066195145999999996 
		3 1.7768999999999999e-05 4 3.1190000000000001e-06 7 0.017201711000000001 
		8 0.083757493000000002
		7 0 0.77927067099999991 1 0.0047332729999999996 2 0.120390386 
		3 0.001251839 4 0.00087226600000000001 7 0.021043405000000001 8 
		0.072438160000000001
		7 0 0.64207963299999993 1 0.0043587419999999997 2 0.25665686999999998 
		3 0.002080026 4 0.0031707269999999999 7 0.030956668999999999 8 
		0.060697332999999999
		7 0 0.45012987600000004 1 0.0034799869999999999 2 0.445740099 
		3 0.002806846 4 0.007516109 7 0.044386677999999999 8 0.045940404999999997
		8 0 0.25766904000000002 1 0.0019005739999999999 2 0.63301716799999996 
		3 0.0036197820000000002 4 0.016978231999999999 6 9.0110000000000006e-06 
		7 0.057204338 8 0.029601855
		8 0 0.114793541 1 8.8939999999999999e-06 2 0.75403740900000005 
		3 0.0036793080000000001 4 0.043263461000000003 6 0.0046447349999999997 
		7 0.064450298000000003 8 0.015122353999999999
		8 0 0.043736083000000002 2 0.75461758499999998 3 0.0038126000000000002 
		4 0.113421253 5 8.8140000000000007e-06 6 0.01491136 7 0.064801887000000002 
		8 0.004690418
		8 0 0.017142365 2 0.6354442560000001 3 0.0041170599999999996 
		4 0.25414146799999998 5 0.001522186 6 0.029008484000000001 7 
		0.058615088000000003 8 9.0929999999999992e-06
		7 0 0.007591197 2 0.45229937100000012 3 0.0035147690000000001 
		4 0.44140115000000002 5 0.0027314219999999998 6 0.045037433000000002 
		7 0.047424658000000001
		7 0 0.003303074 2 0.27536295700000002 3 0.002382524 4 
		0.61801466900000002 5 0.0042023310000000001 6 0.060649323999999998 7 
		0.036085120999999998
		7 0 0.001491841 2 0.175823122 3 0.002313978 4 0.71050234900000009 
		5 0.0058753249999999998 6 0.072981068999999996 7 0.031012316000000002
		7 0 0.69778090300000006 1 0.001275109 2 0.076969894999999997 
		4 8.9740000000000008e-06 6 3.0869999999999998e-06 7 0.035721856000000003 
		8 0.18824017600000001
		7 0 0.65729395699999993 1 0.00074661699999999998 2 0.124724686 
		4 0.001306946 6 2.554e-06 7 0.046670738000000003 8 0.169254502
		8 0 0.54765772699999993 1 1.6583999999999999e-05 2 0.23542851300000001 
		3 3.7189999999999999e-06 4 0.0040103140000000001 6 4.211e-06 7 
		0.071437220999999995 8 0.141441711
		7 0 0.392302657 1 7.5190000000000003e-06 2 0.38817183199999999 
		4 0.0091508179999999998 6 7.2370000000000003e-06 7 0.104634225 8 
		0.105725712
		7 0 0.23473299 2 0.53743107900000009 3 6.793e-06 4 0.020518107000000001 
		6 0.0029704739999999999 7 0.13640690899999999 8 0.067933647999999999
		6 0 0.115761656 2 0.63174201600000013 4 0.049066419 6 
		0.012222321 7 0.15600681699999999 8 0.035200770999999999
		6 0 0.049577655999999998 2 0.63244030900000003 4 0.114406545 
		6 0.034934381 7 0.156329777 8 0.012311331999999999
		7 0 0.020713502000000002 2 0.54004575599999993 3 8.1540000000000002e-06 
		4 0.23122825399999999 6 0.067335056000000004 7 0.13767685499999999 
		8 0.0029924230000000001
		8 0 0.0092569720000000005 2 0.39519212500000012 3 7.1509999999999998e-06 
		4 0.38311848199999998 5 6.5999999999999995e-08 6 0.104502408 7 
		0.107915493 8 7.3030000000000002e-06
		7 0 0.0042023809999999998 2 0.25470937399999999 4 0.52307135900000001 
		5 8.7930000000000003e-06 6 0.138722083 7 0.079281674999999996 8 
		4.335e-06
		7 0 0.0020371510000000001 2 0.176109566 4 0.595387114 5 
		8.2269999999999993e-06 6 0.161413581 7 0.065039175000000005 8 5.186e-06
		7 0 0.52513525000000016 1 0.00028311200000000002 2 0.073878131 
		4 0.00037440100000000001 6 0.00071118199999999998 7 0.057363430999999999 
		8 0.34225449299999999
		7 0 0.49217733500000005 1 1.6392000000000002e-05 2 0.109894745 
		4 0.0012595830000000001 6 0.000910847 7 0.079751598000000007 8 
		0.31598949999999998
		7 0 0.41236493700000004 1 1.1069999999999999e-06 2 0.18938633899999999 
		4 0.0033649639999999998 6 0.0015281260000000001 7 0.12855747100000001 
		8 0.26479705599999998
		6 0 0.30080217300000001 2 0.29818274 4 0.0074765270000000002 
		6 0.0031213740000000001 7 0.194578581 8 0.195838605
		6 0 0.18678071600000001 2 0.40446549299999995 4 0.017167551 
		6 0.008478714 7 0.25879292199999998 8 0.124314604
		6 0 0.097333348 2 0.47116825700000003 4 0.042037339999999999 
		6 0.025351938000000001 7 0.29910927199999998 8 0.064999845000000001
		6 0 0.042435871999999999 2 0.47174972099999996 4 0.096296814999999994 
		6 0.064423429000000004 7 0.29953220200000003 8 0.025561961000000001
		6 0 0.017325402 2 0.40666468299999992 4 0.18413392100000001 
		6 0.12290346100000001 7 0.26042204499999999 8 0.0085504880000000002
		6 0 0.0075786109999999999 2 0.30424247799999993 4 0.293737211 
		6 0.19219045300000001 7 0.19908479900000001 8 0.0031664480000000001
		7 0 0.0035586469999999999 2 0.205998131 4 0.39330501100000009 
		5 1.5300000000000001e-07 6 0.25485026 7 0.140657902 8 0.001629896
		7 0 0.0018657540000000001 2 0.151886097 4 0.44514198900000002 
		5 1.818e-06 6 0.29036780499999998 7 0.109510698 8 0.0012258390000000001
		7 0 0.34265976199999998 1 1.1253000000000001e-05 2 0.057395430999999997 
		4 3.805e-06 6 0.001691625 7 0.073914156999999994 8 0.52432396700000006
		7 0 0.31629664899999999 1 1.2610000000000001e-06 2 0.079802028999999997 
		4 0.000474329 6 0.002387035 7 0.109944214 8 0.49109448300000003
		6 0 0.26513556999999999 2 0.12874968000000001 4 0.0012880439999999999 
		6 0.0040521480000000002 7 0.18938108000000001 8 0.41139347800000003
		6 0 0.19609807500000001 2 0.19491850199999999 4 0.003024826 
		6 0.0077586280000000001 7 0.29787124399999998 8 0.30032872500000002
		6 0 0.12445123600000001 2 0.25911315899999998 4 0.0084495209999999998 
		6 0.017254588000000001 7 0.40394459799999993 8 0.18678689800000001
		6 0 0.065030478000000003 2 0.29931085899999998 4 0.025350188999999999 
		6 0.042110714 7 0.47073975800000001 8 0.097458002000000002
		6 0 0.025554866999999998 2 0.29970093199999998 4 0.064478646000000001 
		6 0.096420744000000003 7 0.47133518900000004 8 0.042509621999999997
		6 0 0.0085205550000000008 2 0.26062501500000002 4 0.12311797300000001 
		6 0.18413452599999999 7 0.40618677499999994 8 0.017415156000000001
		6 0 0.0030681409999999999 2 0.19922857699999999 4 0.19261076099999999 
		6 0.29323170100000001 7 0.30398802599999997 8 0.0078727940000000007
		6 0 0.001383029 2 0.14068619600000001 4 0.255377839 6 
		0.39222003500000008 7 0.20606408900000001 8 0.0042688120000000003
		7 0 0.000804198 2 0.10949083599999999 4 0.29099552400000001 
		5 1.15e-07 6 0.44367305200000001 7 0.152087848 8 0.002948427
		5 0 0.068547039574292659 2 0.014841434190578939 6 0.0014033574813182353 
		7 0.065289544497801069 8 0.84991862425600906
		5 2 0.027110747686178209 4 0.062006244153545373 6 0.72301015022549775 
		7 0.18504522245585941 8 0.0028276354789192673
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.034735939 2 0.011754347 6 0.001627854 7 0.11937803700000001 
		8 0.83250382300000003
		5 0 0.030400938999999998 2 0.017855296999999999 6 0.0030160930000000001 
		7 0.26692347900000002 8 0.68180419199999998
		5 0 0.024871556999999999 2 0.024669103000000001 6 0.0055567510000000004 
		7 0.47061878299999998 8 0.47428380599999997
		5 0 0.016810717999999999 2 0.028798759 6 0.01260756 7 
		0.67379841699999998 8 0.26798454599999999
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		5 2 0.029044569999999999 4 0.016979133 6 0.26494921500000002 
		7 0.67628594499999994 8 0.012741137
		5 2 0.025488733999999999 4 0.025622300000000001 6 0.465863372 
		7 0.47735389800000011 8 0.0056716960000000004
		5 2 0.020491242 4 0.032978183000000001 6 0.65415911500000001 
		7 0.28906278299999999 8 0.0033086769999999999
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.069358510079812696 2 0.021183057999180556 6 0.0021974044291473622 
		7 0.12169007794772513 8 0.7855709495441342
		5 0 0.058818948300665683 2 0.031920498504074989 6 0.0039439706007233857 
		7 0.25924182947674479 8 0.64607475311779117
		5 0 0.04554699770781237 2 0.045234327479985112 6 0.0073952393863446122 
		7 0.44888661786601614 8 0.45293681755984178
		6 0 0.030008449446679235 2 0.056248520667131131 4 8.0196622872948646e-06 
		6 0.016179351272027669 7 0.63740605042257958 8 0.26014960852929514
		6 0 0.015261221262576044 2 0.061707087919390023 4 0.0047870254280421142 
		6 0.04278362281061858 7 0.75946624320420875 8 0.11599479937516452
		6 0 0.0048023267224528788 2 0.061800692886959732 4 0.015240687627911208 
		6 0.11473358562259353 7 0.76019104367951218 8 0.043231663460570453
		6 0 8.0524413737654681e-06 2 0.056649143842101637 4 0.030095257460480512 
		6 0.25686139205281966 7 0.64003495893556495 8 0.016351195267659487
		5 2 0.046493397501032652 4 0.046035636544570803 6 0.44431831592984311 
		7 0.45562269553602947 8 0.0075299544885240799
		5 2 0.035666875600821019 4 0.060252718022149744 6 0.62062268067560578 
		7 0.2792232922526377 8 0.0042344334487857222
		5 0 0.060858955609989399 2 0.017093404153745145 6 0.0018311822643360513 
		7 0.1047820639430017 8 0.81543439402892781
		5 0 0.055267198923009721 2 0.020675043404606599 6 0.0024774962078917568 
		7 0.16177711262734354 8 0.75980314883714839
		5 0 0.051716664284205106 2 0.024530098523594421 6 0.0031604585114692408 
		7 0.22095997125158542 8 0.6996328074291458
		5 0 0.046079003043820975 2 0.014843386010645389 6 0.0018144503962962627 
		7 0.12013550901100481 8 0.81712765153823264
		5 0 0.046171100207861561 2 0.030419212483982831 6 0.0045441156594757098 
		7 0.31819117054494211 8 0.60067440110373771
		1 0 0.041690130139408643;
	setAttr ".wl[159:245].w"
		4 2 0.035093218557478809 6 0.0058650703829823845 7 0.39982590037887417 
		8 0.51752568054125603
		5 0 0.039711261412286161 2 0.022463345347483753 6 0.0033200847233636381 
		7 0.26440681314339426 8 0.67009849537347221
		6 0 0.034818986921840524 2 0.040843417432884402 4 1.5438247619911559e-06 
		6 0.0091555624073788987 7 0.51229268080218993 8 0.40288780861094431
		6 0 0.029348645294213077 2 0.044497285204322341 4 3.7797097802466877e-06 
		6 0.012600148594146396 7 0.59354088220002554 8 0.32000925899751254
		5 0 0.031645255219647284 2 0.031406692123993163 6 0.0061590774841324102 
		7 0.46349888019562957 8 0.46729009497659751
		6 0 0.021915672969504744 2 0.048153636454612542 4 0.0011792694961825752 
		6 0.022578330461137542 7 0.68611969058276523 8 0.22005340003579732
		6 0 0.016621014877825243 2 0.049795176411542748 4 0.0028794674558975776 
		6 0.033584908976925253 7 0.73895121222109439 8 0.15816822005671466
		6 0 0.021134565373660805 2 0.037791863638593312 4 2.6274057673215865e-06 
		6 0.013777752041959405 7 0.66187553167059177 8 0.26541765986942734
		6 0 0.010383852061410381 2 0.050952019249129524 4 0.0066357985879828196 
		6 0.062364183372175197 7 0.77563641089646229 8 0.094027735832839701
		6 0 0.0066453739554567333 2 0.050985904499513165 4 0.010375805504349399 
		6 0.093037942922301539 7 0.77593520720572495 8 0.063019765912654194
		6 0 0.010669142086188436 2 0.040150155411692021 4 0.0033198009549518827 
		6 0.039585749054445861 7 0.79139395703886528 8 0.11488119545385647
		6 0 0.0028870214776939192 2 0.049953547808502516 4 0.016649183322495174 
		6 0.15637270814643056 7 0.74020490886547574 8 0.033932630379402112
		6 0 0.0011823678497913659 2 0.048424523630917093 4 0.02199475881358683 
		6 0.21742517047083501 7 0.68815877758331279 8 0.0228144016515569
		6 0 0.0033257613553910256 2 0.040217912115943555 4 0.010675695014042617 
		6 0.11370130112880396 7 0.79209199111144324 8 0.039987339274375672
		6 0 3.7951577435205939e-06 2 0.045067060246891978 4 0.029597019060299198 
		6 0.31525496161166011 7 0.59732700160650021 8 0.012750162316905071
		6 0 1.5501352177867244e-06 2 0.041733552779571748 4 0.035261613165097988 
		6 0.39588701714886948 7 0.51782367148388397 8 0.0092925952873592031
		6 0 2.638144868016243e-06 2 0.038088394280742524 4 0.021276244252049804 
		6 0.26229947840321555 7 0.66440937882492745 8 0.013923866094196678
		5 2 0.036860454608994467 4 0.042626903520773821 6 0.50385891737957111 
		7 0.41061328439110267 8 0.006040440099557883
		5 2 0.033136371517111497 4 0.047629279974321918 6 0.57959995130402331 
		7 0.33484640730327331 8 0.0047879899012700676
		5 2 0.032370292355729462 4 0.032310127522669076 6 0.45880476996065012 
		7 0.47023431058606063 8 0.0062804995748908521
		5 2 0.029563255458091766 4 0.054250950081434213 6 0.65831999642152506 
		7 0.25426030893820101 8 0.0036054891007480435
		5 2 0.025463090666087151 4 0.041913879797574646 6 0.64317189162291233 
		7 0.28583916412292038 8 0.0036119737905055283
		6 0 0.18375832971176315 1 6.5308534479141235e-07 2 0.03507209666800451 
		6 0.0020196600682065484 7 0.076607622918433427 8 0.70254163754824761
		6 0 0.10024730940622319 1 8.9096583604812616e-08 2 0.020598426781159161 
		6 0.0016482455161694288 7 0.068448932724171282 8 0.80905699647569329
		6 0 0.16498996218414591 2 0.045884687869444843 4 1.1481354603767395e-06 
		6 0.0028943012503786086 7 0.12489557074263714 8 0.66133432981793305
		6 0 0.087167165629300589 2 0.025849843799266338 4 1.5663335251808167e-07 
		6 0.0023708177345070835 7 0.12244539802877974 8 0.7621666181747937
		6 0 0.13807873603152584 2 0.070469752038560152 4 3.4539265756607052e-06 
		6 0.0049857071704516413 7 0.23651606047431731 8 0.54994629035856923
		6 0 0.073540697212854028 2 0.039114167922486898 4 4.7119884157180782e-07 
		6 0.004213715079005957 7 0.25508490126246058 8 0.62804604732435088
		6 0 0.10360011299250196 2 0.10302142614756751 4 6.7298255136013036e-06 
		6 0.0094405557854249471 7 0.39004045589797948 8 0.39389071935101255
		6 0 0.056310680576896546 2 0.05594655939209258 4 9.1811042201519021e-07 
		6 0.0079271478503721952 7 0.43786939535854613 8 0.44194529871167054
		6 0 0.066819685436081411 2 0.13354816149016238 4 0.002831671006858349 
		6 0.02038454451804781 7 0.54049735267720522 8 0.23591858487164474
		6 0 0.036845693736025094 2 0.070569679028034446 4 0.00039433684765791891 
		6 0.017244329088455437 7 0.61917971825470308 8 0.25576624304512391
		6 0 0.034578581229162693 2 0.15213537669139982 4 0.011971536598516703 
		6 0.048915067375771761 7 0.63626982370064811 8 0.11612961440450097
		6 0 0.018835962938161137 2 0.078453524563024166 4 0.0060673117294160134 
		6 0.044274279277219414 7 0.73612792341804911 8 0.11624099807413006
		6 0 0.012041976215970038 2 0.15234447268616602 4 0.034397901983942741 
		6 0.11480121560129285 7 0.63699443479921969 8 0.049419998713408707
		6 0 0.0060920460594048502 2 0.078568172993817922 4 0.018788040563480733 
		6 0.11495398338502086 7 0.73685817358209149 8 0.044739583416184073
		6 0 0.0028506475298378472 2 0.13439508143370366 4 0.066505386617676493 
		6 0.23248131688903667 7 0.54317662815024592 8 0.020590939379499434
		6 0 0.00039695851870405675 2 0.071052481743509893 4 0.036866556337859513 
		6 0.25242290878833129 7 0.62183494445771137 8 0.017426150153883935
		6 0 6.803131011486053e-06 2 0.10554908159097529 4 0.10296135628094553 
		6 0.38479074595750168 7 0.39709676059819177 8 0.009595252441374302
		6 0 9.2811105895042416e-07 2 0.057439138429782155 4 0.056609463923156141 
		6 0.43323386917900047 7 0.4446492921266087 8 0.0080673082303936473
		6 0 3.5995855519771576e-06 2 0.077605853104378231 4 0.13599828900142741 
		6 0.5251494598981763 7 0.25596142548679784 8 0.0052813729236683843
		6 0 4.910702370405197e-07 2 0.043475721344801189 4 0.074337761949382186 
		6 0.60298500621644491 7 0.27469642344783046 8 0.0045045959713041778
		6 0 3.7924493312835694e-07 2 0.037207720956579683 4 0.088346825666092754 
		6 0.69054121125623802 7 0.18074783996758523 8 0.0031560229085712435
		6 0 2.7798968029022217e-06 2 0.063744352431157114 4 0.15809043635490011 
		6 0.5973235637193699 7 0.17720272746950075 8 0.0036361401282691956
		5 0 0.043751172999999997 1 0.88211966099999994 2 0.010191758 
		3 0.062783533000000002 5 0.001153875
		5 0 0.034735940999999999 1 0.83250377100000006 2 0.011754351 
		3 0.119378082 5 0.0016278550000000001
		5 0 0.074872972999999995 1 0.77809557200000012 2 0.022684805999999998 
		3 0.122058527 5 0.0022881220000000001
		5 0 0.087054555000000006 1 0.82588373200000009 2 0.018311925999999999 
		3 0.067160213999999996 5 0.0015895729999999999
		5 0 0.030400927000000001 1 0.68180414300000014 2 0.017855302 
		3 0.26692353299999999 5 0.0030160949999999999
		5 0 0.063345095000000004 1 0.64038382500000002 2 0.034160715000000001 
		3 0.25801860300000001 5 0.0040917619999999997
		5 0 0.024871554000000001 1 0.47428376799999994 2 0.024669118 
		3 0.470618806 5 0.0055567539999999997
		6 0 0.048840010000000003 1 0.44953670200000001 2 0.048509876 
		3 0.44542534099999997 4 4.6044861150612952e-31 5 0.0076880710000000003
		6 0 0.016810722 1 0.26798453799999999 2 0.02879878 3 0.67379839499999994 
		4 1.2748112152219235e-27 5 0.012607564999999999
		6 0 0.032110510000000002 1 0.258901679 2 0.060620642000000002 
		3 0.63160961100000002 4 9.2969999999999992e-06 5 0.016748261
		6 0 0.0084316319999999997 1 0.114338589 2 0.029646447999999999 
		3 0.80695086099999991 4 0.0026048909999999998 5 0.038027578999999999
		6 0 0.016349012999999999 1 0.116258601 2 0.066813630999999998 
		3 0.75190299599999999 4 0.0051345949999999996 5 0.043541164
		6 0 0.0026062989999999999 1 0.038406532 2 0.029701613000000002 
		3 0.80763583900000002 4 0.0084513890000000001 5 0.113198328
		6 0 0.0051521040000000002 1 0.044000203000000002 2 0.066913370999999999 
		3 0.75263409100000001 4 0.016322094999999998 5 0.11497813599999999
		6 0 -6.3863697130285291e-31 1 0.012741142 2 0.029044601 3 
		0.67628587299999998 4 0.016979161 5 0.26494922300000001
		6 0 9.3349999999999996e-06 1 0.016926198999999999 2 0.061045971999999997 
		3 0.63426084199999999 4 0.032184446999999998 5 0.25557320500000003
		5 1 0.0056716989999999997 2 0.025488770000000001 3 0.47735381000000005 
		4 0.025622361999999999 5 0.46586335899999998
		5 1 0.0078259349999999991 2 0.049839056999999999 3 0.45216107700000002 
		4 0.049287248999999998 5 0.44088668199999997
		5 1 0.0033086790000000001 2 0.020491282999999999 3 0.28906267200000002 
		4 0.032978286000000002 5 0.65415907999999989
		5 1 0.0043818870000000001 2 0.038084147999999998 3 0.277655543 
		4 0.064597345 5 0.61528107700000001
		5 1 0.0024892909999999998 2 0.019199685000000001 3 0.19005224800000001 
		4 0.041477390000000003 5 0.74678138599999999
		6 0 -2.7311196883302932e-32 1 0.0030801790000000002 2 0.033015769 
		3 0.18130716599999999 4 0.077329631999999995 5 0.70526725400000001
		6 0 0.16953102 1 0.65544946199999998 2 0.047053721 3 0.12503973600000001 
		4 1.206e-06 5 0.0029248550000000001
		6 0 0.18863165400000001 1 0.69632509999999992 2 0.035916655999999998 
		3 0.077084565999999993 5 0.0020413380000000002 8 6.8599999999999998e-07
		6 0 0.141843948 1 0.54538810500000001 2 0.072299325999999997 
		3 0.235434228 4 3.6279999999999998e-06 5 0.0050307650000000004
		6 0 0.10635923 1 0.39108609499999991 2 0.105768599 3 0.387250123 
		4 7.0690000000000004e-06 5 0.0095288839999999996
		6 0 0.068568759000000007 1 0.23476021599999999 2 0.13722367299999999 
		3 0.53590561299999995 4 0.002973921 5 0.020567818000000002
		6 0 0.035497289000000001 1 0.116123112 2 0.15643563699999999 
		3 0.63044189399999995 4 0.012316149 5 0.049185919000000002
		6 0 0.012389215 1 0.049693161 2 0.15665032300000001 3 
		0.63116591999999994 4 0.035309075000000002 5 0.114792306
		6 0 0.0029938479999999999 1 0.020775648000000001 2 0.13809217800000001 
		3 0.53858510199999998 4 0.068235725999999997 5 0.23131749800000001
		6 0 7.1459999999999999e-06 1 0.0096844310000000003 2 0.108357491 
		3 0.39431934000000002 4 0.10566804 5 0.38196355199999998
		6 0 3.7809999999999999e-06 1 0.0053267100000000001 2 0.079598658000000003 
		3 0.25486439599999999 4 0.139599532 5 0.520606923
		6 0 2.92e-06 1 0.0036641629999999998 2 0.065294072999999994 
		3 0.17699167199999999 4 0.162163895 5 0.59188327699999999
		7 0 0.316291934 1 0.49109403699999998 2 0.079800584999999993 
		3 0.109950827 4 0.00047432000000000003 5 0.0023870359999999999 8 
		1.2610000000000001e-06
		7 0 0.34265701799999998 1 0.52432368399999996 2 0.057394621 
		3 0.073917992000000002 4 3.805e-06 5 0.001691627 8 1.1253000000000001e-05
		6 0 0.265127644 1 0.41139275300000006 2 0.12874713199999999 
		3 0.18939230200000001 4 0.0012880190000000001 5 0.00405215
		6 0 0.196093604 1 0.30032839299999992 2 0.194917126 3 
		0.29787743500000002 4 0.003024812 5 0.0077586299999999999
		6 0 0.124449744 1 0.186786798 2 0.25911281899999999 3 
		0.40394650800000004 4 0.0084495390000000007 5 0.017254591999999999
		6 0 0.065030124999999994 1 0.097457982999999998 2 0.29931097499999998 
		3 0.47073985200000001 4 0.025350345 5 0.042110719999999997
		6 0 0.025554805 1 0.042509623000000003 2 0.29970149400000001 
		3 0.47133387100000002 4 0.064479439 5 0.096420768000000004
		6 0 0.0085205620000000006 1 0.017415160999999998 2 0.26062666000000001 
		3 0.40618199100000008 4 0.123120983 5 0.18413464299999999
		6 0 0.0030681770000000001 1 0.0078727980000000003 2 0.19923221699999999 
		3 0.30397570000000007 4 0.192618964 5 0.29323214399999997
		3 0 0.0013830750000000001 1 0.0042688149999999996 2 0.140691446;
	setAttr ".wl[245:313].w"
		3 3 0.20604366299999999 4 0.25539202900000002 5 0.39222097200000006
		7 0 0.00080422800000000004 1 0.0029484289999999998 2 0.109495791 
		3 0.152067388 4 0.291010198 5 0.44367385100000001 6 1.15e-07
		7 0 0.49215604999999985 1 0.31598687800000003 2 0.10988779 
		3 0.079782517999999997 4 0.0012595250000000001 5 0.000910847 8 
		1.6392000000000002e-05
		7 0 0.52512389400000004 1 0.34225365600000002 2 0.073874819999999994 
		3 0.057378944000000001 4 0.00037439199999999998 5 0.000711183 8 
		0.00028311100000000001
		7 0 0.41232739399999996 1 0.26479289700000003 2 0.189373186 
		3 0.128612479 4 0.0033648129999999999 5 0.0015281240000000001 8 
		1.1069999999999999e-06
		7 0 0.30078175299999993 1 0.195836912 2 0.29817526100000002 
		3 0.19460825900000001 4 0.00747644 5 0.003121375 8 -1.6942723567624366e-30
		7 0 0.186774207 1 0.12431421099999999 2 0.40446336500000002 
		3 0.25880187999999998 4 0.017167617999999999 5 0.0084787189999999991 
		7 -3.1486447350171936e-30
		6 0 0.097331833000000006 1 0.064999778999999994 2 0.47116831399999992 
		3 0.299110127 4 0.042037977999999997 5 0.025351968999999999
		6 0 0.042435622999999999 1 0.025561958999999999 2 0.47175196100000005 
		3 0.29952672600000002 4 0.096300117000000005 5 0.064423614000000004
		7 0 0.017325477999999998 1 0.0085504970000000007 2 0.40667258799999989 
		3 0.26040009400000003 4 0.184146954 5 0.122904389 7 -1.02208848269772e-30
		6 0 0.0075788449999999999 1 0.003166454 2 0.30426079099999997 
		3 0.19902615200000001 4 0.29377400199999998 5 0.19219375599999999
		7 0 0.0035589200000000001 1 0.001629903 2 0.20602367799999999 
		3 0.140561564 4 0.39336877900000006 5 0.25485700300000003 6 1.5300000000000001e-07
		7 0 0.001865918 1 0.001225842 2 0.15190683499999999 3 
		0.109425513 4 0.44520067000000008 5 0.290373404 6 1.818e-06
		7 0 0.657228017 1 0.169233513 2 0.12469978299999999 3 
		0.046782444999999999 4 0.0013066760000000001 5 2.554e-06 8 0.00074701200000000002
		7 0 0.69774450100000007 1 0.18823585600000001 2 0.076960586999999997 
		3 0.035771918 4 8.9740000000000008e-06 5 3.0869999999999998e-06 8 
		0.0012750769999999999
		7 0 0.54752733999999981 1 0.141421243 2 0.23537756200000001 
		3 0.071643419 4 0.0040096369999999999 5 4.211e-06 8 1.6588000000000001e-05
		8 0 0.39223396299999991 1 0.10571734300000001 2 0.38814004499999999 
		3 0.104743561 4 0.0091503309999999994 5 7.2370000000000003e-06 7 
		-5.6582350121803571e-28 8 7.5199999999999992e-06
		8 0 0.23471276599999999 1 0.067931869000000006 2 0.53742195000000015 
		3 0.136437951 4 0.020518207 5 0.0029704660000000002 7 6.7909999999999999e-06 
		8 -8.9539273966808757e-28
		8 0 0.115757323 1 0.035200513000000003 2 0.63174211600000008 
		3 0.15600934599999999 4 0.049068279999999999 5 0.012222422 7 
		-2.0276105010661967e-27 8 -4.9039307430263342e-30
		8 0 0.049577151999999999 1 0.01231135 2 0.632449225 3 
		0.15631046800000001 4 0.114416632 5 0.034935173 6 -3.4910659394361007e-30 
		7 -1.5189452042119202e-27
		8 0 0.020714113999999999 1 0.002992499 2 0.54007833500000002 
		3 0.13759684599999999 4 0.23127041100000001 5 0.067339473999999996 
		6 -1.6334004540494961e-28 7 8.3210000000000005e-06
		8 0 0.0092581929999999996 1 7.3030000000000002e-06 2 0.3952666070000001 
		3 0.107697033 4 0.38324392699999998 5 0.10451869699999999 6 6.5999999999999995e-08 
		7 8.174e-06
		8 0 0.0042035930000000003 1 4.335e-06 2 0.25480536999999998 
		3 0.078926710999999997 4 0.52329140100000004 5 0.138754295 6 
		8.7870000000000007e-06 7 5.5079999999999996e-06
		7 0 0.0020378089999999998 1 5.186e-06 2 0.17617742 3 0.064755591000000001 
		4 0.59557467799999997 5 0.16144108900000001 6 8.2269999999999993e-06
		7 0 0.77998366399999985 1 0.072512257999999996 2 0.120500359 
		3 0.021378320999999999 4 0.00087313600000000005 7 1.2421e-05 8 
		0.0047398409999999998
		7 0 0.82623904300000006 1 0.083746141999999996 2 0.066184880000000001 
		3 0.017321293000000001 4 3.117e-06 7 1.7731e-05 8 0.0064877939999999999
		7 0 0.64204422500000002 1 0.060695020000000002 2 0.256629844 
		3 0.031516175 4 0.0031704369999999999 7 0.00158377 8 0.0043605290000000001
		8 0 0.45006453099999999 1 0.045935437000000003 2 0.44571638400000002 
		3 0.044685005999999999 4 0.0075159060000000001 5 1.8402034556722585e-30 
		7 0.0026019400000000001 8 0.003480796
		8 0 0.25764422199999998 1 0.029600171000000002 2 0.63300919899999997 
		3 0.057285699000000002 4 0.016978573 5 9.0110000000000006e-06 7 
		0.0035723230000000001 8 0.001900802
		9 0 0.114787478 1 0.015121989000000001 2 0.75403767199999994 
		3 0.064455572000000003 4 0.043266144999999999 5 0.0046448799999999997 
		6 -5.1843522621231566e-30 7 0.0036773700000000001 8 8.8939999999999999e-06
		9 0 0.043735068000000002 1 0.0046903650000000002 2 0.75462625999999999 
		3 0.064749560999999997 4 0.113434479 5 0.014912205 6 8.8140000000000007e-06 
		7 0.0038432480000000001 8 -7.2050820194307388e-30
		8 0 0.017142548000000001 1 9.0929999999999992e-06 2 0.63547208199999994 
		3 0.058393400999999998 4 0.254189997 5 0.029011959 6 0.001521819 
		7 0.0042591010000000004
		7 0 0.0075918440000000004 2 0.45235808299999986 3 0.046820133999999999 
		4 0.44152405500000003 5 0.045047244 6 0.0027301999999999999 7 
		0.0039284400000000001
		7 0 0.0033038249999999998 2 0.27543957800000002 3 0.035130632000000002 
		4 0.61820336999999992 5 0.060665695999999998 6 0.0042000930000000002 
		7 0.003056806
		7 0 0.0014923009999999999 2 0.17587970999999999 3 0.030309514999999999 
		4 0.71065293699999998 5 0.072994310000000007 6 0.0058734 7 0.0027978270000000001
		7 0 0.83125366900000008 1 0.022254763 2 0.111338865 3 
		0.006719877 4 1.2845e-05 7 0.00616944 8 0.022250540999999999
		6 0 0.87768055299999992 1 0.027461138999999999 2 0.056130331999999998 
		3 0.0057161570000000004 7 0.0055492040000000003 8 0.027462614999999999
		7 0 0.68010200499999995 1 0.019405037999999999 2 0.25977441499999998 
		3 0.0098816800000000003 4 0.0023722180000000002 7 0.0090557740000000008 
		8 0.019408870000000002
		7 0 0.470493512 1 0.015095759 2 0.46656845600000002 3 
		0.013664367 4 0.0058552379999999996 7 0.013224187 8 0.015098481
		9 0 0.26113968700000001 1 0.0093218539999999992 2 0.67255152500000004 
		3 0.017388872999999999 4 0.013004378 5 8.8116475091708415e-30 6 
		4.3563867734971637e-30 7 0.017270958999999999 8 0.0093227239999999992
		9 0 0.107447924 1 0.004316589 2 0.81026584400000001 3 
		0.018921348000000001 4 0.035780854000000001 5 1.7824000000000001e-05 6 
		1.7822999999999999e-05 7 0.018915033000000001 8 0.0043167609999999997
		9 0 0.036181948999999998 1 1.7986999999999999e-05 2 0.81083115199999989 
		3 0.019244759 4 0.106211058 5 0.0040864630000000002 6 0.0040861029999999998 
		7 0.019322542000000002 8 1.7986999999999999e-05
		8 0 0.013128067 2 0.67462065299999996 3 0.018526409000000001 
		4 0.25791194000000001 5 0.0084786340000000005 6 0.0084770339999999996 
		7 0.018857262999999999 8 -5.5877804397853818e-31
		7 0 0.0059116999999999998 2 0.47238557099999995 3 0.015344010999999999 
		4 0.46279893700000002 5 0.013660897 6 0.013656234 7 0.016242650000000001
		7 0 0.0025286890000000002 2 0.27744860700000001 3 0.011226013 
		4 0.65753824699999996 5 0.019322853000000001 6 0.019314998 7 
		0.012620592999999999
		7 0 0.0011006270000000001 2 0.16874046700000001 3 0.010226272 
		4 0.75915348599999999 5 0.024790059999999999 6 0.024783609000000002 
		7 0.011205479000000001
		7 0 0.77927067099999991 1 0.0047332729999999996 2 0.120390386 
		3 0.001251839 4 0.00087226600000000001 7 0.021043405000000001 8 
		0.072438160000000001
		7 0 0.82633612400000001 1 0.0064886379999999997 2 0.066195145999999996 
		3 1.7768999999999999e-05 4 3.1190000000000001e-06 7 0.017201711000000001 
		8 0.083757493000000002
		7 0 0.64207963299999993 1 0.0043587419999999997 2 0.25665686999999998 
		3 0.002080026 4 0.0031707269999999999 7 0.030956668999999999 8 
		0.060697332999999999
		8 0 0.45012987600000004 1 0.0034799869999999999 2 0.445740099 
		3 0.002806846 4 0.007516109 6 3.6214113722353676e-31 7 0.044386677999999999 
		8 0.045940404999999997
		8 0 0.25766904000000002 1 0.0019005739999999999 2 0.63301716799999996 
		3 0.0036197820000000002 4 0.016978231999999999 6 9.0110000000000006e-06 
		7 0.057204338 8 0.029601855
		9 0 0.114793541 1 8.8939999999999999e-06 2 0.75403740900000005 
		3 0.0036793080000000001 4 0.043263461000000003 5 5.0722172394880517e-30 
		6 0.0046447349999999997 7 0.064450298000000003 8 0.015122353999999999
		8 0 0.043736083000000002 2 0.75461758499999998 3 0.0038126000000000002 
		4 0.113421253 5 8.8140000000000007e-06 6 0.01491136 7 0.064801887000000002 
		8 0.004690418
		8 0 0.017142365 2 0.6354442560000001 3 0.0041170599999999996 
		4 0.25414146799999998 5 0.001522186 6 0.029008484000000001 7 
		0.058615088000000003 8 9.0929999999999992e-06
		7 0 0.007591197 2 0.45229937100000012 3 0.0035147690000000001 
		4 0.44140115000000002 5 0.0027314219999999998 6 0.045037433000000002 
		7 0.047424658000000001
		7 0 0.003303074 2 0.27536295700000002 3 0.002382524 4 
		0.61801466900000002 5 0.0042023310000000001 6 0.060649323999999998 7 
		0.036085120999999998
		8 0 0.001491841 2 0.175823122 3 0.002313978 4 0.71050234900000009 
		5 0.0058753249999999998 6 0.072981068999999996 7 0.031012316000000002 
		8 -7.9630238667954752e-32
		7 0 0.65729395699999993 1 0.00074661699999999998 2 0.124724686 
		4 0.001306946 6 2.554e-06 7 0.046670738000000003 8 0.169254502
		7 0 0.69778090300000006 1 0.001275109 2 0.076969894999999997 
		4 8.9740000000000008e-06 6 3.0869999999999998e-06 7 0.035721856000000003 
		8 0.18824017600000001
		8 0 0.54765772699999993 1 1.6583999999999999e-05 2 0.23542851300000001 
		3 3.7189999999999999e-06 4 0.0040103140000000001 6 4.211e-06 7 
		0.071437220999999995 8 0.141441711
		8 0 0.392302657 1 7.5190000000000003e-06 2 0.38817183199999999 
		3 1.4804545808794764e-30 4 0.0091508179999999998 6 7.2370000000000003e-06 
		7 0.104634225 8 0.105725712
		7 0 0.23473299 2 0.53743107900000009 3 6.793e-06 4 0.020518107000000001 
		6 0.0029704739999999999 7 0.13640690899999999 8 0.067933647999999999
		6 0 0.115761656 2 0.63174201600000013 4 0.049066419 6 
		0.012222321 7 0.15600681699999999 8 0.035200770999999999
		7 0 0.049577655999999998 2 0.63244030900000003 3 3.2301320967408447e-30 
		4 0.114406545 6 0.034934381 7 0.156329777 8 0.012311331999999999
		8 0 0.020713502000000002 2 0.54004575599999993 3 8.1540000000000002e-06 
		4 0.23122825399999999 5 7.0996499338064054e-33 6 0.067335056000000004 
		7 0.13767685499999999 8 0.0029924230000000001
		8 0 0.0092569720000000005 2 0.39519212500000012 3 7.1509999999999998e-06 
		4 0.38311848199999998 5 6.5999999999999995e-08 6 0.104502408 7 
		0.107915493 8 7.3030000000000002e-06
		7 0 0.0042023809999999998 2 0.25470937399999999 4 0.52307135900000001 
		5 8.7930000000000003e-06 6 0.138722083 7 0.079281674999999996 8 
		4.335e-06
		7 0 0.0020371510000000001 2 0.176109566 4 0.595387114 5 
		8.2269999999999993e-06 6 0.161413581 7 0.065039175000000005 8 5.186e-06
		1 0 0.49217733500000005;
	setAttr ".wl[313:399].w"
		6 1 1.6392000000000002e-05 2 0.109894745 4 0.0012595830000000001 
		6 0.000910847 7 0.079751598000000007 8 0.31598949999999998
		7 0 0.52513525000000016 1 0.00028311200000000002 2 0.073878131 
		4 0.00037440100000000001 6 0.00071118199999999998 7 0.057363430999999999 
		8 0.34225449299999999
		7 0 0.41236493700000004 1 1.1069999999999999e-06 2 0.18938633899999999 
		4 0.0033649639999999998 6 0.0015281260000000001 7 0.12855747100000001 
		8 0.26479705599999998
		6 0 0.30080217300000001 2 0.29818274 4 0.0074765270000000002 
		6 0.0031213740000000001 7 0.194578581 8 0.195838605
		6 0 0.18678071600000001 2 0.40446549299999995 4 0.017167551 
		6 0.008478714 7 0.25879292199999998 8 0.124314604
		6 0 0.097333348 2 0.47116825700000003 4 0.042037339999999999 
		6 0.025351938000000001 7 0.29910927199999998 8 0.064999845000000001
		6 0 0.042435871999999999 2 0.47174972099999996 4 0.096296814999999994 
		6 0.064423429000000004 7 0.29953220200000003 8 0.025561961000000001
		6 0 0.017325402 2 0.40666468299999992 4 0.18413392100000001 
		6 0.12290346100000001 7 0.26042204499999999 8 0.0085504880000000002
		6 0 0.0075786109999999999 2 0.30424247799999993 4 0.293737211 
		6 0.19219045300000001 7 0.19908479900000001 8 0.0031664480000000001
		7 0 0.0035586469999999999 2 0.205998131 4 0.39330501100000009 
		5 1.5300000000000001e-07 6 0.25485026 7 0.140657902 8 0.001629896
		7 0 0.0018657540000000001 2 0.151886097 4 0.44514198900000002 
		5 1.818e-06 6 0.29036780499999998 7 0.109510698 8 0.0012258390000000001
		7 0 0.31629664899999999 1 1.2610000000000001e-06 2 0.079802028999999997 
		4 0.000474329 6 0.002387035 7 0.109944214 8 0.49109448300000003
		7 0 0.34265976199999998 1 1.1253000000000001e-05 2 0.057395430999999997 
		4 3.805e-06 6 0.001691625 7 0.073914156999999994 8 0.52432396700000006
		6 0 0.26513556999999999 2 0.12874968000000001 4 0.0012880439999999999 
		6 0.0040521480000000002 7 0.18938108000000001 8 0.41139347800000003
		6 0 0.19609807500000001 2 0.19491850199999999 4 0.003024826 
		6 0.0077586280000000001 7 0.29787124399999998 8 0.30032872500000002
		6 0 0.12445123600000001 2 0.25911315899999998 4 0.0084495209999999998 
		6 0.017254588000000001 7 0.40394459799999993 8 0.18678689800000001
		6 0 0.065030478000000003 2 0.29931085899999998 4 0.025350188999999999 
		6 0.042110714 7 0.47073975800000001 8 0.097458002000000002
		6 0 0.025554866999999998 2 0.29970093199999998 4 0.064478646000000001 
		6 0.096420744000000003 7 0.47133518900000004 8 0.042509621999999997
		6 0 0.0085205550000000008 2 0.26062501500000002 4 0.12311797300000001 
		6 0.18413452599999999 7 0.40618677499999994 8 0.017415156000000001
		6 0 0.0030681409999999999 2 0.19922857699999999 4 0.19261076099999999 
		6 0.29323170100000001 7 0.30398802599999997 8 0.0078727940000000007
		6 0 0.001383029 2 0.14068619600000001 4 0.255377839 6 
		0.39222003500000008 7 0.20606408900000001 8 0.0042688120000000003
		7 0 0.000804198 2 0.10949083599999999 4 0.29099552400000001 
		5 1.15e-07 6 0.44367305200000001 7 0.152087848 8 0.002948427
		5 0 0.068547039574292659 2 0.014841434190578939 6 0.0014033574813182353 
		7 0.065289544497801069 8 0.84991862425600906
		5 0 0.060858955609989399 2 0.017093404153745145 6 0.0018311822643360513 
		7 0.1047820639430017 8 0.81543439402892781
		5 0 0.046079003043820975 2 0.014843386010645389 6 0.0018144503962962627 
		7 0.12013550901100481 8 0.81712765153823264
		5 0 0.034735939 2 0.011754347 6 0.001627854 7 0.11937803700000001 
		8 0.83250382300000003
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.055267198923009721 2 0.020675043404606599 6 0.0024774962078917568 
		7 0.16177711262734354 8 0.75980314883714839
		5 0 0.051716664284205106 2 0.024530098523594421 6 0.0031604585114692408 
		7 0.22095997125158542 8 0.6996328074291458
		5 0 0.039711261412286161 2 0.022463345347483753 6 0.0033200847233636381 
		7 0.26440681314339426 8 0.67009849537347221
		5 0 0.030400938999999998 2 0.017855296999999999 6 0.0030160930000000001 
		7 0.26692347900000002 8 0.68180419199999998
		5 0 0.046171100207861561 2 0.030419212483982831 6 0.0045441156594757098 
		7 0.31819117054494211 8 0.60067440110373771
		5 0 0.041690130139408643 2 0.035093218557478809 6 0.0058650703829823845 
		7 0.39982590037887417 8 0.51752568054125603
		6 0 0.031645255219647284 2 0.031406692123993163 4 1.921361786482895e-30 
		6 0.0061590774841324102 7 0.46349888019562957 8 0.46729009497659751
		6 0 0.024871556999999999 2 0.024669103000000001 4 6.5901390077407262e-32 
		6 0.0055567510000000004 7 0.47061878299999998 8 0.47428380599999997
		6 0 0.034818986921840524 2 0.040843417432884402 4 1.5438247619911559e-06 
		6 0.0091555624073788987 7 0.51229268080218993 8 0.40288780861094431
		6 0 0.029348645294213077 2 0.044497285204322341 4 3.7797097802466877e-06 
		6 0.012600148594146396 7 0.59354088220002554 8 0.32000925899751254
		6 0 0.021134565373660805 2 0.037791863638593312 4 2.6274057673215865e-06 
		6 0.013777752041959405 7 0.66187553167059177 8 0.26541765986942734
		5 0 0.016810717999999999 2 0.028798759 6 0.01260756 7 
		0.67379841699999998 8 0.26798454599999999
		6 0 0.021915672969504744 2 0.048153636454612542 4 0.0011792694961825752 
		6 0.022578330461137542 7 0.68611969058276523 8 0.22005340003579732
		6 0 0.016621014877825243 2 0.049795176411542748 4 0.0028794674558975776 
		6 0.033584908976925253 7 0.73895121222109439 8 0.15816822005671466
		6 0 0.010669142558101238 2 0.040150157627026742 4 0.0033198011057336925 
		6 0.039585749383080779 7 0.79139395375775967 8 0.11488119556829787
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.010383852061410381 2 0.050952019249129524 4 0.0066357985879828196 
		6 0.062364183372175197 7 0.77563641089646229 8 0.094027735832839701
		6 0 0.0066453739554567333 2 0.050985904499513165 4 0.010375805504349399 
		6 0.093037942922301539 7 0.77593520720572495 8 0.063019765912654194
		6 0 0.0033257613553910256 2 0.040217912115943555 4 0.010675695014042617 
		6 0.11370130112880396 7 0.79209199111144324 8 0.039987339274375672
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		6 0 0.0028870214776939192 2 0.049953547808502516 4 0.016649183322495174 
		6 0.15637270814643056 7 0.74020490886547574 8 0.033932630379402112
		6 0 0.0011823678497913659 2 0.048424523630917093 4 0.02199475881358683 
		6 0.21742517047083501 7 0.68815877758331279 8 0.0228144016515569
		6 0 2.638144311606884e-06 2 0.038088392373315634 4 0.021276243345748961 
		6 0.26229947896206968 7 0.66440938132980598 8 0.013923865844748081
		5 2 0.029044569999999999 4 0.016979133 6 0.26494921500000002 
		7 0.67628594499999994 8 0.012741137
		6 0 3.7951577435205939e-06 2 0.045067060246891978 4 0.029597019060299198 
		6 0.31525496161166011 7 0.59732700160650021 8 0.012750162316905071
		6 0 1.5501352177867244e-06 2 0.041733552779571748 4 0.035261613165097988 
		6 0.39588701714886948 7 0.51782367148388397 8 0.0092925952873592031
		5 2 0.032370292355729462 4 0.032310127522669076 6 0.45880476996065012 
		7 0.47023431058606063 8 0.0062804995748908521
		5 2 0.025488733999999999 4 0.025622300000000001 6 0.465863372 
		7 0.47735389800000011 8 0.0056716960000000004
		5 2 0.029563255458091766 4 0.054250950081434213 6 0.65831999642152506 
		7 0.25426030893820101 8 0.0036054891007480435
		5 2 0.025463090666087151 4 0.041913879797574646 6 0.64317189162291233 
		7 0.28583916412292038 8 0.0036119737905055283
		5 2 0.027110747647685202 4 0.062006244406836719 6 0.72301015298585825 
		7 0.18504521950512015 8 0.0028276354544996022
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.020491242 4 0.032978183000000001 6 0.65415911500000001 
		7 0.28906278299999999 8 0.0033086769999999999
		5 2 0.036860454608994467 4 0.042626903520773821 6 0.50385891737957111 
		7 0.41061328439110267 8 0.006040440099557883
		5 2 0.033136371517111497 4 0.047629279974321918 6 0.57959995130402331 
		7 0.33484640730327331 8 0.0047879899012700676
		6 0 0.10024730940622319 1 8.9096583604812616e-08 2 0.020598426781159161 
		6 0.0016482455161694288 7 0.068448932724171282 8 0.80905699647569329
		6 0 0.18375832971176315 1 6.5308534479141235e-07 2 0.03507209666800451 
		6 0.0020196600682065484 7 0.076607622918433427 8 0.70254163754824761
		6 0 0.16498996218414591 2 0.045884687869444843 4 1.1481354603767395e-06 
		6 0.0028943012503786086 7 0.12489557074263714 8 0.66133432981793305
		6 0 0.087167165629300589 2 0.025849843799266338 4 1.5663335251808167e-07 
		6 0.0023708177345070835 7 0.12244539802877974 8 0.7621666181747937
		6 0 0.13807873603152584 2 0.070469752038560152 4 3.4539265756607052e-06 
		6 0.0049857071704516413 7 0.23651606047431731 8 0.54994629035856923
		6 0 0.073540697212854028 2 0.039114167922486898 4 4.7119884157180782e-07 
		6 0.004213715079005957 7 0.25508490126246058 8 0.62804604732435088
		6 0 0.10360011299250196 2 0.10302142614756751 4 6.7298255136013036e-06 
		6 0.0094405557854249471 7 0.39004045589797948 8 0.39389071935101255
		6 0 0.056310684005346952 2 0.055946562804987138 4 9.1811084336042405e-07 
		6 0.0079271479600932001 7 0.43786939189098184 8 0.4419452952277475
		6 0 0.066819685436081411 2 0.13354816149016238 4 0.002831671006858349 
		6 0.02038454451804781 7 0.54049735267720522 8 0.23591858487164474
		6 0 0.036845695909118292 2 0.070569683593929886 4 0.00039433702436292176 
		6 0.017244329316118835 7 0.61917971255028725 8 0.25576624160618272
		6 0 0.034578581229162693 2 0.15213537669139982 4 0.011971536598516703 
		6 0.048915067375771761 7 0.63626982370064811 8 0.11612961440450097
		6 0 0.018835962938161137 2 0.078453524563024166 4 0.0060673117294160134 
		6 0.044274279277219414 7 0.73612792341804911 8 0.11624099807413006
		6 0 0.012041976215970038 2 0.15234447268616602 4 0.034397901983942741 
		6 0.11480121560129285 7 0.63699443479921969 8 0.049419998713408707
		6 0 0.0060920464907705781 2 0.078568178342547465 4 0.018788041695184648 
		6 0.1149539833739453 7 0.73685816634204104 8 0.044739583755510869
		6 0 0.0028506475298378472 2 0.13439508143370366 4 0.066505386617676493 
		6 0.23248131688903667 7 0.54317662815024592 8 0.020590939379499434
		6 0 0.00039695851870405675 2 0.071052481743509893 4 0.036866556337859513 
		6 0.25242290878833129 7 0.62183494445771137 8 0.017426150153883935
		6 0 6.803131011486053e-06 2 0.10554908159097529 4 0.10296135628094553 
		6 0.38479074595750168 7 0.39709676059819177 8 0.009595252441374302
		6 0 9.2811105895042416e-07 2 0.057439138429782155 4 0.056609463923156141 
		6 0.43323386917900047 7 0.4446492921266087 8 0.0080673082303936473
		6 0 3.5995855519771576e-06 2 0.077605853104378231 4 0.13599828900142741 
		6 0.5251494598981763 7 0.25596142548679784 8 0.0052813729236683843
		6 0 4.910702370405197e-07 2 0.043475721344801189 4 0.074337761949382186 
		6 0.60298500621644491 7 0.27469642344783046 8 0.0045045959713041778
		6 0 2.7798968029022217e-06 2 0.063744352525563625 4 0.15809043611774568 
		6 0.59732356204324633 7 0.17720272926412617 8 0.0036361401525153965
		6 0 3.7924493312835694e-07 2 0.037207721258680521 4 0.088346824907198557 
		6 0.69054120589264223 7 0.18074784571038652 8 0.0031560229861590863
		5 0 0.069358510079812696 2 0.021183057999180556 6 0.0021974044291473622 
		7 0.12169007794772513 8 0.7855709495441342
		5 0 0.058818948300665683 2 0.031920498504074989 6 0.0039439706007233857 
		7 0.25924182947674479 8 0.64607475311779117
		1 0 0.04554699770781237;
	setAttr ".wl[399:405].w"
		5 2 0.045234327479985112 4 1.9213619010772673e-30 6 0.0073952393863446122 
		7 0.44888661786601614 8 0.45293681755984178
		6 0 0.030008449446679235 2 0.056248520667131131 4 8.0196622872948646e-06 
		6 0.016179351272027669 7 0.63740605042257958 8 0.26014960852929514
		6 0 0.015261221262576044 2 0.061707087919390023 4 0.0047870254280421142 
		6 0.04278362281061858 7 0.75946624320420875 8 0.11599479937516452
		6 0 0.0048023265707111363 2 0.061800690668968671 4 0.015240687158782004 
		6 0.11473358551650907 7 0.76019104695786721 8 0.043231663127161979
		6 0 8.0524413737654681e-06 2 0.056649143842101637 4 0.030095257460480512 
		6 0.25686139205281966 7 0.64003495893556495 8 0.016351195267659487
		5 2 0.046493397501032652 4 0.046035636544570803 6 0.44431831592984311 
		7 0.45562269553602947 8 0.0075299544885240799
		5 2 0.035666875600821019 4 0.060252718022149744 6 0.62062268067560578 
		7 0.2792232922526377 8 0.0042344334487857222;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -6.6435745793569034e-13 5.8079975888946053e-20 3.5895398617180069e-20 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -8.9447144655998793e-07 2.4202813391367658e-15 -16.555000305175756 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824219 2.4218443784488122e-22 16.555000305175781 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030249496683614e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772817375899082e-15 0 5.40302494966838e-08 -1.4619287770504545e-16 0.99999999999999856 0
		 8.9447013254886606e-07 -2.4201650550456468e-15 16.555000305175756 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode skinCluster -n "skinCluster5";
	rename -uid "079516E7-4FE9-EE27-56D9-519206E7F319";
	setAttr -s 406 ".wl";
	setAttr ".wl[0:74].w"
		5 0 0.041366575747676188 1 0.8689958904941425 2 0.010605075236431033 
		3 0.077753212297038091 5 0.001279246224712193
		5 0 0.033590122691523193 1 0.79267128306730961 2 0.013366936646763743 
		3 0.15837686703005238 5 0.0019947905643510821
		5 0 0.028940467743879646 1 0.62699235115116014 2 0.019655016229781719 
		3 0.32072501254526314 5 0.0036871523299155233
		6 0 0.02285704318584212 1 0.41972629226879171 2 0.025894376607537458 
		3 0.52409067335095005 4 1.2794128644360705e-08 5 0.0074316017927499997
		6 0 0.014927888368927052 1 0.22730948762086844 2 0.029836484115943574 
		3 0.70780027003150769 4 0.00070354493644966072 5 0.01942232492630358
		6 0 0.0071809816310629262 1 0.09445263549522874 2 0.031288752136905379 
		3 0.80472182242901347 4 0.0043181602056903724 5 0.058037648102099076
		6 0 0.0020383109423040596 1 0.031976498482956597 2 0.031788829487544489 
		3 0.76978944298337559 4 0.011315516104346123 5 0.15309140199947296
		6 0 5.6641741083402351e-07 1 0.011181253934058399 2 0.030578256601434914 
		3 0.62083570810793653 4 0.020689328758801709 5 0.31671488618035765
		5 1 0.0052403044333757939 2 0.026468679498076238 3 0.42564383444914716 
		4 0.030174605573007912 5 0.51247257604639285
		5 1 0.003207789957422312 2 0.022159120744971644 3 0.26174842102135276 
		4 0.039169613688343367 5 0.67371505458790992
		5 1 0.00257213410749197 2 0.021136714237232925 3 0.18882617847726119 
		4 0.046503911333711505 5 0.74096106184430233
		5 0 0.081825874169825646 1 0.81713276093435749 2 0.018917055384115037 
		3 0.080389658125071844 5 0.0017346513866300299
		5 0 0.070765844732170749 1 0.74612953197123122 2 0.025081072727546429 
		3 0.15531981137485606 5 0.0027037391941956436
		5 0 0.059361341180887206 1 0.59427107592887973 2 0.037409023367681309 
		3 0.30400683613861507 5 0.0049517233839366862
		6 0 0.045017389152273123 1 0.40272787547490574 2 0.051778948500507842 
		3 0.49055740765814071 4 5.9343185764339499e-06 5 0.0099124448955960568
		6 0 0.029047722336040312 1 0.2236478102162531 2 0.064071158280623972 
		3 0.65848594880096101 4 0.0013571083363873603 5 0.02339025202973426
		6 0 0.014326828235742158 1 0.098695041319749474 2 0.070745901432198346 
		3 0.7467865610325376 4 0.0083011095496925858 5 0.061144558430079723
		6 0 0.0042889434267229885 1 0.037733278212938183 2 0.070931541291270134 
		3 0.71655009825554383 4 0.021642202331285526 5 0.14885393648223935
		6 0 0.0001927112833336023 1 0.014987075742875437 2 0.064276934364280378 
		3 0.58282271592444834 4 0.039716890902668583 5 0.29800367178239356
		6 0 6.4186770371436471e-07 1 0.0071540803334327416 2 0.052496068886135346 
		3 0.40470626087477779 4 0.05919071449321682 5 0.47645223354473359
		6 0 4.3120020524537306e-07 1 0.0041689420081893235 2 0.041592977662121264 
		3 0.25202574146571644 4 0.077035625568740704 5 0.62517628209502707
		6 0 4.0882989406585695e-07 1 0.0031619427386493683 2 0.037535062015392306 
		3 0.18070295265929387 4 0.089207297327207197 5 0.6893923364295631
		7 0 0.1790296552834876 1 0.69391138346153924 2 0.037409271463467224 
		3 0.087434890350754163 4 2.5705230044406509e-07 5 0.002214038976100184 
		8 5.0341235111052354e-07
		6 0 0.16023390417940997 1 0.63462579837469035 2 0.051804577700431301 
		3 0.14995935541784972 4 1.6916168036139148e-06 5 0.0033746727108150171
		6 0 0.13280436766891451 1 0.51197102942090322 2 0.079206542119072382 
		3 0.26998874220686542 4 4.3375805570538987e-06 5 0.0060249810036873391
		6 0 0.098271944539186626 1 0.35559762027897984 2 0.11329685652569439 
		3 0.42014620516748064 4 0.0006903996859138437 5 0.011996973802744563
		6 0 0.062355402932085566 1 0.20714948600163277 2 0.14458635804454451 
		3 0.55377917947039423 4 0.0052424864578783648 5 0.026887087093464542
		6 0 0.031440696198206504 1 0.10053599550111483 2 0.16268637445101758 
		3 0.62367169948474366 4 0.01819213141946872 5 0.063473102945448584
		6 0 0.011003298668150988 1 0.042820832467995736 2 0.16117360430222805 
		3 0.60079965776089961 4 0.044872074088755091 5 0.13933053271197049
		6 0 0.002733381087911174 1 0.018046979215681522 2 0.14090250604919927 
		3 0.49622461100917187 4 0.081698042093137482 5 0.26039448054489867
		6 0 0.00027826431801043414 1 0.0085438640224060509 2 0.11045545849414032 
		3 0.35493568014960009 4 0.12271050491129221 5 0.40307622810455085
		7 0 0.00015428322808137479 1 0.0048370506619013886 2 0.083312681676027581 
		3 0.23222897268228337 4 0.1589483930433806 5 0.52051861561208113 6 
		3.0962444866100273e-09
		7 0 0.00011495944140768052 1 0.0035640885747396942 2 0.071474387927568189 
		3 0.1735067412906518 4 0.18017927462377109 5 0.57116053206248163 6 
		1.6079379916191099e-08
		7 0 0.32912646695599279 1 0.52656802902560196 2 0.060730009160762696 
		3 0.081616552740467363 4 9.5100486055591101e-05 5 0.0018551011847153095 
		8 8.7404464043049356e-06
		7 0 0.30097892076063909 1 0.48010602145722303 2 0.088567149995519179 
		3 0.12697738279030621 4 0.00061957116485082979 5 0.0027499855566714493 
		8 9.6827479015550036e-07
		6 0 0.24927255074633051 1 0.39045867668756062 2 0.14138617011415658 
		3 0.21243396386617536 4 0.0016200227783205027 5 0.0048286158074564876
		6 0 0.18186726625017177 1 0.27663083750449113 2 0.20858328487228506 
		3 0.31908027358779673 4 0.0041604753882613461 5 0.0096778623969939956
		6 0 0.11363661294716557 1 0.16716213318912726 2 0.27094493627880756 
		3 0.41401008699061903 4 0.012155083680685968 5 0.022091146913594636
		6 0 0.058220488481190096 1 0.084960352262344482 2 0.30681862501886104 
		3 0.46344342714352582 4 0.034203542001790127 5 0.052353565092288411
		6 0 0.023027935553449799 1 0.036428806127567825 2 0.30214195064132782 
		3 0.44762351937848699 4 0.07881669258879731 5 0.11196109571037033
		6 0 0.008056509421118286 1 0.01481266056989506 2 0.25935935210160033 
		3 0.374088123550884 4 0.1429609604103132 5 0.20072239394618921
		7 0 0.0031324438949753885 1 0.0067051130701330048 2 0.19709586488303893 
		3 0.2742196990339007 4 0.21639624186857997 5 0.30245063409746331 6 
		3.1519086892610736e-09
		7 0 0.0014997400492941446 1 0.0037047918905453643 2 0.14163912145221919 
		3 0.1877305951061323 4 0.27964805033714807 5 0.38577762134343535 6 
		7.982122570277186e-08
		7 0 0.00095247185885953913 1 0.0027079040406415462 2 0.1154176484356184 
		3 0.14611329961355377 4 0.31253982582794759 5 0.42226849743335415 
		6 3.5279002499580386e-07
		7 0 0.50932533746001551 1 0.34703068011817151 2 0.0795456208296174 
		3 0.062556403074892714 4 0.00051481550591436841 5 0.00080551976044306625 
		8 0.00022162325094552613
		7 0 0.47153293854689987 1 0.3122860580240937 2 0.12340928236315399 
		3 0.090061268812707818 4 0.0016150066376735218 5 0.0010823158001519639 
		8 1.3129815319096065e-05
		7 0 0.38959531487644655 1 0.25407620361674121 2 0.2085143038888099 
		3 0.1418575125878779 4 0.0040892343962653354 5 0.001866542100896502 
		8 8.8853296259549325e-07
		8 0 0.28005290045469178 1 0.18222625179114579 2 0.31828273974619398 
		3 0.20606212790634526 4 0.0092788891456114415 5 0.0040970580744801319 
		7 5.5960716173742395e-09 8 2.7285459964688126e-08
		7 0 0.171245865127507 1 0.11212608811535925 2 0.42007341177365104 
		3 0.26325883502497421 4 0.021861501247295124 5 0.011434167318788994 
		7 1.3139242436601272e-07
		6 0 0.087895708608789175 1 0.056565259777958933 2 0.47818507129706916 
		3 0.29302987469223862 4 0.052450543447817417 5 0.031873542176126674
		7 0 0.038204441559960542 1 0.021686091692825166 2 0.46944279415229756 
		3 0.28361926471461835 4 0.11397062990515681 5 0.073076682320526359 
		7 9.5654615240058003e-08
		8 0 0.015779783352764743 1 0.0071407362168273902 2 0.39804316399433537 
		3 0.23954187188676529 4 0.20883454078279917 5 0.13065922608800376 
		6 9.9251207013138879e-10 7 6.7668599217704293e-07
		8 0 0.0069888541918450833 1 0.002593348170982068 2 0.29456849054845846 
		3 0.17960025257918083 4 0.32188835325928455 5 0.19435973227374609 
		6 1.9396391427473949e-07 7 7.7501258856287385e-07
		8 0 0.0033145284632115526 1 0.001369208397150706 2 0.20138934617399062 
		3 0.1278036504705134 4 0.41896554862778107 5 0.24715573027122645 6 
		1.4475079918815788e-06 7 5.4008813434392997e-07
		7 0 0.0018898865322773456 1 0.0010556333635063171 2 0.15529113260698676 
		3 0.10319672576108981 4 0.46616886649907119 5 0.27239504356419825 
		6 2.7116728703975675e-06
		7 0 0.68183802141703109 1 0.19327185015341905 2 0.08461243120910103 
		3 0.038858134358067994 4 0.00024021865009404809 5 4.2725068188136718e-05 
		8 0.0011366191440987349
		7 0 0.63355298127577742 1 0.16952534698108035 2 0.14235825650206582 
		3 0.052171320456836437 4 0.0017496544567471993 5 3.7488369301333062e-05 
		8 0.00060495195819136593
		7 0 0.51989608727895686 1 0.13728091994312566 2 0.25986733411712659 
		3 0.078060782316997132 4 0.0048484443012091465 5 3.1558018738769046e-05 
		8 1.487402384568966e-05
		8 0 0.36640786719073454 1 0.09922937913857395 2 0.41309776848204566 
		3 0.10971515741650917 4 0.011021834243389934 5 0.0004951288509816911 
		7 1.2892375023103251e-05 8 1.9972302741942129e-05
		8 0 0.2155116861142784 1 0.061693996151678969 2 0.55535556997863056 
		3 0.13775861938710704 4 0.025141726889446242 5 0.0044109433686211376 
		7 9.0059271776366114e-05 8 3.7398838461396237e-05
		9 0 0.10476285155425404 1 0.030652280126171143 2 0.63709591197385873 
		3 0.15213768591653656 4 0.059635100492130222 5 0.015557114027848599 
		6 6.2281774995002908e-08 7 0.00015867554048669516 8 3.1808693907007517e-07
		8 0 0.044481129981819474 1 0.010349778826667261 2 0.62454208531922228 
		3 0.1476658583252948 4 0.13385679991206145 5 0.038844049315052101 
		6 1.6034493651132354e-05 7 0.00024426382623144501
		8 0 0.018563262774131315 1 0.0022981630783426754 2 0.52349381484575075 
		3 0.12647383945521309 4 0.25862482494591493 5 0.070056148278810432 
		6 0.00014007314518642232 7 0.00034987347665046693
		8 0 0.008272078228436789 1 6.1288771649762576e-06 2 0.37731780175656976 
		3 0.097120406714091612 4 0.41274343479366815 5 0.10385153586634986 
		6 0.00030056223037449643 7 0.00038805153334437305
		8 0 0.0037469631267415381 1 3.937934364306192e-06 2 0.24395601843228754 
		3 0.071529678932193058 4 0.54694534519878324 5 0.13290790891229914 
		6 0.00054448577417575913 7 0.0003656616891553254
		8 0 0.0019618469566352365 1 4.4638489831686018e-06 2 0.17613596385283053 
		3 0.05995897148413968 4 0.61159933703433034 5 0.14912486620973545 
		6 0.00082495292476707704 7 0.00038959768857854606
		8 0 0.81261044418129735 1 0.08766187286751484 2 0.074654556681844286 
		3 0.018961446901715868 4 0.00013400713265510899 5 1.6182620447107802e-07 
		7 1.6042774898556065e-05 8 0.005961467633869605
		8 0 0.75574847343004603 1 0.074042503795166525 2 0.14039562076019951 
		3 0.023809218071935409 4 0.0012256030795124234 5 9.6448500786191039e-08 
		7 0.00023353688511305043 8 0.0045449475295262142
		8 0 0.61269009121092088 1 0.059724045621960153 2 0.28380180584062331 
		3 0.034091298835569273 4 0.0038186972985931713 5 7.0769463854161631e-08 
		7 0.0017059063508658026 8 0.0041680840720036399
		8 0 0.42211224553882448 1 0.04343693472098354 2 0.47309101097029005 
		3 0.046388672800493795 4 0.0088859799803846784 5 1.3070803126979476e-06 
		7 0.0027883535367838989 8 0.0032954953719269227
		9 0 0.23690956632340923 1 0.027052779664029324 2 0.65159385862275576 
		3 0.057377617197526321 4 0.020697529157784819 5 0.00066743031387752813 
		6 6.0550305690812243e-08 7 0.0039127788940557431 8 0.0017883792762554917
		9 0 0.10415166100807512 1 0.013183868770084445 2 0.75652060750709316 
		3 0.062556874932323564 4 0.053141700992094747 5 0.0059006841428715486 
		6 2.7185435201088266e-05 7 0.0043526994324753401 8 0.00016471777978099454
		9 0 0.039441187757697956 1 0.0037637831240958292 2 0.74066699773553135 
		3 0.061060234275032453 4 0.13350582463322769 5 0.016200162949785508 
		6 0.00050665264398249961 7 0.0048542046416085996 8 9.5223903806162844e-07
		8 0 0.015460239940676938 1 7.1441123840494489e-06 2 0.61189558344935291 
		3 0.053577800506526913 4 0.28184090312093329 5 0.029540084603425599 
		6 0.0023084364119087455 7 0.0053698078547914311
		4 0 0.0068157033184591187 2 0.42850929253206588 3 0.042075704008982667 
		4 0.4694894020228364;
	setAttr ".wl[74:148].w"
		3 5 0.044008315052469972 6 0.0041017773681077752 7 0.0049998056970780745
		7 0 0.0029558441898081761 2 0.26113491799419519 3 0.031636897645829137 
		4 0.63643285760886514 5 0.057376612842757677 6 0.0063179869572279942 
		7 0.0041448827613165314
		7 0 0.0014378348522427081 2 0.17488692757350957 3 0.027516741211891529 
		4 0.71739741855390393 5 0.066291031755772833 6 0.0085030517959202526 
		7 0.0039669942567591666
		7 0 0.86903233259544399 1 0.029799053159871906 2 0.06365088352244623 
		3 0.006490301376776756 4 7.6453230294278227e-06 7 0.005324862606039947 
		8 0.025694921416391795
		7 0 0.81044095588085219 1 0.023598738486114403 2 0.13035190564678006 
		3 0.0076582531198028415 4 0.00034042987279535704 7 0.0063146964510222047 
		8 0.021295020542632947
		7 0 0.65311383965201297 1 0.019477183996195815 2 0.28577287186657441 
		3 0.010710203453237692 4 0.0028254729218083418 7 0.0094603009109471507 
		8 0.018640127199223547
		8 0 0.44405843268031286 1 0.01432559725666783 2 0.49241824840512621 
		3 0.014089825858236121 4 0.0067631199639317796 6 4.4054056931178679e-09 
		7 0.013859070881836345 8 0.014485700548483176
		9 0 0.24176532740758414 1 0.0085296310554112773 2 0.68890347382135153 
		3 0.017258302389148199 4 0.015970610558280453 5 2.1892999638523429e-06 
		6 1.5901531570540595e-05 7 0.018419105976029578 8 0.0091354579606604674
		9 0 0.098813309754089321 1 0.0036168941788926917 2 0.80795000001764283 
		3 0.018313914474860166 4 0.044939653916719904 5 0.00050625344007766378 
		6 0.00075804910889384946 7 0.020898871450284105 8 0.0042030536585395068
		9 0 0.03373083234603752 1 1.4760917175407072e-05 2 0.79041717089385943 
		3 0.018209932914869512 4 0.12558863558052391 5 0.0043630633521582517 
		6 0.0053799592698235621 7 0.022027554781850762 8 0.00026808994370149217
		8 0 0.012526337705516147 2 0.64632625033447466 3 0.016986815590072292 
		4 0.28307366012335972 5 0.0085234171666800848 6 0.010898762242357956 
		7 0.021664112355604684 8 6.4448193441264971e-07
		7 0 0.0056459984986954575 2 0.44623314280249349 3 0.013680274421395917 
		4 0.48476417349761053 5 0.013219749135272081 6 0.017635832820596452 
		7 0.018820828823936018
		7 0 0.0024373674449588495 2 0.26377025168100149 3 0.010057596015005147 
		4 0.66535621287730029 5 0.018140289125894639 6 0.025042844719981801 
		7 0.015195438135857746
		7 0 0.0011549547485992908 2 0.16972403277283918 3 0.0091274945552365771 
		4 0.75239731996298276 5 0.022163377499112485 6 0.031476773073894022 
		7 0.013956047387335659
		7 0 0.82409460159014503 1 0.0074170937486488127 2 0.07144329337533753 
		3 0.0004568441186700364 4 9.0811932016977628e-05 7 0.016962228109219858 
		8 0.07953512712596178
		7 0 0.76640749870646085 1 0.0052952236457335733 2 0.13464561404004968 
		3 0.0015394997159060421 4 0.0010875296223641876 7 0.021555268293582858 
		8 0.069469365975902642
		7 0 0.62221838325266843 1 0.0044941475584385345 2 0.27685464380176417 
		3 0.0022840786544394242 4 0.0036192249443900795 7 0.032028869907839749 
		8 0.058500651880459539
		8 0 0.42948751890144632 1 0.0033000234033503284 2 0.46540459804349393 
		3 0.0028825146033561182 4 0.0085279263649432023 6 2.1423132252858811e-06 
		7 0.045977988483278574 8 0.044417287886906229
		8 0 0.24205168494524373 1 0.0016609463740087618 2 0.6435872989484146 
		3 0.0035429201738661374 4 0.019852011601545042 6 0.00057980866014101554 
		7 0.059822446784168065 8 0.028902882512612669
		9 0 0.1073357834593181 1 7.6166121221513798e-06 2 0.74893116790316971 
		3 0.0035373323350859636 4 0.050912394523159273 5 8.9342052788114881e-07 
		6 0.0061072084600756853 7 0.068356536782073943 8 0.01481106650446732
		8 0 0.041271303004501256 2 0.73468220662476713 3 0.0036081965558780568 
		4 0.12819309087623143 5 0.00015831409150869575 6 0.017751971384268681 
		7 0.0697001974201817 8 0.0046347200426630816
		8 0 0.016407540840652147 2 0.60874604876353466 3 0.0037265569007079633 
		4 0.27173565835283853 5 0.0015163660794403964 6 0.03397685971683248 
		7 0.063667066813512446 8 0.00022390253248150222
		8 0 0.0072984893635854066 2 0.42834103006025293 3 0.0030562851454798714 
		4 0.45377144190412061 5 0.0025974091696292327 6 0.052830069408368055 
		7 0.05210457511084074 8 6.9983772326188744e-07
		8 0 0.0032156885939900945 2 0.26270044535351422 3 0.0020917186092155198 
		4 0.61614404723293636 5 0.003856437222833943 6 0.071396607889384456 
		7 0.04059452684203467 8 5.2825609073223949e-07
		8 0 0.0015674642880383731 2 0.17586284589488338 3 0.0019930768157039882 
		4 0.69453823212334276 5 0.0050616791068321468 6 0.085244840665534977 
		7 0.035731141914063756 8 7.1919160068035121e-07
		8 0 0.70121147734334266 1 0.0015066420451239344 2 0.08057288056967736 
		3 6.8058459903789933e-06 4 0.00011964372724882341 6 2.8753339660036897e-06 
		7 0.035634992998500647 8 0.18094468213615023
		8 0 0.65196186663140065 1 0.00082407021647569662 2 0.13426873054155519 
		3 4.6732145875668613e-05 4 0.0015253434318210838 6 2.6033559784275569e-06 
		7 0.047878591251829083 8 0.16349206242506414
		8 0 0.53562978946549678 1 8.3136156084514235e-05 2 0.24905487570662335 
		3 3.7164356805656207e-05 4 0.0044416161474597647 6 4.4027318123590386e-06 
		7 0.073649225928797482 8 0.13709978950691998
		8 0 0.37836537006306104 1 6.8445404841770394e-06 2 0.40075488897944872 
		3 5.8554921751472082e-07 4 0.010127738469869134 6 0.00027519262677098142 
		7 0.10770741240704894 8 0.10276196736409944
		7 0 0.22342983016646661 2 0.54248717899577703 3 6.0652618798010074e-06 
		4 0.022898575282425393 6 0.0039095130363246888 7 0.14092800779651171 
		8 0.066340829460614745
		6 0 0.10932741898611674 2 0.62504646525628149 4 0.054357745543275229 
		6 0.014789944032681305 7 0.16205524853771497 8 0.034423177643930387
		7 0 0.04667893686570989 2 0.61478576554317144 3 6.5769473295633939e-07 
		4 0.12318128306876365 6 0.039665367372528383 7 0.1634050275100152 
		8 0.012282961945078405
		8 0 0.019469818555856923 2 0.51716366486672205 3 7.4174163338803351e-06 
		4 0.24016154344553109 5 5.2025926390761283e-09 6 0.075224810919871682 
		7 0.14480466049575644 8 0.0031680790973351892
		8 0 0.0086656866197673283 2 0.37444692631862231 3 5.8858154152130459e-06 
		4 0.38581525294488767 5 7.3271502014900797e-07 6 0.11643497590610001 
		7 0.1143209336939537 8 0.00030960598623368626
		7 0 0.003945624590688237 2 0.2424425544212786 4 0.51356708939877083 
		5 7.7374536365082884e-06 6 0.15463265384527969 7 0.085210277342465321 
		8 0.00019406294788074313
		7 0 0.0020134143586401942 2 0.1727548760337615 4 0.57457977986822273 
		5 7.3394224200248714e-06 6 0.1792723542977829 7 0.071198002705125343 
		8 0.00017423331404733659
		7 0 0.53230377756266012 1 0.00031828858283130043 2 0.076515864352993596 
		4 0.00041561051480832261 6 0.00068527573225917804 7 0.057649077059407118 
		8 0.33211210619504056
		8 0 0.49256732300345729 1 3.9417814332620574e-05 2 0.11583075061319946 
		3 8.8068726457874361e-09 4 0.0014040818878310064 6 0.00091882711783155147 
		7 0.081806525089600152 8 0.30743306566687534
		8 0 0.40700689851373728 1 1.2715470796389849e-06 2 0.19745560334147147 
		3 5.5422612720773304e-08 4 0.0036517523861621867 6 0.0016087952054490949 
		7 0.13203190445876273 8 0.25824371912472499
		6 0 0.29284970014562001 2 0.30492971670015051 4 0.0081080711676213939 
		6 0.0034954446630008915 7 0.19921856358050594 8 0.1913985037431013
		6 0 0.17946064898574712 2 0.40558344916004063 4 0.018614809508634363 
		6 0.0098127197579775307 7 0.26479748549138593 8 0.12173088709621435
		6 0 0.092377870915952259 2 0.46400905173113244 4 0.044899585602758696 
		6 0.028690760090240824 7 0.30632561993702861 8 0.063697111722887181
		6 0 0.039773359121501581 2 0.45702228304948439 4 0.10004870379034078 
		6 0.070371220547516572 7 0.30734506901939718 8 0.025439364471759433
		6 0 0.015996342848353891 2 0.38837155246757027 4 0.18624897541732055 
		6 0.13261554508410381 7 0.26788153171451051 8 0.0088860524681409567
		7 0 0.0068794472215333528 2 0.28756194968698645 4 0.2899652660018523 
		5 9.0683466191523035e-09 6 0.20663124435948577 7 0.20544100075682387 
		8 0.0035210829049715821
		7 0 0.0031972872733712528 2 0.19485180911687613 4 0.38016574353906973 
		5 2.3198151180684858e-07 6 0.27365545964370874 7 0.14621918498703126 
		8 0.0019102834584311223
		7 0 0.0017189417525839805 2 0.1460228702392839 4 0.42382367045826996 
		5 1.5824766198396683e-06 6 0.31156978384307371 7 0.11539907984708953 
		8 0.0014640713830790519
		7 0 0.35137345767838346 1 2.4986400659438025e-05 2 0.059400515242618433 
		4 4.7585697858545269e-05 6 0.0016698035270227398 7 0.074689313935925691 
		8 0.51279433751753167
		7 0 0.32005511950935167 1 1.7139151183128432e-06 2 0.083242734297473864 
		4 0.00054294822119793781 6 0.0024119594423369748 7 0.11259188922071869 
		8 0.48115363539380257
		7 0 0.26421977325639373 1 1.7045812621609021e-08 2 0.13288951792026255 
		4 0.0014055088765767797 6 0.0041849156973538942 7 0.19349305631376534 
		8 0.40380721088983507
		6 0 0.1924504398704672 2 0.1976571860431531 4 0.0032703948224285782 
		6 0.0082113691866339249 7 0.30314949350131098 8 0.29526111657600623
		6 0 0.12044113069144684 2 0.25824470003487771 4 0.0091112293331593614 
		6 0.018498065508202589 7 0.4100617887175686 8 0.1836430857147448
		6 0 0.061987959393581413 2 0.29337239194039627 4 0.026602362470081652 
		6 0.044963468823576581 7 0.47742564733968379 8 0.095648170032680155
		6 0 0.023981660081452104 2 0.28921978692980782 4 0.065353974345837715 
		6 0.10170140114078129 7 0.47797331711075891 8 0.041769860391362212
		6 0 0.0078336543018235841 2 0.24806517539389619 4 0.12181232537970994 
		6 0.19312812311608485 7 0.41192353420648847 8 0.017237187601996936
		6 0 0.0026934472986602735 2 0.18761978228422344 4 0.18671869669676705 
		6 0.30681167911586205 7 0.30827294781464942 8 0.0078834467898377739
		7 0 0.0011957076037173294 2 0.13208669064479187 4 0.243184831575047 
		5 4.6544125504843513e-09 6 0.40994712462239452 7 0.2092536382197081 
		8 0.0043320026799286608
		7 0 0.00069353441726994515 2 0.10338672965720593 4 0.2732022956453079 
		5 9.9117482304573051e-08 6 0.46414220394918937 7 0.15552786115234721 
		8 0.0030472760611973998
		5 0 0.070937047152023078 2 0.015289604192475556 6 0.0014274045193423033 
		7 0.065531096698647137 8 0.8468148474375119
		5 2 0.025215233076300168 4 0.057049476672077264 6 0.72853090570794354 
		7 0.18645590544107901 8 0.0027484791026000013
		5 0 0.046145818112399463 2 0.010640796686911702 6 0.0011779678092104795 
		7 0.06302550801683765 8 0.87900990937464063
		5 0 0.036288273429385322 2 0.012128567072104501 6 0.0016459975698524547 
		7 0.11881353626194066 8 0.83112362566671705
		5 0 0.031005088942702208 2 0.018054543178758185 6 0.0030175111111898131 
		7 0.26502347134516296 8 0.68289938542218687
		5 0 0.024938316745877025 2 0.024586835586206678 6 0.0055260760199677952 
		7 0.46815944003339288 8 0.47678933161455561
		5 0 0.016909572392920253 2 0.02874811481310463 6 0.012521092146803617 
		7 0.67130671615188353 8 0.27051450449528786
		6 0 0.0085359779778051981 2 0.029635868392373681 4 0.0025724474154696464 
		6 0.037710993959854604 7 0.80529266020408419 8 0.11625205205041265
		6 0 0.0026799513895149232 2 0.029700889541927341 4 0.0083774560673789984 
		6 0.11224787005015754 7 0.80762723708850104 8 0.039366595862520212
		6 0 3.3449248298585419e-05 2 0.029053002164396224 4 0.016869687685661494 
		6 0.26300164205124021 7 0.67797169193977869 8 0.013070526910624741
		5 2 0.025535046170040369 4 0.025509729054717004 6 0.4632466116650179 
		7 0.47994484279811306 8 0.0057637703121117953
		5 2 0.020557278819901943 4 0.032880982420010925 6 0.65167097653598782 
		7 0.29155086030965671 8 0.0033399019144426585
		5 2 0.019216944307892028 4 0.04136330512827021 6 0.74553989753069894 
		7 0.19137958060490298 8 0.0025002724282357693
		5 0 0.070740170583005205 2 0.021633024959715991 6 0.0022304364215088349 
		7 0.12251484911565327 8 0.78288151892011659
		5 0 0.05929604731060982 2 0.032259506996121144 6 0.0039795632913221159 
		7 0.26006442719140305 8 0.6444004552105439
		6 0 0.045405387150084332 2 0.045223822619371828 4 3.9435604287034991e-08 
		6 0.0074327568331103554 7 0.44988519408035754 8 0.45205279988147162
		1 0 0.029602695135323227;
	setAttr ".wl[148:234].w"
		5 2 0.055573800806942464 4 3.0217974910608174e-05 6 0.016214295081561768 
		7 0.63891441177592567 8 0.25966457922533615
		6 0 0.014887762334040206 2 0.060173132903034221 4 0.0047291790145612897 
		6 0.042884264652934455 7 0.76174207533912375 8 0.11558358575630603
		6 0 0.0046278907449115447 2 0.05952580748118106 4 0.014826853277696211 
		6 0.11524878102378916 7 0.76299468957307648 8 0.042775977899345639
		6 0 7.2765487032144093e-06 2 0.054053995007298419 4 0.028944801364817328 
		6 0.25839739186472405 7 0.64261564714338637 8 0.015980888071070717
		5 2 0.044039005539876913 4 0.043743120332290976 6 0.44750191186149108 
		7 0.45741226319993628 8 0.0073036990664047466
		5 2 0.033568010785732072 4 0.056552652540392358 6 0.62557036512139597 
		7 0.28020609429197885 8 0.004102877260500775
		5 0 0.062566588276299143 2 0.017512054323861874 6 0.001855667512478026 
		7 0.10489434455806851 8 0.81317134532929236
		5 0 0.056424726383814933 2 0.02104936838603336 6 0.0025004115511200299 
		7 0.16169192701706242 8 0.75833356666196916
		5 0 0.052499551799744866 2 0.024852705170116327 6 0.0031807981376864281 
		7 0.22076095890244682 8 0.69870598599000555
		5 0 0.047583818510446178 2 0.015221433133469952 6 0.0018348561031412646 
		7 0.11988875822935996 8 0.81547113402358273
		5 0 0.046512804983411232 2 0.030615913837269425 6 0.0045573093654169578 
		7 0.31791473321689989 8 0.6003992385970025
		5 0 0.041775848402386892 2 0.035148590605526282 6 0.0058681268451118897 
		7 0.39962417144033791 8 0.51758326270663713
		5 0 0.040301700955434096 2 0.022686650394427604 6 0.003328479469703534 
		7 0.26334891428745499 8 0.67033425489297982
		6 0 0.034652817061048419 2 0.040620334983979052 4 1.5171715059412204e-06 
		6 0.0091262947957824019 7 0.51237872813870466 8 0.40322030784897966
		6 0 0.029069210025296423 2 0.044006913150231732 4 3.6670192393999074e-06 
		6 0.012534458006204358 7 0.59397198628488612 8 0.32041376551414197
		5 0 0.031635119710139319 2 0.031286577229373905 6 0.0061350856214212853 
		7 0.46226976121081459 8 0.46867345622825085
		6 0 0.021566106270650309 2 0.047230846098962033 4 0.0011547903582753943 
		6 0.022426405081225138 7 0.68725417502823527 8 0.22036767716265188
		6 0 0.016276279461144946 2 0.04852181850840092 4 0.0028109743521181423 
		6 0.033373590785793647 7 0.74063988634208 8 0.15837745055046232
		6 0 0.02086874676218263 2 0.037053782766347326 4 2.4076911997857673e-06 
		6 0.013636431424207212 7 0.66146897486000811 8 0.26696965649605492
		6 0 0.010096648802523558 2 0.049211167327250276 4 0.0064342829112231641 
		6 0.062067428883673781 7 0.77821223572603637 8 0.093978236349292782
		6 0 0.0064311960055363146 2 0.048942875639053605 4 0.010017424357051042 
		6 0.092785536793119447 7 0.77895566747330491 8 0.062867299731934709
		6 0 0.010413098615042436 2 0.038605189694562073 4 0.0031935330096526039 
		6 0.039181519836707077 7 0.79276539382713163 8 0.11584126501690413
		6 0 0.0027728452691053139 2 0.047598250956492227 4 0.015971037585187482 
		6 0.15626291355654448 7 0.74376788641611191 8 0.033627066216558595
		6 0 0.0011328603955195748 2 0.045942665240794989 4 0.021006168019143491 
		6 0.21766301381783709 7 0.69174245766342513 8 0.02251283486327979
		6 0 0.0032214873135380799 2 0.037967746698041968 4 0.01015011892678375 
		6 0.11306794089319673 7 0.79541230510175698 8 0.040180401066682518
		6 0 3.2365007620967234e-06 2 0.042535663192504673 4 0.028068779133459423 
		6 0.31613250184264197 7 0.60080382354591388 8 0.012455995784718028
		6 0 1.3045683993411038e-06 2 0.039261837763244253 4 0.033257290623748416 
		6 0.39747398948096474 7 0.52095591760810056 8 0.0090496599555427333
		6 0 2.4559494298703809e-05 2 0.035549029601096724 4 0.019991027280742871 
		6 0.26196145328532239 7 0.66869531000657401 8 0.013778620331965212
		5 2 0.034531405572459359 4 0.039888594391805955 6 0.50656970656398337 
		7 0.41315738939991525 8 0.005852904071836031
		5 2 0.030946590513203531 4 0.044303141002398898 6 0.58318941970134719 
		7 0.33692388941236706 8 0.0046369593706834297
		6 0 1.2771945473918528e-08 2 0.029995984667762782 4 0.029890745524544206 
		6 0.45980208476217771 7 0.47418853099610325 8 0.006122641277466593
		5 2 0.027524211355906318 4 0.050158855495815967 6 0.66305276038476246 
		7 0.25577232398672506 8 0.0034918487767902138
		5 2 0.023428404950817543 4 0.038106926828353413 6 0.64634988559706008 
		7 0.28861036125726736 8 0.0035044213665016361
		7 0 0.18918565234773058 1 7.3917308501105361e-07 2 0.036368644105144614 
		4 1.4696980382313214e-07 6 0.0020627091577316084 7 0.078353393331804674 
		8 0.69402871491469975
		7 0 0.10569780148906115 1 1.2551872948977234e-07 2 0.02162879731605942 
		4 2.4030970795791279e-09 6 0.0016810255181923877 7 0.069573173482978951 
		8 0.80141907427188142
		6 0 0.16762771564392512 2 0.047425158880627191 4 1.2552124448402562e-06 
		6 0.0029733182828372848 7 0.12796785292109644 8 0.65400469905906899
		6 0 0.090405789408548154 2 0.026867881574589681 4 2.0405659608312154e-07 
		6 0.002413230179588716 7 0.12394602177813831 8 0.75636687300253902
		6 0 0.13843686493721399 2 0.07196801174401754 4 3.6019279121490937e-06 
		6 0.0051199668468862375 7 0.24021490837441467 8 0.54425664616955527
		6 0 0.074654712105748311 2 0.039922359010070012 4 5.3636170152350897e-07 
		6 0.0042679710005075946 7 0.25660523789838008 8 0.62454918362359246
		6 0 0.10246227238810782 2 0.10365886259187901 4 8.1089749409482247e-05 
		6 0.0097240633484752884 7 0.39418701587096355 8 0.38988669605116488
		6 0 0.055953598245979071 2 0.055936830916843046 4 4.8288223951708892e-06 
		6 0.0080170559170472909 7 0.43988111725718915 8 0.44020656884054626
		6 0 0.065174796191291823 2 0.13232690889976745 4 0.0030030350786841051 
		6 0.021046748047135962 7 0.54514874234050992 8 0.23329976944261074
		6 0 0.035865299247365964 2 0.068956652752313191 4 0.00038483407586598523 
		6 0.017430327977102068 7 0.62246654741467788 8 0.25489633853267485
		6 0 0.033210347948109245 2 0.1484222930494021 4 0.012244592689050681 
		6 0.050402204052496229 7 0.64132809670817559 8 0.11439246555276607
		6 0 0.017924156663065727 2 0.074750186585377354 4 0.0058906199047900707 
		6 0.044737530157865232 7 0.74115554895754665 8 0.11554195773135492
		6 0 0.011371321625562328 2 0.14644693450738067 4 0.034046862718407317 
		6 0.11789117884505872 7 0.64191173884263741 8 0.048331963460953614
		6 0 0.0056009795360988665 2 0.073063581076028963 4 0.017801274149171268 
		6 0.11630338073042323 7 0.74309829607763878 8 0.044132488430638911
		6 0 0.002544881859725007 2 0.12752506443786454 4 0.064512578061774906 
		6 0.23840112852777895 7 0.54701154004201513 8 0.020004807070841367
		6 0 0.00015699889640109912 2 0.064781854924738341 4 0.034157111842794942 
		6 0.25609422024182876 7 0.6277780982381338 8 0.017031715856102993
		6 0 6.0201801946564051e-06 2 0.09906736002187802 4 0.098154513570327243 
		6 0.3943082482658769 7 0.39916075265889484 8 0.0093031053028283898
		6 0 2.1837666885551729e-07 2 0.051521442572941653 4 0.051164365928272781 
		6 0.44068141351368045 7 0.44878170832270081 8 0.0078508512857354898
		6 0 3.1329270744413345e-06 2 0.072358641955470995 4 0.12763012632640197 
		6 0.53826024063794908 7 0.25661905948066754 8 0.0051287986724361384
		6 0 4.3048476039770237e-08 2 0.038510737299553538 4 0.065568946616977056 
		6 0.61501442482457302 7 0.27652501670364416 8 0.0043808315067761349
		5 2 0.032906780679793836 4 0.077046705327406872 6 0.70559424980694319 
		7 0.18137674115415722 8 0.0030755230316987631
		6 0 2.3772001004219057e-06 2 0.059292972318823571 4 0.14639131313046558 
		6 0.61296033294389107 7 0.17779740141238898 8 0.0035556029943304064
		5 0 0.041366575747676188 1 0.8689958904941425 2 0.010605075236431033 
		3 0.077753212297038091 5 0.001279246224712193
		5 0 0.033590122691523193 1 0.79267128306730961 2 0.013366936646763743 
		3 0.15837686703005238 5 0.0019947905643510821
		5 0 0.070765844732170749 1 0.74612953197123122 2 0.025081072727546429 
		3 0.15531981137485606 5 0.0027037391941956436
		5 0 0.081825874169825646 1 0.81713276093435749 2 0.018917055384115037 
		3 0.080389658125071844 5 0.0017346513866300299
		5 0 0.028940467743879646 1 0.62699235115116014 2 0.019655016229781719 
		3 0.32072501254526314 5 0.0036871523299155233
		5 0 0.059361341180887206 1 0.59427107592887973 2 0.037409023367681309 
		3 0.30400683613861507 5 0.0049517233839366862
		6 0 0.02285704318584212 1 0.41972629226879171 2 0.025894376607537458 
		3 0.52409067335095005 4 1.2794128644360705e-08 5 0.0074316017927499997
		6 0 0.045017389152273123 1 0.40272787547490574 2 0.051778948500507842 
		3 0.49055740765814071 4 5.9343185764339499e-06 5 0.0099124448955960568
		6 0 0.014927888368927052 1 0.22730948762086844 2 0.029836484115943574 
		3 0.70780027003150769 4 0.00070354493644966072 5 0.01942232492630358
		6 0 0.029047722336040312 1 0.2236478102162531 2 0.064071158280623972 
		3 0.65848594880096101 4 0.0013571083363873603 5 0.02339025202973426
		6 0 0.0071809816310629262 1 0.09445263549522874 2 0.031288752136905379 
		3 0.80472182242901347 4 0.0043181602056903724 5 0.058037648102099076
		6 0 0.014326828235742158 1 0.098695041319749474 2 0.070745901432198346 
		3 0.7467865610325376 4 0.0083011095496925858 5 0.061144558430079723
		6 0 0.0020383109423040596 1 0.031976498482956597 2 0.031788829487544489 
		3 0.76978944298337559 4 0.011315516104346123 5 0.15309140199947296
		6 0 0.0042889434267229885 1 0.037733278212938183 2 0.070931541291270134 
		3 0.71655009825554383 4 0.021642202331285526 5 0.14885393648223935
		6 0 5.6641741083402351e-07 1 0.011181253934058399 2 0.030578256601434914 
		3 0.62083570810793653 4 0.020689328758801709 5 0.31671488618035765
		6 0 0.0001927112833336023 1 0.014987075742875437 2 0.064276934364280378 
		3 0.58282271592444834 4 0.039716890902668583 5 0.29800367178239356
		5 1 0.0052403044333757939 2 0.026468679498076238 3 0.42564383444914716 
		4 0.030174605573007912 5 0.51247257604639285
		6 0 6.4186770371436471e-07 1 0.0071540803334327416 2 0.052496068886135346 
		3 0.40470626087477779 4 0.05919071449321682 5 0.47645223354473359
		5 1 0.003207789957422312 2 0.022159120744971644 3 0.26174842102135276 
		4 0.039169613688343367 5 0.67371505458790992
		6 0 4.3120020524537306e-07 1 0.0041689420081893235 2 0.041592977662121264 
		3 0.25202574146571644 4 0.077035625568740704 5 0.62517628209502707
		5 1 0.00257213410749197 2 0.021136714237232925 3 0.18882617847726119 
		4 0.046503911333711505 5 0.74096106184430233
		6 0 4.0882989406585695e-07 1 0.0031619427386493683 2 0.037535062015392306 
		3 0.18070295265929387 4 0.089207297327207197 5 0.6893923364295631
		6 0 0.16023390417940997 1 0.63462579837469035 2 0.051804577700431301 
		3 0.14995935541784972 4 1.6916168036139148e-06 5 0.0033746727108150171
		7 0 0.1790296552834876 1 0.69391138346153924 2 0.037409271463467224 
		3 0.087434890350754163 4 2.5705230044406509e-07 5 0.002214038976100184 
		8 5.0341235111052354e-07
		6 0 0.13280436766891451 1 0.51197102942090322 2 0.079206542119072382 
		3 0.26998874220686542 4 4.3375805570538987e-06 5 0.0060249810036873391
		6 0 0.098271944539186626 1 0.35559762027897984 2 0.11329685652569439 
		3 0.42014620516748064 4 0.0006903996859138437 5 0.011996973802744563
		6 0 0.062355402932085566 1 0.20714948600163277 2 0.14458635804454451 
		3 0.55377917947039423 4 0.0052424864578783648 5 0.026887087093464542
		6 0 0.031440696198206504 1 0.10053599550111483 2 0.16268637445101758 
		3 0.62367169948474366 4 0.01819213141946872 5 0.063473102945448584
		6 0 0.011003298668150988 1 0.042820832467995736 2 0.16117360430222805 
		3 0.60079965776089961 4 0.044872074088755091 5 0.13933053271197049
		6 0 0.002733381087911174 1 0.018046979215681522 2 0.14090250604919927 
		3 0.49622461100917187 4 0.081698042093137482 5 0.26039448054489867
		6 0 0.00027826431801043414 1 0.0085438640224060509 2 0.11045545849414032 
		3 0.35493568014960009 4 0.12271050491129221 5 0.40307622810455085
		6 0 0.00015428322808137479 1 0.0048370506619013886 2 0.083312681676027581 
		3 0.23222897268228337 4 0.1589483930433806 5 0.52051861561208113;
	setAttr ".wl[234:301].w"
		1 6 3.0962444866100273e-09
		7 0 0.00011495944140768052 1 0.0035640885747396942 2 0.071474387927568189 
		3 0.1735067412906518 4 0.18017927462377109 5 0.57116053206248163 6 
		1.6079379916191099e-08
		7 0 0.30097892076063909 1 0.48010602145722303 2 0.088567149995519179 
		3 0.12697738279030621 4 0.00061957116485082979 5 0.0027499855566714493 
		8 9.6827479015550036e-07
		7 0 0.32912646695599279 1 0.52656802902560196 2 0.060730009160762696 
		3 0.081616552740467363 4 9.5100486055591101e-05 5 0.0018551011847153095 
		8 8.7404464043049356e-06
		6 0 0.24927255074633051 1 0.39045867668756062 2 0.14138617011415658 
		3 0.21243396386617536 4 0.0016200227783205027 5 0.0048286158074564876
		6 0 0.18186726625017177 1 0.27663083750449113 2 0.20858328487228506 
		3 0.31908027358779673 4 0.0041604753882613461 5 0.0096778623969939956
		6 0 0.11363661294716557 1 0.16716213318912726 2 0.27094493627880756 
		3 0.41401008699061903 4 0.012155083680685968 5 0.022091146913594636
		6 0 0.058220488481190096 1 0.084960352262344482 2 0.30681862501886104 
		3 0.46344342714352582 4 0.034203542001790127 5 0.052353565092288411
		6 0 0.023027935553449799 1 0.036428806127567825 2 0.30214195064132782 
		3 0.44762351937848699 4 0.07881669258879731 5 0.11196109571037033
		6 0 0.008056509421118286 1 0.01481266056989506 2 0.25935935210160033 
		3 0.374088123550884 4 0.1429609604103132 5 0.20072239394618921
		7 0 0.0031324438949753885 1 0.0067051130701330048 2 0.19709586488303893 
		3 0.2742196990339007 4 0.21639624186857997 5 0.30245063409746331 6 
		3.1519086892610736e-09
		7 0 0.0014997400492941446 1 0.0037047918905453643 2 0.14163912145221919 
		3 0.1877305951061323 4 0.27964805033714807 5 0.38577762134343535 6 
		7.982122570277186e-08
		7 0 0.00095247185885953913 1 0.0027079040406415462 2 0.1154176484356184 
		3 0.14611329961355377 4 0.31253982582794759 5 0.42226849743335415 
		6 3.5279002499580386e-07
		7 0 0.47153293854689987 1 0.3122860580240937 2 0.12340928236315399 
		3 0.090061268812707818 4 0.0016150066376735218 5 0.0010823158001519639 
		8 1.3129815319096065e-05
		7 0 0.50932533746001551 1 0.34703068011817151 2 0.0795456208296174 
		3 0.062556403074892714 4 0.00051481550591436841 5 0.00080551976044306625 
		8 0.00022162325094552613
		7 0 0.38959531487644655 1 0.25407620361674121 2 0.2085143038888099 
		3 0.1418575125878779 4 0.0040892343962653354 5 0.001866542100896502 
		8 8.8853296259549325e-07
		8 0 0.28005290045469178 1 0.18222625179114579 2 0.31828273974619398 
		3 0.20606212790634526 4 0.0092788891456114415 5 0.0040970580744801319 
		7 5.5960716173742395e-09 8 2.7285459964688126e-08
		7 0 0.171245865127507 1 0.11212608811535925 2 0.42007341177365104 
		3 0.26325883502497421 4 0.021861501247295124 5 0.011434167318788994 
		7 1.3139242436601272e-07
		6 0 0.087895708608789175 1 0.056565259777958933 2 0.47818507129706916 
		3 0.29302987469223862 4 0.052450543447817417 5 0.031873542176126674
		7 0 0.038204441559960542 1 0.021686091692825166 2 0.46944279415229756 
		3 0.28361926471461835 4 0.11397062990515681 5 0.073076682320526359 
		7 9.5654615240058003e-08
		8 0 0.015779783352764743 1 0.0071407362168273902 2 0.39804316399433537 
		3 0.23954187188676529 4 0.20883454078279917 5 0.13065922608800376 
		6 9.9251207013138879e-10 7 6.7668599217704293e-07
		8 0 0.0069888541918450833 1 0.002593348170982068 2 0.29456849054845846 
		3 0.17960025257918083 4 0.32188835325928455 5 0.19435973227374609 
		6 1.9396391427473949e-07 7 7.7501258856287385e-07
		8 0 0.0033145284632115526 1 0.001369208397150706 2 0.20138934617399062 
		3 0.1278036504705134 4 0.41896554862778107 5 0.24715573027122645 6 
		1.4475079918815788e-06 7 5.4008813434392997e-07
		7 0 0.0018898865322773456 1 0.0010556333635063171 2 0.15529113260698676 
		3 0.10319672576108981 4 0.46616886649907119 5 0.27239504356419825 
		6 2.7116728703975675e-06
		7 0 0.63355298127577742 1 0.16952534698108035 2 0.14235825650206582 
		3 0.052171320456836437 4 0.0017496544567471993 5 3.7488369301333062e-05 
		8 0.00060495195819136593
		7 0 0.68183802141703109 1 0.19327185015341905 2 0.08461243120910103 
		3 0.038858134358067994 4 0.00024021865009404809 5 4.2725068188136718e-05 
		8 0.0011366191440987349
		7 0 0.51989608727895686 1 0.13728091994312566 2 0.25986733411712659 
		3 0.078060782316997132 4 0.0048484443012091465 5 3.1558018738769046e-05 
		8 1.487402384568966e-05
		8 0 0.36640786719073454 1 0.09922937913857395 2 0.41309776848204566 
		3 0.10971515741650917 4 0.011021834243389934 5 0.0004951288509816911 
		7 1.2892375023103251e-05 8 1.9972302741942129e-05
		8 0 0.2155116861142784 1 0.061693996151678969 2 0.55535556997863056 
		3 0.13775861938710704 4 0.025141726889446242 5 0.0044109433686211376 
		7 9.0059271776366114e-05 8 3.7398838461396237e-05
		9 0 0.10476285155425404 1 0.030652280126171143 2 0.63709591197385873 
		3 0.15213768591653656 4 0.059635100492130222 5 0.015557114027848599 
		6 6.2281774995002908e-08 7 0.00015867554048669516 8 3.1808693907007517e-07
		8 0 0.044481129981819474 1 0.010349778826667261 2 0.62454208531922228 
		3 0.1476658583252948 4 0.13385679991206145 5 0.038844049315052101 
		6 1.6034493651132354e-05 7 0.00024426382623144501
		8 0 0.018563262774131315 1 0.0022981630783426754 2 0.52349381484575075 
		3 0.12647383945521309 4 0.25862482494591493 5 0.070056148278810432 
		6 0.00014007314518642232 7 0.00034987347665046693
		8 0 0.008272078228436789 1 6.1288771649762576e-06 2 0.37731780175656976 
		3 0.097120406714091612 4 0.41274343479366815 5 0.10385153586634986 
		6 0.00030056223037449643 7 0.00038805153334437305
		8 0 0.0037469631267415381 1 3.937934364306192e-06 2 0.24395601843228754 
		3 0.071529678932193058 4 0.54694534519878324 5 0.13290790891229914 
		6 0.00054448577417575913 7 0.0003656616891553254
		8 0 0.0019618469566352365 1 4.4638489831686018e-06 2 0.17613596385283053 
		3 0.05995897148413968 4 0.61159933703433034 5 0.14912486620973545 
		6 0.00082495292476707704 7 0.00038959768857854606
		8 0 0.75574847343004603 1 0.074042503795166525 2 0.14039562076019951 
		3 0.023809218071935409 4 0.0012256030795124234 5 9.6448500786191039e-08 
		7 0.00023353688511305043 8 0.0045449475295262142
		8 0 0.81261044418129735 1 0.08766187286751484 2 0.074654556681844286 
		3 0.018961446901715868 4 0.00013400713265510899 5 1.6182620447107802e-07 
		7 1.6042774898556065e-05 8 0.005961467633869605
		8 0 0.61269009121092088 1 0.059724045621960153 2 0.28380180584062331 
		3 0.034091298835569273 4 0.0038186972985931713 5 7.0769463854161631e-08 
		7 0.0017059063508658026 8 0.0041680840720036399
		8 0 0.42211224553882448 1 0.04343693472098354 2 0.47309101097029005 
		3 0.046388672800493795 4 0.0088859799803846784 5 1.3070803126979476e-06 
		7 0.0027883535367838989 8 0.0032954953719269227
		9 0 0.23690956632340923 1 0.027052779664029324 2 0.65159385862275576 
		3 0.057377617197526321 4 0.020697529157784819 5 0.00066743031387752813 
		6 6.0550305690812243e-08 7 0.0039127788940557431 8 0.0017883792762554917
		9 0 0.10415166100807512 1 0.013183868770084445 2 0.75652060750709316 
		3 0.062556874932323564 4 0.053141700992094747 5 0.0059006841428715486 
		6 2.7185435201088266e-05 7 0.0043526994324753401 8 0.00016471777978099454
		9 0 0.039441187757697956 1 0.0037637831240958292 2 0.74066699773553135 
		3 0.061060234275032453 4 0.13350582463322769 5 0.016200162949785508 
		6 0.00050665264398249961 7 0.0048542046416085996 8 9.5223903806162844e-07
		8 0 0.015460239940676938 1 7.1441123840494489e-06 2 0.61189558344935291 
		3 0.053577800506526913 4 0.28184090312093329 5 0.029540084603425599 
		6 0.0023084364119087455 7 0.0053698078547914311
		7 0 0.0068157033184591187 2 0.42850929253206588 3 0.042075704008982667 
		4 0.4694894020228364 5 0.044008315052469972 6 0.0041017773681077752 
		7 0.0049998056970780745
		7 0 0.0029558441898081761 2 0.26113491799419519 3 0.031636897645829137 
		4 0.63643285760886514 5 0.057376612842757677 6 0.0063179869572279942 
		7 0.0041448827613165314
		7 0 0.0014378348522427081 2 0.17488692757350957 3 0.027516741211891529 
		4 0.71739741855390393 5 0.066291031755772833 6 0.0085030517959202526 
		7 0.0039669942567591666
		7 0 0.81044095588085219 1 0.023598738486114403 2 0.13035190564678006 
		3 0.0076582531198028415 4 0.00034042987279535704 7 0.0063146964510222047 
		8 0.021295020542632947
		7 0 0.86903233259544399 1 0.029799053159871906 2 0.06365088352244623 
		3 0.006490301376776756 4 7.6453230294278227e-06 7 0.005324862606039947 
		8 0.025694921416391795
		7 0 0.65311383965201297 1 0.019477183996195815 2 0.28577287186657441 
		3 0.010710203453237692 4 0.0028254729218083418 7 0.0094603009109471507 
		8 0.018640127199223547
		8 0 0.44405843268031286 1 0.01432559725666783 2 0.49241824840512621 
		3 0.014089825858236121 4 0.0067631199639317796 6 4.4054056931178679e-09 
		7 0.013859070881836345 8 0.014485700548483176
		9 0 0.24176532740758414 1 0.0085296310554112773 2 0.68890347382135153 
		3 0.017258302389148199 4 0.015970610558280453 5 2.1892999638523429e-06 
		6 1.5901531570540595e-05 7 0.018419105976029578 8 0.0091354579606604674
		9 0 0.098813309754089321 1 0.0036168941788926917 2 0.80795000001764283 
		3 0.018313914474860166 4 0.044939653916719904 5 0.00050625344007766378 
		6 0.00075804910889384946 7 0.020898871450284105 8 0.0042030536585395068
		9 0 0.03373083234603752 1 1.4760917175407072e-05 2 0.79041717089385943 
		3 0.018209932914869512 4 0.12558863558052391 5 0.0043630633521582517 
		6 0.0053799592698235621 7 0.022027554781850762 8 0.00026808994370149217
		8 0 0.012526337705516147 2 0.64632625033447466 3 0.016986815590072292 
		4 0.28307366012335972 5 0.0085234171666800848 6 0.010898762242357956 
		7 0.021664112355604684 8 6.4448193441264971e-07
		7 0 0.0056459984986954575 2 0.44623314280249349 3 0.013680274421395917 
		4 0.48476417349761053 5 0.013219749135272081 6 0.017635832820596452 
		7 0.018820828823936018
		7 0 0.0024373674449588495 2 0.26377025168100149 3 0.010057596015005147 
		4 0.66535621287730029 5 0.018140289125894639 6 0.025042844719981801 
		7 0.015195438135857746
		7 0 0.0011549547485992908 2 0.16972403277283918 3 0.0091274945552365771 
		4 0.75239731996298276 5 0.022163377499112485 6 0.031476773073894022 
		7 0.013956047387335659
		7 0 0.76640749870646085 1 0.0052952236457335733 2 0.13464561404004968 
		3 0.0015394997159060421 4 0.0010875296223641876 7 0.021555268293582858 
		8 0.069469365975902642
		7 0 0.82409460159014503 1 0.0074170937486488127 2 0.07144329337533753 
		3 0.0004568441186700364 4 9.0811932016977628e-05 7 0.016962228109219858 
		8 0.07953512712596178
		7 0 0.62221838325266843 1 0.0044941475584385345 2 0.27685464380176417 
		3 0.0022840786544394242 4 0.0036192249443900795 7 0.032028869907839749 
		8 0.058500651880459539
		8 0 0.42948751890144632 1 0.0033000234033503284 2 0.46540459804349393 
		3 0.0028825146033561182 4 0.0085279263649432023 6 2.1423132252858811e-06 
		7 0.045977988483278574 8 0.044417287886906229
		8 0 0.24205168494524373 1 0.0016609463740087618 2 0.6435872989484146 
		3 0.0035429201738661374 4 0.019852011601545042 6 0.00057980866014101554 
		7 0.059822446784168065 8 0.028902882512612669
		9 0 0.1073357834593181 1 7.6166121221513798e-06 2 0.74893116790316971 
		3 0.0035373323350859636 4 0.050912394523159273 5 8.9342052788114881e-07 
		6 0.0061072084600756853 7 0.068356536782073943 8 0.01481106650446732
		8 0 0.041271303004501256 2 0.73468220662476713 3 0.0036081965558780568 
		4 0.12819309087623143 5 0.00015831409150869575 6 0.017751971384268681 
		7 0.0697001974201817 8 0.0046347200426630816
		8 0 0.016407540840652147 2 0.60874604876353466 3 0.0037265569007079633 
		4 0.27173565835283853 5 0.0015163660794403964 6 0.03397685971683248 
		7 0.063667066813512446 8 0.00022390253248150222
		8 0 0.0072984893635854066 2 0.42834103006025293 3 0.0030562851454798714 
		4 0.45377144190412061 5 0.0025974091696292327 6 0.052830069408368055 
		7 0.05210457511084074 8 6.9983772326188744e-07
		8 0 0.0032156885939900945 2 0.26270044535351422 3 0.0020917186092155198 
		4 0.61614404723293636 5 0.003856437222833943 6 0.071396607889384456 
		7 0.04059452684203467 8 5.2825609073223949e-07
		4 0 0.0015674642880383731 2 0.17586284589488338 3 0.0019930768157039882 
		4 0.69453823212334276;
	setAttr ".wl[301:383].w"
		4 5 0.0050616791068321468 6 0.085244840665534977 7 0.035731141914063756 
		8 7.1919160068035121e-07
		8 0 0.65196186663140065 1 0.00082407021647569662 2 0.13426873054155519 
		3 4.6732145875668613e-05 4 0.0015253434318210838 6 2.6033559784275569e-06 
		7 0.047878591251829083 8 0.16349206242506414
		8 0 0.70121147734334266 1 0.0015066420451239344 2 0.08057288056967736 
		3 6.8058459903789933e-06 4 0.00011964372724882341 6 2.8753339660036897e-06 
		7 0.035634992998500647 8 0.18094468213615023
		8 0 0.53562978946549678 1 8.3136156084514235e-05 2 0.24905487570662335 
		3 3.7164356805656207e-05 4 0.0044416161474597647 6 4.4027318123590386e-06 
		7 0.073649225928797482 8 0.13709978950691998
		8 0 0.37836537006306104 1 6.8445404841770394e-06 2 0.40075488897944872 
		3 5.8554921751472082e-07 4 0.010127738469869134 6 0.00027519262677098142 
		7 0.10770741240704894 8 0.10276196736409944
		7 0 0.22342983016646661 2 0.54248717899577703 3 6.0652618798010074e-06 
		4 0.022898575282425393 6 0.0039095130363246888 7 0.14092800779651171 
		8 0.066340829460614745
		6 0 0.10932741898611674 2 0.62504646525628149 4 0.054357745543275229 
		6 0.014789944032681305 7 0.16205524853771497 8 0.034423177643930387
		7 0 0.04667893686570989 2 0.61478576554317144 3 6.5769473295633939e-07 
		4 0.12318128306876365 6 0.039665367372528383 7 0.1634050275100152 
		8 0.012282961945078405
		8 0 0.019469818555856923 2 0.51716366486672205 3 7.4174163338803351e-06 
		4 0.24016154344553109 5 5.2025926390761283e-09 6 0.075224810919871682 
		7 0.14480466049575644 8 0.0031680790973351892
		8 0 0.0086656866197673283 2 0.37444692631862231 3 5.8858154152130459e-06 
		4 0.38581525294488767 5 7.3271502014900797e-07 6 0.11643497590610001 
		7 0.1143209336939537 8 0.00030960598623368626
		7 0 0.003945624590688237 2 0.2424425544212786 4 0.51356708939877083 
		5 7.7374536365082884e-06 6 0.15463265384527969 7 0.085210277342465321 
		8 0.00019406294788074313
		7 0 0.0020134143586401942 2 0.1727548760337615 4 0.57457977986822273 
		5 7.3394224200248714e-06 6 0.1792723542977829 7 0.071198002705125343 
		8 0.00017423331404733659
		8 0 0.49256732300345729 1 3.9417814332620574e-05 2 0.11583075061319946 
		3 8.8068726457874361e-09 4 0.0014040818878310064 6 0.00091882711783155147 
		7 0.081806525089600152 8 0.30743306566687534
		7 0 0.53230377756266012 1 0.00031828858283130043 2 0.076515864352993596 
		4 0.00041561051480832261 6 0.00068527573225917804 7 0.057649077059407118 
		8 0.33211210619504056
		8 0 0.40700689851373728 1 1.2715470796389849e-06 2 0.19745560334147147 
		3 5.5422612720773304e-08 4 0.0036517523861621867 6 0.0016087952054490949 
		7 0.13203190445876273 8 0.25824371912472499
		6 0 0.29284970014562001 2 0.30492971670015051 4 0.0081080711676213939 
		6 0.0034954446630008915 7 0.19921856358050594 8 0.1913985037431013
		6 0 0.17946064898574712 2 0.40558344916004063 4 0.018614809508634363 
		6 0.0098127197579775307 7 0.26479748549138593 8 0.12173088709621435
		6 0 0.092377870915952259 2 0.46400905173113244 4 0.044899585602758696 
		6 0.028690760090240824 7 0.30632561993702861 8 0.063697111722887181
		6 0 0.039773359121501581 2 0.45702228304948439 4 0.10004870379034078 
		6 0.070371220547516572 7 0.30734506901939718 8 0.025439364471759433
		6 0 0.015996342848353891 2 0.38837155246757027 4 0.18624897541732055 
		6 0.13261554508410381 7 0.26788153171451051 8 0.0088860524681409567
		7 0 0.0068794472215333528 2 0.28756194968698645 4 0.2899652660018523 
		5 9.0683466191523035e-09 6 0.20663124435948577 7 0.20544100075682387 
		8 0.0035210829049715821
		7 0 0.0031972872733712528 2 0.19485180911687613 4 0.38016574353906973 
		5 2.3198151180684858e-07 6 0.27365545964370874 7 0.14621918498703126 
		8 0.0019102834584311223
		7 0 0.0017189417525839805 2 0.1460228702392839 4 0.42382367045826996 
		5 1.5824766198396683e-06 6 0.31156978384307371 7 0.11539907984708953 
		8 0.0014640713830790519
		7 0 0.32005511950935167 1 1.7139151183128432e-06 2 0.083242734297473864 
		4 0.00054294822119793781 6 0.0024119594423369748 7 0.11259188922071869 
		8 0.48115363539380257
		7 0 0.35137345767838346 1 2.4986400659438025e-05 2 0.059400515242618433 
		4 4.7585697858545269e-05 6 0.0016698035270227398 7 0.074689313935925691 
		8 0.51279433751753167
		7 0 0.26421977325639373 1 1.7045812621609021e-08 2 0.13288951792026255 
		4 0.0014055088765767797 6 0.0041849156973538942 7 0.19349305631376534 
		8 0.40380721088983507
		6 0 0.1924504398704672 2 0.1976571860431531 4 0.0032703948224285782 
		6 0.0082113691866339249 7 0.30314949350131098 8 0.29526111657600623
		6 0 0.12044113069144684 2 0.25824470003487771 4 0.0091112293331593614 
		6 0.018498065508202589 7 0.4100617887175686 8 0.1836430857147448
		6 0 0.061987959393581413 2 0.29337239194039627 4 0.026602362470081652 
		6 0.044963468823576581 7 0.47742564733968379 8 0.095648170032680155
		6 0 0.023981660081452104 2 0.28921978692980782 4 0.065353974345837715 
		6 0.10170140114078129 7 0.47797331711075891 8 0.041769860391362212
		6 0 0.0078336543018235841 2 0.24806517539389619 4 0.12181232537970994 
		6 0.19312812311608485 7 0.41192353420648847 8 0.017237187601996936
		6 0 0.0026934472986602735 2 0.18761978228422344 4 0.18671869669676705 
		6 0.30681167911586205 7 0.30827294781464942 8 0.0078834467898377739
		7 0 0.0011957076037173294 2 0.13208669064479187 4 0.243184831575047 
		5 4.6544125504843513e-09 6 0.40994712462239452 7 0.2092536382197081 
		8 0.0043320026799286608
		7 0 0.00069353441726994515 2 0.10338672965720593 4 0.2732022956453079 
		5 9.9117482304573051e-08 6 0.46414220394918937 7 0.15552786115234721 
		8 0.0030472760611973998
		5 0 0.070937047152023078 2 0.015289604192475556 6 0.0014274045193423033 
		7 0.065531096698647137 8 0.8468148474375119
		5 0 0.062566588276299143 2 0.017512054323861874 6 0.001855667512478026 
		7 0.10489434455806851 8 0.81317134532929236
		5 0 0.047583818510446178 2 0.015221433133469952 6 0.0018348561031412646 
		7 0.11988875822935996 8 0.81547113402358273
		5 0 0.036288273429385322 2 0.012128567072104501 6 0.0016459975698524547 
		7 0.11881353626194066 8 0.83112362566671705
		5 0 0.046145818112399463 2 0.010640796686911702 6 0.0011779678092104795 
		7 0.06302550801683765 8 0.87900990937464063
		5 0 0.056424726383814933 2 0.02104936838603336 6 0.0025004115511200299 
		7 0.16169192701706242 8 0.75833356666196916
		5 0 0.052499551799744866 2 0.024852705170116327 6 0.0031807981376864281 
		7 0.22076095890244682 8 0.69870598599000555
		5 0 0.040301700955434096 2 0.022686650394427604 6 0.003328479469703534 
		7 0.26334891428745499 8 0.67033425489297982
		5 0 0.031005088942702208 2 0.018054543178758185 6 0.0030175111111898131 
		7 0.26502347134516296 8 0.68289938542218687
		5 0 0.046512804983411232 2 0.030615913837269425 6 0.0045573093654169578 
		7 0.31791473321689989 8 0.6003992385970025
		5 0 0.041775848402386892 2 0.035148590605526282 6 0.0058681268451118897 
		7 0.39962417144033791 8 0.51758326270663713
		5 0 0.031635119710139319 2 0.031286577229373905 6 0.0061350856214212853 
		7 0.46226976121081459 8 0.46867345622825085
		5 0 0.024938316745877025 2 0.024586835586206678 6 0.0055260760199677952 
		7 0.46815944003339288 8 0.47678933161455561
		6 0 0.034652817061048419 2 0.040620334983979052 4 1.5171715059412204e-06 
		6 0.0091262947957824019 7 0.51237872813870466 8 0.40322030784897966
		6 0 0.029069210025296423 2 0.044006913150231732 4 3.6670192393999074e-06 
		6 0.012534458006204358 7 0.59397198628488612 8 0.32041376551414197
		6 0 0.02086874676218263 2 0.037053782766347326 4 2.4076911997857673e-06 
		6 0.013636431424207212 7 0.66146897486000811 8 0.26696965649605492
		5 0 0.016909572392920253 2 0.02874811481310463 6 0.012521092146803617 
		7 0.67130671615188353 8 0.27051450449528786
		6 0 0.021566106270650309 2 0.047230846098962033 4 0.0011547903582753943 
		6 0.022426405081225138 7 0.68725417502823527 8 0.22036767716265188
		6 0 0.016276279461144946 2 0.04852181850840092 4 0.0028109743521181423 
		6 0.033373590785793647 7 0.74063988634208 8 0.15837745055046232
		6 0 0.010413098615042436 2 0.038605189694562073 4 0.0031935330096526039 
		6 0.039181519836707077 7 0.79276539382713163 8 0.11584126501690413
		6 0 0.0085359779778051981 2 0.029635868392373681 4 0.0025724474154696464 
		6 0.037710993959854604 7 0.80529266020408419 8 0.11625205205041265
		6 0 0.010096648802523558 2 0.049211167327250276 4 0.0064342829112231641 
		6 0.062067428883673781 7 0.77821223572603637 8 0.093978236349292782
		6 0 0.0064311960055363146 2 0.048942875639053605 4 0.010017424357051042 
		6 0.092785536793119447 7 0.77895566747330491 8 0.062867299731934709
		6 0 0.0032214873135380799 2 0.037967746698041968 4 0.01015011892678375 
		6 0.11306794089319673 7 0.79541230510175698 8 0.040180401066682518
		6 0 0.0026799513895149232 2 0.029700889541927341 4 0.0083774560673789984 
		6 0.11224787005015754 7 0.80762723708850104 8 0.039366595862520212
		6 0 0.0027728452691053139 2 0.047598250956492227 4 0.015971037585187482 
		6 0.15626291355654448 7 0.74376788641611191 8 0.033627066216558595
		6 0 0.0011328603955195748 2 0.045942665240794989 4 0.021006168019143491 
		6 0.21766301381783709 7 0.69174245766342513 8 0.02251283486327979
		6 0 2.4559494298703809e-05 2 0.035549029601096724 4 0.019991027280742871 
		6 0.26196145328532239 7 0.66869531000657401 8 0.013778620331965212
		6 0 3.3449248298585419e-05 2 0.029053002164396224 4 0.016869687685661494 
		6 0.26300164205124021 7 0.67797169193977869 8 0.013070526910624741
		6 0 3.2365007620967234e-06 2 0.042535663192504673 4 0.028068779133459423 
		6 0.31613250184264197 7 0.60080382354591388 8 0.012455995784718028
		6 0 1.3045683993411038e-06 2 0.039261837763244253 4 0.033257290623748416 
		6 0.39747398948096474 7 0.52095591760810056 8 0.0090496599555427333
		6 0 1.2771945473918528e-08 2 0.029995984667762782 4 0.029890745524544206 
		6 0.45980208476217771 7 0.47418853099610325 8 0.006122641277466593
		5 2 0.025535046170040369 4 0.025509729054717004 6 0.4632466116650179 
		7 0.47994484279811306 8 0.0057637703121117953
		5 2 0.027524211355906318 4 0.050158855495815967 6 0.66305276038476246 
		7 0.25577232398672506 8 0.0034918487767902138
		5 2 0.023428404950817543 4 0.038106926828353413 6 0.64634988559706008 
		7 0.28861036125726736 8 0.0035044213665016361
		5 2 0.025215233076300168 4 0.057049476672077264 6 0.72853090570794354 
		7 0.18645590544107901 8 0.0027484791026000013
		5 2 0.019216944307892028 4 0.04136330512827021 6 0.74553989753069894 
		7 0.19137958060490298 8 0.0025002724282357693
		5 2 0.020557278819901943 4 0.032880982420010925 6 0.65167097653598782 
		7 0.29155086030965671 8 0.0033399019144426585
		5 2 0.034531405572459359 4 0.039888594391805955 6 0.50656970656398337 
		7 0.41315738939991525 8 0.005852904071836031
		5 2 0.030946590513203531 4 0.044303141002398898 6 0.58318941970134719 
		7 0.33692388941236706 8 0.0046369593706834297
		7 0 0.10569780148906115 1 1.2551872948977234e-07 2 0.02162879731605942 
		4 2.4030970795791279e-09 6 0.0016810255181923877 7 0.069573173482978951 
		8 0.80141907427188142
		7 0 0.18918565234773058 1 7.3917308501105361e-07 2 0.036368644105144614 
		4 1.4696980382313214e-07 6 0.0020627091577316084 7 0.078353393331804674 
		8 0.69402871491469975
		6 0 0.16762771564392512 2 0.047425158880627191 4 1.2552124448402562e-06 
		6 0.0029733182828372848 7 0.12796785292109644 8 0.65400469905906899
		6 0 0.090405789408548154 2 0.026867881574589681 4 2.0405659608312154e-07 
		6 0.002413230179588716 7 0.12394602177813831 8 0.75636687300253902
		6 0 0.13843686493721399 2 0.07196801174401754 4 3.6019279121490937e-06 
		6 0.0051199668468862375 7 0.24021490837441467 8 0.54425664616955527
		6 0 0.074654712105748311 2 0.039922359010070012 4 5.3636170152350897e-07 
		6 0.0042679710005075946 7 0.25660523789838008 8 0.62454918362359246
		6 0 0.10246227238810782 2 0.10365886259187901 4 8.1089749409482247e-05 
		6 0.0097240633484752884 7 0.39418701587096355 8 0.38988669605116488
		6 0 0.055953598245979071 2 0.055936830916843046 4 4.8288223951708892e-06 
		6 0.0080170559170472909 7 0.43988111725718915 8 0.44020656884054626
		1 0 0.065174796191291823;
	setAttr ".wl[383:405].w"
		5 2 0.13232690889976745 4 0.0030030350786841051 6 0.021046748047135962 
		7 0.54514874234050992 8 0.23329976944261074
		6 0 0.035865299247365964 2 0.068956652752313191 4 0.00038483407586598523 
		6 0.017430327977102068 7 0.62246654741467788 8 0.25489633853267485
		6 0 0.033210347948109245 2 0.1484222930494021 4 0.012244592689050681 
		6 0.050402204052496229 7 0.64132809670817559 8 0.11439246555276607
		6 0 0.017924156663065727 2 0.074750186585377354 4 0.0058906199047900707 
		6 0.044737530157865232 7 0.74115554895754665 8 0.11554195773135492
		6 0 0.011371321625562328 2 0.14644693450738067 4 0.034046862718407317 
		6 0.11789117884505872 7 0.64191173884263741 8 0.048331963460953614
		6 0 0.0056009795360988665 2 0.073063581076028963 4 0.017801274149171268 
		6 0.11630338073042323 7 0.74309829607763878 8 0.044132488430638911
		6 0 0.002544881859725007 2 0.12752506443786454 4 0.064512578061774906 
		6 0.23840112852777895 7 0.54701154004201513 8 0.020004807070841367
		6 0 0.00015699889640109912 2 0.064781854924738341 4 0.034157111842794942 
		6 0.25609422024182876 7 0.6277780982381338 8 0.017031715856102993
		6 0 6.0201801946564051e-06 2 0.09906736002187802 4 0.098154513570327243 
		6 0.3943082482658769 7 0.39916075265889484 8 0.0093031053028283898
		6 0 2.1837666885551729e-07 2 0.051521442572941653 4 0.051164365928272781 
		6 0.44068141351368045 7 0.44878170832270081 8 0.0078508512857354898
		6 0 3.1329270744413345e-06 2 0.072358641955470995 4 0.12763012632640197 
		6 0.53826024063794908 7 0.25661905948066754 8 0.0051287986724361384
		6 0 4.3048476039770237e-08 2 0.038510737299553538 4 0.065568946616977056 
		6 0.61501442482457302 7 0.27652501670364416 8 0.0043808315067761349
		6 0 2.3772001004219057e-06 2 0.059292972318823571 4 0.14639131313046558 
		6 0.61296033294389107 7 0.17779740141238898 8 0.0035556029943304064
		5 2 0.032906780679793836 4 0.077046705327406872 6 0.70559424980694319 
		7 0.18137674115415722 8 0.0030755230316987631
		5 0 0.070740170583005205 2 0.021633024959715991 6 0.0022304364215088349 
		7 0.12251484911565327 8 0.78288151892011659
		5 0 0.05929604731060982 2 0.032259506996121144 6 0.0039795632913221159 
		7 0.26006442719140305 8 0.6444004552105439
		6 0 0.045405387150084332 2 0.045223822619371828 4 3.9435604287034991e-08 
		6 0.0074327568331103554 7 0.44988519408035754 8 0.45205279988147162
		6 0 0.029602695135323227 2 0.055573800806942464 4 3.0217974910608174e-05 
		6 0.016214295081561768 7 0.63891441177592567 8 0.25966457922533615
		6 0 0.014887762334040206 2 0.060173132903034221 4 0.0047291790145612897 
		6 0.042884264652934455 7 0.76174207533912375 8 0.11558358575630603
		6 0 0.0046278907449115447 2 0.05952580748118106 4 0.014826853277696211 
		6 0.11524878102378916 7 0.76299468957307648 8 0.042775977899345639
		6 0 7.2765487032144093e-06 2 0.054053995007298419 4 0.028944801364817328 
		6 0.25839739186472405 7 0.64261564714338637 8 0.015980888071070717
		5 2 0.044039005539876913 4 0.043743120332290976 6 0.44750191186149108 
		7 0.45741226319993628 8 0.0073036990664047466
		5 2 0.033568010785732072 4 0.056552652540392358 6 0.62557036512139597 
		7 0.28020609429197885 8 0.004102877260500775;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -6.6435745793569034e-13 5.8079975888946053e-20 3.5895398617180069e-20 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -8.9447144655998793e-07 2.4202813391367658e-15 -16.555000305175756 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824219 2.4218443784488122e-22 16.555000305175781 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030249496683614e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772817375899082e-15 0 5.40302494966838e-08 -1.4619287770504545e-16 0.99999999999999856 0
		 8.9447013254886606e-07 -2.4201650550456468e-15 16.555000305175756 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "C6BD2C93-4218-0EB2-A3C2-87A49C505DE2";
	setAttr -s 406 ".wl";
	setAttr ".wl[0:77].w"
		5 0 0.043751172999999997 1 0.88211966099999994 2 0.010191758 
		3 0.062783533000000002 5 0.001153875
		5 0 0.035965015060085294 1 0.83926805652998371 2 0.011541317932989537 
		3 0.11166237461519544 5 0.0015632358617460728
		5 0 0.030992143775386574 1 0.70235682128849375 2 0.017023243654395701 
		3 0.24680102687587274 5 0.0028267644058513641
		5 0 0.025625929792944313 1 0.50259590166194068 2 0.023739504850737572 
		3 0.44282853337987055 5 0.0052101303145068879
		5 0 0.01791086077686882 1 0.29614016542917598 2 0.028235165561495183 
		3 0.64606853479113202 5 0.011645273441327989
		6 0 0.009575615522948026 1 0.13531562039884079 2 0.029530717267315387 
		3 0.78877177148742783 4 0.002249249470540881 5 0.03455702585292697
		6 0 0.0034019069531632659 1 0.048777123423571225 2 0.029694078716082456 
		3 0.80754228658942684 4 0.0076528903893706805 5 0.10293171392838563
		6 0 0.00035608822065567966 1 0.016247701706900118 2 0.029134365924910546 
		3 0.69423169413415386 4 0.015814045578616143 5 0.24421610443476366
		5 1 0.006637912595143557 2 0.02597476193093896 3 0.50454277860481866 
		4 0.024441055592725993 5 0.4384034912763729
		5 1 0.0036317598309233189 2 0.021174557899276553 3 0.31480653253462831 
		4 0.031972556874504329 5 0.62841459286066748
		5 1 0.002601360805040598 2 0.019376340181734206 3 0.20359415844372991 
		4 0.040314945677774439 5 0.73411319489172089
		5 0 0.086165573333720935 1 0.82703820787597604 2 0.018145225845284461 
		3 0.06707036445503485 5 0.001580628489983797
		5 0 0.075183304869150522 1 0.78578891704504972 2 0.021811832187541482 
		3 0.11503522685595544 5 0.0021807190423029617
		5 0 0.063444899978504443 1 0.65951460309217846 2 0.032083920736907363 
		3 0.24113378186521256 5 0.0038227943271972502
		5 0 0.049422078950968069 1 0.47500514696917362 2 0.045554304307272656 
		3 0.4228847165392936 5 0.0071337532332919739
		6 0 0.033248471300787147 1 0.28367340349532411 2 0.057250945729957078 
		3 0.61044905290339257 4 7.6366923213941097e-06 5 0.015370489878217628
		6 0 0.017728781097085887 1 0.13427060103670937 2 0.063496563861508759 
		3 0.74039113273830903 4 0.0043326003848239676 5 0.039780320881563025
		6 0 0.0063138975637877714 1 0.052740370612226015 2 0.063953776685202995 
		3 0.75689851270478359 4 0.014336129632770794 5 0.10575731280122884
		6 0 0.00063113906415577462 1 0.019966225751515975 2 0.058882531880489072 
		3 0.65313605669625985 4 0.028905412586671932 5 0.23847863402090738
		6 0 1.0657318493994618e-06 1 0.0087405505687596051 2 0.048757994397038623 
		3 0.47792763920424203 4 0.044889270458647566 5 0.41968347963946279
		5 1 0.004686971854086305 2 0.037571193355689612 3 0.30119765603654763 
		4 0.059334437886481815 5 0.59720974086719458
		5 1 0.0031680499581290835 2 0.031966861631812477 3 0.19459636049221946 
		4 0.071536775355774226 5 0.69873195256206477
		6 0 0.18654144011867041 1 0.69899110694170696 2 0.035554392740019918 
		3 0.076880346559616078 5 0.0020320417562265996 8 6.7188375985622403e-07
		7 0 0.16885510455580138 1 0.66395242791843534 2 0.045042184561489354 
		3 0.11934577882442429 4 1.0333463317576934e-06 5 0.0028033934094467174 
		8 7.7384071143076709e-08
		6 0 0.14184008915607949 1 0.56213966228546997 2 0.067894651279213666 
		3 0.22337299430538995 4 3.2118107800003109e-06 5 0.0047493911630669128
		6 0 0.10749775245628063 1 0.41218220566756858 2 0.099124579927399009 
		3 0.37227062382141468 4 6.3354866102332399e-06 5 0.0089185026407268692
		6 0 0.070647813521522704 1 0.25464925300424485 2 0.12912125462264609 
		3 0.52404204311777358 4 0.0024719207573651253 5 0.0190677149764477
		6 0 0.037880673270560369 1 0.13015188465466368 2 0.14807563327627959 
		3 0.62765553426071696 4 0.010762675368351779 5 0.045473599169427517
		6 0 0.014399532677049916 1 0.057040265859477378 2 0.14951418719648257 
		3 0.6407084984607827 4 0.031232794308343317 5 0.10710472149786407
		6 0 0.003779736795799008 1 0.023786400395945279 2 0.13326496287644546 
		3 0.5581691370267341 4 0.061362858398643659 5 0.21963690450643247
		6 0 0.00032059476485244348 1 0.010771930462997624 2 0.10583075331783826 
		3 0.41730383864275655 4 0.095963625076565556 5 0.36980925773498952
		6 0 3.720535318291197e-06 1 0.0057211909960077729 2 0.078231792215121804 
		3 0.27406192931016399 4 0.12772997374284661 5 0.51425139320054147
		6 0 2.662988588023026e-06 1 0.0037841917420892782 2 0.06301590060225927 
		3 0.18685157559252241 4 0.1496226136532989 5 0.59672305542124215
		7 0 0.33947997018313691 1 0.52787151994733228 2 0.056951599668695688 
		3 0.073983308235926151 4 3.726515089273453e-06 5 0.0016988404130394458 
		8 1.1035036780118942e-05
		7 0 0.31460960755674139 1 0.49964977435049418 2 0.076458702311348492 
		3 0.10653941023142055 4 0.00041141810852372916 5 0.0023288323424617602 
		8 2.2550990099005188e-06
		7 0 0.2655162340201625 1 0.425386429141904 2 0.12137278879979521 
		3 0.18265866748220344 4 0.0011533062408941891 5 0.0039124455522222042 
		8 1.2876281847542332e-07
		6 0 0.19877925991287679 1 0.31691426146022827 2 0.18359386272417474 
		3 0.29056585460463252 4 0.0026983912909084341 5 0.0074483700071792504
		6 0 0.12852469237323341 1 0.20201561395196507 2 0.24520293015601119 
		3 0.40026482796139201 4 0.0075603825299980915 5 0.016431553027400222
		6 0 0.069111877231180216 1 0.10848926519316607 2 0.28525054892586776 
		3 0.47452193401094278 4 0.022699624649222833 5 0.039926749989620321
		6 0 0.028579728832498128 1 0.049032875432021769 2 0.28831669105198299 
		3 0.48394493390888577 4 0.058132012524199465 5 0.091993758250411922
		6 0 0.0097720381542779882 1 0.020426693808321766 2 0.25368249606797222 
		3 0.42518476712799147 4 0.11222283611826255 5 0.17871116872317405
		6 0 0.0033212066303075047 1 0.0090862177532926146 2 0.19646363119384985 
		3 0.32425438737505352 4 0.1769467989835499 5 0.28992775806394666
		6 0 0.0013935722529185976 1 0.0047771389509632632 2 0.13995676462038364 
		3 0.22228142080320096 4 0.23644659925986236 5 0.39514450411267116
		7 0 0.0007638339876308946 1 0.003178503550972839 2 0.10737870178877398 
		3 0.16108466013955322 4 0.27211361544261464 5 0.45548059453444206 
		6 9.0556012372727555e-08
		7 0 0.52135118405325509 1 0.34601816066351893 2 0.073534073163891309 
		3 0.057720907606037139 4 0.00036672969278192513 5 0.00073145479350090028 
		8 0.00027749002701473238
		7 0 0.48995676725484405 1 0.32387081937561985 2 0.10554190881616228 
		3 0.078502961935393717 4 0.0011515541258291207 5 0.00093511489842847801 
		8 4.0873593722459909e-05
		7 0 0.41398817779134789 1 0.27573648430553399 2 0.17939080696710061 
		3 0.1262325975046843 4 0.0030833352640585927 5 0.0015661167932193695 
		8 2.4813740552772945e-06
		7 0 0.30609789568417373 1 0.20791607019093347 2 0.28272386936751515 
		3 0.19320386522427174 4 0.0068687327795315554 5 0.003189465336920899 
		8 1.014166534240271e-07
		6 0 0.19380330120344103 1 0.13519312072217912 2 0.38575968284296452 
		3 0.26104534189141293 4 0.015735872292436962 5 0.0084626810475654391
		6 0 0.10351715459882058 1 0.073185550670063715 2 0.45295011981492417 
		3 0.30698209530452736 4 0.03852961028717572 5 0.02483546932448847
		6 0 0.046279961024538817 1 0.030834765495986079 2 0.45804414517541298 
		3 0.31311874589025379 4 0.088650146245954742 5 0.06307223616785361
		6 0 0.018897563954693199 1 0.011054120833180959 2 0.39971978530819313 
		3 0.27739924486045331 4 0.1704701617524467 5 0.12245912329103262
		6 0 0.0080339331691133813 1 0.0041922804200499051 2 0.30338112890133645 
		3 0.21573131171676987 4 0.27355322348921879 5 0.19510812230351154
		7 0 0.003686723364798139 1 0.002087103380418572 2 0.20800771370966889 
		3 0.15374930733689773 4 0.36912491106289941 5 0.26334411796654755 
		6 1.2317876974136599e-07
		7 0 0.0018912095065628674 1 0.001479533141433727 2 0.15185685880383418 
		3 0.11775263122658507 4 0.42210290877085588 5 0.30491538567599608 
		6 1.472874732287215e-06
		7 0 0.69416698832353929 1 0.19142783082546569 2 0.0768966353620643 
		3 0.036219717429969669 4 1.6547183468222618e-05 5 1.7762086944580076e-05 
		8 0.0012545187885483504
		7 0 0.65567095959466581 1 0.17536997207516791 2 0.12015695804669874 
		3 0.046808421420155878 4 0.0011942786707092193 5 2.9779737403141323e-05 
		8 0.0007696304551991763
		7 0 0.55145406881777137 1 0.1488752257161215 2 0.22407138703850632 
		3 0.071707195393548029 4 0.0037522312186580595 5 6.3314666250864615e-05 
		8 7.6577149143587517e-05
		7 0 0.40088964711368941 1 0.1134591718873187 2 0.37062165054135893 
		3 0.10623901288435783 4 0.0086266257226581163 5 0.00015599894972870445 
		8 7.8929008882405888e-06
		8 0 0.24524244321656169 1 0.074748613854505333 2 0.51677661496372607 
		3 0.14085127243015466 4 0.019343186624481371 5 0.0030314250329352183 
		7 5.8324085116558859e-06 8 6.1146912411421308e-07
		7 0 0.12459071003754893 1 0.040267863201981696 2 0.6125666767368857 
		3 0.16415387338453322 4 0.046130342683932415 5 0.012289987198233394 
		7 5.4675688468691607e-07
		6 0 0.054662762949553009 1 0.015459133526423122 2 0.6196290098956978 
		3 0.16765539611111288 4 0.10739612156661256 5 0.035197575950600607
		7 0 0.022883448247051963 1 0.0043549449055939118 2 0.53597253367706488 
		3 0.15032770466321199 4 0.21716836369215609 5 0.069286082498035251 
		7 6.9223168860160278e-06
		8 0 0.010070371843422599 1 0.00059928322109536677 2 0.3984494698135258 
		3 0.11959695987367364 4 0.36157953322960562 5 0.10969695114030291 
		6 5.4313590441745212e-08 7 7.3765647836752992e-06
		8 0 0.0045621283773989293 1 0.00019582320270062131 2 0.26128504893368637 
		3 0.088404358597387378 4 0.49739830005907909 5 0.14814205315350884 
		6 7.1725412872498136e-06 7 5.1151349515583156e-06
		8 0 0.0022005234863611053 1 0.00015395062207823634 2 0.17987218267793115 
		3 0.07145421274247328 4 0.5716896509812408 5 0.17462156504032611 6 
		7.4931093252567553e-06 7 4.2134026403600895e-07
		8 0 0.82356976543497484 1 0.08591675598106778 2 0.066408728830422578 
		3 0.017704576512331548 4 3.2386702161431312e-06 5 6.412770313024521e-08 
		7 1.7362665596306323e-05 8 0.006379507777687728
		8 0 0.77975100528878682 1 0.076343139477106942 2 0.11649738165844793 
		3 0.021828548585983595 4 0.00081896428673424175 5 7.9275735924382507e-08 
		7 1.2434497642634445e-05 8 0.0047484469295618241
		8 0 0.64868252818352801 1 0.064902961580017099 2 0.2454519184600846 
		3 0.032314808685919676 4 0.0030275394384028562 5 1.6473626264024793e-07 
		7 0.0014046953047226166 8 0.0042153836110624763
		8 0 0.46170102115653028 1 0.050139723166413068 2 0.42851632698845432 
		3 0.046611708976409857 4 0.0072625943561145916 5 3.5107298035738897e-07 
		7 0.0023976207933593487 8 0.0033706534897381679
		8 0 0.27082911418386663 1 0.033243685282527656 2 0.61313242449534455 
		3 0.060975001810198243 4 0.016458044080349472 5 0.00017215595078746035 
		7 0.003288965644436293 8 0.0019006085524896556
		8 0 0.12566165179867542 1 0.017726371162046266 2 0.73639620008341033 
		3 0.070219377780007169 4 0.041646310253860883 5 0.0047933818032670191 
		7 0.0034137174920627769 8 0.00014298962667007583
		9 0 0.049611308218734981 1 0.0061705997204688345 2 0.7448733090365649 
		3 0.072001655064323253 4 0.10816782596497283 5 0.015640981352701717 
		6 7.4923053366365954e-06 7 0.0035262012877421995 8 6.2704915451905427e-07
		8 0 0.019514721090636768 1 0.00066577425251298941 2 0.63590837012186252 
		3 0.066032430164357447 4 0.24152132625505465 5 0.031226240805362945 
		6 0.0012804207589665333 7 0.0038507165512460854
		8 0 0.0085036911541835347 1 2.4016843006803255e-05 2 0.46045667558571929 
		3 0.053874247715305988 4 0.42165647459070488 5 0.049545358749452012 
		6 0.0023763968863171375 7 0.0035631384753102534
		8 0 0.00373714692420128 1 4.9638307466974126e-07 2 0.28646607917118261 
		3 0.040934796122882901 4 0.59462636305860217 5 0.067807108348454742 
		6 0.0036435261715919258 7 0.0027844838200096764
		8 0 0.0016993011764515199 1 6.0715753679011096e-07 2 0.18336893019809178 
		3 0.034849096764248674 4 0.6900931401970718 5 0.082440535938567053 
		6 0.0050647230372949156 7 0.0024836655307375419
		4 0 0.87660941393688419 1 0.028633131528619109 2 0.056339692478041409 
		3 0.0059578045430517196;
	setAttr ".wl[77:149].w"
		3 4 6.4903624713420868e-08 7 0.0054340250947371134 8 0.027025867515041647
		7 0 0.8327645608581925 1 0.024150405225687347 2 0.1079582067606847 
		3 0.007095664949040752 4 3.657918495776736e-05 7 0.0059411424697289952 
		8 0.022053440551707947
		7 0 0.68856529303433989 1 0.021285648695621329 2 0.24982520622338816 
		3 0.010526691592489663 4 0.0022479698927713263 7 0.0085659316615375458 
		8 0.018983258899852123
		7 0 0.48333694515312697 1 0.016963871611125798 2 0.45184156651370294 
		3 0.014937793467013837 4 0.0057042441865740616 7 0.012424898590901323 
		8 0.014790680477555085
		8 0 0.2747828976192313 1 0.010963367654707925 2 0.65655970721642765 
		3 0.019497310709721789 4 0.012758019010578025 5 5.0421579025571837e-07 
		7 0.016193032671104248 8 0.009245160902438869
		9 0 0.11813606360187558 1 0.0054469491043525721 2 0.79725943567280311 
		3 0.021967907377243807 4 0.034770893806857363 5 0.00031781594730995053 
		6 1.5477104228332898e-05 7 0.017750393341059146 8 0.0043350640442701505
		9 0 0.041526831439278454 1 0.00070815068960888026 2 0.80632506936619108 
		3 0.022841032838769162 4 0.1020968265746153 5 0.0046433727428030602 
		6 0.0035125437567266487 7 0.018066074162587934 8 0.00028009842941928935
		9 0 0.015043797665650577 1 2.9754423668248277e-05 2 0.68010077860855866 
		3 0.022167152301150985 4 0.24753572270252969 5 0.0099614126691024447 
		6 0.0075805904862813415 7 0.017579699538456187 8 1.0916046017736828e-06
		8 0 0.0065747905381191478 1 6.006806999278702e-08 2 0.48376171228242809 
		3 0.018729684601916846 4 0.44714418226621738 5 0.016352741871196157 
		6 0.012254750321039648 7 0.015182078051012729
		7 0 0.0028453952637013296 2 0.29010830686061762 3 0.01415759319641649 
		4 0.64039218781669405 5 0.023372416037262905 6 0.017322683390688418 
		7 0.011801417434619089
		7 0 0.0012454972553492577 2 0.17677486770995537 3 0.012705570117366272 
		4 0.7466866740971132 5 0.030088529213655672 6 0.022205342667731623 
		7 0.01029351893882869
		7 0 0.8274077480374743 1 0.0069263609747272732 2 0.065985080432514429 
		3 0.00013670166074991225 4 3.0539024726152421e-06 7 0.016958508244779229 
		8 0.082582546747282271
		7 0 0.78351487406009679 1 0.0053751906283568433 2 0.11705747601949924 
		3 0.001350301028920667 4 0.00079842934897998534 7 0.020376602328313152 
		8 0.071527126585833239
		7 0 0.65138565058060327 1 0.0049938372185393959 2 0.24907038661311723 
		3 0.00234342438427931 4 0.0030086817137156465 7 0.029528165254003615 
		8 0.059669854235741525
		7 0 0.46203685928068489 1 0.0041225407809629697 2 0.43606302708460548 
		3 0.0033023192588603673 4 0.0071898881359628627 7 0.042090202315886074 
		8 0.045195163143037377
		8 0 0.26880720071105607 1 0.0024492170599462264 2 0.62474557645139339 
		3 0.004389995968922247 4 0.016213135059283193 6 7.9919101156198833e-06 
		7 0.054114353546196883 8 0.029272529293086314
		9 0 0.1224021749426987 1 0.00042868197487942614 2 0.7510518582449659 
		3 0.0047335614801870124 4 0.041269025645901479 5 1.1732579400405733e-06 
		6 0.0040780216927205001 7 0.060885722250045293 8 0.015149780510661617
		9 0 0.047157289111899751 1 2.1245322303429999e-05 2 0.75905655938918104 
		3 0.0050318157792726016 4 0.10887618254588939 5 0.00031441233606430277 
		6 0.013497128006489702 7 0.061163896520725451 8 0.0048814709881742427
		9 0 0.018272121580899449 1 9.1006424576734242e-08 2 0.64577998556579941 
		3 0.0053921633292863856 4 0.24645237408924017 5 0.0020433162165942008 
		6 0.02642508233840056 7 0.055385030825475766 8 0.00024983504787958041
		8 0 0.0079530667082635172 2 0.46477952229863667 3 0.0047357875113305144 
		4 0.43280737710839434 5 0.0037237558781539745 6 0.041079588308574749 
		7 0.044920437806714605 8 4.6437993173662897e-07
		7 0 0.0034564591042761917 2 0.28574023760323614 3 0.0034281627819313641 
		4 0.61218568888460367 5 0.0057394288089887141 6 0.05532421162326126 
		7 0.034125811193702713
		7 0 0.0015456881912994467 2 0.18069695365752811 3 0.0032630809781224396 
		4 0.71096210496088907 5 0.0079993251013996142 6 0.066607547782832524 
		7 0.028925299327928849
		8 0 0.7004703137870737 1 0.001384177468960285 2 0.076744484270173538 
		3 3.7173239564895626e-07 4 8.8515117802619939e-06 6 3.0224191060066222e-06 
		7 0.035334409443152907 8 0.18605436936735772
		8 0 0.66292452971382954 1 0.00089524820288849124 2 0.12236908018729221 
		3 3.6675533217278678e-05 4 0.0012340520099957265 6 2.4995376164512581e-06 
		7 0.045386622988377895 8 0.16715129182678226
		8 0 0.5566184408910555 1 0.0002255562641207432 2 0.23110347496875408 
		3 8.6045909787890105e-05 4 0.0038516598234302145 6 3.9667727133540143e-06 
		7 0.068677389642619491 8 0.13943346572751864
		8 0 0.40251003862886858 1 0.00018449440936377863 2 0.38388606016188376 
		3 0.00013953785531322068 4 0.008831759600481633 6 6.739791224080567e-06 
		7 0.10011049886234152 8 0.10433087069052341
		8 0 0.24353364512587244 1 0.00011884597807739957 2 0.53612403089178495 
		3 0.00022114679124498755 4 0.019782372987067667 6 0.0026631420063971661 
		7 0.1302273139891546 8 0.067329502230400864
		8 0 0.12130911137078236 1 6.7682235002538811e-06 2 0.63580415982363203 
		3 0.00025698562869220745 4 0.04733987282857488 6 0.011277648140302726 
		7 0.14874234133231898 8 0.035263112652196643
		9 0 0.052214422271071377 1 3.2985063363450983e-08 2 0.64213334188491911 
		3 0.0003029829677625831 4 0.11126589544529195 5 6.6889296084689599e-07 
		6 0.032328524620452041 7 0.14902913902390388 8 0.012724991908574962
		8 0 0.021731114226379428 2 0.5529933070421974 3 0.00037378430981819058 
		4 0.22772786390582556 5 0.00012974116471702198 6 0.06247459969812353 
		7 0.13142849854318867 8 0.0031410911097500757
		8 0 0.0096178823486267381 2 0.40779524784517746 3 0.00035778893093752037 
		4 0.38164214545934838 5 0.000265299826896929 6 0.096968516314877587 
		7 0.10322094306370914 8 0.00013217621042632029
		8 0 0.0043367591366788574 2 0.26371101128509228 3 0.00026560831647438264 
		4 0.5266862351973467 5 0.00045777243572316334 6 0.12871239195676748 
		7 0.075826235304080225 8 3.9863678369195528e-06
		8 0 0.0020717538692321619 2 0.1798693955788635 3 0.00027508902794477752 
		4 0.60555768654153597 5 0.00069548132983628715 6 0.14991100245432126 
		7 0.06161505595373977 8 4.5352445262748183e-06
		7 0 0.52875548301768382 1 0.00030391333632349971 2 0.073942962670657156 
		4 0.00036673830552744869 6 0.00069633384799551966 7 0.056909625514554738 
		8 0.33902494330725785
		7 0 0.49846096814265733 1 4.8833735167741853e-05 2 0.10902840847916219 
		4 0.0012284011414574636 6 0.00087588369110710399 7 0.077933357351923582 
		8 0.31242414745852454
		8 0 0.42079718947573341 1 3.3449906088831919e-06 2 0.18831292227659918 
		3 1.4523875293723525e-07 4 0.0033136038129538328 6 0.0014448042687363464 
		7 0.1245014760417496 8 0.2616265138948658
		8 0 0.30955191607747795 1 4.3320604746109886e-07 2 0.2986639270918825 
		3 6.8192525583303267e-09 4 0.0074090125665798043 6 0.0029095531086488248 
		7 0.18770750942278661 8 0.19375764170732432
		8 0 0.19391895712020632 1 1.6489158355175037e-08 2 0.40848188950632641 
		3 3.9327905659451835e-07 4 0.01701151289488706 6 0.0079574618075090049 
		7 0.24916656097230722 8 0.12346320793054899
		7 0 0.101965155411818 2 0.47987896892085707 3 1.7344768565378948e-08 
		4 0.041610176588364342 6 0.023837427361814646 7 0.28769058933074432 
		8 0.065017665041633019
		6 0 0.045046514693438781 2 0.48452661972893801 4 0.095721325854677797 
		6 0.060692609967835182 7 0.28811137828907429 8 0.025901551466035871
		7 0 0.018560810101638958 2 0.42106695210521305 3 7.0246862105736323e-07 
		4 0.1850318450047766 6 0.11587672399019075 7 0.25081137779417784 8 
		0.0086515885353816227
		8 0 0.0081089660269366981 2 0.31717778498632304 3 7.1307708768602077e-07 
		4 0.29842895305924633 5 6.3073886277741504e-09 6 0.181065878747038 
		7 0.1921758399484359 8 0.0030418578475436904
		8 0 0.0037806461294398741 2 0.21508572976067916 3 2.8634600110430047e-08 
		4 0.40362781107224183 5 1.0546870883043521e-06 6 0.24000557562903535 
		7 0.13599610811240309 8 0.0015030459745123638
		7 0 0.0019504548095800591 2 0.15686076923410891 4 0.46098939139722989 
		5 2.5276616766440985e-06 6 0.27380184823864517 7 0.10530104525532359 
		8 0.0010939634034357528
		7 0 0.34649493907592965 1 1.6966794308006765e-05 2 0.057741856012379883 
		4 1.159399839758873e-05 6 0.00167101854727 7 0.073566302251721741 
		8 0.5204973233199931
		7 0 0.32241339011879266 1 2.1986557418474066e-06 2 0.080127306885328126 
		4 0.00048577711062081254 6 0.0023236492110512816 7 0.10807597243832268 
		8 0.48657170558014273
		7 0 0.27249109723009202 1 9.3232872376150336e-08 2 0.12988520788093214 
		4 0.0013494539665605577 6 0.0039068931830318855 7 0.18484868837331345 
		8 0.40751856613319759
		7 0 0.20325324265203035 1 1.4744134612409516e-09 2 0.19831161351820051 
		4 0.0031998977915476796 6 0.007429892694947743 7 0.28985685309336312 
		8 0.29794849877549717
		6 0 0.1301655962958693 2 0.2660861118272877 4 0.0088232544926138343 
		6 0.016481800417307929 7 0.39247153407794311 8 0.18597170288897819
		6 0 0.06892213392451528 2 0.31021008377303655 4 0.026053431221578167 
		6 0.040293971467703707 7 0.45701600834652867 8 0.097504371266637621
		6 0 0.027982789674674664 2 0.31340170103578668 4 0.065941687560757634 
		6 0.092458568243922304 7 0.45762775887741297 8 0.042587494607445799
		6 0 0.0097814965914861801 2 0.27479511294236103 4 0.12694535833467827 
		6 0.17638846008062925 7 0.39481822238260533 8 0.017271349668239844
		6 0 0.0036727468073796251 2 0.21139926695497258 4 0.20068677493731676 
		6 0.2803961957773678 7 0.29619564868407555 8 0.0076493668388876619
		7 0 0.0016721196419635467 2 0.14948881499278982 4 0.26863087942707242 
		5 1.6236229977891028e-08 6 0.37470065962945059 7 0.20143608139002656 
		8 0.0040714286824671507
		7 0 0.00094938022521077635 2 0.11543672331119263 4 0.30830448692450918 
		5 3.0932616063323513e-07 6 0.42413039170224548 7 0.14840249192345695 
		8 0.0027762165872243531
		5 0 0.069462287268114334 2 0.015013059822438002 6 0.0014125662370978594 
		7 0.065382046336214417 8 0.84873004033613531
		5 2 0.028763762423011693 4 0.066241397644351926 6 0.71784381019055321 
		7 0.18425021126829272 8 0.0029008184737903133
		5 0 0.044634135868892061 2 0.010369605084925447 6 0.0011648628771563276 
		7 0.063084927889127493 8 0.88074646827989866
		5 0 0.035961347388629938 2 0.012115414120103082 6 0.0016533896686230861 
		7 0.1199971852888133 8 0.83027266353383067
		5 0 0.031721366036850218 2 0.018544909626900381 6 0.0030691845894122603 
		7 0.26729058977188885 8 0.67937394997494827
		6 0 0.026051932256107618 2 0.025889229324652561 4 1.6647860436630822e-09 
		6 0.005689750169573844 7 0.47006375569095699 8 0.47230533089392296
		6 0 0.017702202946623707 2 0.030721208855426268 4 1.0199904168279019e-05 
		6 0.012946351063053583 7 0.67171795948462609 8 0.26690207774610214
		6 0 0.0089649606146945601 2 0.032250669490747202 4 0.0028035742994765907 
		6 0.038672140010834001 7 0.80309646127672807 8 0.11421219430751958
		6 0 0.0028000132374968504 2 0.03266901761610104 4 0.0091107697551596842 
		6 0.11385319586689444 7 0.80280148549066077 8 0.03876551803368726
		6 0 8.3381874646642779e-07 2 0.031898382298433448 4 0.018373351573558152 
		6 0.26477735451125312 7 0.67185816232005202 8 0.01309191547795689
		5 2 0.027890484639532941 4 0.028001520069602791 6 0.46399770520298517 
		7 0.47423261412318513 8 0.0058776759646940379
		5 2 0.022406522471283958 4 0.036459543320095128 6 0.65021462699201116 
		7 0.28749629091283291 8 0.0034230163037768631
		5 2 0.02084319495536089 4 0.045742209147736551 6 0.74184287156234796 
		7 0.18901214259343666 8 0.0025595817411178945
		5 0 0.070657830800687146 2 0.02150053536506576 6 0.002214446843480225 
		7 0.12149849973968761 8 0.78412868725107931
		5 0 0.060213654777090703 2 0.032528715540431206 6 0.0039788596853753766 
		7 0.2581900228312331 8 0.6450887471658695
		5 0 0.046826190191469358 2 0.046367810054440926 6 0.0074849885168718827 
		7 0.44665627589983881 8 0.45266473533737905
		6 0 0.031012487451185979 2 0.058106559942358672 4 8.5357278286429548e-06 
		6 0.01638312584623489 7 0.63390307288500813 8 0.26058621814738364
		1 0 0.015894616836006282;
	setAttr ".wl[149:236].w"
		5 2 0.064279346737204437 4 0.0049385024636273422 6 0.043031464518103905 
		7 0.75498456930552293 8 0.11687150013953498
		6 0 0.0050623756576757915 2 0.064769671664729411 4 0.015811912039223296 
		6 0.11450118611974019 7 0.75579811604684366 8 0.044056738471787669
		6 0 3.5372810761346026e-05 2 0.059545443141467702 4 0.031375524295296248 
		6 0.25527715728940154 7 0.63689797407286086 8 0.01686852839021237
		6 0 4.7802908489923372e-08 2 0.048970931789877895 4 0.048297620405992628 
		6 0.4408470099372746 7 0.45409235965026218 8 0.0077920304136842944
		5 2 0.037649063191701304 4 0.063622526757849143 6 0.61544056358399368 
		7 0.27891794566855116 8 0.0043699007979047591
		5 0 0.062034361852458225 2 0.017370725926812037 6 0.0018466349029025429 
		7 0.1047562306918171 8 0.8139920466260101
		5 0 0.056569713175571384 2 0.021076958676021322 6 0.0025004099815226864 
		7 0.16145969143572975 8 0.75839322673115495
		5 0 0.053061346700493367 2 0.02506853584398255 6 0.0031931462273734274 
		7 0.22045268735086448 8 0.69822428387728619
		5 0 0.047311012923655707 2 0.015190839276333554 6 0.0018363459601145118 
		7 0.12032950068748623 8 0.81533230115241007
		5 0 0.047515638530636943 2 0.03119957519100559 6 0.0045974238924421235 
		7 0.31718251597561864 8 0.59950484641029667
		5 0 0.04298000731205931 2 0.03610000144392346 6 0.0059451018924270987 
		7 0.39843155309060718 8 0.51654333626098292
		5 0 0.041041259883866366 2 0.023138169107881142 6 0.0033666402154493452 
		7 0.26418839817648065 8 0.66826553261632249
		6 0 0.03599234966931799 2 0.042217774458140768 4 1.6747934063116826e-06 
		6 0.0092820245246284863 7 0.51026443182978731 8 0.40224174472471907
		6 0 0.030401424841338228 2 0.046171272463285687 4 4.1457518160754637e-06 
		6 0.012786026344443188 7 0.59097527667584859 8 0.31966185392326818
		6 0 0.032843361596939596 2 0.032619107942577483 4 6.6923778962809589e-09 
		6 0.0062732074950442463 7 0.46236090378994099 8 0.46590341248311973
		6 0 0.022775196365631144 2 0.050249583687053734 4 0.0012165352165234451 
		6 0.022805723890402623 7 0.68294240605476375 8 0.22001055478562534
		6 0 0.017326568340190456 2 0.052178924021916033 4 0.002990798001659252 
		6 0.033869141027858464 7 0.73521995246644722 8 0.15841461614192856
		6 0 0.022046093162493244 2 0.039713889454972007 4 6.626885258956637e-06 
		6 0.014045285790891837 7 0.65941357518146282 8 0.26477452952492109
		6 0 0.010868573961262536 2 0.05366115456046408 4 0.0069117101641065605 
		6 0.062520330452835018 7 0.77162439052693821 8 0.094413840334393553
		6 0 0.0069827950175704286 2 0.053849210385721262 4 0.010840908059470938 
		6 0.093090110927904965 7 0.77169858798114599 8 0.063538387628186407
		6 0 0.011216779345784272 2 0.042753737248508783 4 0.0035039649543999922 
		6 0.040016420073105505 7 0.78753837009931116 8 0.11497072827889029
		6 0 0.0030466267217982889 2 0.052913750416334747 4 0.017444290761922294 
		6 0.15591438188780293 7 0.7362575385570953 8 0.034423411655046469
		6 0 0.001257096586920416 2 0.051341655442745056 4 0.023097849077130049 
		6 0.2165515042579976 7 0.68447617923260307 8 0.023275715402603724
		6 0 0.0035260400008559822 2 0.043185097805937767 4 0.011313093489994527 
		6 0.11392399235187545 7 0.78763342727551233 8 0.040418349075823992
		6 0 4.422603424934553e-06 2 0.047840514881513634 4 0.03119510462026194 
		6 0.31351495088835857 7 0.59434233877292519 8 0.013102668233515817
		6 0 1.8265279224908612e-06 2 0.044319359445874937 4 0.037274840935657097 
		6 0.39345360985759492 7 0.51537264011487838 8 0.0095777231180723191
		6 0 3.4697364908456803e-06 2 0.040950085211203621 4 0.022647725867840123 
		6 0.26155655514094439 7 0.66054805928726756 8 0.014294104756253463
		5 2 0.039172297759068178 4 0.045250417120489668 6 0.50045777013684345 
		7 0.40888339279490121 8 0.0062361221886975664
		5 2 0.035238694765360429 4 0.050714291909622199 6 0.57545541696910862 
		7 0.3336485617023236 8 0.0049430346535853124
		5 2 0.034784801944929347 4 0.034669383896492476 6 0.45640538453173096 
		7 0.46764746507168053 8 0.0064929645551668157
		5 2 0.03142043647493839 4 0.057901041596829281 6 0.65365463122889633 
		7 0.25331101951727175 8 0.0037128711820642365
		5 2 0.027381489641377994 4 0.045371053451344484 6 0.63896604751111696 
		7 0.28455283115087326 8 0.0037285782452873189
		6 0 0.18589844053291341 1 6.6753850853443141e-07 2 0.035443008883341669 
		6 0.0020291781928688884 7 0.076816703122546251 8 0.69981200172982116
		6 0 0.1023915191170429 1 1.035774290561676e-07 2 0.020970049393468616 
		6 0.0016577818706086875 7 0.06865841337328922 8 0.80632213266816155
		7 0 0.16821137565452807 1 1.0703041351536783e-08 2 0.046461490522707649 
		4 1.1665228296520721e-06 6 0.0028999689116147396 7 0.12422438173341431 
		8 0.65820160595186428
		7 0 0.090192756012921968 1 8.4415748435944165e-10 2 0.02656076645003165 
		4 1.9240046639141022e-07 6 0.0023849107422622361 7 0.12212579034707327 
		8 0.75873558320308698
		6 0 0.14170699553016994 2 0.071618902235309284 4 3.5630446745748665e-06 
		6 0.0049903610067269805 7 0.23383768769993671 8 0.54784249048318256
		6 0 0.076843190083792756 2 0.040558740727366357 4 6.1556255220050496e-07 
		6 0.004237613493934725 7 0.25315273305158664 8 0.62520710708076743
		6 0 0.10714584252652569 2 0.10544933349480932 4 1.4272542545870313e-05 
		6 0.0094527707124555313 7 0.38460910845755614 8 0.39332867226610752
		6 0 0.059354177361388136 2 0.058697181716441789 4 1.2699147216177251e-06 
		6 0.0079908758538759297 7 0.43353165222373635 8 0.44042484292983619
		6 0 0.069863201155207846 2 0.13820125662121641 4 0.0029927478503070965 
		6 0.020350818743418046 7 0.53192133138924214 8 0.23667064424060846
		6 0 0.03920325147124748 2 0.075060199037787462 4 0.00056843263684002777 
		6 0.017400768894503253 7 0.61201898092587825 8 0.25574836703374348
		6 0 0.036687400352275176 2 0.15926068376163394 4 0.012449892668091711 
		6 0.048571808845509823 7 0.62542144172509051 8 0.11760877264739886
		6 0 0.020327356942931484 2 0.084658689410437402 4 0.0065232274290854342 
		6 0.044456293861392895 7 0.72672097916395784 8 0.1173134531921949
		6 0 0.013188270664180737 2 0.16119069708390474 4 0.035856650902973089 
		6 0.11315705774483049 7 0.62607753478688766 8 0.050529788817223413
		6 0 0.0067776303338816487 2 0.085727016460372868 4 0.020195034672417456 
		6 0.11438460471772724 7 0.72716086268165225 8 0.045754851133948574
		6 0 0.0033804862287082822 2 0.1434964010512717 4 0.069965712552351469 
		6 0.2274927256282348 7 0.53456371033339467 8 0.02110096420603897
		6 0 0.00071255268285357347 2 0.078021962813795323 4 0.039939691966265289 
		6 0.2491751614037381 7 0.61416134395920041 8 0.017989287174147234
		6 0 0.00021473699440958824 2 0.11352938534874459 4 0.10949530637803337 
		6 0.37500112538176489 7 0.39198944458300494 8 0.0097700013140425788
		6 0 7.1693587676397821e-06 2 0.063376208694422342 4 0.062036536697461911 
		6 0.42596199201362922 7 0.44028974284179467 8 0.0083283503939242075
		6 0 8.9787001196255103e-05 2 0.083827902746697269 4 0.14609119384353389 
		6 0.5105462514209349 7 0.2541126764038189 8 0.0053321885838188959
		6 0 9.1014468466823262e-07 2 0.048133194971423418 4 0.082363230180225469 
		6 0.59131943471780135 7 0.27354606736069809 8 0.0046371626251671188
		6 0 7.2818072799790396e-07 2 0.041105284322025287 4 0.098310891127327243 
		6 0.67636871270731758 7 0.18097766099616011 8 0.0032367226664416953
		7 0 6.0400796231633542e-05 2 0.068678879792692354 4 0.17090995076623794 
		5 8.0187683833181025e-09 6 0.58023766248365782 7 0.17647294696819085 
		8 0.0036401511742210346
		5 0 0.043751172999999997 1 0.88211966099999994 2 0.010191758 
		3 0.062783533000000002 5 0.001153875
		5 0 0.035965015060085294 1 0.83926805652998371 2 0.011541317932989537 
		3 0.11166237461519544 5 0.0015632358617460728
		5 0 0.075183304869150522 1 0.78578891704504972 2 0.021811832187541482 
		3 0.11503522685595544 5 0.0021807190423029617
		5 0 0.086165573333720935 1 0.82703820787597604 2 0.018145225845284461 
		3 0.06707036445503485 5 0.001580628489983797
		5 0 0.030992143775386574 1 0.70235682128849375 2 0.017023243654395701 
		3 0.24680102687587274 5 0.0028267644058513641
		5 0 0.063444899978504443 1 0.65951460309217846 2 0.032083920736907363 
		3 0.24113378186521256 5 0.0038227943271972502
		5 0 0.025625929792944313 1 0.50259590166194068 2 0.023739504850737572 
		3 0.44282853337987055 5 0.0052101303145068879
		5 0 0.049422078950968069 1 0.47500514696917362 2 0.045554304307272656 
		3 0.4228847165392936 5 0.0071337532332919739
		5 0 0.01791086077686882 1 0.29614016542917598 2 0.028235165561495183 
		3 0.64606853479113202 5 0.011645273441327989
		6 0 0.033248471300787147 1 0.28367340349532411 2 0.057250945729957078 
		3 0.61044905290339257 4 7.6366923213941097e-06 5 0.015370489878217628
		6 0 0.009575615522948026 1 0.13531562039884079 2 0.029530717267315387 
		3 0.78877177148742783 4 0.002249249470540881 5 0.03455702585292697
		6 0 0.017728781097085887 1 0.13427060103670937 2 0.063496563861508759 
		3 0.74039113273830903 4 0.0043326003848239676 5 0.039780320881563025
		6 0 0.0034019069531632659 1 0.048777123423571225 2 0.029694078716082456 
		3 0.80754228658942684 4 0.0076528903893706805 5 0.10293171392838563
		6 0 0.0063138975637877714 1 0.052740370612226015 2 0.063953776685202995 
		3 0.75689851270478359 4 0.014336129632770794 5 0.10575731280122884
		6 0 0.00035608822065567966 1 0.016247701706900118 2 0.029134365924910546 
		3 0.69423169413415386 4 0.015814045578616143 5 0.24421610443476366
		6 0 0.00063113906415577462 1 0.019966225751515975 2 0.058882531880489072 
		3 0.65313605669625985 4 0.028905412586671932 5 0.23847863402090738
		5 1 0.006637912595143557 2 0.02597476193093896 3 0.50454277860481866 
		4 0.024441055592725993 5 0.4384034912763729
		6 0 1.0657318493994618e-06 1 0.0087405505687596051 2 0.048757994397038623 
		3 0.47792763920424203 4 0.044889270458647566 5 0.41968347963946279
		5 1 0.0036317598309233189 2 0.021174557899276553 3 0.31480653253462831 
		4 0.031972556874504329 5 0.62841459286066748
		5 1 0.004686971854086305 2 0.037571193355689612 3 0.30119765603654763 
		4 0.059334437886481815 5 0.59720974086719458
		5 1 0.002601360805040598 2 0.019376340181734206 3 0.20359415844372991 
		4 0.040314945677774439 5 0.73411319489172089
		5 1 0.0031680499581290835 2 0.031966861631812477 3 0.19459636049221946 
		4 0.071536775355774226 5 0.69873195256206477
		7 0 0.16885510455580138 1 0.66395242791843534 2 0.045042184561489354 
		3 0.11934577882442429 4 1.0333463317576934e-06 5 0.0028033934094467174 
		8 7.7384071143076709e-08
		6 0 0.18654144011867041 1 0.69899110694170696 2 0.035554392740019918 
		3 0.076880346559616078 5 0.0020320417562265996 8 6.7188375985622403e-07
		6 0 0.14184008915607949 1 0.56213966228546997 2 0.067894651279213666 
		3 0.22337299430538995 4 3.2118107800003109e-06 5 0.0047493911630669128
		6 0 0.10749775245628063 1 0.41218220566756858 2 0.099124579927399009 
		3 0.37227062382141468 4 6.3354866102332399e-06 5 0.0089185026407268692
		6 0 0.070647813521522704 1 0.25464925300424485 2 0.12912125462264609 
		3 0.52404204311777358 4 0.0024719207573651253 5 0.0190677149764477
		6 0 0.037880673270560369 1 0.13015188465466368 2 0.14807563327627959 
		3 0.62765553426071696 4 0.010762675368351779 5 0.045473599169427517
		6 0 0.014399532677049916 1 0.057040265859477378 2 0.14951418719648257 
		3 0.6407084984607827 4 0.031232794308343317 5 0.10710472149786407
		6 0 0.003779736795799008 1 0.023786400395945279 2 0.13326496287644546 
		3 0.5581691370267341 4 0.061362858398643659 5 0.21963690450643247
		6 0 0.00032059476485244348 1 0.010771930462997624 2 0.10583075331783826 
		3 0.41730383864275655 4 0.095963625076565556 5 0.36980925773498952
		6 0 3.720535318291197e-06 1 0.0057211909960077729 2 0.078231792215121804 
		3 0.27406192931016399 4 0.12772997374284661 5 0.51425139320054147
		6 0 2.662988588023026e-06 1 0.0037841917420892782 2 0.06301590060225927 
		3 0.18685157559252241 4 0.1496226136532989 5 0.59672305542124215
		2 0 0.31460960755674139 1 0.49964977435049418;
	setAttr ".wl[236:304].w"
		5 2 0.076458702311348492 3 0.10653941023142055 4 0.00041141810852372916 
		5 0.0023288323424617602 8 2.2550990099005188e-06
		7 0 0.33947997018313691 1 0.52787151994733228 2 0.056951599668695688 
		3 0.073983308235926151 4 3.726515089273453e-06 5 0.0016988404130394458 
		8 1.1035036780118942e-05
		7 0 0.2655162340201625 1 0.425386429141904 2 0.12137278879979521 
		3 0.18265866748220344 4 0.0011533062408941891 5 0.0039124455522222042 
		8 1.2876281847542332e-07
		6 0 0.19877925991287679 1 0.31691426146022827 2 0.18359386272417474 
		3 0.29056585460463252 4 0.0026983912909084341 5 0.0074483700071792504
		6 0 0.12852469237323341 1 0.20201561395196507 2 0.24520293015601119 
		3 0.40026482796139201 4 0.0075603825299980915 5 0.016431553027400222
		6 0 0.069111877231180216 1 0.10848926519316607 2 0.28525054892586776 
		3 0.47452193401094278 4 0.022699624649222833 5 0.039926749989620321
		6 0 0.028579728832498128 1 0.049032875432021769 2 0.28831669105198299 
		3 0.48394493390888577 4 0.058132012524199465 5 0.091993758250411922
		6 0 0.0097720381542779882 1 0.020426693808321766 2 0.25368249606797222 
		3 0.42518476712799147 4 0.11222283611826255 5 0.17871116872317405
		6 0 0.0033212066303075047 1 0.0090862177532926146 2 0.19646363119384985 
		3 0.32425438737505352 4 0.1769467989835499 5 0.28992775806394666
		6 0 0.0013935722529185976 1 0.0047771389509632632 2 0.13995676462038364 
		3 0.22228142080320096 4 0.23644659925986236 5 0.39514450411267116
		7 0 0.0007638339876308946 1 0.003178503550972839 2 0.10737870178877398 
		3 0.16108466013955322 4 0.27211361544261464 5 0.45548059453444206 
		6 9.0556012372727555e-08
		7 0 0.48995676725484405 1 0.32387081937561985 2 0.10554190881616228 
		3 0.078502961935393717 4 0.0011515541258291207 5 0.00093511489842847801 
		8 4.0873593722459909e-05
		7 0 0.52135118405325509 1 0.34601816066351893 2 0.073534073163891309 
		3 0.057720907606037139 4 0.00036672969278192513 5 0.00073145479350090028 
		8 0.00027749002701473238
		7 0 0.41398817779134789 1 0.27573648430553399 2 0.17939080696710061 
		3 0.1262325975046843 4 0.0030833352640585927 5 0.0015661167932193695 
		8 2.4813740552772945e-06
		7 0 0.30609789568417373 1 0.20791607019093347 2 0.28272386936751515 
		3 0.19320386522427174 4 0.0068687327795315554 5 0.003189465336920899 
		8 1.014166534240271e-07
		6 0 0.19380330120344103 1 0.13519312072217912 2 0.38575968284296452 
		3 0.26104534189141293 4 0.015735872292436962 5 0.0084626810475654391
		6 0 0.10351715459882058 1 0.073185550670063715 2 0.45295011981492417 
		3 0.30698209530452736 4 0.03852961028717572 5 0.02483546932448847
		6 0 0.046279961024538817 1 0.030834765495986079 2 0.45804414517541298 
		3 0.31311874589025379 4 0.088650146245954742 5 0.06307223616785361
		6 0 0.018897563954693199 1 0.011054120833180959 2 0.39971978530819313 
		3 0.27739924486045331 4 0.1704701617524467 5 0.12245912329103262
		6 0 0.0080339331691133813 1 0.0041922804200499051 2 0.30338112890133645 
		3 0.21573131171676987 4 0.27355322348921879 5 0.19510812230351154
		7 0 0.003686723364798139 1 0.002087103380418572 2 0.20800771370966889 
		3 0.15374930733689773 4 0.36912491106289941 5 0.26334411796654755 
		6 1.2317876974136599e-07
		7 0 0.0018912095065628674 1 0.001479533141433727 2 0.15185685880383418 
		3 0.11775263122658507 4 0.42210290877085588 5 0.30491538567599608 
		6 1.472874732287215e-06
		7 0 0.65567095959466581 1 0.17536997207516791 2 0.12015695804669874 
		3 0.046808421420155878 4 0.0011942786707092193 5 2.9779737403141323e-05 
		8 0.0007696304551991763
		7 0 0.69416698832353929 1 0.19142783082546569 2 0.0768966353620643 
		3 0.036219717429969669 4 1.6547183468222618e-05 5 1.7762086944580076e-05 
		8 0.0012545187885483504
		7 0 0.55145406881777137 1 0.1488752257161215 2 0.22407138703850632 
		3 0.071707195393548029 4 0.0037522312186580595 5 6.3314666250864615e-05 
		8 7.6577149143587517e-05
		7 0 0.40088964711368941 1 0.1134591718873187 2 0.37062165054135893 
		3 0.10623901288435783 4 0.0086266257226581163 5 0.00015599894972870445 
		8 7.8929008882405888e-06
		8 0 0.24524244321656169 1 0.074748613854505333 2 0.51677661496372607 
		3 0.14085127243015466 4 0.019343186624481371 5 0.0030314250329352183 
		7 5.8324085116558859e-06 8 6.1146912411421308e-07
		7 0 0.12459071003754893 1 0.040267863201981696 2 0.6125666767368857 
		3 0.16415387338453322 4 0.046130342683932415 5 0.012289987198233394 
		7 5.4675688468691607e-07
		6 0 0.054662762949553009 1 0.015459133526423122 2 0.6196290098956978 
		3 0.16765539611111288 4 0.10739612156661256 5 0.035197575950600607
		7 0 0.022883448247051963 1 0.0043549449055939118 2 0.53597253367706488 
		3 0.15032770466321199 4 0.21716836369215609 5 0.069286082498035251 
		7 6.9223168860160278e-06
		8 0 0.010070371843422599 1 0.00059928322109536677 2 0.3984494698135258 
		3 0.11959695987367364 4 0.36157953322960562 5 0.10969695114030291 
		6 5.4313590441745212e-08 7 7.3765647836752992e-06
		8 0 0.0045621283773989293 1 0.00019582320270062131 2 0.26128504893368637 
		3 0.088404358597387378 4 0.49739830005907909 5 0.14814205315350884 
		6 7.1725412872498136e-06 7 5.1151349515583156e-06
		8 0 0.0022005234863611053 1 0.00015395062207823634 2 0.17987218267793115 
		3 0.07145421274247328 4 0.5716896509812408 5 0.17462156504032611 6 
		7.4931093252567553e-06 7 4.2134026403600895e-07
		8 0 0.77975100528878682 1 0.076343139477106942 2 0.11649738165844793 
		3 0.021828548585983595 4 0.00081896428673424175 5 7.9275735924382507e-08 
		7 1.2434497642634445e-05 8 0.0047484469295618241
		8 0 0.82356976543497484 1 0.08591675598106778 2 0.066408728830422578 
		3 0.017704576512331548 4 3.2386702161431312e-06 5 6.412770313024521e-08 
		7 1.7362665596306323e-05 8 0.006379507777687728
		8 0 0.64868252818352801 1 0.064902961580017099 2 0.2454519184600846 
		3 0.032314808685919676 4 0.0030275394384028562 5 1.6473626264024793e-07 
		7 0.0014046953047226166 8 0.0042153836110624763
		8 0 0.46170102115653028 1 0.050139723166413068 2 0.42851632698845432 
		3 0.046611708976409857 4 0.0072625943561145916 5 3.5107298035738897e-07 
		7 0.0023976207933593487 8 0.0033706534897381679
		8 0 0.27082911418386663 1 0.033243685282527656 2 0.61313242449534455 
		3 0.060975001810198243 4 0.016458044080349472 5 0.00017215595078746035 
		7 0.003288965644436293 8 0.0019006085524896556
		8 0 0.12566165179867542 1 0.017726371162046266 2 0.73639620008341033 
		3 0.070219377780007169 4 0.041646310253860883 5 0.0047933818032670191 
		7 0.0034137174920627769 8 0.00014298962667007583
		9 0 0.049611308218734981 1 0.0061705997204688345 2 0.7448733090365649 
		3 0.072001655064323253 4 0.10816782596497283 5 0.015640981352701717 
		6 7.4923053366365954e-06 7 0.0035262012877421995 8 6.2704915451905427e-07
		8 0 0.019514721090636768 1 0.00066577425251298941 2 0.63590837012186252 
		3 0.066032430164357447 4 0.24152132625505465 5 0.031226240805362945 
		6 0.0012804207589665333 7 0.0038507165512460854
		8 0 0.0085036911541835347 1 2.4016843006803255e-05 2 0.46045667558571929 
		3 0.053874247715305988 4 0.42165647459070488 5 0.049545358749452012 
		6 0.0023763968863171375 7 0.0035631384753102534
		8 0 0.00373714692420128 1 4.9638307466974126e-07 2 0.28646607917118261 
		3 0.040934796122882901 4 0.59462636305860217 5 0.067807108348454742 
		6 0.0036435261715919258 7 0.0027844838200096764
		8 0 0.0016993011764515199 1 6.0715753679011096e-07 2 0.18336893019809178 
		3 0.034849096764248674 4 0.6900931401970718 5 0.082440535938567053 
		6 0.0050647230372949156 7 0.0024836655307375419
		7 0 0.8327645608581925 1 0.024150405225687347 2 0.1079582067606847 
		3 0.007095664949040752 4 3.657918495776736e-05 7 0.0059411424697289952 
		8 0.022053440551707947
		7 0 0.87660941393688419 1 0.028633131528619109 2 0.056339692478041409 
		3 0.0059578045430517196 4 6.4903624713420868e-08 7 0.0054340250947371134 
		8 0.027025867515041647
		7 0 0.68856529303433989 1 0.021285648695621329 2 0.24982520622338816 
		3 0.010526691592489663 4 0.0022479698927713263 7 0.0085659316615375458 
		8 0.018983258899852123
		7 0 0.48333694515312697 1 0.016963871611125798 2 0.45184156651370294 
		3 0.014937793467013837 4 0.0057042441865740616 7 0.012424898590901323 
		8 0.014790680477555085
		8 0 0.2747828976192313 1 0.010963367654707925 2 0.65655970721642765 
		3 0.019497310709721789 4 0.012758019010578025 5 5.0421579025571837e-07 
		7 0.016193032671104248 8 0.009245160902438869
		9 0 0.11813606360187558 1 0.0054469491043525721 2 0.79725943567280311 
		3 0.021967907377243807 4 0.034770893806857363 5 0.00031781594730995053 
		6 1.5477104228332898e-05 7 0.017750393341059146 8 0.0043350640442701505
		9 0 0.041526831439278454 1 0.00070815068960888026 2 0.80632506936619108 
		3 0.022841032838769162 4 0.1020968265746153 5 0.0046433727428030602 
		6 0.0035125437567266487 7 0.018066074162587934 8 0.00028009842941928935
		9 0 0.015043797665650577 1 2.9754423668248277e-05 2 0.68010077860855866 
		3 0.022167152301150985 4 0.24753572270252969 5 0.0099614126691024447 
		6 0.0075805904862813415 7 0.017579699538456187 8 1.0916046017736828e-06
		8 0 0.0065747905381191478 1 6.006806999278702e-08 2 0.48376171228242809 
		3 0.018729684601916846 4 0.44714418226621738 5 0.016352741871196157 
		6 0.012254750321039648 7 0.015182078051012729
		7 0 0.0028453952637013296 2 0.29010830686061762 3 0.01415759319641649 
		4 0.64039218781669405 5 0.023372416037262905 6 0.017322683390688418 
		7 0.011801417434619089
		7 0 0.0012454972553492577 2 0.17677486770995537 3 0.012705570117366272 
		4 0.7466866740971132 5 0.030088529213655672 6 0.022205342667731623 
		7 0.01029351893882869
		7 0 0.78351487406009679 1 0.0053751906283568433 2 0.11705747601949924 
		3 0.001350301028920667 4 0.00079842934897998534 7 0.020376602328313152 
		8 0.071527126585833239
		7 0 0.8274077480374743 1 0.0069263609747272732 2 0.065985080432514429 
		3 0.00013670166074991225 4 3.0539024726152421e-06 7 0.016958508244779229 
		8 0.082582546747282271
		7 0 0.65138565058060327 1 0.0049938372185393959 2 0.24907038661311723 
		3 0.00234342438427931 4 0.0030086817137156465 7 0.029528165254003615 
		8 0.059669854235741525
		7 0 0.46203685928068489 1 0.0041225407809629697 2 0.43606302708460548 
		3 0.0033023192588603673 4 0.0071898881359628627 7 0.042090202315886074 
		8 0.045195163143037377
		8 0 0.26880720071105607 1 0.0024492170599462264 2 0.62474557645139339 
		3 0.004389995968922247 4 0.016213135059283193 6 7.9919101156198833e-06 
		7 0.054114353546196883 8 0.029272529293086314
		9 0 0.1224021749426987 1 0.00042868197487942614 2 0.7510518582449659 
		3 0.0047335614801870124 4 0.041269025645901479 5 1.1732579400405733e-06 
		6 0.0040780216927205001 7 0.060885722250045293 8 0.015149780510661617
		9 0 0.047157289111899751 1 2.1245322303429999e-05 2 0.75905655938918104 
		3 0.0050318157792726016 4 0.10887618254588939 5 0.00031441233606430277 
		6 0.013497128006489702 7 0.061163896520725451 8 0.0048814709881742427
		9 0 0.018272121580899449 1 9.1006424576734242e-08 2 0.64577998556579941 
		3 0.0053921633292863856 4 0.24645237408924017 5 0.0020433162165942008 
		6 0.02642508233840056 7 0.055385030825475766 8 0.00024983504787958041
		8 0 0.0079530667082635172 2 0.46477952229863667 3 0.0047357875113305144 
		4 0.43280737710839434 5 0.0037237558781539745 6 0.041079588308574749 
		7 0.044920437806714605 8 4.6437993173662897e-07
		7 0 0.0034564591042761917 2 0.28574023760323614 3 0.0034281627819313641 
		4 0.61218568888460367 5 0.0057394288089887141 6 0.05532421162326126 
		7 0.034125811193702713
		7 0 0.0015456881912994467 2 0.18069695365752811 3 0.0032630809781224396 
		4 0.71096210496088907 5 0.0079993251013996142 6 0.066607547782832524 
		7 0.028925299327928849
		8 0 0.66292452971382954 1 0.00089524820288849124 2 0.12236908018729221 
		3 3.6675533217278678e-05 4 0.0012340520099957265 6 2.4995376164512581e-06 
		7 0.045386622988377895 8 0.16715129182678226
		8 0 0.7004703137870737 1 0.001384177468960285 2 0.076744484270173538 
		3 3.7173239564895626e-07 4 8.8515117802619939e-06 6 3.0224191060066222e-06 
		7 0.035334409443152907 8 0.18605436936735772
		5 0 0.5566184408910555 1 0.0002255562641207432 2 0.23110347496875408 
		3 8.6045909787890105e-05 4 0.0038516598234302145;
	setAttr ".wl[304:384].w"
		3 6 3.9667727133540143e-06 7 0.068677389642619491 8 0.13943346572751864
		8 0 0.40251003862886858 1 0.00018449440936377863 2 0.38388606016188376 
		3 0.00013953785531322068 4 0.008831759600481633 6 6.739791224080567e-06 
		7 0.10011049886234152 8 0.10433087069052341
		8 0 0.24353364512587244 1 0.00011884597807739957 2 0.53612403089178495 
		3 0.00022114679124498755 4 0.019782372987067667 6 0.0026631420063971661 
		7 0.1302273139891546 8 0.067329502230400864
		8 0 0.12130911137078236 1 6.7682235002538811e-06 2 0.63580415982363203 
		3 0.00025698562869220745 4 0.04733987282857488 6 0.011277648140302726 
		7 0.14874234133231898 8 0.035263112652196643
		9 0 0.052214422271071377 1 3.2985063363450983e-08 2 0.64213334188491911 
		3 0.0003029829677625831 4 0.11126589544529195 5 6.6889296084689599e-07 
		6 0.032328524620452041 7 0.14902913902390388 8 0.012724991908574962
		8 0 0.021731114226379428 2 0.5529933070421974 3 0.00037378430981819058 
		4 0.22772786390582556 5 0.00012974116471702198 6 0.06247459969812353 
		7 0.13142849854318867 8 0.0031410911097500757
		8 0 0.0096178823486267381 2 0.40779524784517746 3 0.00035778893093752037 
		4 0.38164214545934838 5 0.000265299826896929 6 0.096968516314877587 
		7 0.10322094306370914 8 0.00013217621042632029
		8 0 0.0043367591366788574 2 0.26371101128509228 3 0.00026560831647438264 
		4 0.5266862351973467 5 0.00045777243572316334 6 0.12871239195676748 
		7 0.075826235304080225 8 3.9863678369195528e-06
		8 0 0.0020717538692321619 2 0.1798693955788635 3 0.00027508902794477752 
		4 0.60555768654153597 5 0.00069548132983628715 6 0.14991100245432126 
		7 0.06161505595373977 8 4.5352445262748183e-06
		7 0 0.49846096814265733 1 4.8833735167741853e-05 2 0.10902840847916219 
		4 0.0012284011414574636 6 0.00087588369110710399 7 0.077933357351923582 
		8 0.31242414745852454
		7 0 0.52875548301768382 1 0.00030391333632349971 2 0.073942962670657156 
		4 0.00036673830552744869 6 0.00069633384799551966 7 0.056909625514554738 
		8 0.33902494330725785
		8 0 0.42079718947573341 1 3.3449906088831919e-06 2 0.18831292227659918 
		3 1.4523875293723525e-07 4 0.0033136038129538328 6 0.0014448042687363464 
		7 0.1245014760417496 8 0.2616265138948658
		8 0 0.30955191607747795 1 4.3320604746109886e-07 2 0.2986639270918825 
		3 6.8192525583303267e-09 4 0.0074090125665798043 6 0.0029095531086488248 
		7 0.18770750942278661 8 0.19375764170732432
		8 0 0.19391895712020632 1 1.6489158355175037e-08 2 0.40848188950632641 
		3 3.9327905659451835e-07 4 0.01701151289488706 6 0.0079574618075090049 
		7 0.24916656097230722 8 0.12346320793054899
		7 0 0.101965155411818 2 0.47987896892085707 3 1.7344768565378948e-08 
		4 0.041610176588364342 6 0.023837427361814646 7 0.28769058933074432 
		8 0.065017665041633019
		6 0 0.045046514693438781 2 0.48452661972893801 4 0.095721325854677797 
		6 0.060692609967835182 7 0.28811137828907429 8 0.025901551466035871
		7 0 0.018560810101638958 2 0.42106695210521305 3 7.0246862105736323e-07 
		4 0.1850318450047766 6 0.11587672399019075 7 0.25081137779417784 8 
		0.0086515885353816227
		8 0 0.0081089660269366981 2 0.31717778498632304 3 7.1307708768602077e-07 
		4 0.29842895305924633 5 6.3073886277741504e-09 6 0.181065878747038 
		7 0.1921758399484359 8 0.0030418578475436904
		8 0 0.0037806461294398741 2 0.21508572976067916 3 2.8634600110430047e-08 
		4 0.40362781107224183 5 1.0546870883043521e-06 6 0.24000557562903535 
		7 0.13599610811240309 8 0.0015030459745123638
		7 0 0.0019504548095800591 2 0.15686076923410891 4 0.46098939139722989 
		5 2.5276616766440985e-06 6 0.27380184823864517 7 0.10530104525532359 
		8 0.0010939634034357528
		7 0 0.32241339011879266 1 2.1986557418474066e-06 2 0.080127306885328126 
		4 0.00048577711062081254 6 0.0023236492110512816 7 0.10807597243832268 
		8 0.48657170558014273
		7 0 0.34649493907592965 1 1.6966794308006765e-05 2 0.057741856012379883 
		4 1.159399839758873e-05 6 0.00167101854727 7 0.073566302251721741 
		8 0.5204973233199931
		7 0 0.27249109723009202 1 9.3232872376150336e-08 2 0.12988520788093214 
		4 0.0013494539665605577 6 0.0039068931830318855 7 0.18484868837331345 
		8 0.40751856613319759
		7 0 0.20325324265203035 1 1.4744134612409516e-09 2 0.19831161351820051 
		4 0.0031998977915476796 6 0.007429892694947743 7 0.28985685309336312 
		8 0.29794849877549717
		6 0 0.1301655962958693 2 0.2660861118272877 4 0.0088232544926138343 
		6 0.016481800417307929 7 0.39247153407794311 8 0.18597170288897819
		6 0 0.06892213392451528 2 0.31021008377303655 4 0.026053431221578167 
		6 0.040293971467703707 7 0.45701600834652867 8 0.097504371266637621
		6 0 0.027982789674674664 2 0.31340170103578668 4 0.065941687560757634 
		6 0.092458568243922304 7 0.45762775887741297 8 0.042587494607445799
		6 0 0.0097814965914861801 2 0.27479511294236103 4 0.12694535833467827 
		6 0.17638846008062925 7 0.39481822238260533 8 0.017271349668239844
		6 0 0.0036727468073796251 2 0.21139926695497258 4 0.20068677493731676 
		6 0.2803961957773678 7 0.29619564868407555 8 0.0076493668388876619
		7 0 0.0016721196419635467 2 0.14948881499278982 4 0.26863087942707242 
		5 1.6236229977891028e-08 6 0.37470065962945059 7 0.20143608139002656 
		8 0.0040714286824671507
		7 0 0.00094938022521077635 2 0.11543672331119263 4 0.30830448692450918 
		5 3.0932616063323513e-07 6 0.42413039170224548 7 0.14840249192345695 
		8 0.0027762165872243531
		5 0 0.069462287268114334 2 0.015013059822438002 6 0.0014125662370978594 
		7 0.065382046336214417 8 0.84873004033613531
		5 0 0.062034361852458225 2 0.017370725926812037 6 0.0018466349029025429 
		7 0.1047562306918171 8 0.8139920466260101
		5 0 0.047311012923655707 2 0.015190839276333554 6 0.0018363459601145118 
		7 0.12032950068748623 8 0.81533230115241007
		5 0 0.035961347388629938 2 0.012115414120103082 6 0.0016533896686230861 
		7 0.1199971852888133 8 0.83027266353383067
		5 0 0.044634135868892061 2 0.010369605084925447 6 0.0011648628771563276 
		7 0.063084927889127493 8 0.88074646827989866
		5 0 0.056569713175571384 2 0.021076958676021322 6 0.0025004099815226864 
		7 0.16145969143572975 8 0.75839322673115495
		5 0 0.053061346700493367 2 0.02506853584398255 6 0.0031931462273734274 
		7 0.22045268735086448 8 0.69822428387728619
		5 0 0.041041259883866366 2 0.023138169107881142 6 0.0033666402154493452 
		7 0.26418839817648065 8 0.66826553261632249
		5 0 0.031721366036850218 2 0.018544909626900381 6 0.0030691845894122603 
		7 0.26729058977188885 8 0.67937394997494827
		5 0 0.047515638530636943 2 0.03119957519100559 6 0.0045974238924421235 
		7 0.31718251597561864 8 0.59950484641029667
		5 0 0.04298000731205931 2 0.03610000144392346 6 0.0059451018924270987 
		7 0.39843155309060718 8 0.51654333626098292
		6 0 0.032843361596939596 2 0.032619107942577483 4 6.6923778962809589e-09 
		6 0.0062732074950442463 7 0.46236090378994099 8 0.46590341248311973
		6 0 0.026051932256107618 2 0.025889229324652561 4 1.6647860436630822e-09 
		6 0.005689750169573844 7 0.47006375569095699 8 0.47230533089392296
		6 0 0.03599234966931799 2 0.042217774458140768 4 1.6747934063116826e-06 
		6 0.0092820245246284863 7 0.51026443182978731 8 0.40224174472471907
		6 0 0.030401424841338228 2 0.046171272463285687 4 4.1457518160754637e-06 
		6 0.012786026344443188 7 0.59097527667584859 8 0.31966185392326818
		6 0 0.022046093162493244 2 0.039713889454972007 4 6.626885258956637e-06 
		6 0.014045285790891837 7 0.65941357518146282 8 0.26477452952492109
		6 0 0.017702202946623707 2 0.030721208855426268 4 1.0199904168279019e-05 
		6 0.012946351063053583 7 0.67171795948462609 8 0.26690207774610214
		6 0 0.022775196365631144 2 0.050249583687053734 4 0.0012165352165234451 
		6 0.022805723890402623 7 0.68294240605476375 8 0.22001055478562534
		6 0 0.017326568340190456 2 0.052178924021916033 4 0.002990798001659252 
		6 0.033869141027858464 7 0.73521995246644722 8 0.15841461614192856
		6 0 0.011216779345784272 2 0.042753737248508783 4 0.0035039649543999922 
		6 0.040016420073105505 7 0.78753837009931116 8 0.11497072827889029
		6 0 0.0089649606146945601 2 0.032250669490747202 4 0.0028035742994765907 
		6 0.038672140010834001 7 0.80309646127672807 8 0.11421219430751958
		6 0 0.010868573961262536 2 0.05366115456046408 4 0.0069117101641065605 
		6 0.062520330452835018 7 0.77162439052693821 8 0.094413840334393553
		6 0 0.0069827950175704286 2 0.053849210385721262 4 0.010840908059470938 
		6 0.093090110927904965 7 0.77169858798114599 8 0.063538387628186407
		6 0 0.0035260400008559822 2 0.043185097805937767 4 0.011313093489994527 
		6 0.11392399235187545 7 0.78763342727551233 8 0.040418349075823992
		6 0 0.0028000132374968504 2 0.03266901761610104 4 0.0091107697551596842 
		6 0.11385319586689444 7 0.80280148549066077 8 0.03876551803368726
		6 0 0.0030466267217982889 2 0.052913750416334747 4 0.017444290761922294 
		6 0.15591438188780293 7 0.7362575385570953 8 0.034423411655046469
		6 0 0.001257096586920416 2 0.051341655442745056 4 0.023097849077130049 
		6 0.2165515042579976 7 0.68447617923260307 8 0.023275715402603724
		6 0 3.4697364908456803e-06 2 0.040950085211203621 4 0.022647725867840123 
		6 0.26155655514094439 7 0.66054805928726756 8 0.014294104756253463
		6 0 8.3381874646642779e-07 2 0.031898382298433448 4 0.018373351573558152 
		6 0.26477735451125312 7 0.67185816232005202 8 0.01309191547795689
		6 0 4.422603424934553e-06 2 0.047840514881513634 4 0.03119510462026194 
		6 0.31351495088835857 7 0.59434233877292519 8 0.013102668233515817
		6 0 1.8265279224908612e-06 2 0.044319359445874937 4 0.037274840935657097 
		6 0.39345360985759492 7 0.51537264011487838 8 0.0095777231180723191
		5 2 0.034784801944929347 4 0.034669383896492476 6 0.45640538453173096 
		7 0.46764746507168053 8 0.0064929645551668157
		5 2 0.027890484639532941 4 0.028001520069602791 6 0.46399770520298517 
		7 0.47423261412318513 8 0.0058776759646940379
		5 2 0.03142043647493839 4 0.057901041596829281 6 0.65365463122889633 
		7 0.25331101951727175 8 0.0037128711820642365
		5 2 0.027381489641377994 4 0.045371053451344484 6 0.63896604751111696 
		7 0.28455283115087326 8 0.0037285782452873189
		5 2 0.028763762423011693 4 0.066241397644351926 6 0.71784381019055321 
		7 0.18425021126829272 8 0.0029008184737903133
		5 2 0.02084319495536089 4 0.045742209147736551 6 0.74184287156234796 
		7 0.18901214259343666 8 0.0025595817411178945
		5 2 0.022406522471283958 4 0.036459543320095128 6 0.65021462699201116 
		7 0.28749629091283291 8 0.0034230163037768631
		5 2 0.039172297759068178 4 0.045250417120489668 6 0.50045777013684345 
		7 0.40888339279490121 8 0.0062361221886975664
		5 2 0.035238694765360429 4 0.050714291909622199 6 0.57545541696910862 
		7 0.3336485617023236 8 0.0049430346535853124
		6 0 0.1023915191170429 1 1.035774290561676e-07 2 0.020970049393468616 
		6 0.0016577818706086875 7 0.06865841337328922 8 0.80632213266816155
		6 0 0.18589844053291341 1 6.6753850853443141e-07 2 0.035443008883341669 
		6 0.0020291781928688884 7 0.076816703122546251 8 0.69981200172982116
		7 0 0.16821137565452807 1 1.0703041351536783e-08 2 0.046461490522707649 
		4 1.1665228296520721e-06 6 0.0028999689116147396 7 0.12422438173341431 
		8 0.65820160595186428
		7 0 0.090192756012921968 1 8.4415748435944165e-10 2 0.02656076645003165 
		4 1.9240046639141022e-07 6 0.0023849107422622361 7 0.12212579034707327 
		8 0.75873558320308698
		6 0 0.14170699553016994 2 0.071618902235309284 4 3.5630446745748665e-06 
		6 0.0049903610067269805 7 0.23383768769993671 8 0.54784249048318256
		6 0 0.076843190083792756 2 0.040558740727366357 4 6.1556255220050496e-07 
		6 0.004237613493934725 7 0.25315273305158664 8 0.62520710708076743
		6 0 0.10714584252652569 2 0.10544933349480932 4 1.4272542545870313e-05 
		6 0.0094527707124555313 7 0.38460910845755614 8 0.39332867226610752
		6 0 0.059354177361388136 2 0.058697181716441789 4 1.2699147216177251e-06 
		6 0.0079908758538759297 7 0.43353165222373635 8 0.44042484292983619
		6 0 0.069863201155207846 2 0.13820125662121641 4 0.0029927478503070965 
		6 0.020350818743418046 7 0.53192133138924214 8 0.23667064424060846
		3 0 0.03920325147124748 2 0.075060199037787462 4 0.00056843263684002777;
	setAttr ".wl[384:405].w"
		3 6 0.017400768894503253 7 0.61201898092587825 8 0.25574836703374348
		6 0 0.036687400352275176 2 0.15926068376163394 4 0.012449892668091711 
		6 0.048571808845509823 7 0.62542144172509051 8 0.11760877264739886
		6 0 0.020327356942931484 2 0.084658689410437402 4 0.0065232274290854342 
		6 0.044456293861392895 7 0.72672097916395784 8 0.1173134531921949
		6 0 0.013188270664180737 2 0.16119069708390474 4 0.035856650902973089 
		6 0.11315705774483049 7 0.62607753478688766 8 0.050529788817223413
		6 0 0.0067776303338816487 2 0.085727016460372868 4 0.020195034672417456 
		6 0.11438460471772724 7 0.72716086268165225 8 0.045754851133948574
		6 0 0.0033804862287082822 2 0.1434964010512717 4 0.069965712552351469 
		6 0.2274927256282348 7 0.53456371033339467 8 0.02110096420603897
		6 0 0.00071255268285357347 2 0.078021962813795323 4 0.039939691966265289 
		6 0.2491751614037381 7 0.61416134395920041 8 0.017989287174147234
		6 0 0.00021473699440958824 2 0.11352938534874459 4 0.10949530637803337 
		6 0.37500112538176489 7 0.39198944458300494 8 0.0097700013140425788
		6 0 7.1693587676397821e-06 2 0.063376208694422342 4 0.062036536697461911 
		6 0.42596199201362922 7 0.44028974284179467 8 0.0083283503939242075
		6 0 8.9787001196255103e-05 2 0.083827902746697269 4 0.14609119384353389 
		6 0.5105462514209349 7 0.2541126764038189 8 0.0053321885838188959
		6 0 9.1014468466823262e-07 2 0.048133194971423418 4 0.082363230180225469 
		6 0.59131943471780135 7 0.27354606736069809 8 0.0046371626251671188
		7 0 6.0400796231633542e-05 2 0.068678879792692354 4 0.17090995076623794 
		5 8.0187683833181025e-09 6 0.58023766248365782 7 0.17647294696819085 
		8 0.0036401511742210346
		6 0 7.2818072799790396e-07 2 0.041105284322025287 4 0.098310891127327243 
		6 0.67636871270731758 7 0.18097766099616011 8 0.0032367226664416953
		5 0 0.070657830800687146 2 0.02150053536506576 6 0.002214446843480225 
		7 0.12149849973968761 8 0.78412868725107931
		5 0 0.060213654777090703 2 0.032528715540431206 6 0.0039788596853753766 
		7 0.2581900228312331 8 0.6450887471658695
		5 0 0.046826190191469358 2 0.046367810054440926 6 0.0074849885168718827 
		7 0.44665627589983881 8 0.45266473533737905
		6 0 0.031012487451185979 2 0.058106559942358672 4 8.5357278286429548e-06 
		6 0.01638312584623489 7 0.63390307288500813 8 0.26058621814738364
		6 0 0.015894616836006282 2 0.064279346737204437 4 0.0049385024636273422 
		6 0.043031464518103905 7 0.75498456930552293 8 0.11687150013953498
		6 0 0.0050623756576757915 2 0.064769671664729411 4 0.015811912039223296 
		6 0.11450118611974019 7 0.75579811604684366 8 0.044056738471787669
		6 0 3.5372810761346026e-05 2 0.059545443141467702 4 0.031375524295296248 
		6 0.25527715728940154 7 0.63689797407286086 8 0.01686852839021237
		6 0 4.7802908489923372e-08 2 0.048970931789877895 4 0.048297620405992628 
		6 0.4408470099372746 7 0.45409235965026218 8 0.0077920304136842944
		5 2 0.037649063191701304 4 0.063622526757849143 6 0.61544056358399368 
		7 0.27891794566855116 8 0.0043699007979047591;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -6.6435745793569034e-13 5.8079975888946053e-20 3.5895398617180069e-20 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 0
		 -8.9447144655998793e-07 2.4202813391367658e-15 -16.555000305175756 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.694999694824219 2.4218443784488122e-22 16.555000305175781 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030249496683614e-08 0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772817375899082e-15 0 5.40302494966838e-08 -1.4619287770504545e-16 0.99999999999999856 0
		 8.9447013254886606e-07 -2.4201650550456468e-15 16.555000305175756 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "399C973C-4DDE-AEE8-52CA-9E9863A9F173";
	setAttr -s 936 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.057743049093865642 2 0.017434474326802819 6 0.0019311898080644585 
		7 0.11543851818979657 8 0.80745276858147041
		5 0 0.048166246588988458 2 0.014910896443767434 6 0.0017800112449949969 
		7 0.11476487227841368 8 0.82037797344383556
		5 0 0.054139782683033141 2 0.016484978844452245 6 0.001874308855297106 
		7 0.1151850507110167 8 0.81231587890620083
		5 0 0.055895983989844938 2 0.01861373500065782 6 0.0021460547183678978 
		7 0.13455831541040011 8 0.78878591088072914
		5 0 0.052382348656425728 2 0.017593417593711067 6 0.0020836365072722136 
		7 0.13441976454181381 8 0.79352083270077722
		5 0 0.046557408134964944 2 0.015901925061454335 6 0.0019801589732834652 
		7 0.13419007468996455 8 0.80137043314033263
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.040714886853327817 2 0.012947389033373558 6 0.0016623842128795985 
		7 0.11424069071106656 8 0.83043464918935239
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.039291364060594539 2 0.013791953485191808 6 0.0018510808718072056 
		7 0.13390355991955852 8 0.811162041662848
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.048166246588988458 2 0.014910896443767434 6 0.0017800112449949969 
		7 0.11476487227841368 8 0.82037797344383556
		5 0 0.057743049093865642 2 0.017434474326802819 6 0.0019311898080644585 
		7 0.11543851818979657 8 0.80745276858147041
		5 0 0.054139782683033141 2 0.016484978844452245 6 0.001874308855297106 
		7 0.1151850507110167 8 0.81231587890620083
		5 0 0.040714886853327817 2 0.012947389033373558 6 0.0016623842128795985 
		7 0.11424069071106656 8 0.83043464918935239
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.046557408134964944 2 0.015901925061454335 6 0.0019801589732834652 
		7 0.13419007468996455 8 0.80137043314033263
		5 0 0.052382348656425728 2 0.017593417593711067 6 0.0020836365072722136 
		7 0.13441976454181381 8 0.79352083270077722
		5 0 0.055895983989844938 2 0.01861373500065782 6 0.0021460547183678978 
		7 0.13455831541040011 8 0.78878591088072914
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.039291364060594539 2 0.013791953485191808 6 0.0018510808718072056 
		7 0.13390355991955852 8 0.811162041662848
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.055533851790702429 2 0.016852329553810962 6 0.0018963155538636524 
		7 0.11528311519185541 8 0.81043438790976763
		5 0 0.053741740548705855 2 0.017988168715013256 6 0.0021077855269003975 
		7 0.13447336932112774 8 0.79168893588825273
		5 0 0.048698809410675885 2 0.015051229818470358 6 0.0017884179628735236 
		7 0.11480231136526071 8 0.81965923144271935
		5 0 0.047076719043991917 2 0.01605272672385763 6 0.0019893843133713561 
		7 0.13421055309695656 8 0.8006706168218225
		5 0 0.059656790808109504 2 0.017938763828211798 6 0.0019614000337854882 
		7 0.11557313886207379 8 0.80486990646781931
		5 0 0.057762121810570721 2 0.019155638824494704 6 0.0021792058270527375 
		7 0.13463189972357159 8 0.78627113381431024
		5 0 0.059656790808109504 2 0.017938763828211798 6 0.0019614000337854882 
		7 0.11557313886207379 8 0.80486990646781931
		5 0 0.057762121810570721 2 0.019155638824494704 6 0.0021792058270527375 
		7 0.13463189972357159 8 0.78627113381431024
		5 0 0.040182428072375077 2 0.012807081012879995 6 0.0016539788507066097 
		7 0.11420323559862341 8 0.83115327646541493
		5 0 0.038772181596071986 2 0.013641189224704427 6 0.001841857835971504 
		7 0.13388308898145357 8 0.81186168236179856
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.048698809410675885 2 0.015051229818470358 6 0.0017884179628735236 
		7 0.11480231136526071 8 0.81965923144271935
		5 0 0.040182428072375077 2 0.012807081012879995 6 0.0016539788507066097 
		7 0.11420323559862341 8 0.83115327646541493
		5 0 0.047076719043991917 2 0.01605272672385763 6 0.0019893843133713561 
		7 0.13421055309695656 8 0.8006706168218225
		5 0 0.038772181596071986 2 0.013641189224704427 6 0.001841857835971504 
		7 0.13388308898145357 8 0.81186168236179856
		5 0 0.055533851790702429 2 0.016852329553810962 6 0.0018963155538636524 
		7 0.11528311519185541 8 0.81043438790976763
		5 0 0.053741740548705855 2 0.017988168715013256 6 0.0021077855269003975 
		7 0.13447336932112774 8 0.79168893588825273
		5 0 0.035611477996090948 2 0.011602591438215255 6 0.0015818220856072904 
		7 0.11388169638072104 8 0.83732241209936553
		5 0 0.034314933158208369 2 0.012346858093536018 6 0.0017626767748103738 
		7 0.13370733181239403 8 0.81786820016105122
		5 0 0.049231548730298232 2 0.025899593852375214 6 0.0034478062410119746 
		7 0.24833691591978363 8 0.67308413525653099
		5 0 0.041265324702393739 2 0.022162264968954799 6 0.0032026541778530397 
		7 0.25017912787093466 8 0.68319062827986365
		5 0 0.046234260170825311 2 0.024493425409544908 6 0.0033555678820264769 
		7 0.24903004786232086 8 0.67688669867528251
		5 0 0.04741428677375345 2 0.027839944961447264 6 0.0039075487771408667 
		7 0.28096732851028305 8 0.63987089097737537
		5 0 0.044556894659119502 2 0.026322071913982982 6 0.0038025823299805139 
		7 0.2819016312640153 8 0.64341681983290178
		5 0 0.039819879004659962 2 0.023805728611345854 6 0.0036285685466700907 
		7 0.28345057405292595 8 0.64929524978439823
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.035067089416865448 2 0.019254384027381811 6 0.0030119103633105332 
		7 0.25161251250247657 8 0.69105410368996545
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.033910919211972604 2 0.020666829842318577 6 0.0034115014160389545 
		7 0.28538259319447667 8 0.65662815633519322
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.041265324702393739 2 0.022162264968954799 6 0.0032026541778530397 
		7 0.25017912787093466 8 0.68319062827986365
		5 0 0.049231548730298232 2 0.025899593852375214 6 0.0034478062410119746 
		7 0.24833691591978363 8 0.67308413525653099
		5 0 0.046234260170825311 2 0.024493425409544908 6 0.0033555678820264769 
		7 0.24903004786232086 8 0.67688669867528251
		5 0 0.035067089416865448 2 0.019254384027381811 6 0.0030119103633105332 
		7 0.25161251250247657 8 0.69105410368996545
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.039819879004659962 2 0.023805728611345854 6 0.0036285685466700907 
		7 0.28345057405292595 8 0.64929524978439823
		5 0 0.044556894659119502 2 0.026322071913982982 6 0.0038025823299805139 
		7 0.2819016312640153 8 0.64341681983290178
		5 0 0.04741428677375345 2 0.027839944961447264 6 0.0039075487771408667 
		7 0.28096732851028305 8 0.63987089097737537
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.033910919211972604 2 0.020666829842318577 6 0.0034115014160389545 
		7 0.28538259319447667 8 0.65662815633519322
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.047393882548764261 2 0.02503745848886068 6 0.0033912540122827718 
		7 0.24876188096213789 8 0.67541552398795435
		5 0 0.045662390755143493 2 0.026909324816607655 6 0.0038431934783610469 
		7 0.28154019808919006 8 0.64204489286069777
		5 0 0.041708320963876791 2 0.022370093008928459 6 0.0032162865592991721 
		7 0.25007665426141368 8 0.68262864520648192
		5 0 0.040242197235168906 2 0.024030067987228936 6 0.0036440824332338445 
		7 0.28331248551753857 8 0.64877116682682978
		5 0 0.0508234478285828 2 0.026646428430341092 6 0.0034967952614249551 
		7 0.24796878633779082 8 0.6710645421418604
		5 0 0.048931885442688478 2 0.028646107137356602 6 0.0039632977848981475 
		7 0.28047110421236809 8 0.63798760542268862
		5 0 0.0508234478285828 2 0.026646428430341092 6 0.0034967952614249551 
		7 0.24796878633779082 8 0.6710645421418604
		5 0 0.048931885442688478 2 0.028646107137356602 6 0.0039632977848981475 
		7 0.28047110421236809 8 0.63798760542268862
		5 0 0.034624178323112674 2 0.019046590010983393 6 0.00299827960652959 
		7 0.25171487893002337 8 0.69161607312935103
		5 0 0.033488704142143694 2 0.020442547609681463 6 0.003395991924281418 
		7 0.28552068936746344 8 0.65715206695642991
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.041708320963876791 2 0.022370093008928459 6 0.0032162865592991721 
		7 0.25007665426141368 8 0.68262864520648192
		5 0 0.034624178323112674 2 0.019046590010983393 6 0.00299827960652959 
		7 0.25171487893002337 8 0.69161607312935103
		5 0 0.040242197235168906 2 0.024030067987228936 6 0.0036440824332338445 
		7 0.28331248551753857 8 0.64877116682682978
		5 0 0.033488704142143694 2 0.020442547609681463 6 0.003395991924281418 
		7 0.28552068936746344 8 0.65715206695642991
		5 0 0.047393882548764261 2 0.02503745848886068 6 0.0033912540122827718 
		7 0.24876188096213789 8 0.67541552398795435
		5 0 0.045662390755143493 2 0.026909324816607655 6 0.0038431934783610469 
		7 0.28154019808919006 8 0.64204489286069777
		5 0 0.030821945100177762 2 0.017262785542819022 6 0.0028812701424441338 
		7 0.25259417539321233 8 0.69643982382134684
		5 0 0.029863937686324834 2 0.01851703872323918 6 0.0032628360688636304 
		7 0.28670591505478193 8 0.66165027246679042
		5 0 0.039001310989730704 2 0.036652739613137357 6 0.0064201773392192994 
		7 0.4379158776897179 8 0.4800098943681948
		5 0 0.033119440048279665 2 0.031180817703111197 6 0.0059397836456860868 
		7 0.44350683978559363 8 0.48625311881732947
		5 0 0.036788257496345955 2 0.03459393361324295 6 0.0062394300784299681 
		7 0.44001951724140409 8 0.482358861570577
		5 0 0.036743767690934945 2 0.038540140560439418 4 4.940755601511196e-07 
		6 0.0075145658915761757 7 0.47566186526584431;
	setAttr ".wl[99:193].w"
		1 8 0.44153916651564495
		6 0 0.034683382711379059 2 0.036347078629328254 4 4.1363452703613346e-07 
		6 0.0073072982036354924 7 0.47805344293379209 8 0.44360838388733803
		6 0 0.031267655418577539 2 0.032711398320132576 4 2.8027859629042945e-07 
		6 0.006963687801765801 7 0.48201822675920158 8 0.44703875142172622
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.028542946438044201 2 0.026923292228976565 6 0.0055660048576364682 
		7 0.44785698754895847 8 0.49111076892638422
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		6 0 0.027006869613346217 2 0.0281762426214348 4 1.1393014710753102e-07 
		6 0.0065350673865026626 7 0.48696390560513292 8 0.45131780084343626
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		5 0 0.033119440048279665 2 0.031180817703111197 6 0.0059397836456860868 
		7 0.44350683978559363 8 0.48625311881732947
		5 0 0.039001310989730704 2 0.036652739613137357 6 0.0064201773392192994 
		7 0.4379158776897179 8 0.4800098943681948
		5 0 0.036788257496345955 2 0.03459393361324295 6 0.0062394300784299681 
		7 0.44001951724140409 8 0.482358861570577
		5 0 0.028542946438044201 2 0.026923292228976565 6 0.0055660048576364682 
		7 0.44785698754895847 8 0.49111076892638422
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		6 0 0.031267655418577539 2 0.032711398320132576 4 2.8027859629042945e-07 
		6 0.006963687801765801 7 0.48201822675920158 8 0.44703875142172622
		6 0 0.034683382711379059 2 0.036347078629328254 4 4.1363452703613346e-07 
		6 0.0073072982036354924 7 0.47805344293379209 8 0.44360838388733803
		6 0 0.036743767690934945 2 0.038540140560439418 4 4.940755601511196e-07 
		6 0.0075145658915761757 7 0.47566186526584431 8 0.44153916651564495
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		6 0 0.027006869613346217 2 0.0281762426214348 4 1.1393014710753102e-07 
		6 0.0065350673865026626 7 0.48696390560513292 8 0.45131780084343626
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		5 0 0.037644467873843061 2 0.035390464494172241 6 0.0063093590586789225 
		7 0.43920561382042927 8 0.48145009475287642
		6 0 0.035480516196586834 2 0.037195543055885766 4 4.4475603694346462e-07 
		6 0.0073874871681457819 7 0.47712817698409205 8 0.44280783183925265
		5 0 0.033446515407265245 2 0.031485097032473715 6 0.0059664971110470416 
		7 0.44319594336922785 8 0.48590594707998608
		6 0 0.031572177801872714 2 0.033035530161539428 4 2.9216766632627355e-07 
		6 0.0069943217054272214 7 0.48166475448346047 8 0.44673292368003381
		5 0 0.040176691638278035 2 0.037746199910583887 6 0.0065161749776332335 
		7 0.43679863227820054 8 0.47876230119530422
		6 0 0.037838065258669423 2 0.039704904279606629 4 5.3679876601510266e-07 
		6 0.0076246483525088983 7 0.47439166440147018 8 0.44044018090897874
		5 0 0.040176691638278035 2 0.037746199910583887 6 0.0065161749776332335 
		7 0.43679863227820054 8 0.47876230119530422
		6 0 0.037838065258669423 2 0.039704904279606629 4 5.3679876601510266e-07 
		6 0.0076246483525088983 7 0.47439166440147018 8 0.44044018090897874
		5 0 0.02821594116891521 2 0.026619078244207024 6 0.0055392971488349221 
		7 0.44816781927744537 8 0.49145786416059745
		6 0 0.026702422561838222 2 0.027852191089655174 4 1.0204400952773646e-07 
		6 0.0065044411493834576 7 0.48731729274536439 8 0.45162355040974927
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		5 0 0.033446515407265245 2 0.031485097032473715 6 0.0059664971110470416 
		7 0.44319594336922785 8 0.48590594707998608
		5 0 0.02821594116891521 2 0.026619078244207024 6 0.0055392971488349221 
		7 0.44816781927744537 8 0.49145786416059745
		6 0 0.031572177801872714 2 0.033035530161539428 4 2.9216766632627355e-07 
		6 0.0069943217054272214 7 0.48166475448346047 8 0.44673292368003381
		6 0 0.026702422561838222 2 0.027852191089655174 4 1.0204400952773646e-07 
		6 0.0065044411493834576 7 0.48731729274536439 8 0.45162355040974927
		5 0 0.037644467873843061 2 0.035390464494172241 6 0.0063093590586789225 
		7 0.43920561382042927 8 0.48145009475287642
		6 0 0.035480516196586834 2 0.037195543055885766 4 4.4475603694346462e-07 
		6 0.0073874871681457819 7 0.47712817698409205 8 0.44280783183925265
		5 0 0.025408557984098312 2 0.024007361682895304 6 0.0053100080825713878 
		7 0.45083635908640429 8 0.49443771316403068
		5 0 0.024088706198170065 2 0.025070166029652598 6 0.0062415099288409956 
		7 0.49035113832832405 8 0.45424847951501224
		6 0 4.9609468092310611e-07 2 0.039565271722593096 4 0.037282807754883934 
		6 0.43351270973095307 7 0.48199371382566897 8 0.0076450008712201202
		6 0 2.8142403605051039e-07 2 0.033623490508798599 4 0.031873831805284365 
		6 0.43906812625928349 7 0.48834606722618945 8 0.0070882027764082494
		6 0 4.1532399786634766e-07 2 0.037329677577250135 4 0.035247685635370868 
		6 0.43560297474529402 7 0.48438374262595352 8 0.0074355040921336548
		5 2 0.037968868975238906 4 0.039708871782242999 6 0.46974408225003506 
		7 0.44601461022139743 8 0.0065635667710857992
		5 2 0.035857944415059795 4 0.037531731195955764 6 0.47208956484869624 
		7 0.44813976297898983 8 0.0063809965612983948
		5 2 0.03235843210573968 4 0.033922445423459791 6 0.47597793132745769 
		7 0.45166286135891531 8 0.0060783297844276187
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		6 0 1.1439575216535289e-07 2 0.029000382661430298 4 0.027665282555644016 
		6 0.44339061715288802 7 0.49328862708298693 8 0.0066549761512986359
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		5 2 0.027993132460037311 4 0.029420214218297346 6 0.48082828961682711 
		7 0.4560575811618619 8 0.0057007825429764144
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		6 0 2.8142403605051039e-07 2 0.033623490508798599 4 0.031873831805284365 
		6 0.43906812625928349 7 0.48834606722618945 8 0.0070882027764082494
		6 0 4.9609468092310611e-07 2 0.039565271722593096 4 0.037282807754883934 
		6 0.43351270973095307 7 0.48199371382566897 8 0.0076450008712201202
		6 0 4.1532399786634766e-07 2 0.037329677577250135 4 0.035247685635370868 
		6 0.43560297474529402 7 0.48438374262595352 8 0.0074355040921336548
		6 0 1.1439575216535289e-07 2 0.029000382661430298 4 0.027665282555644016 
		6 0.44339061715288802 7 0.49328862708298693 8 0.0066549761512986359
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.03235843210573968 4 0.033922445423459791 6 0.47597793132745769 
		7 0.45166286135891531 8 0.0060783297844276187
		5 2 0.035857944415059795 4 0.037531731195955764 6 0.47208956484869624 
		7 0.44813976297898983 8 0.0063809965612983948
		5 2 0.037968868975238906 4 0.039708871782242999 6 0.46974408225003506 
		7 0.44601461022139743 8 0.0065635667710857992
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		5 2 0.027993132460037311 4 0.029420214218297346 6 0.48082828961682711 
		7 0.4560575811618619 8 0.0057007825429764144
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		6 0 4.465739736974839e-07 2 0.038194608377455919 4 0.036035053155661849 
		6 0.43479424612385037 7 0.48345908834300277 8 0.0075165574260554601
		5 2 0.03667464090451749 4 0.038374046176875773 6 0.4711821210213375 
		7 0.44731756068419803 8 0.0064516312130713255
		6 0 2.9336129736698509e-07 2 0.033953897345448882 4 0.032174610896939473 
		6 0.4387592064074195 7 0.48799282721333143 8 0.0071191647755633755
		5 2 0.032670424108106659 4 0.034244224111117751 6 0.47563127289531665 
		7 0.45134876546196401 8 0.0061053134234950769
		6 0 5.3899252481515839e-07 2 0.040752624337426012 4 0.038363689519153067 
		6 0.4324025673938221 7 0.48072431341067434 8 0.0077562663463996403
		5 2 0.039090008746652097 4 0.040865179511176339 6 0.46849836334795547 
		7 0.44488591615781847 8 0.0066605322363976682
		6 0 5.3899252481515839e-07 2 0.040752624337426012 4 0.038363689519153067 
		6 0.4324025673938221 7 0.48072431341067434 8 0.0077562663463996403
		5 2 0.039090008746652097 4 0.040865179511176339 6 0.46849836334795547 
		7 0.44488591615781847 8 0.0066605322363976682
		6 0 1.024610389157636e-07 2 0.028670046650565998 4 0.027364568077165814 
		6 0.44369947271417454 7 0.49364178937647535 8 0.0066240207205795348
		5 2 0.027681217591129136 4 0.029098515254396471 6 0.48117486533415055 
		7 0.45637159627536611 8 0.0056738055449578328
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		6 0 2.9336129736698509e-07 2 0.033953897345448882 4 0.032174610896939473 
		6 0.4387592064074195 7 0.48799282721333143 8 0.0071191647755633755
		6 0 1.024610389157636e-07 2 0.028670046650565998 4 0.027364568077165814 
		6 0.44369947271417454 7 0.49364178937647535 8 0.0066240207205795348
		5 2 0.032670424108106659 4 0.034244224111117751 6 0.47563127289531665 
		7 0.45134876546196401 8 0.0061053134234950769
		5 2 0.027681217591129136 4 0.029098515254396471 6 0.48117486533415055 
		7 0.45637159627536611 8 0.0056738055449578328
		6 0 4.465739736974839e-07 2 0.038194608377455919 4 0.036035053155661849 
		6 0.43479424612385037 7 0.48345908834300277 8 0.0075165574260554601
		5 2 0.03667464090451749 4 0.038374046176875773 6 0.4711821210213375 
		7 0.44731756068419803 8 0.0064516312130713255
		5 2 0.025834068692248104 4 0.024782895309796632 6 0.44635104674768727 
		7 0.4966737252442911 8 0.0063582640059769747
		5 2 0.025003388365327117 4 0.026336687477401553 6 0.48415024807554685 
		7 0.4590674713858226 8 0.0054422046959020495
		6 0 0.026426417640103485 2 0.045386685016093421 4 4.5933069657205263e-06 
		6 0.014081830052659826 7 0.63188324257367445 8 0.28221723141050292
		2 0 0.022604256306783598 2 0.03803519131763021;
	setAttr ".wl[193:277].w"
		4 4 2.6056863628780282e-06 6 0.013147573358786102 7 0.64148223573566654 
		8 0.28472813759477056
		6 0 0.024988330309935979 2 0.042620689501228735 4 3.8454660067595476e-06 
		6 0.013730316955828823 7 0.6354948722420487 8 0.28316194552495105
		6 0 0.023976792086253716 2 0.046578282983492952 4 0.00039201154984555662 
		6 0.017415070773168669 7 0.66296052723510912 8 0.24867731537213003
		6 0 0.022677586414542802 2 0.043696981567713497 4 0.00036937581492921885 
		6 0.017034292023542855 7 0.66683044475964537 8 0.24939131941962622
		6 0 0.020523749922985213 2 0.038920330796315586 4 0.00033185009894531198 
		6 0.016403033405838461 7 0.6732460347302025 8 0.25057500104571301
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.019630371611320935 2 0.032315255860249144 4 1.0591893330934575e-06 
		6 0.012420660076072789 7 0.64895082757997602 8 0.28668182568304795
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.017837049516612254 2 0.032961926015641491 4 0.00028504043093063348 
		6 0.015615599850862687 7 0.68124885505928823 8 0.25205152912666468
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.022604256306783598 2 0.03803519131763021 4 2.6056863628780282e-06 
		6 0.013147573358786102 7 0.64148223573566654 8 0.28472813759477056
		6 0 0.026426417640103485 2 0.045386685016093421 4 4.5933069657205263e-06 
		6 0.014081830052659826 7 0.63188324257367445 8 0.28221723141050292
		6 0 0.024988330309935979 2 0.042620689501228735 4 3.8454660067595476e-06 
		6 0.013730316955828823 7 0.6354948722420487 8 0.28316194552495105
		6 0 0.019630371611320935 2 0.032315255860249144 4 1.0591893330934575e-06 
		6 0.012420660076072789 7 0.64895082757997602 8 0.28668182568304795
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.020523749922985213 2 0.038920330796315586 4 0.00033185009894531198 
		6 0.016403033405838461 7 0.6732460347302025 8 0.25057500104571301
		6 0 0.022677586414542802 2 0.043696981567713497 4 0.00036937581492921885 
		6 0.017034292023542855 7 0.66683044475964537 8 0.24939131941962622
		6 0 0.023976792086253716 2 0.046578282983492952 4 0.00039201154984555662 
		6 0.017415070773168669 7 0.66296052723510912 8 0.24867731537213003
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.017837049516612254 2 0.032961926015641491 4 0.00028504043093063348 
		6 0.015615599850862687 7 0.68124885505928823 8 0.25205152912666468
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.025544711667345937 2 0.04369082651619071 4 4.134798596654821e-06 
		6 0.013866314302222226 7 0.6340975766626018 8 0.28279643605304261
		6 0 0.023180230483580085 2 0.04481171600571484 4 0.00037813328140150074 
		6 0.017181610065914458 7 0.6653332297410457 8 0.24911508042234329
		6 0 0.022816804962998895 2 0.038444001797303319 4 2.7162162131889859e-06 
		6 0.013199525891606553 7 0.64094842211246361 8 0.28458852901941445
		6 0 0.02071577093865299 2 0.039346183592650824 4 0.00033519562761126514 
		6 0.016459312026089523 7 0.67267406565772214 8 0.25046947215727317
		6 0 0.027190203826257409 2 0.04685574210639247 4 4.9904954439389026e-06 
		6 0.014268523833744384 7 0.62996507219301856 8 0.28171546754514304
		6 0 0.02466681737245744 2 0.048108579753125963 4 0.00040403362662791534 
		6 0.017617306972558831 7 0.66090516170976477 8 0.24829810056546497
		6 0 0.027190203826257409 2 0.04685574210639247 4 4.9904954439389026e-06 
		6 0.014268523833744384 7 0.62996507219301856 8 0.28171546754514304
		6 0 0.02466681737245744 2 0.048108579753125963 4 0.00040403362662791534 
		6 0.017617306972558831 7 0.66090516170976477 8 0.24829810056546497
		6 0 0.01941786396252727 2 0.031906521406757385 4 9.4867995249760658e-07 
		6 0.012368716467177446 7 0.64948451946612129 8 0.28682143001746413
		6 0 0.017645075966328992 2 0.03253617868510543 4 0.00028169575808452229 
		6 0.015559335464104637 7 0.68182068405969443 8 0.252157030066682
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.022816804962998895 2 0.038444001797303319 4 2.7162162131889859e-06 
		6 0.013199525891606553 7 0.64094842211246361 8 0.28458852901941445
		6 0 0.01941786396252727 2 0.031906521406757385 4 9.4867995249760658e-07 
		6 0.012368716467177446 7 0.64948451946612129 8 0.28682143001746413
		6 0 0.02071577093865299 2 0.039346183592650824 4 0.00033519562761126514 
		6 0.016459312026089523 7 0.67267406565772214 8 0.25046947215727317
		6 0 0.017645075966328992 2 0.03253617868510543 4 0.00028169575808452229 
		6 0.015559335464104637 7 0.68182068405969443 8 0.252157030066682
		6 0 0.025544711667345937 2 0.04369082651619071 4 4.134798596654821e-06 
		6 0.013866314302222226 7 0.6340975766626018 8 0.28279643605304261
		6 0 0.023180230483580085 2 0.04481171600571484 4 0.00037813328140150074 
		6 0.017181610065914458 7 0.6653332297410457 8 0.24911508042234329
		5 0 0.01759356928229338 2 0.028397695724200728 6 0.011922800650898039 
		7 0.65406604956122605 8 0.28801988478138185
		6 0 0.015996959269927859 2 0.028881082441490888 4 0.00025298094397830962 
		6 0.015076294786208153 7 0.68672989135140461 8 0.25306279120699021
		6 0 0.013970161425619217 2 0.04961815360730764 4 0.0036022325127082681 
		6 0.038502939837994916 7 0.76458025087081627 8 0.12972626174555366
		6 0 0.011925650784937 2 0.040940341558995702 4 0.0030611903712507351 
		6 0.03722896332733916 7 0.77731920963415868 8 0.1295246443233187
		6 0 0.013200913920587906 2 0.046353130782978771 4 0.0033986660236849145 
		6 0.038023609346552426 7 0.76937329163673729 8 0.12965038828945863
		6 0 0.011912865952681723 2 0.049992271294228161 4 0.0048407935208166939 
		6 0.048146626337478932 7 0.77689733713236397 8 0.10821010576243048
		6 0 0.011253972394716136 2 0.04668061388937754 4 0.004569207076412494 
		6 0.047687719829171721 7 0.7818012227318023 8 0.10800726407851974
		6 0 0.010161651447254855 2 0.041190512328743177 4 0.0041189681844981708 
		6 0.046926939730176032 7 0.78993093746345167 8 0.10767099084587599
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.010334891323808307 2 0.034188446694784214 4 0.0026402245456440274 
		6 0.036237725431112568 7 0.78723092493405133 8 0.12936778707059954
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.0087990881329326007 2 0.034342148703729931 4 0.003557339281949479 
		6 0.045977941144097062 7 0.80007195981694912 8 0.10725152292034182
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.011925650784937 2 0.040940341558995702 4 0.0030611903712507351 
		6 0.03722896332733916 7 0.77731920963415868 8 0.1295246443233187
		6 0 0.013970161425619217 2 0.04961815360730764 4 0.0036022325127082681 
		6 0.038502939837994916 7 0.76458025087081627 8 0.12972626174555366
		6 0 0.013200913920587906 2 0.046353130782978771 4 0.0033986660236849145 
		6 0.038023609346552426 7 0.76937329163673729 8 0.12965038828945863
		6 0 0.010334891323808307 2 0.034188446694784214 4 0.0026402245456440274 
		6 0.036237725431112568 7 0.78723092493405133 8 0.12936778707059954
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.010161651447254855 2 0.041190512328743177 4 0.0041189681844981708 
		6 0.046926939730176032 7 0.78993093746345167 8 0.10767099084587599
		6 0 0.011253972394716136 2 0.04668061388937754 4 0.004569207076412494 
		6 0.047687719829171721 7 0.7818012227318023 8 0.10800726407851974
		6 0 0.011912865952681723 2 0.049992271294228161 4 0.0048407935208166939 
		6 0.048146626337478932 7 0.77689733713236397 8 0.10821010576243048
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.0087990881329326007 2 0.034342148703729931 4 0.003557339281949479 
		6 0.045977941144097062 7 0.80007195981694912 8 0.10725152292034182
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.013498528761031275 2 0.04761633639697796 4 0.0034774237921094903 
		6 0.038209056718621515 7 0.76751890586651328 8 0.12967974846474645
		6 0 0.011508891760674551 2 0.047961861541959624 4 0.0046742812642728265 
		6 0.047865266715608992 7 0.77990395766899856 8 0.10808574104848546
		6 0 0.012039344352768717 2 0.041422907813124375 4 0.0030912773098323429 
		6 0.037299808230865629 7 0.7766108066255788 8 0.1295358556678301
		6 0 0.010259035029786315 2 0.041679971220322104 4 0.0041591084019892994 
		6 0.046994766445456609 7 0.78920614921221943 8 0.10770096969022616
		6 0 0.014378717798757512 2 0.051352249818591773 4 0.0037103496162344931 
		6 0.038757520530565706 7 0.76203461479562129 8 0.12976654744022914
		6 0 0.012262813107317277 2 0.051751135947712204 4 0.0049850364916503125 
		6 0.048390356559639823 7 0.77429281920302495 8 0.10831783869065539
		6 0 0.014378717798757512 2 0.051352249818591773 4 0.0037103496162344931 
		6 0.038757520530565706 7 0.76203461479562129 8 0.12976654744022914
		6 0 0.012262813107317277 2 0.051751135947712204 4 0.0049850364916503125 
		6 0.048390356559639823 7 0.77429281920302495 8 0.10831783869065539
		6 0 0.01022121835336879 2 0.033705970326640626 4 0.0026101433804341821 
		6 0.036166895217036761 7 0.7879392038545846 8 0.12935656886793495
		6 0 0.0087017285259500671 2 0.033852810779101031 4 0.003517209077116854 
		6 0.04591013223127674 7 0.80079656895184192 8 0.10722155043471336
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525;
	setAttr ".wl[278:362].w"
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.012039344352768717 2 0.041422907813124375 4 0.0030912773098323429 
		6 0.037299808230865629 7 0.7766108066255788 8 0.1295358556678301
		6 0 0.01022121835336879 2 0.033705970326640626 4 0.0026101433804341821 
		6 0.036166895217036761 7 0.7879392038545846 8 0.12935656886793495
		6 0 0.010259035029786315 2 0.041679971220322104 4 0.0041591084019892994 
		6 0.046994766445456609 7 0.78920614921221943 8 0.10770096969022616
		6 0 0.0087017285259500671 2 0.033852810779101031 4 0.003517209077116854 
		6 0.04591013223127674 7 0.80079656895184192 8 0.10722155043471336
		6 0 0.013498528761031275 2 0.04761633639697796 4 0.0034774237921094903 
		6 0.038209056718621515 7 0.76751890586651328 8 0.12967974846474645
		6 0 0.011508891760674551 2 0.047961861541959624 4 0.0046742812642728265 
		6 0.047865266715608992 7 0.77990395766899856 8 0.10808574104848546
		6 0 0.0092453862295048834 2 0.029564101507984279 4 0.0023519069007582665 
		6 0.035558831698641297 7 0.79401942371208867 8 0.12926034995102262
		6 0 0.0078658838730843068 2 0.029651782211070777 4 0.0031726861391751771 
		6 0.045327984192793963 7 0.80701743090348044 8 0.10696423268039525
		6 0 0.00039302316496837484 2 0.046896616562049021 4 0.024081546022585981 
		6 0.24567373113763927 7 0.66535642997593458 8 0.017598653136822705
		6 0 0.00033248319603073674 2 0.039199270366853924 4 0.020649803721951326 
		6 0.24763731802175976 7 0.67560583504308236 8 0.016575289650321855
		6 0 0.00037024503611084045 2 0.044000493208915643 4 0.022790354352873583 
		6 0.24641252959694651 7 0.66921276470540425 8 0.017213613099749149
		6 0 4.6120816868889078e-06 2 0.045803967111099728 4 0.026588497620652098 
		6 0.27850185499474001 7 0.63486433450522917 8 0.014236733686592193
		6 0 3.8611834641615721e-06 2 0.043019126384055306 4 0.025160650442220128 
		6 0.27947215707035472 7 0.63846275189678248 8 0.013881453023123262
		6 0 2.6163373409058596e-06 2 0.038402390281272444 4 0.022793548834170486 
		6 0.28108069847398393 7 0.64442827954195003 8 0.013292466531282177
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		6 0 0.000285379059136999 2 0.033210214354304622 4 0.017979675885177696 
		6 0.2491651195784485 7 0.68358056715136328 8 0.015779043971568818
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 1.063511955877964e-06 2 0.032643459955482394 4 0.019840825775872161 
		6 0.28308728487570006 7 0.65186960597703369 8 0.012557759903955653
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.00033248319603073674 2 0.039199270366853924 4 0.020649803721951326 
		6 0.24763731802175976 7 0.67560583504308236 8 0.016575289650321855
		6 0 0.00039302316496837484 2 0.046896616562049021 4 0.024081546022585981 
		6 0.24567373113763927 7 0.66535642997593458 8 0.017598653136822705
		6 0 0.00037024503611084045 2 0.044000493208915643 4 0.022790354352873583 
		6 0.24641252959694651 7 0.66921276470540425 8 0.017213613099749149
		6 0 0.000285379059136999 2 0.033210214354304622 4 0.017979675885177696 
		6 0.2491651195784485 7 0.68358056715136328 8 0.015779043971568818
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		6 0 2.6163373409058596e-06 2 0.038402390281272444 4 0.022793548834170486 
		6 0.28108069847398393 7 0.64442827954195003 8 0.013292466531282177
		6 0 3.8611834641615721e-06 2 0.043019126384055306 4 0.025160650442220128 
		6 0.27947215707035472 7 0.63846275189678248 8 0.013881453023123262
		6 0 4.6120816868889078e-06 2 0.045803967111099728 4 0.026588497620652098 
		6 0.27850185499474001 7 0.63486433450522917 8 0.014236733686592193
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 1.063511955877964e-06 2 0.032643459955482394 4 0.019840825775872161 
		6 0.28308728487570006 7 0.65186960597703369 8 0.012557759903955653
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.00037905766824397657 2 0.045120975554726751 4 0.023289904051736841 
		6 0.24612669576744994 7 0.66772078560014669 8 0.017362581357695826
		6 0 4.1516987772768355e-06 2 0.044096554530873688 4 0.025713070858654374 
		6 0.27909675724782662 7 0.63707055798786616 8 0.01401890767600193
		6 0 0.00033584978876128615 2 0.039627313911350118 4 0.020840640251337278 
		6 0.24752812397275589 7 0.67503587387896702 8 0.016632198196828384
		6 0 2.7273185108474452e-06 2 0.038813984809132999 4 0.023004585005114885 
		6 0.28093732880891947 7 0.64389639907813012 8 0.013344974980191639
		6 0 0.00040512091952711067 2 0.048434785626281673 4 0.024767314865322378 
		6 0.24528134617319261 7 0.66330827956532712 8 0.017803152850349165
		6 0 5.010893644834878e-06 2 0.047283032741084502 4 0.027346845835073436 
		6 0.27798651103385424 7 0.63295317143441454 8 0.0144254280619284
		6 0 0.00040512091952711067 2 0.048434785626281673 4 0.024767314865322378 
		6 0.24528134617319261 7 0.66330827956532712 8 0.017803152850349165
		6 0 5.010893644834878e-06 2 0.047283032741084502 4 0.027346845835073436 
		6 0.27798651103385424 7 0.63295317143441454 8 0.0144254280619284
		6 0 0.00028201333193466298 2 0.032782276874959389 4 0.017788886536296431 
		6 0.2492742848485667 7 0.68415038858942367 8 0.015722149818819128
		6 0 9.5255760869737605e-07 2 0.032231965851968365 4 0.019629844016105763 
		6 0.28323065945074788 7 0.6524013152820094 8 0.012505262841559893
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.00033584978876128615 2 0.039627313911350118 4 0.020840640251337278 
		6 0.24752812397275589 7 0.67503587387896702 8 0.016632198196828384
		6 0 0.00028201333193466298 2 0.032782276874959389 4 0.017788886536296431 
		6 0.2492742848485667 7 0.68415038858942367 8 0.015722149818819128
		6 0 2.7273185108474452e-06 2 0.038813984809132999 4 0.023004585005114885 
		6 0.28093732880891947 7 0.64389639907813012 8 0.013344974980191639
		6 0 9.5255760869737605e-07 2 0.032231965851968365 4 0.019629844016105763 
		6 0.28323065945074788 7 0.6524013152820094 8 0.012505262841559893
		6 0 0.00037905766824397657 2 0.045120975554726751 4 0.023289904051736841 
		6 0.24612669576744994 7 0.66772078560014669 8 0.017362581357695826
		6 0 4.1516987772768355e-06 2 0.044096554530873688 4 0.025713070858654374 
		6 0.27909675724782662 7 0.63707055798786616 8 0.01401890767600193
		6 0 0.00025311793828004597 2 0.02910837807270044 4 0.016150935843744458 
		6 0.25021149518520475 7 0.68904236888282711 8 0.015233704077243089
		5 2 0.028699235095807553 4 0.017818538205376266 6 0.28446155222772967 
		7 0.65696610589843496 8 0.012054568572651504
		6 0 0.0048505863020762959 2 0.050056368524589896 4 0.011906632655807799 
		6 0.10707024450076166 7 0.77746962790107454 8 0.048646540115689717
		6 0 0.0041242445257876244 2 0.041246106056533761 4 0.010165772019879765 
		6 0.10656293938399314 7 0.79049442392227465 8 0.047406514091531127
		6 0 0.0045773002337893432 2 0.046741511101281094 4 0.011251634888767504 
		6 0.10687937394998749 7 0.78237020177179972 8 0.048179978054374836
		6 0 0.0036114635155315121 2 0.049723386638001035 4 0.013976249470266062 
		6 0.12831709763246349 7 0.76547181141177589 8 0.038899991331962036
		6 0 0.0034066007913452039 2 0.046453225990276792 4 0.013211578581650594 
		6 0.12825505643078661 7 0.77025970638214947 8 0.038413831823791267
		6 0 0.0030669773048724799 2 0.04103192036187564 4 0.011943899307667032 
		6 0.12815220308595945 7 0.77819712815277819 8 0.037607871786847234
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0035591003960514945 2 0.034391127260794685 4 0.0088112661628140954 
		6 0.10616823383742205 7 0.80062859438721234 8 0.046441677955705363
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0026433301441589983 2 0.034269371572367285 4 0.010362593563454436 
		6 0.1280239058490566 7 0.78809828384585057 8 0.036602515025112151
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0041242445257876244 2 0.041246106056533761 4 0.010165772019879765 
		6 0.10656293938399314 7 0.79049442392227465 8 0.047406514091531127
		6 0 0.0048505863020762959 2 0.050056368524589896 4 0.011906632655807799 
		6 0.10707024450076166 7 0.77746962790107454 8 0.048646540115689717
		6 0 0.0045773002337893432 2 0.046741511101281094 4 0.011251634888767504 
		6 0.10687937394998749 7 0.78237020177179972 8 0.048179978054374836
		6 0 0.0035591003960514945 2 0.034391127260794685 4 0.0088112661628140954 
		6 0.10616823383742205 7 0.80062859438721234 8 0.046441677955705363
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0030669773048724799 2 0.04103192036187564 4 0.011943899307667032 
		6 0.12815220308595945 7 0.77819712815277819 8 0.037607871786847234
		6 0 0.0034066007913452039 2 0.046453225990276792 4 0.013211578581650594 
		6 0.12825505643078661 7 0.77025970638214947 8 0.038413831823791267
		6 0 0.0036114635155315121 2 0.049723386638001035 4 0.013976249470266062 
		6 0.12831709763246349 7 0.76547181141177589 8 0.038899991331962036
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0026433301441589983 2 0.034269371572367285 4 0.010362593563454436 
		6 0.1280239058490566 7 0.78809828384585057 8 0.036602515025112151
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0046830319914573804 2 0.048023997666529962 4 0.01150504724967036 
		6 0.10695321994006531 7 0.78047421671172335 8 0.048360486440553706
		6 0 0.0034858602223928996 2 0.047718419795529335 4 0.013507422392814673 
		6 0.12827905936677206 7 0.76840731590657629 8 0.038601922315914784
		4 0 0.0041646338796178751 2 0.041736022296139028 4 0.010262577502867123 
		6 0.10659115575548922;
	setAttr ".wl[362:458].w"
		2 7 0.78977014828393977 8 0.047475462281946948
		6 0 0.0030972557553879043 2 0.041515246148067453 4 0.012056916782331038 
		6 0.12816137322934382 7 0.77748948260355299 8 0.037679725481316727
		6 0 0.004995731933723979 2 0.051816932498270012 4 0.012254510665200327 
		6 0.1071716195040209 7 0.77486686927232906 8 0.048894336126455759
		6 0 0.003720268801003864 2 0.051460211808898773 4 0.014382376172043637 
		6 0.12835004794923355 7 0.76292889815580689 8 0.039158197113013271
		6 0 0.004995731933723979 2 0.051816932498270012 4 0.012254510665200327 
		6 0.1071716195040209 7 0.77486686927232906 8 0.048894336126455759
		6 0 0.003720268801003864 2 0.051460211808898773 4 0.014382376172043637 
		6 0.12835004794923355 7 0.76292889815580689 8 0.039158197113013271
		6 0 0.0035187197107733573 2 0.033901316436158901 4 0.0087144815305423839 
		6 0.10614002249031015 7 0.80135271417567178 8 0.046372745656543451
		6 0 0.002613059164181886 2 0.033786165526511376 4 0.010249604192694606 
		6 0.12801473970212782 7 0.78880575257481267 8 0.036530678839671593
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		6 0 0.0041646338796178751 2 0.041736022296139028 4 0.010262577502867123 
		6 0.10659115575548922 7 0.78977014828393977 8 0.047475462281946948
		6 0 0.0035187197107733573 2 0.033901316436158901 4 0.0087144815305423839 
		6 0.10614002249031015 7 0.80135271417567178 8 0.046372745656543451
		6 0 0.0030972557553879043 2 0.041515246148067453 4 0.012056916782331038 
		6 0.12816137322934382 7 0.77748948260355299 8 0.037679725481316727
		6 0 0.002613059164181886 2 0.033786165526511376 4 0.010249604192694606 
		6 0.12801473970212782 7 0.78880575257481267 8 0.036530678839671593
		6 0 0.0046830319914573804 2 0.048023997666529962 4 0.01150504724967036 
		6 0.10695321994006531 7 0.78047421671172335 8 0.048360486440553706
		6 0 0.0034858602223928996 2 0.047718419795529335 4 0.013507422392814673 
		6 0.12827905936677206 7 0.76840731590657629 8 0.038601922315914784
		6 0 0.0031720401269156933 2 0.029696229788929225 4 0.0078835798608248246 
		6 0.10589789880720603 7 0.80756937309651955 8 0.045780878319604749
		6 0 0.0023531790617199542 2 0.02963777892729956 4 0.0092795751562555432 
		6 0.12793603481479526 7 0.79487947411717286 8 0.035913957922756902
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.030962573529985032 4 0.049143065037712819 6 0.61533670766302817 
		7 0.30037476957245851 8 0.0041828841968155565
		5 2 0.026641426691521659 4 0.041839049187407891 6 0.62422286799494764 
		7 0.30339275413400274 8 0.003903901992120166
		5 2 0.02933674377364863 4 0.046394932085733552 6 0.61868012243335502 
		7 0.3015102844594883 8 0.0040779172477745148
		5 2 0.029791961857932488 4 0.051330527695981891 6 0.64174000546762833 
		7 0.27334677108408384 8 0.0037907338943734045
		5 2 0.028257278292936051 4 0.04847694724263861 6 0.64522650605387022 
		7 0.2743399747944133 8 0.0036992936161418925
		5 2 0.025713064240025525 4 0.043746252639875943 6 0.65100646314082078 
		7 0.27598651699674587 8 0.0035477029825319462
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.023279296722598812 4 0.036156054978023072 6 0.63113686797976809 
		7 0.30574094436500598 8 0.0036868359546040983
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.022539405965492754 4 0.037845173634816459 6 0.65821639388571873 
		7 0.27804041802174484 8 0.0033586084922272853
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.026641426691521659 4 0.041839049187407891 6 0.62422286799494764 
		7 0.30339275413400274 8 0.003903901992120166
		5 2 0.030962573529985032 4 0.049143065037712819 6 0.61533670766302817 
		7 0.30037476957245851 8 0.0041828841968155565
		5 2 0.02933674377364863 4 0.046394932085733552 6 0.61868012243335502 
		7 0.3015102844594883 8 0.0040779172477745148
		5 2 0.023279296722598812 4 0.036156054978023072 6 0.63113686797976809 
		7 0.30574094436500598 8 0.0036868359546040983
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.025713064240025525 4 0.043746252639875943 6 0.65100646314082078 
		7 0.27598651699674587 8 0.0035477029825319462
		5 2 0.028257278292936051 4 0.04847694724263861 6 0.64522650605387022 
		7 0.2743399747944133 8 0.0036992936161418925
		5 2 0.029791961857932488 4 0.051330527695981891 6 0.64174000546762833 
		7 0.27334677108408384 8 0.0037907338943734045
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.022539405965492754 4 0.037845173634816459 6 0.65821639388571873 
		7 0.27804041802174484 8 0.0033586084922272853
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.02996576184059687 4 0.04745815839691344 6 0.61738658620165676 
		7 0.30107096558426438 8 0.0041185279765685147
		5 2 0.028851025456504163 4 0.049580956884942767 6 0.64387762932884796 
		7 0.2739557177808607 8 0.0037346705488443214
		5 2 0.026881722316169678 4 0.042245219785263952 6 0.62372871449188483 
		7 0.30322492742020768 8 0.0039194159864738088
		5 2 0.025939888590297784 4 0.044168008311434227 6 0.65049116261623785 
		7 0.27583972273775031 8 0.0035612177442798272
		5 2 0.031826072896788224 4 0.050602634565483945 6 0.61356097869472193 
		7 0.29977168036207907 8 0.0042386334809268195
		5 2 0.030607052399822993 4 0.05284610140185414 6 0.63988827817275573 
		7 0.27281926898917863 8 0.0038392990363885363
		5 2 0.031826072896788224 4 0.050602634565483945 6 0.61356097869472193 
		7 0.29977168036207907 8 0.0042386334809268195
		5 2 0.030607052399822993 4 0.05284610140185414 6 0.63988827817275573 
		7 0.27281926898917863 8 0.0038392990363885363
		5 2 0.023039045990120348 4 0.035749960257316873 6 0.63163092844359769 
		7 0.30590874044476757 8 0.0036713248641975097
		5 2 0.022312637778099303 4 0.03742352250546447 6 0.65873156788432519 
		7 0.27818717476367633 8 0.0033450970684347531
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 2 0.026881722316169678 4 0.042245219785263952 6 0.62372871449188483 
		7 0.30322492742020768 8 0.0039194159864738088
		5 2 0.023039045990120348 4 0.035749960257316873 6 0.63163092844359769 
		7 0.30590874044476757 8 0.0036713248641975097
		5 2 0.025939888590297784 4 0.044168008311434227 6 0.65049116261623785 
		7 0.27583972273775031 8 0.0035612177442798272
		5 2 0.022312637778099303 4 0.03742352250546447 6 0.65873156788432519 
		7 0.27818717476367633 8 0.0033450970684347531
		5 2 0.02996576184059687 4 0.04745815839691344 6 0.61738658620165676 
		7 0.30107096558426438 8 0.0041185279765685147
		5 2 0.028851025456504163 4 0.049580956884942767 6 0.64387762932884796 
		7 0.2739557177808607 8 0.0037346705488443214
		5 2 0.020976587932546614 4 0.032263795084153654 6 0.63587222770115237 
		7 0.30734922083720256 8 0.0035381684449448587
		5 2 0.020365803604939343 4 0.033803591590686438 6 0.6631543904140802 
		7 0.27944711453515575 8 0.0032290998551383018
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		2 0 0.043751162000000003 2 0.010191755;
	setAttr ".wl[458:552].w"
		3 6 0.001153874 7 0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.04482108639405024 2 0.010392385333635212 6 0.0011646390338962676 
		7 0.062891620632931647 8 0.88073026860548664
		5 2 0.019540990313477922 4 0.04236304302182993 6 0.74575573168453735 
		7 0.18983634655932152 8 0.002503888420833135
		5 0 0.04482108639405024 2 0.010392385333635212 6 0.0011646390338962676 
		7 0.062891620632931647 8 0.88073026860548664
		5 2 0.019540990313477922 4 0.04236304302182993 6 0.74575573168453735 
		7 0.18983634655932152 8 0.002503888420833135
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 0 0.043751162000000003 2 0.010191755 6 0.001153874 7 
		0.062783485999999999 8 0.88211972299999997
		5 2 0.019199631000000002 4 0.041477229999999997 6 0.74678144699999993 
		7 0.19005240300000001 8 0.002489289
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		4 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881;
	setAttr ".wl[552:644].w"
		1 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		4 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509;
	setAttr ".wl[644:736].w"
		2 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.035723021650265807 2 0.0120290035095465 6 0.0016448890412180115 
		7 0.11949864210913037 8 0.83110444368983938
		5 0 0.033469693440784973 2 0.01514347243313274 6 0.002343908580376898 
		7 0.19312542058317736 8 0.75591750496252796
		5 0 0.031210558641585073 2 0.018262474673357378 6 0.0030437500836828476 
		7 0.26675973056339125 8 0.68072348603798338
		5 0 0.028337901073905027 2 0.021759909151397819 6 0.0043266821919232725 
		7 0.36840070835069749 8 0.57717479923207637
		6 0 0.025460419853170317 2 0.025260570837918887 4 1.8574144493759376e-09 
		6 0.0056112207955183518 7 0.4700335072435462 8 0.47363427941243175
		6 0 0.021325011560473436 2 0.027422225146236608 4 1.1488787061725252e-07 
		6 0.0091607027053224408 7 0.57140655343510904 8 0.37068539226498787
		6 0 0.01718716528829722 2 0.02958561936060165 4 7.4168835995754496e-07 
		6 0.012712543011888348 7 0.67276804932925249 8 0.26774588132160032
		6 0 0.012907565660174584 2 0.030074918476739654 4 0.0013339435811553953 
		6 0.025438103078217505 7 0.73918005603633019 8 0.19106541316738276
		6 0 0.0086272466539446709 2 0.030564736622096599 4 0.0026673908299078347 
		6 0.038163795389274537 7 0.80559080568559438 8 0.11438602481918192
		6 0 0.0056485210233917661 2 0.030592866221570661 4 0.0056563177017747357 
		6 0.075699278625358232 7 0.80593383612987601 8 0.0764691802980286
		6 0 0.0026697825064382406 2 0.030620994897962803 4 0.0086452570933178742 
		6 0.1132347444911796 7 0.80627686813731148 8 0.038552352873789941
		6 0 0.0013351143850177732 2 0.030228241606503399 4 0.01299902512308097 
		6 0.18895721217079253 7 0.74078191796994775 8 0.025698488744657619
		6 0 7.5137028860487049e-07 2 0.029835378057353514 4 0.017353113867544068 
		6 0.26468723675004896 7 0.67527385237889248 8 0.012849667575872241
		6 0 1.1538056635810901e-07 2 0.027963744614496428 4 0.021778694871877613 
		6 0.36493177106619279 7 0.57603916313546466 8 0.0092865109314021685
		5 2 0.02609143778824527 4 0.026204402488301567 6 0.46518591362884504 
		7 0.476791200774282 8 0.0057270453203262647
		5 2 0.023509951851840329 4 0.029980558027669135 6 0.55915658271619606 
		7 0.38282201291039419 8 0.0045308944939003058
		5 2 0.020927916143249854 4 0.03375646409605864 6 0.65312321257837935 
		7 0.28885626855094854 8 0.0033361386313635649
		5 0 0.035723021650265807 2 0.0120290035095465 6 0.0016448890412180115 
		7 0.11949864210913037 8 0.83110444368983938
		5 0 0.033469693440784973 2 0.01514347243313274 6 0.002343908580376898 
		7 0.19312542058317736 8 0.75591750496252796
		5 0 0.031210558641585073 2 0.018262474673357378 6 0.0030437500836828476 
		7 0.26675973056339125 8 0.68072348603798338
		5 0 0.028337901073905027 2 0.021759909151397819 6 0.0043266821919232725 
		7 0.36840070835069749 8 0.57717479923207637
		6 0 0.025460419853170317 2 0.025260570837918887 4 1.8574144493759376e-09 
		6 0.0056112207955183518 7 0.4700335072435462 8 0.47363427941243175
		6 0 0.021325011560473436 2 0.027422225146236608 4 1.1488787061725252e-07 
		6 0.0091607027053224408 7 0.57140655343510904 8 0.37068539226498787
		6 0 0.01718716528829722 2 0.02958561936060165 4 7.4168835995754496e-07 
		6 0.012712543011888348 7 0.67276804932925249 8 0.26774588132160032
		6 0 0.012907565660174584 2 0.030074918476739654 4 0.0013339435811553953 
		6 0.025438103078217505 7 0.73918005603633019 8 0.19106541316738276
		6 0 0.0086272466539446709 2 0.030564736622096599 4 0.0026673908299078347 
		6 0.038163795389274537 7 0.80559080568559438 8 0.11438602481918192
		6 0 0.0056485210233917661 2 0.030592866221570661 4 0.0056563177017747357 
		6 0.075699278625358232 7 0.80593383612987601 8 0.0764691802980286
		6 0 0.0026697825064382406 2 0.030620994897962803 4 0.0086452570933178742 
		6 0.1132347444911796 7 0.80627686813731148 8 0.038552352873789941
		6 0 0.0013351143850177732 2 0.030228241606503399 4 0.01299902512308097 
		6 0.18895721217079253 7 0.74078191796994775 8 0.025698488744657619
		6 0 7.5137028860487049e-07 2 0.029835378057353514 4 0.017353113867544068 
		6 0.26468723675004896 7 0.67527385237889248 8 0.012849667575872241
		6 0 1.1538056635810901e-07 2 0.027963744614496428 4 0.021778694871877613 
		6 0.36493177106619279 7 0.57603916313546466 8 0.0092865109314021685
		5 2 0.02609143778824527 4 0.026204402488301567 6 0.46518591362884504 
		7 0.476791200774282 8 0.0057270453203262647
		5 2 0.023509951851840329 4 0.029980558027669135 6 0.55915658271619606 
		7 0.38282201291039419 8 0.0045308944939003058
		5 2 0.020927916143249854 4 0.03375646409605864 6 0.65312321257837935 
		7 0.28885626855094854 8 0.0033361386313635649
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		1 0 0.032566921239842415;
	setAttr ".wl[736:828].w"
		4 2 0.014806958050480604 6 0.0023224595470227004 7 0.19320241626835086 
		8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		4 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998;
	setAttr ".wl[828:923].w"
		2 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.002606297 2 0.029701587000000002 4 0.0084513780000000007 
		6 0.11319831499999999 7 0.80763589800000002 8 0.038406524999999997
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.034734204970647338 2 0.011756787421310068 6 0.0016284093049998879 
		7 0.11943705617584312 8 0.83244354212719962
		5 0 0.032566921239842415 2 0.014806958050480604 6 0.0023224595470227004 
		7 0.19320241626835086 8 0.75710124489430353
		5 0 0.030399278591830014 2 0.017857343105541466 6 0.0030168559296185971 
		7 0.26698464629626373 8 0.68174187607674619
		5 0 0.027634865425114511 2 0.021263903734169601 6 0.0042870572698987721 
		7 0.36882206327626565 8 0.57799211029455144
		5 0 0.024869946486531735 2 0.024669928083667757 6 0.0055581597147574434 
		7 0.47065937722809881 8 0.47424258848694417
		5 0 0.020839929614898799 2 0.026734549812750818 6 0.0090832120360680828 
		7 0.5722390456710742 8 0.37110326286520812
		6 0 0.016809880950723409 2 0.028798843679616451 4 2.6022149848937987e-07 
		6 0.012610099392316818 7 0.67381171858540989 8 0.26796919717043494
		6 0 0.012620753475928961 2 0.029222634390333058 4 0.0013025742660126686 
		6 0.025318835211308954 7 0.74038132022921177 8 0.1911538824272046
		6 0 0.0084316270000000006 2 0.029646425000000001 4 0.0026048880000000001 
		6 0.038027567999999998 7 0.80695090599999997 8 0.11433858600000001
		6 0 0.0055192543564827438 2 0.029674003231578587 4 0.0055278395815579889 
		6 0.075609168897383811 7 0.80729336762223047 8 0.076376366310766344
		6 0 0.0026068813657487634 2 0.029701581466445089 4 0.0084507915115939383 
		6 0.11319077427529328 7 0.80763582928528987 8 0.038414142095629156
		6 0 0.0013035396647704839 2 0.029373177108065009 4 0.0127139756161927 
		6 0.18905098954272509 7 0.74198063509143575 8 0.025577682976810932
		6 0 5.2072450780868534e-07 2 0.02904470126855993 4 0.016977429199157238 
		6 0.26491889596394541 7 0.67631218803355542 8 0.012746264810274124
		5 2 0.027267540894568919 4 0.02129855586486256 6 0.36535606860127678 
		7 0.57686965090713871 8 0.0092081837321530587
		5 2 0.02548980177559328 4 0.025619704558936002 6 0.46580303984936394 
		7 0.47741363494639133 8 0.0056738188697155719
		5 2 0.022991737710321904 4 0.029297666075284601 6 0.55994531783066481 
		7 0.38327426454899066 8 0.0044910138347381357
		5 2 0.020493240732764723 4 0.032975241035437468 6 0.65408380665113386 
		7 0.28913808949791059 8 0.0033096220827533002
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.039241747156203988 2 0.010973363570259093 6 0.0013909588117303848 
		7 0.091092082288452392 8 0.8573018481733542
		5 0 0.040272541250174571 2 0.011208725763685878 6 0.0014044992257451312 
		7 0.091179250191103137 8 0.85593498356929132
		5 0 0.040272541250174571 2 0.011208725763685878 6 0.0014044992257451312 
		7 0.091179250191103137 8 0.85593498356929132
		5 2 0.020233730718778653 4 0.038059504289111395 6 0.69945862209757104 
		7 0.23932843573225429 8 0.0029197071622846368
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		3 2 0.020233730718778653 4 0.038059504289111395 6 0.69945862209757104;
	setAttr ".wl[923:935].w"
		2 7 0.23932843573225429 8 0.0029197071622846368
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089
		5 2 0.0198456947880798 4 0.037226006915117439 6 0.70045175898038359 
		7 0.23957739246046472 8 0.0028991468559544089;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 11.694999694824221 -1.7019796248281238e-22 -1.0587911840678754e-22 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 11.694999694824219 -2.4218443784488122e-22 -16.555000305175781 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 -0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 -0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 -0
		 -6.6435745793569034e-13 5.8079975888946053e-20 3.5895398617180069e-20 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030248608505195e-08 -0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772816524442814e-15 -0 5.403024860850538e-08 -1.4619288520364561e-16 0.99999999999999856 -0
		 -8.9447144655998793e-07 2.4202813391367658e-15 -16.555000305175756 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -11.694999694824221 1.7019796248281238e-22 1.0587911840678754e-22 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -11.694999694824221 9.8211504004009659e-23 -16.555000305175781 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -11.694999694824219 2.4218443784488122e-22 16.555000305175781 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999478 -8.7422780003724838e-08 -5.4030249496683614e-08 -0
		 8.7422780003724732e-08 0.99999999999999611 -4.5772817375899082e-15 -0 5.40302494966838e-08 -1.4619287770504545e-16 0.99999999999999856 -0
		 8.9447013254886606e-07 -2.4201650550456468e-15 16.555000305175756 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 11.694999694824221 -9.8211504004009659e-23 16.555000305175781 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "E547FC73-4549-8E69-6BC8-358C8832A27A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "00631569-40A4-A4AE-83CD-3E9F8B72DC01";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "7E8C6C3C-4C26-1C9B-7CDD-809B701F0A77";
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "61F98DFF-43A5-F02F-7136-AAA46279D94A";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "EA62FDEA-4B2B-3794-029F-7685579E751B";
	setAttr ".g" yes;
createNode groupId -n "groupId1";
	rename -uid "6448D757-45EF-9CEF-B116-2C944A3E9454";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "Root.s" "body.is";
connectAttr "bodyFat.oy" "body.fatFrontAbs";
connectAttr "bodyFat.oz" "body.fatWidthAbs";
connectAttr "body.s" "bodyEnd.is";
connectAttr "bodyEndFat.oy" "bodyEnd.fatFrontAbs";
connectAttr "bodyEndFat.oz" "bodyEnd.fatWidthAbs";
connectAttr "body.s" "paperMain4.is";
connectAttr "paperMain4Fat.oy" "paperMain4.fatFrontAbs";
connectAttr "paperMain4Fat.oz" "paperMain4.fatWidthAbs";
connectAttr "paperMain4.s" "paperMain4End.is";
connectAttr "paperMain4EndFat.oy" "paperMain4End.fatFrontAbs";
connectAttr "paperMain4EndFat.oz" "paperMain4End.fatWidthAbs";
connectAttr "body.s" "paperMain7.is";
connectAttr "paperMain7Fat.oy" "paperMain7.fatFrontAbs";
connectAttr "paperMain7Fat.oz" "paperMain7.fatWidthAbs";
connectAttr "paperMain7.s" "paperMain7End.is";
connectAttr "paperMain7EndFat.oy" "paperMain7End.fatFrontAbs";
connectAttr "paperMain7EndFat.oz" "paperMain7End.fatWidthAbs";
connectAttr "body.s" "paperMain5.is";
connectAttr "paperMain5Fat.oy" "paperMain5.fatFrontAbs";
connectAttr "paperMain5Fat.oz" "paperMain5.fatWidthAbs";
connectAttr "paperMain5.s" "paperMain5End.is";
connectAttr "paperMain5EndFat.oy" "paperMain5End.fatFrontAbs";
connectAttr "paperMain5EndFat.oz" "paperMain5End.fatWidthAbs";
connectAttr "body.s" "paperMain8.is";
connectAttr "paperMain8Fat.oy" "paperMain8.fatFrontAbs";
connectAttr "paperMain8Fat.oz" "paperMain8.fatWidthAbs";
connectAttr "paperMain8.s" "paperMain8End.is";
connectAttr "paperMain8EndFat.oy" "paperMain8End.fatFrontAbs";
connectAttr "paperMain8EndFat.oz" "paperMain8End.fatWidthAbs";
connectAttr "body.s" "paperMain6.is";
connectAttr "paperMain6Fat.oy" "paperMain6.fatFrontAbs";
connectAttr "paperMain6Fat.oz" "paperMain6.fatWidthAbs";
connectAttr "paperMain6.s" "paperMain6End.is";
connectAttr "paperMain6EndFat.oy" "paperMain6End.fatFrontAbs";
connectAttr "paperMain6EndFat.oz" "paperMain6End.fatWidthAbs";
connectAttr "body.s" "paperMain9.is";
connectAttr "paperMain9Fat.oy" "paperMain9.fatFrontAbs";
connectAttr "paperMain9Fat.oz" "paperMain9.fatWidthAbs";
connectAttr "paperMain9.s" "paperMain9End.is";
connectAttr "paperMain9EndFat.oy" "paperMain9End.fatFrontAbs";
connectAttr "paperMain9EndFat.oz" "paperMain9End.fatWidthAbs";
connectAttr "body.s" "paperMain3.is";
connectAttr "paperMain3Fat.oy" "paperMain3.fatFrontAbs";
connectAttr "paperMain3Fat.oz" "paperMain3.fatWidthAbs";
connectAttr "paperMain3.s" "paperMain3End.is";
connectAttr "paperMain3EndFat.oy" "paperMain3End.fatFrontAbs";
connectAttr "paperMain3EndFat.oz" "paperMain3End.fatWidthAbs";
connectAttr "body.s" "paperMain2.is";
connectAttr "paperMain2Fat.oy" "paperMain2.fatFrontAbs";
connectAttr "paperMain2Fat.oz" "paperMain2.fatWidthAbs";
connectAttr "paperMain2.s" "paperMain2End.is";
connectAttr "paperMain2EndFat.oy" "paperMain2End.fatFrontAbs";
connectAttr "paperMain2EndFat.oz" "paperMain2End.fatWidthAbs";
connectAttr "body.s" "paperMain1.is";
connectAttr "paperMain1Fat.oy" "paperMain1.fatFrontAbs";
connectAttr "paperMain1Fat.oz" "paperMain1.fatWidthAbs";
connectAttr "paperMain1.s" "paperMain1End.is";
connectAttr "paperMain1EndFat.oy" "paperMain1End.fatFrontAbs";
connectAttr "paperMain1EndFat.oz" "paperMain1End.fatWidthAbs";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MainScaleMultiplyDivide.o" "FKSystem.s";
connectAttr "Main.fkVis" "FKSystem.v";
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
connectAttr "FKOffsetbody_M_pointConstraint1.ctx" "FKOffsetbody_M.tx";
connectAttr "FKOffsetbody_M_pointConstraint1.cty" "FKOffsetbody_M.ty";
connectAttr "FKOffsetbody_M_pointConstraint1.ctz" "FKOffsetbody_M.tz";
connectAttr "FKbody_M.s" "FKXbody_M.is";
connectAttr "FKOffsetpaperMain4_R_pointConstraint1.ctx" "FKOffsetpaperMain4_R.tx"
		;
connectAttr "FKOffsetpaperMain4_R_pointConstraint1.cty" "FKOffsetpaperMain4_R.ty"
		;
connectAttr "FKOffsetpaperMain4_R_pointConstraint1.ctz" "FKOffsetpaperMain4_R.tz"
		;
connectAttr "FKpaperMain4_R.s" "FKXpaperMain4_R.is";
connectAttr "FKOffsetpaperMain4_R.pim" "FKOffsetpaperMain4_R_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain4_R.rp" "FKOffsetpaperMain4_R_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain4_R.rpt" "FKOffsetpaperMain4_R_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain4_R.t" "FKOffsetpaperMain4_R_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain4_R.rp" "FKOffsetpaperMain4_R_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain4_R.rpt" "FKOffsetpaperMain4_R_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain4_R.pm" "FKOffsetpaperMain4_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain4_R_pointConstraint1.w0" "FKOffsetpaperMain4_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain7_R_pointConstraint1.ctx" "FKOffsetpaperMain7_R.tx"
		;
connectAttr "FKOffsetpaperMain7_R_pointConstraint1.cty" "FKOffsetpaperMain7_R.ty"
		;
connectAttr "FKOffsetpaperMain7_R_pointConstraint1.ctz" "FKOffsetpaperMain7_R.tz"
		;
connectAttr "FKpaperMain7_R.s" "FKXpaperMain7_R.is";
connectAttr "FKOffsetpaperMain7_R.pim" "FKOffsetpaperMain7_R_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain7_R.rp" "FKOffsetpaperMain7_R_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain7_R.rpt" "FKOffsetpaperMain7_R_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain7_R.t" "FKOffsetpaperMain7_R_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain7_R.rp" "FKOffsetpaperMain7_R_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain7_R.rpt" "FKOffsetpaperMain7_R_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain7_R.pm" "FKOffsetpaperMain7_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain7_R_pointConstraint1.w0" "FKOffsetpaperMain7_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain5_M_pointConstraint1.ctx" "FKOffsetpaperMain5_M.tx"
		;
connectAttr "FKOffsetpaperMain5_M_pointConstraint1.cty" "FKOffsetpaperMain5_M.ty"
		;
connectAttr "FKOffsetpaperMain5_M_pointConstraint1.ctz" "FKOffsetpaperMain5_M.tz"
		;
connectAttr "FKpaperMain5_M.s" "FKXpaperMain5_M.is";
connectAttr "FKOffsetpaperMain5_M.pim" "FKOffsetpaperMain5_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain5_M.rp" "FKOffsetpaperMain5_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain5_M.rpt" "FKOffsetpaperMain5_M_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain5_M.t" "FKOffsetpaperMain5_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain5_M.rp" "FKOffsetpaperMain5_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain5_M.rpt" "FKOffsetpaperMain5_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain5_M.pm" "FKOffsetpaperMain5_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain5_M_pointConstraint1.w0" "FKOffsetpaperMain5_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain8_M_pointConstraint1.ctx" "FKOffsetpaperMain8_M.tx"
		;
connectAttr "FKOffsetpaperMain8_M_pointConstraint1.cty" "FKOffsetpaperMain8_M.ty"
		;
connectAttr "FKOffsetpaperMain8_M_pointConstraint1.ctz" "FKOffsetpaperMain8_M.tz"
		;
connectAttr "FKpaperMain8_M.s" "FKXpaperMain8_M.is";
connectAttr "FKOffsetpaperMain8_M.pim" "FKOffsetpaperMain8_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain8_M.rp" "FKOffsetpaperMain8_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain8_M.rpt" "FKOffsetpaperMain8_M_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain8_M.t" "FKOffsetpaperMain8_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain8_M.rp" "FKOffsetpaperMain8_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain8_M.rpt" "FKOffsetpaperMain8_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain8_M.pm" "FKOffsetpaperMain8_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain8_M_pointConstraint1.w0" "FKOffsetpaperMain8_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain6_L_pointConstraint1.ctx" "FKOffsetpaperMain6_L.tx"
		;
connectAttr "FKOffsetpaperMain6_L_pointConstraint1.cty" "FKOffsetpaperMain6_L.ty"
		;
connectAttr "FKOffsetpaperMain6_L_pointConstraint1.ctz" "FKOffsetpaperMain6_L.tz"
		;
connectAttr "FKpaperMain6_L.s" "FKXpaperMain6_L.is";
connectAttr "FKOffsetpaperMain6_L.pim" "FKOffsetpaperMain6_L_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain6_L.rp" "FKOffsetpaperMain6_L_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain6_L.rpt" "FKOffsetpaperMain6_L_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain6_L.t" "FKOffsetpaperMain6_L_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain6_L.rp" "FKOffsetpaperMain6_L_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain6_L.rpt" "FKOffsetpaperMain6_L_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain6_L.pm" "FKOffsetpaperMain6_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain6_L_pointConstraint1.w0" "FKOffsetpaperMain6_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain9_L_pointConstraint1.ctx" "FKOffsetpaperMain9_L.tx"
		;
connectAttr "FKOffsetpaperMain9_L_pointConstraint1.cty" "FKOffsetpaperMain9_L.ty"
		;
connectAttr "FKOffsetpaperMain9_L_pointConstraint1.ctz" "FKOffsetpaperMain9_L.tz"
		;
connectAttr "FKpaperMain9_L.s" "FKXpaperMain9_L.is";
connectAttr "FKOffsetpaperMain9_L.pim" "FKOffsetpaperMain9_L_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain9_L.rp" "FKOffsetpaperMain9_L_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain9_L.rpt" "FKOffsetpaperMain9_L_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain9_L.t" "FKOffsetpaperMain9_L_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain9_L.rp" "FKOffsetpaperMain9_L_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain9_L.rpt" "FKOffsetpaperMain9_L_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain9_L.pm" "FKOffsetpaperMain9_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain9_L_pointConstraint1.w0" "FKOffsetpaperMain9_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain3_L_pointConstraint1.ctx" "FKOffsetpaperMain3_L.tx"
		;
connectAttr "FKOffsetpaperMain3_L_pointConstraint1.cty" "FKOffsetpaperMain3_L.ty"
		;
connectAttr "FKOffsetpaperMain3_L_pointConstraint1.ctz" "FKOffsetpaperMain3_L.tz"
		;
connectAttr "FKpaperMain3_L.s" "FKXpaperMain3_L.is";
connectAttr "FKOffsetpaperMain3_L.pim" "FKOffsetpaperMain3_L_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain3_L.rp" "FKOffsetpaperMain3_L_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain3_L.rpt" "FKOffsetpaperMain3_L_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain3_L.t" "FKOffsetpaperMain3_L_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain3_L.rp" "FKOffsetpaperMain3_L_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain3_L.rpt" "FKOffsetpaperMain3_L_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain3_L.pm" "FKOffsetpaperMain3_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain3_L_pointConstraint1.w0" "FKOffsetpaperMain3_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain2_M_pointConstraint1.ctx" "FKOffsetpaperMain2_M.tx"
		;
connectAttr "FKOffsetpaperMain2_M_pointConstraint1.cty" "FKOffsetpaperMain2_M.ty"
		;
connectAttr "FKOffsetpaperMain2_M_pointConstraint1.ctz" "FKOffsetpaperMain2_M.tz"
		;
connectAttr "FKpaperMain2_M.s" "FKXpaperMain2_M.is";
connectAttr "FKOffsetpaperMain2_M.pim" "FKOffsetpaperMain2_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain2_M.rp" "FKOffsetpaperMain2_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain2_M.rpt" "FKOffsetpaperMain2_M_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain2_M.t" "FKOffsetpaperMain2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain2_M.rp" "FKOffsetpaperMain2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain2_M.rpt" "FKOffsetpaperMain2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain2_M.pm" "FKOffsetpaperMain2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain2_M_pointConstraint1.w0" "FKOffsetpaperMain2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetpaperMain1_R_pointConstraint1.ctx" "FKOffsetpaperMain1_R.tx"
		;
connectAttr "FKOffsetpaperMain1_R_pointConstraint1.cty" "FKOffsetpaperMain1_R.ty"
		;
connectAttr "FKOffsetpaperMain1_R_pointConstraint1.ctz" "FKOffsetpaperMain1_R.tz"
		;
connectAttr "FKpaperMain1_R.s" "FKXpaperMain1_R.is";
connectAttr "FKOffsetpaperMain1_R.pim" "FKOffsetpaperMain1_R_pointConstraint1.cpim"
		;
connectAttr "FKOffsetpaperMain1_R.rp" "FKOffsetpaperMain1_R_pointConstraint1.crp"
		;
connectAttr "FKOffsetpaperMain1_R.rpt" "FKOffsetpaperMain1_R_pointConstraint1.crt"
		;
connectAttr "FKPS2paperMain1_R.t" "FKOffsetpaperMain1_R_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2paperMain1_R.rp" "FKOffsetpaperMain1_R_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2paperMain1_R.rpt" "FKOffsetpaperMain1_R_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2paperMain1_R.pm" "FKOffsetpaperMain1_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetpaperMain1_R_pointConstraint1.w0" "FKOffsetpaperMain1_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain4_R_scaleConstraint1.csx" "FKPS1paperMain4_R.sx";
connectAttr "FKPS1paperMain4_R_scaleConstraint1.csy" "FKPS1paperMain4_R.sy";
connectAttr "FKPS1paperMain4_R_scaleConstraint1.csz" "FKPS1paperMain4_R.sz";
connectAttr "FKPS1paperMain4_R.pim" "FKPS1paperMain4_R_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain4_R_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain4_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain4_R_scaleConstraint1.w0" "FKPS1paperMain4_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain7_R_scaleConstraint1.csx" "FKPS1paperMain7_R.sx";
connectAttr "FKPS1paperMain7_R_scaleConstraint1.csy" "FKPS1paperMain7_R.sy";
connectAttr "FKPS1paperMain7_R_scaleConstraint1.csz" "FKPS1paperMain7_R.sz";
connectAttr "FKPS1paperMain7_R.pim" "FKPS1paperMain7_R_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain7_R_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain7_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain7_R_scaleConstraint1.w0" "FKPS1paperMain7_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain5_M_scaleConstraint1.csx" "FKPS1paperMain5_M.sx";
connectAttr "FKPS1paperMain5_M_scaleConstraint1.csy" "FKPS1paperMain5_M.sy";
connectAttr "FKPS1paperMain5_M_scaleConstraint1.csz" "FKPS1paperMain5_M.sz";
connectAttr "FKPS1paperMain5_M.pim" "FKPS1paperMain5_M_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain5_M_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain5_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain5_M_scaleConstraint1.w0" "FKPS1paperMain5_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain8_M_scaleConstraint1.csx" "FKPS1paperMain8_M.sx";
connectAttr "FKPS1paperMain8_M_scaleConstraint1.csy" "FKPS1paperMain8_M.sy";
connectAttr "FKPS1paperMain8_M_scaleConstraint1.csz" "FKPS1paperMain8_M.sz";
connectAttr "FKPS1paperMain8_M.pim" "FKPS1paperMain8_M_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain8_M_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain8_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain8_M_scaleConstraint1.w0" "FKPS1paperMain8_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain6_L_scaleConstraint1.csx" "FKPS1paperMain6_L.sx";
connectAttr "FKPS1paperMain6_L_scaleConstraint1.csy" "FKPS1paperMain6_L.sy";
connectAttr "FKPS1paperMain6_L_scaleConstraint1.csz" "FKPS1paperMain6_L.sz";
connectAttr "FKPS1paperMain6_L.pim" "FKPS1paperMain6_L_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain6_L_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain6_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain6_L_scaleConstraint1.w0" "FKPS1paperMain6_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain9_L_scaleConstraint1.csx" "FKPS1paperMain9_L.sx";
connectAttr "FKPS1paperMain9_L_scaleConstraint1.csy" "FKPS1paperMain9_L.sy";
connectAttr "FKPS1paperMain9_L_scaleConstraint1.csz" "FKPS1paperMain9_L.sz";
connectAttr "FKPS1paperMain9_L.pim" "FKPS1paperMain9_L_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain9_L_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain9_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain9_L_scaleConstraint1.w0" "FKPS1paperMain9_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain3_L_scaleConstraint1.csx" "FKPS1paperMain3_L.sx";
connectAttr "FKPS1paperMain3_L_scaleConstraint1.csy" "FKPS1paperMain3_L.sy";
connectAttr "FKPS1paperMain3_L_scaleConstraint1.csz" "FKPS1paperMain3_L.sz";
connectAttr "FKPS1paperMain3_L.pim" "FKPS1paperMain3_L_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain3_L_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain3_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain3_L_scaleConstraint1.w0" "FKPS1paperMain3_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain2_M_scaleConstraint1.csx" "FKPS1paperMain2_M.sx";
connectAttr "FKPS1paperMain2_M_scaleConstraint1.csy" "FKPS1paperMain2_M.sy";
connectAttr "FKPS1paperMain2_M_scaleConstraint1.csz" "FKPS1paperMain2_M.sz";
connectAttr "FKPS1paperMain2_M.pim" "FKPS1paperMain2_M_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain2_M_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain2_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain2_M_scaleConstraint1.w0" "FKPS1paperMain2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKPS1paperMain1_R_scaleConstraint1.csx" "FKPS1paperMain1_R.sx";
connectAttr "FKPS1paperMain1_R_scaleConstraint1.csy" "FKPS1paperMain1_R.sy";
connectAttr "FKPS1paperMain1_R_scaleConstraint1.csz" "FKPS1paperMain1_R.sz";
connectAttr "FKPS1paperMain1_R.pim" "FKPS1paperMain1_R_scaleConstraint1.cpim";
connectAttr "FKbody_M.s" "FKPS1paperMain1_R_scaleConstraint1.tg[0].ts";
connectAttr "FKbody_M.pm" "FKPS1paperMain1_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1paperMain1_R_scaleConstraint1.w0" "FKPS1paperMain1_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetbody_M.pim" "FKOffsetbody_M_pointConstraint1.cpim";
connectAttr "FKOffsetbody_M.rp" "FKOffsetbody_M_pointConstraint1.crp";
connectAttr "FKOffsetbody_M.rpt" "FKOffsetbody_M_pointConstraint1.crt";
connectAttr "FKPS2body_M.t" "FKOffsetbody_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2body_M.rp" "FKOffsetbody_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2body_M.rpt" "FKOffsetbody_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2body_M.pm" "FKOffsetbody_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetbody_M_pointConstraint1.w0" "FKOffsetbody_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1body_M_scaleConstraint1.csx" "FKPS1body_M.sx";
connectAttr "FKPS1body_M_scaleConstraint1.csy" "FKPS1body_M.sy";
connectAttr "FKPS1body_M_scaleConstraint1.csz" "FKPS1body_M.sz";
connectAttr "FKPS1body_M.pim" "FKPS1body_M_scaleConstraint1.cpim";
connectAttr "FKRoot_M.s" "FKPS1body_M_scaleConstraint1.tg[0].ts";
connectAttr "FKRoot_M.pm" "FKPS1body_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1body_M_scaleConstraint1.w0" "FKPS1body_M_scaleConstraint1.tg[0].tw"
		;
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
connectAttr "paperMain4_R.pim" "paperMain4_R_pointConstraint1.cpim";
connectAttr "paperMain4_R.rp" "paperMain4_R_pointConstraint1.crp";
connectAttr "paperMain4_R.rpt" "paperMain4_R_pointConstraint1.crt";
connectAttr "FKXpaperMain4_R.t" "paperMain4_R_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain4_R.rp" "paperMain4_R_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain4_R.rpt" "paperMain4_R_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain4_R.pm" "paperMain4_R_pointConstraint1.tg[0].tpm";
connectAttr "paperMain4_R_pointConstraint1.w0" "paperMain4_R_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain4_R.ro" "paperMain4_R_orientConstraint1.cro";
connectAttr "paperMain4_R.pim" "paperMain4_R_orientConstraint1.cpim";
connectAttr "paperMain4_R.jo" "paperMain4_R_orientConstraint1.cjo";
connectAttr "paperMain4_R.is" "paperMain4_R_orientConstraint1.is";
connectAttr "FKXpaperMain4_R.r" "paperMain4_R_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain4_R.ro" "paperMain4_R_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain4_R.pm" "paperMain4_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain4_R.jo" "paperMain4_R_orientConstraint1.tg[0].tjo";
connectAttr "paperMain4_R_orientConstraint1.w0" "paperMain4_R_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain7_R.pim" "paperMain7_R_pointConstraint1.cpim";
connectAttr "paperMain7_R.rp" "paperMain7_R_pointConstraint1.crp";
connectAttr "paperMain7_R.rpt" "paperMain7_R_pointConstraint1.crt";
connectAttr "FKXpaperMain7_R.t" "paperMain7_R_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain7_R.rp" "paperMain7_R_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain7_R.rpt" "paperMain7_R_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain7_R.pm" "paperMain7_R_pointConstraint1.tg[0].tpm";
connectAttr "paperMain7_R_pointConstraint1.w0" "paperMain7_R_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain7_R.ro" "paperMain7_R_orientConstraint1.cro";
connectAttr "paperMain7_R.pim" "paperMain7_R_orientConstraint1.cpim";
connectAttr "paperMain7_R.jo" "paperMain7_R_orientConstraint1.cjo";
connectAttr "paperMain7_R.is" "paperMain7_R_orientConstraint1.is";
connectAttr "FKXpaperMain7_R.r" "paperMain7_R_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain7_R.ro" "paperMain7_R_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain7_R.pm" "paperMain7_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain7_R.jo" "paperMain7_R_orientConstraint1.tg[0].tjo";
connectAttr "paperMain7_R_orientConstraint1.w0" "paperMain7_R_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain5_M.pim" "paperMain5_M_pointConstraint1.cpim";
connectAttr "paperMain5_M.rp" "paperMain5_M_pointConstraint1.crp";
connectAttr "paperMain5_M.rpt" "paperMain5_M_pointConstraint1.crt";
connectAttr "FKXpaperMain5_M.t" "paperMain5_M_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain5_M.rp" "paperMain5_M_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain5_M.rpt" "paperMain5_M_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain5_M.pm" "paperMain5_M_pointConstraint1.tg[0].tpm";
connectAttr "paperMain5_M_pointConstraint1.w0" "paperMain5_M_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain5_M.ro" "paperMain5_M_orientConstraint1.cro";
connectAttr "paperMain5_M.pim" "paperMain5_M_orientConstraint1.cpim";
connectAttr "paperMain5_M.jo" "paperMain5_M_orientConstraint1.cjo";
connectAttr "paperMain5_M.is" "paperMain5_M_orientConstraint1.is";
connectAttr "FKXpaperMain5_M.r" "paperMain5_M_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain5_M.ro" "paperMain5_M_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain5_M.pm" "paperMain5_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain5_M.jo" "paperMain5_M_orientConstraint1.tg[0].tjo";
connectAttr "paperMain5_M_orientConstraint1.w0" "paperMain5_M_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain8_M.pim" "paperMain8_M_pointConstraint1.cpim";
connectAttr "paperMain8_M.rp" "paperMain8_M_pointConstraint1.crp";
connectAttr "paperMain8_M.rpt" "paperMain8_M_pointConstraint1.crt";
connectAttr "FKXpaperMain8_M.t" "paperMain8_M_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain8_M.rp" "paperMain8_M_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain8_M.rpt" "paperMain8_M_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain8_M.pm" "paperMain8_M_pointConstraint1.tg[0].tpm";
connectAttr "paperMain8_M_pointConstraint1.w0" "paperMain8_M_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain8_M.ro" "paperMain8_M_orientConstraint1.cro";
connectAttr "paperMain8_M.pim" "paperMain8_M_orientConstraint1.cpim";
connectAttr "paperMain8_M.jo" "paperMain8_M_orientConstraint1.cjo";
connectAttr "paperMain8_M.is" "paperMain8_M_orientConstraint1.is";
connectAttr "FKXpaperMain8_M.r" "paperMain8_M_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain8_M.ro" "paperMain8_M_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain8_M.pm" "paperMain8_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain8_M.jo" "paperMain8_M_orientConstraint1.tg[0].tjo";
connectAttr "paperMain8_M_orientConstraint1.w0" "paperMain8_M_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain6_L.pim" "paperMain6_L_pointConstraint1.cpim";
connectAttr "paperMain6_L.rp" "paperMain6_L_pointConstraint1.crp";
connectAttr "paperMain6_L.rpt" "paperMain6_L_pointConstraint1.crt";
connectAttr "FKXpaperMain6_L.t" "paperMain6_L_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain6_L.rp" "paperMain6_L_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain6_L.rpt" "paperMain6_L_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain6_L.pm" "paperMain6_L_pointConstraint1.tg[0].tpm";
connectAttr "paperMain6_L_pointConstraint1.w0" "paperMain6_L_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain6_L.ro" "paperMain6_L_orientConstraint1.cro";
connectAttr "paperMain6_L.pim" "paperMain6_L_orientConstraint1.cpim";
connectAttr "paperMain6_L.jo" "paperMain6_L_orientConstraint1.cjo";
connectAttr "paperMain6_L.is" "paperMain6_L_orientConstraint1.is";
connectAttr "FKXpaperMain6_L.r" "paperMain6_L_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain6_L.ro" "paperMain6_L_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain6_L.pm" "paperMain6_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain6_L.jo" "paperMain6_L_orientConstraint1.tg[0].tjo";
connectAttr "paperMain6_L_orientConstraint1.w0" "paperMain6_L_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain9_L.pim" "paperMain9_L_pointConstraint1.cpim";
connectAttr "paperMain9_L.rp" "paperMain9_L_pointConstraint1.crp";
connectAttr "paperMain9_L.rpt" "paperMain9_L_pointConstraint1.crt";
connectAttr "FKXpaperMain9_L.t" "paperMain9_L_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain9_L.rp" "paperMain9_L_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain9_L.rpt" "paperMain9_L_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain9_L.pm" "paperMain9_L_pointConstraint1.tg[0].tpm";
connectAttr "paperMain9_L_pointConstraint1.w0" "paperMain9_L_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain9_L.ro" "paperMain9_L_orientConstraint1.cro";
connectAttr "paperMain9_L.pim" "paperMain9_L_orientConstraint1.cpim";
connectAttr "paperMain9_L.jo" "paperMain9_L_orientConstraint1.cjo";
connectAttr "paperMain9_L.is" "paperMain9_L_orientConstraint1.is";
connectAttr "FKXpaperMain9_L.r" "paperMain9_L_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain9_L.ro" "paperMain9_L_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain9_L.pm" "paperMain9_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain9_L.jo" "paperMain9_L_orientConstraint1.tg[0].tjo";
connectAttr "paperMain9_L_orientConstraint1.w0" "paperMain9_L_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain3_L.pim" "paperMain3_L_pointConstraint1.cpim";
connectAttr "paperMain3_L.rp" "paperMain3_L_pointConstraint1.crp";
connectAttr "paperMain3_L.rpt" "paperMain3_L_pointConstraint1.crt";
connectAttr "FKXpaperMain3_L.t" "paperMain3_L_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain3_L.rp" "paperMain3_L_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain3_L.rpt" "paperMain3_L_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain3_L.pm" "paperMain3_L_pointConstraint1.tg[0].tpm";
connectAttr "paperMain3_L_pointConstraint1.w0" "paperMain3_L_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain3_L.ro" "paperMain3_L_orientConstraint1.cro";
connectAttr "paperMain3_L.pim" "paperMain3_L_orientConstraint1.cpim";
connectAttr "paperMain3_L.jo" "paperMain3_L_orientConstraint1.cjo";
connectAttr "paperMain3_L.is" "paperMain3_L_orientConstraint1.is";
connectAttr "FKXpaperMain3_L.r" "paperMain3_L_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain3_L.ro" "paperMain3_L_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain3_L.pm" "paperMain3_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain3_L.jo" "paperMain3_L_orientConstraint1.tg[0].tjo";
connectAttr "paperMain3_L_orientConstraint1.w0" "paperMain3_L_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain2_M.pim" "paperMain2_M_pointConstraint1.cpim";
connectAttr "paperMain2_M.rp" "paperMain2_M_pointConstraint1.crp";
connectAttr "paperMain2_M.rpt" "paperMain2_M_pointConstraint1.crt";
connectAttr "FKXpaperMain2_M.t" "paperMain2_M_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain2_M.rp" "paperMain2_M_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain2_M.rpt" "paperMain2_M_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain2_M.pm" "paperMain2_M_pointConstraint1.tg[0].tpm";
connectAttr "paperMain2_M_pointConstraint1.w0" "paperMain2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain2_M.ro" "paperMain2_M_orientConstraint1.cro";
connectAttr "paperMain2_M.pim" "paperMain2_M_orientConstraint1.cpim";
connectAttr "paperMain2_M.jo" "paperMain2_M_orientConstraint1.cjo";
connectAttr "paperMain2_M.is" "paperMain2_M_orientConstraint1.is";
connectAttr "FKXpaperMain2_M.r" "paperMain2_M_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain2_M.ro" "paperMain2_M_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain2_M.pm" "paperMain2_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain2_M.jo" "paperMain2_M_orientConstraint1.tg[0].tjo";
connectAttr "paperMain2_M_orientConstraint1.w0" "paperMain2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "paperMain1_R.pim" "paperMain1_R_pointConstraint1.cpim";
connectAttr "paperMain1_R.rp" "paperMain1_R_pointConstraint1.crp";
connectAttr "paperMain1_R.rpt" "paperMain1_R_pointConstraint1.crt";
connectAttr "FKXpaperMain1_R.t" "paperMain1_R_pointConstraint1.tg[0].tt";
connectAttr "FKXpaperMain1_R.rp" "paperMain1_R_pointConstraint1.tg[0].trp";
connectAttr "FKXpaperMain1_R.rpt" "paperMain1_R_pointConstraint1.tg[0].trt";
connectAttr "FKXpaperMain1_R.pm" "paperMain1_R_pointConstraint1.tg[0].tpm";
connectAttr "paperMain1_R_pointConstraint1.w0" "paperMain1_R_pointConstraint1.tg[0].tw"
		;
connectAttr "paperMain1_R.ro" "paperMain1_R_orientConstraint1.cro";
connectAttr "paperMain1_R.pim" "paperMain1_R_orientConstraint1.cpim";
connectAttr "paperMain1_R.jo" "paperMain1_R_orientConstraint1.cjo";
connectAttr "paperMain1_R.is" "paperMain1_R_orientConstraint1.is";
connectAttr "FKXpaperMain1_R.r" "paperMain1_R_orientConstraint1.tg[0].tr";
connectAttr "FKXpaperMain1_R.ro" "paperMain1_R_orientConstraint1.tg[0].tro";
connectAttr "FKXpaperMain1_R.pm" "paperMain1_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXpaperMain1_R.jo" "paperMain1_R_orientConstraint1.tg[0].tjo";
connectAttr "paperMain1_R_orientConstraint1.w0" "paperMain1_R_orientConstraint1.tg[0].tw"
		;
connectAttr "body_M.pim" "body_M_pointConstraint1.cpim";
connectAttr "body_M.rp" "body_M_pointConstraint1.crp";
connectAttr "body_M.rpt" "body_M_pointConstraint1.crt";
connectAttr "FKXbody_M.t" "body_M_pointConstraint1.tg[0].tt";
connectAttr "FKXbody_M.rp" "body_M_pointConstraint1.tg[0].trp";
connectAttr "FKXbody_M.rpt" "body_M_pointConstraint1.tg[0].trt";
connectAttr "FKXbody_M.pm" "body_M_pointConstraint1.tg[0].tpm";
connectAttr "body_M_pointConstraint1.w0" "body_M_pointConstraint1.tg[0].tw";
connectAttr "body_M.ro" "body_M_orientConstraint1.cro";
connectAttr "body_M.pim" "body_M_orientConstraint1.cpim";
connectAttr "body_M.jo" "body_M_orientConstraint1.cjo";
connectAttr "body_M.is" "body_M_orientConstraint1.is";
connectAttr "FKXbody_M.r" "body_M_orientConstraint1.tg[0].tr";
connectAttr "FKXbody_M.ro" "body_M_orientConstraint1.tg[0].tro";
connectAttr "FKXbody_M.pm" "body_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXbody_M.jo" "body_M_orientConstraint1.tg[0].tjo";
connectAttr "body_M_orientConstraint1.w0" "body_M_orientConstraint1.tg[0].tw";
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
connectAttr "Root_M.s" "body_M.is";
connectAttr "FKbody_M.sx" "body_M.sx";
connectAttr "FKbody_M.sy" "body_M.sy";
connectAttr "FKbody_M.sz" "body_M.sz";
connectAttr "body_M_orientConstraint1.crx" "body_M.rx";
connectAttr "body_M_orientConstraint1.cry" "body_M.ry";
connectAttr "body_M_orientConstraint1.crz" "body_M.rz";
connectAttr "body_M_pointConstraint1.ctx" "body_M.tx";
connectAttr "body_M_pointConstraint1.cty" "body_M.ty";
connectAttr "body_M_pointConstraint1.ctz" "body_M.tz";
connectAttr "body_M.s" "paperMain4_R.is";
connectAttr "FKpaperMain4_R.sx" "paperMain4_R.sx";
connectAttr "FKpaperMain4_R.sy" "paperMain4_R.sy";
connectAttr "FKpaperMain4_R.sz" "paperMain4_R.sz";
connectAttr "paperMain4_R_orientConstraint1.crx" "paperMain4_R.rx";
connectAttr "paperMain4_R_orientConstraint1.cry" "paperMain4_R.ry";
connectAttr "paperMain4_R_orientConstraint1.crz" "paperMain4_R.rz";
connectAttr "paperMain4_R_pointConstraint1.ctx" "paperMain4_R.tx";
connectAttr "paperMain4_R_pointConstraint1.cty" "paperMain4_R.ty";
connectAttr "paperMain4_R_pointConstraint1.ctz" "paperMain4_R.tz";
connectAttr "paperMain4_R.s" "paperMain4End_R.is";
connectAttr "body_M.s" "paperMain7_R.is";
connectAttr "FKpaperMain7_R.sx" "paperMain7_R.sx";
connectAttr "FKpaperMain7_R.sy" "paperMain7_R.sy";
connectAttr "FKpaperMain7_R.sz" "paperMain7_R.sz";
connectAttr "paperMain7_R_orientConstraint1.crx" "paperMain7_R.rx";
connectAttr "paperMain7_R_orientConstraint1.cry" "paperMain7_R.ry";
connectAttr "paperMain7_R_orientConstraint1.crz" "paperMain7_R.rz";
connectAttr "paperMain7_R_pointConstraint1.ctx" "paperMain7_R.tx";
connectAttr "paperMain7_R_pointConstraint1.cty" "paperMain7_R.ty";
connectAttr "paperMain7_R_pointConstraint1.ctz" "paperMain7_R.tz";
connectAttr "paperMain7_R.s" "paperMain7End_R.is";
connectAttr "body_M.s" "paperMain5_M.is";
connectAttr "FKpaperMain5_M.sx" "paperMain5_M.sx";
connectAttr "FKpaperMain5_M.sy" "paperMain5_M.sy";
connectAttr "FKpaperMain5_M.sz" "paperMain5_M.sz";
connectAttr "paperMain5_M_orientConstraint1.crx" "paperMain5_M.rx";
connectAttr "paperMain5_M_orientConstraint1.cry" "paperMain5_M.ry";
connectAttr "paperMain5_M_orientConstraint1.crz" "paperMain5_M.rz";
connectAttr "paperMain5_M_pointConstraint1.ctx" "paperMain5_M.tx";
connectAttr "paperMain5_M_pointConstraint1.cty" "paperMain5_M.ty";
connectAttr "paperMain5_M_pointConstraint1.ctz" "paperMain5_M.tz";
connectAttr "paperMain5_M.s" "paperMain5End_L.is";
connectAttr "body_M.s" "paperMain8_M.is";
connectAttr "FKpaperMain8_M.sx" "paperMain8_M.sx";
connectAttr "FKpaperMain8_M.sy" "paperMain8_M.sy";
connectAttr "FKpaperMain8_M.sz" "paperMain8_M.sz";
connectAttr "paperMain8_M_orientConstraint1.crx" "paperMain8_M.rx";
connectAttr "paperMain8_M_orientConstraint1.cry" "paperMain8_M.ry";
connectAttr "paperMain8_M_orientConstraint1.crz" "paperMain8_M.rz";
connectAttr "paperMain8_M_pointConstraint1.ctx" "paperMain8_M.tx";
connectAttr "paperMain8_M_pointConstraint1.cty" "paperMain8_M.ty";
connectAttr "paperMain8_M_pointConstraint1.ctz" "paperMain8_M.tz";
connectAttr "paperMain8_M.s" "paperMain8End_L.is";
connectAttr "body_M.s" "paperMain6_L.is";
connectAttr "FKpaperMain6_L.sx" "paperMain6_L.sx";
connectAttr "FKpaperMain6_L.sy" "paperMain6_L.sy";
connectAttr "FKpaperMain6_L.sz" "paperMain6_L.sz";
connectAttr "paperMain6_L_orientConstraint1.crx" "paperMain6_L.rx";
connectAttr "paperMain6_L_orientConstraint1.cry" "paperMain6_L.ry";
connectAttr "paperMain6_L_orientConstraint1.crz" "paperMain6_L.rz";
connectAttr "paperMain6_L_pointConstraint1.ctx" "paperMain6_L.tx";
connectAttr "paperMain6_L_pointConstraint1.cty" "paperMain6_L.ty";
connectAttr "paperMain6_L_pointConstraint1.ctz" "paperMain6_L.tz";
connectAttr "paperMain6_L.s" "paperMain6End_L.is";
connectAttr "body_M.s" "paperMain9_L.is";
connectAttr "FKpaperMain9_L.sx" "paperMain9_L.sx";
connectAttr "FKpaperMain9_L.sy" "paperMain9_L.sy";
connectAttr "FKpaperMain9_L.sz" "paperMain9_L.sz";
connectAttr "paperMain9_L_orientConstraint1.crx" "paperMain9_L.rx";
connectAttr "paperMain9_L_orientConstraint1.cry" "paperMain9_L.ry";
connectAttr "paperMain9_L_orientConstraint1.crz" "paperMain9_L.rz";
connectAttr "paperMain9_L_pointConstraint1.ctx" "paperMain9_L.tx";
connectAttr "paperMain9_L_pointConstraint1.cty" "paperMain9_L.ty";
connectAttr "paperMain9_L_pointConstraint1.ctz" "paperMain9_L.tz";
connectAttr "paperMain9_L.s" "paperMain9End_L.is";
connectAttr "body_M.s" "paperMain3_L.is";
connectAttr "FKpaperMain3_L.sx" "paperMain3_L.sx";
connectAttr "FKpaperMain3_L.sy" "paperMain3_L.sy";
connectAttr "FKpaperMain3_L.sz" "paperMain3_L.sz";
connectAttr "paperMain3_L_orientConstraint1.crx" "paperMain3_L.rx";
connectAttr "paperMain3_L_orientConstraint1.cry" "paperMain3_L.ry";
connectAttr "paperMain3_L_orientConstraint1.crz" "paperMain3_L.rz";
connectAttr "paperMain3_L_pointConstraint1.ctx" "paperMain3_L.tx";
connectAttr "paperMain3_L_pointConstraint1.cty" "paperMain3_L.ty";
connectAttr "paperMain3_L_pointConstraint1.ctz" "paperMain3_L.tz";
connectAttr "paperMain3_L.s" "paperMain3End_L.is";
connectAttr "body_M.s" "paperMain2_M.is";
connectAttr "FKpaperMain2_M.sx" "paperMain2_M.sx";
connectAttr "FKpaperMain2_M.sy" "paperMain2_M.sy";
connectAttr "FKpaperMain2_M.sz" "paperMain2_M.sz";
connectAttr "paperMain2_M_orientConstraint1.crx" "paperMain2_M.rx";
connectAttr "paperMain2_M_orientConstraint1.cry" "paperMain2_M.ry";
connectAttr "paperMain2_M_orientConstraint1.crz" "paperMain2_M.rz";
connectAttr "paperMain2_M_pointConstraint1.ctx" "paperMain2_M.tx";
connectAttr "paperMain2_M_pointConstraint1.cty" "paperMain2_M.ty";
connectAttr "paperMain2_M_pointConstraint1.ctz" "paperMain2_M.tz";
connectAttr "paperMain2_M.s" "paperMain2End_L.is";
connectAttr "body_M.s" "paperMain1_R.is";
connectAttr "FKpaperMain1_R.sx" "paperMain1_R.sx";
connectAttr "FKpaperMain1_R.sy" "paperMain1_R.sy";
connectAttr "FKpaperMain1_R.sz" "paperMain1_R.sz";
connectAttr "paperMain1_R_orientConstraint1.crx" "paperMain1_R.rx";
connectAttr "paperMain1_R_orientConstraint1.cry" "paperMain1_R.ry";
connectAttr "paperMain1_R_orientConstraint1.crz" "paperMain1_R.rz";
connectAttr "paperMain1_R_pointConstraint1.ctx" "paperMain1_R.tx";
connectAttr "paperMain1_R_pointConstraint1.cty" "paperMain1_R.ty";
connectAttr "paperMain1_R_pointConstraint1.ctz" "paperMain1_R.tz";
connectAttr "paperMain1_R.s" "paperMain1End_R.is";
connectAttr "body_M.s" "bodyEnd_L.is";
connectAttr "groupId1.id" "PaperCard_GeoShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "PaperCard_GeoShape.iog.og[0].gco";
connectAttr "polySoftEdge1.out" "PaperCard_GeoShapeDeformed.i";
connectAttr "skinCluster4.og[0]" "PaperA_GeoShapeDeformed.i";
connectAttr "skinCluster5.og[0]" "PaperB_GeoShapeDeformed.i";
connectAttr "skinCluster6.og[0]" "PaperC_GeoShapeDeformed.i";
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
connectAttr "body.fat" "bodyFat.i1y";
connectAttr "body.fat" "bodyFat.i1z";
connectAttr "body.fatFront" "bodyFat.i2y";
connectAttr "body.fatWidth" "bodyFat.i2z";
connectAttr "paperMain1.fat" "paperMain1Fat.i1y";
connectAttr "paperMain1.fat" "paperMain1Fat.i1z";
connectAttr "paperMain1.fatFront" "paperMain1Fat.i2y";
connectAttr "paperMain1.fatWidth" "paperMain1Fat.i2z";
connectAttr "paperMain1End.fat" "paperMain1EndFat.i1y";
connectAttr "paperMain1End.fat" "paperMain1EndFat.i1z";
connectAttr "paperMain1End.fatFront" "paperMain1EndFat.i2y";
connectAttr "paperMain1End.fatWidth" "paperMain1EndFat.i2z";
connectAttr "paperMain2.fat" "paperMain2Fat.i1y";
connectAttr "paperMain2.fat" "paperMain2Fat.i1z";
connectAttr "paperMain2.fatFront" "paperMain2Fat.i2y";
connectAttr "paperMain2.fatWidth" "paperMain2Fat.i2z";
connectAttr "paperMain2End.fat" "paperMain2EndFat.i1y";
connectAttr "paperMain2End.fat" "paperMain2EndFat.i1z";
connectAttr "paperMain2End.fatFront" "paperMain2EndFat.i2y";
connectAttr "paperMain2End.fatWidth" "paperMain2EndFat.i2z";
connectAttr "paperMain3.fat" "paperMain3Fat.i1y";
connectAttr "paperMain3.fat" "paperMain3Fat.i1z";
connectAttr "paperMain3.fatFront" "paperMain3Fat.i2y";
connectAttr "paperMain3.fatWidth" "paperMain3Fat.i2z";
connectAttr "paperMain3End.fat" "paperMain3EndFat.i1y";
connectAttr "paperMain3End.fat" "paperMain3EndFat.i1z";
connectAttr "paperMain3End.fatFront" "paperMain3EndFat.i2y";
connectAttr "paperMain3End.fatWidth" "paperMain3EndFat.i2z";
connectAttr "paperMain9.fat" "paperMain9Fat.i1y";
connectAttr "paperMain9.fat" "paperMain9Fat.i1z";
connectAttr "paperMain9.fatFront" "paperMain9Fat.i2y";
connectAttr "paperMain9.fatWidth" "paperMain9Fat.i2z";
connectAttr "paperMain9End.fat" "paperMain9EndFat.i1y";
connectAttr "paperMain9End.fat" "paperMain9EndFat.i1z";
connectAttr "paperMain9End.fatFront" "paperMain9EndFat.i2y";
connectAttr "paperMain9End.fatWidth" "paperMain9EndFat.i2z";
connectAttr "paperMain6.fat" "paperMain6Fat.i1y";
connectAttr "paperMain6.fat" "paperMain6Fat.i1z";
connectAttr "paperMain6.fatFront" "paperMain6Fat.i2y";
connectAttr "paperMain6.fatWidth" "paperMain6Fat.i2z";
connectAttr "paperMain6End.fat" "paperMain6EndFat.i1y";
connectAttr "paperMain6End.fat" "paperMain6EndFat.i1z";
connectAttr "paperMain6End.fatFront" "paperMain6EndFat.i2y";
connectAttr "paperMain6End.fatWidth" "paperMain6EndFat.i2z";
connectAttr "paperMain8.fat" "paperMain8Fat.i1y";
connectAttr "paperMain8.fat" "paperMain8Fat.i1z";
connectAttr "paperMain8.fatFront" "paperMain8Fat.i2y";
connectAttr "paperMain8.fatWidth" "paperMain8Fat.i2z";
connectAttr "paperMain8End.fat" "paperMain8EndFat.i1y";
connectAttr "paperMain8End.fat" "paperMain8EndFat.i1z";
connectAttr "paperMain8End.fatFront" "paperMain8EndFat.i2y";
connectAttr "paperMain8End.fatWidth" "paperMain8EndFat.i2z";
connectAttr "paperMain5.fat" "paperMain5Fat.i1y";
connectAttr "paperMain5.fat" "paperMain5Fat.i1z";
connectAttr "paperMain5.fatFront" "paperMain5Fat.i2y";
connectAttr "paperMain5.fatWidth" "paperMain5Fat.i2z";
connectAttr "paperMain5End.fat" "paperMain5EndFat.i1y";
connectAttr "paperMain5End.fat" "paperMain5EndFat.i1z";
connectAttr "paperMain5End.fatFront" "paperMain5EndFat.i2y";
connectAttr "paperMain5End.fatWidth" "paperMain5EndFat.i2z";
connectAttr "paperMain7.fat" "paperMain7Fat.i1y";
connectAttr "paperMain7.fat" "paperMain7Fat.i1z";
connectAttr "paperMain7.fatFront" "paperMain7Fat.i2y";
connectAttr "paperMain7.fatWidth" "paperMain7Fat.i2z";
connectAttr "paperMain7End.fat" "paperMain7EndFat.i1y";
connectAttr "paperMain7End.fat" "paperMain7EndFat.i1z";
connectAttr "paperMain7End.fatFront" "paperMain7EndFat.i2y";
connectAttr "paperMain7End.fatWidth" "paperMain7EndFat.i2z";
connectAttr "paperMain4.fat" "paperMain4Fat.i1y";
connectAttr "paperMain4.fat" "paperMain4Fat.i1z";
connectAttr "paperMain4.fatFront" "paperMain4Fat.i2y";
connectAttr "paperMain4.fatWidth" "paperMain4Fat.i2z";
connectAttr "paperMain4End.fat" "paperMain4EndFat.i1y";
connectAttr "paperMain4End.fat" "paperMain4EndFat.i1z";
connectAttr "paperMain4End.fatFront" "paperMain4EndFat.i2y";
connectAttr "paperMain4End.fatWidth" "paperMain4EndFat.i2z";
connectAttr "bodyEnd.fat" "bodyEndFat.i1y";
connectAttr "bodyEnd.fat" "bodyEndFat.i1z";
connectAttr "bodyEnd.fatFront" "bodyEndFat.i2y";
connectAttr "bodyEnd.fatWidth" "bodyEndFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain7_R.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain7_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain5_M.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain5_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain8_M.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain8_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain6_L.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain6_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain9_L.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain9_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrapaperMain1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKpaperMain1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtrabody_M.iog" "ControlSet.dsm" -na;
connectAttr "FKbody_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "paperMain4_R.iog" "DeformSet.dsm" -na;
connectAttr "paperMain7_R.iog" "DeformSet.dsm" -na;
connectAttr "paperMain5_M.iog" "DeformSet.dsm" -na;
connectAttr "paperMain8_M.iog" "DeformSet.dsm" -na;
connectAttr "paperMain6_L.iog" "DeformSet.dsm" -na;
connectAttr "paperMain9_L.iog" "DeformSet.dsm" -na;
connectAttr "paperMain3_L.iog" "DeformSet.dsm" -na;
connectAttr "paperMain2_M.iog" "DeformSet.dsm" -na;
connectAttr "paperMain1_R.iog" "DeformSet.dsm" -na;
connectAttr "body_M.iog" "DeformSet.dsm" -na;
connectAttr "Root_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.iog" "AllSet.dsm" -na;
connectAttr "FKHSRoot_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "body_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "body_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain1_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain3_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain9_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain9_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain6_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain6_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain8_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain8_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain5_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain5_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain7_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain7_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain4_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "paperMain4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetbody_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1body_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2body_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1body_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain1_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain3_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain9_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain9_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain6_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain6_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain8_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain8_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain5_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain5_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain7_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain7_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain4_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2paperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1paperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXbody_M.iog" "AllSet.dsm" -na;
connectAttr "FKbody_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKbody_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtrabody_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetbody_M.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "FKXpaperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtrapaperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetpaperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "bodyEnd_L.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "body_M.iog" "AllSet.dsm" -na;
connectAttr "paperMain1_R.iog" "AllSet.dsm" -na;
connectAttr "paperMain1End_R.iog" "AllSet.dsm" -na;
connectAttr "paperMain2_M.iog" "AllSet.dsm" -na;
connectAttr "paperMain2End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain3_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain3End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain9_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain9End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain6_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain6End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain8_M.iog" "AllSet.dsm" -na;
connectAttr "paperMain8End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain5_M.iog" "AllSet.dsm" -na;
connectAttr "paperMain5End_L.iog" "AllSet.dsm" -na;
connectAttr "paperMain7_R.iog" "AllSet.dsm" -na;
connectAttr "paperMain7End_R.iog" "AllSet.dsm" -na;
connectAttr "paperMain4_R.iog" "AllSet.dsm" -na;
connectAttr "paperMain4End_R.iog" "AllSet.dsm" -na;
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
connectAttr "FKpaperMain4_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain2_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain9_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain7_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain5_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain6_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain3_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKpaperMain8_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootXformInverterRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotIM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotPM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM2_M.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrainedDM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "RootBM_M.msg" "AllSet.dnsm" -na;
connectAttr "bodyBM_M.msg" "AllSet.dnsm" -na;
connectAttr "paperMain1BM_R.msg" "AllSet.dnsm" -na;
connectAttr "paperMain2BM_M.msg" "AllSet.dnsm" -na;
connectAttr "paperMain3BM_L.msg" "AllSet.dnsm" -na;
connectAttr "paperMain9BM_L.msg" "AllSet.dnsm" -na;
connectAttr "paperMain6BM_L.msg" "AllSet.dnsm" -na;
connectAttr "paperMain8BM_M.msg" "AllSet.dnsm" -na;
connectAttr "paperMain5BM_M.msg" "AllSet.dnsm" -na;
connectAttr "paperMain7BM_R.msg" "AllSet.dnsm" -na;
connectAttr "paperMain4BM_R.msg" "AllSet.dnsm" -na;
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
connectAttr "FKXpaperMain4_R.wm" "paperMain4BM_R.imat";
connectAttr "FKXpaperMain7_R.wm" "paperMain7BM_R.imat";
connectAttr "FKXpaperMain5_M.wm" "paperMain5BM_M.imat";
connectAttr "FKXpaperMain8_M.wm" "paperMain8BM_M.imat";
connectAttr "FKXpaperMain6_L.wm" "paperMain6BM_L.imat";
connectAttr "FKXpaperMain9_L.wm" "paperMain9BM_L.imat";
connectAttr "FKXpaperMain3_L.wm" "paperMain3BM_L.imat";
connectAttr "FKXpaperMain2_M.wm" "paperMain2BM_M.imat";
connectAttr "FKXpaperMain1_R.wm" "paperMain1BM_R.imat";
connectAttr "FKXbody_M.wm" "bodyBM_M.imat";
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
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Root_M.msg" "bindPose1.m[2]";
connectAttr "body_M.msg" "bindPose1.m[3]";
connectAttr "paperMain4_R.msg" "bindPose1.m[4]";
connectAttr "paperMain7_R.msg" "bindPose1.m[5]";
connectAttr "paperMain5_M.msg" "bindPose1.m[6]";
connectAttr "paperMain8_M.msg" "bindPose1.m[7]";
connectAttr "paperMain6_L.msg" "bindPose1.m[8]";
connectAttr "paperMain9_L.msg" "bindPose1.m[9]";
connectAttr "paperMain3_L.msg" "bindPose1.m[10]";
connectAttr "paperMain2_M.msg" "bindPose1.m[11]";
connectAttr "paperMain1_R.msg" "bindPose1.m[12]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[5]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[3]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[3]" "bindPose1.p[9]";
connectAttr "bindPose1.m[3]" "bindPose1.p[10]";
connectAttr "bindPose1.m[3]" "bindPose1.p[11]";
connectAttr "bindPose1.m[3]" "bindPose1.p[12]";
connectAttr "Root_M.bps" "bindPose1.wm[2]";
connectAttr "body_M.bps" "bindPose1.wm[3]";
connectAttr "paperMain4_R.bps" "bindPose1.wm[4]";
connectAttr "paperMain7_R.bps" "bindPose1.wm[5]";
connectAttr "paperMain5_M.bps" "bindPose1.wm[6]";
connectAttr "paperMain8_M.bps" "bindPose1.wm[7]";
connectAttr "paperMain6_L.bps" "bindPose1.wm[8]";
connectAttr "paperMain9_L.bps" "bindPose1.wm[9]";
connectAttr "paperMain3_L.bps" "bindPose1.wm[10]";
connectAttr "paperMain2_M.bps" "bindPose1.wm[11]";
connectAttr "paperMain1_R.bps" "bindPose1.wm[12]";
connectAttr "PaperC_GeoShape.o" "skinCluster6.orggeom[0]";
connectAttr "PaperC_GeoShape.w" "skinCluster6.ip[0].ig";
connectAttr "paperMain4_R.wm" "skinCluster6.ma[0]";
connectAttr "paperMain7_R.wm" "skinCluster6.ma[1]";
connectAttr "paperMain5_M.wm" "skinCluster6.ma[2]";
connectAttr "paperMain8_M.wm" "skinCluster6.ma[3]";
connectAttr "paperMain6_L.wm" "skinCluster6.ma[4]";
connectAttr "paperMain9_L.wm" "skinCluster6.ma[5]";
connectAttr "paperMain3_L.wm" "skinCluster6.ma[6]";
connectAttr "paperMain2_M.wm" "skinCluster6.ma[7]";
connectAttr "paperMain1_R.wm" "skinCluster6.ma[8]";
connectAttr "paperMain4_R.liw" "skinCluster6.lw[0]";
connectAttr "paperMain7_R.liw" "skinCluster6.lw[1]";
connectAttr "paperMain5_M.liw" "skinCluster6.lw[2]";
connectAttr "paperMain8_M.liw" "skinCluster6.lw[3]";
connectAttr "paperMain6_L.liw" "skinCluster6.lw[4]";
connectAttr "paperMain9_L.liw" "skinCluster6.lw[5]";
connectAttr "paperMain3_L.liw" "skinCluster6.lw[6]";
connectAttr "paperMain2_M.liw" "skinCluster6.lw[7]";
connectAttr "paperMain1_R.liw" "skinCluster6.lw[8]";
connectAttr "paperMain4_R.obcc" "skinCluster6.ifcl[0]";
connectAttr "paperMain7_R.obcc" "skinCluster6.ifcl[1]";
connectAttr "paperMain5_M.obcc" "skinCluster6.ifcl[2]";
connectAttr "paperMain8_M.obcc" "skinCluster6.ifcl[3]";
connectAttr "paperMain6_L.obcc" "skinCluster6.ifcl[4]";
connectAttr "paperMain9_L.obcc" "skinCluster6.ifcl[5]";
connectAttr "paperMain3_L.obcc" "skinCluster6.ifcl[6]";
connectAttr "paperMain2_M.obcc" "skinCluster6.ifcl[7]";
connectAttr "paperMain1_R.obcc" "skinCluster6.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "PaperB_GeoShape.o" "skinCluster5.orggeom[0]";
connectAttr "PaperB_GeoShape.w" "skinCluster5.ip[0].ig";
connectAttr "paperMain4_R.wm" "skinCluster5.ma[0]";
connectAttr "paperMain7_R.wm" "skinCluster5.ma[1]";
connectAttr "paperMain5_M.wm" "skinCluster5.ma[2]";
connectAttr "paperMain8_M.wm" "skinCluster5.ma[3]";
connectAttr "paperMain6_L.wm" "skinCluster5.ma[4]";
connectAttr "paperMain9_L.wm" "skinCluster5.ma[5]";
connectAttr "paperMain3_L.wm" "skinCluster5.ma[6]";
connectAttr "paperMain2_M.wm" "skinCluster5.ma[7]";
connectAttr "paperMain1_R.wm" "skinCluster5.ma[8]";
connectAttr "paperMain4_R.liw" "skinCluster5.lw[0]";
connectAttr "paperMain7_R.liw" "skinCluster5.lw[1]";
connectAttr "paperMain5_M.liw" "skinCluster5.lw[2]";
connectAttr "paperMain8_M.liw" "skinCluster5.lw[3]";
connectAttr "paperMain6_L.liw" "skinCluster5.lw[4]";
connectAttr "paperMain9_L.liw" "skinCluster5.lw[5]";
connectAttr "paperMain3_L.liw" "skinCluster5.lw[6]";
connectAttr "paperMain2_M.liw" "skinCluster5.lw[7]";
connectAttr "paperMain1_R.liw" "skinCluster5.lw[8]";
connectAttr "paperMain4_R.obcc" "skinCluster5.ifcl[0]";
connectAttr "paperMain7_R.obcc" "skinCluster5.ifcl[1]";
connectAttr "paperMain5_M.obcc" "skinCluster5.ifcl[2]";
connectAttr "paperMain8_M.obcc" "skinCluster5.ifcl[3]";
connectAttr "paperMain6_L.obcc" "skinCluster5.ifcl[4]";
connectAttr "paperMain9_L.obcc" "skinCluster5.ifcl[5]";
connectAttr "paperMain3_L.obcc" "skinCluster5.ifcl[6]";
connectAttr "paperMain2_M.obcc" "skinCluster5.ifcl[7]";
connectAttr "paperMain1_R.obcc" "skinCluster5.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "PaperA_GeoShape.o" "skinCluster4.orggeom[0]";
connectAttr "PaperA_GeoShape.w" "skinCluster4.ip[0].ig";
connectAttr "paperMain4_R.wm" "skinCluster4.ma[0]";
connectAttr "paperMain7_R.wm" "skinCluster4.ma[1]";
connectAttr "paperMain5_M.wm" "skinCluster4.ma[2]";
connectAttr "paperMain8_M.wm" "skinCluster4.ma[3]";
connectAttr "paperMain6_L.wm" "skinCluster4.ma[4]";
connectAttr "paperMain9_L.wm" "skinCluster4.ma[5]";
connectAttr "paperMain3_L.wm" "skinCluster4.ma[6]";
connectAttr "paperMain2_M.wm" "skinCluster4.ma[7]";
connectAttr "paperMain1_R.wm" "skinCluster4.ma[8]";
connectAttr "paperMain4_R.liw" "skinCluster4.lw[0]";
connectAttr "paperMain7_R.liw" "skinCluster4.lw[1]";
connectAttr "paperMain5_M.liw" "skinCluster4.lw[2]";
connectAttr "paperMain8_M.liw" "skinCluster4.lw[3]";
connectAttr "paperMain6_L.liw" "skinCluster4.lw[4]";
connectAttr "paperMain9_L.liw" "skinCluster4.lw[5]";
connectAttr "paperMain3_L.liw" "skinCluster4.lw[6]";
connectAttr "paperMain2_M.liw" "skinCluster4.lw[7]";
connectAttr "paperMain1_R.liw" "skinCluster4.lw[8]";
connectAttr "paperMain4_R.obcc" "skinCluster4.ifcl[0]";
connectAttr "paperMain7_R.obcc" "skinCluster4.ifcl[1]";
connectAttr "paperMain5_M.obcc" "skinCluster4.ifcl[2]";
connectAttr "paperMain8_M.obcc" "skinCluster4.ifcl[3]";
connectAttr "paperMain6_L.obcc" "skinCluster4.ifcl[4]";
connectAttr "paperMain9_L.obcc" "skinCluster4.ifcl[5]";
connectAttr "paperMain3_L.obcc" "skinCluster4.ifcl[6]";
connectAttr "paperMain2_M.obcc" "skinCluster4.ifcl[7]";
connectAttr "paperMain1_R.obcc" "skinCluster4.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "PaperCard_GeoShape.w" "skinCluster3.ip[0].ig";
connectAttr "PaperCard_GeoShape.o" "skinCluster3.orggeom[0]";
connectAttr "paperMain4_R.wm" "skinCluster3.ma[0]";
connectAttr "paperMain7_R.wm" "skinCluster3.ma[1]";
connectAttr "paperMain5_M.wm" "skinCluster3.ma[2]";
connectAttr "paperMain8_M.wm" "skinCluster3.ma[3]";
connectAttr "paperMain6_L.wm" "skinCluster3.ma[4]";
connectAttr "paperMain9_L.wm" "skinCluster3.ma[5]";
connectAttr "paperMain3_L.wm" "skinCluster3.ma[6]";
connectAttr "paperMain2_M.wm" "skinCluster3.ma[7]";
connectAttr "paperMain1_R.wm" "skinCluster3.ma[8]";
connectAttr "paperMain4_R.liw" "skinCluster3.lw[0]";
connectAttr "paperMain7_R.liw" "skinCluster3.lw[1]";
connectAttr "paperMain5_M.liw" "skinCluster3.lw[2]";
connectAttr "paperMain8_M.liw" "skinCluster3.lw[3]";
connectAttr "paperMain6_L.liw" "skinCluster3.lw[4]";
connectAttr "paperMain9_L.liw" "skinCluster3.lw[5]";
connectAttr "paperMain3_L.liw" "skinCluster3.lw[6]";
connectAttr "paperMain2_M.liw" "skinCluster3.lw[7]";
connectAttr "paperMain1_R.liw" "skinCluster3.lw[8]";
connectAttr "paperMain4_R.obcc" "skinCluster3.ifcl[0]";
connectAttr "paperMain7_R.obcc" "skinCluster3.ifcl[1]";
connectAttr "paperMain5_M.obcc" "skinCluster3.ifcl[2]";
connectAttr "paperMain8_M.obcc" "skinCluster3.ifcl[3]";
connectAttr "paperMain6_L.obcc" "skinCluster3.ifcl[4]";
connectAttr "paperMain9_L.obcc" "skinCluster3.ifcl[5]";
connectAttr "paperMain3_L.obcc" "skinCluster3.ifcl[6]";
connectAttr "paperMain2_M.obcc" "skinCluster3.ifcl[7]";
connectAttr "paperMain1_R.obcc" "skinCluster3.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "skinCluster3.og[0]" "polySoftEdge1.ip";
connectAttr "PaperCard_GeoShapeDeformed.wm" "polySoftEdge1.mp";
connectAttr "shapeEditorManager.obsv[0]" "shapeEditorManager1.bsdt[0].bdpv";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "PaperCard_GeoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperA_GeoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperB_GeoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperC_GeoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperC_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperB_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperA_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PaperCard_GeoShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
// End of Paper_Rig_Hi_v001.ma
