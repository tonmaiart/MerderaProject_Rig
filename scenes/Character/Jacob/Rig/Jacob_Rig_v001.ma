//Maya ASCII 2025ff03 scene
//Name: Jacob_Rig_v001.ma
//Last modified: Sun, Nov 23, 2025 09:56:44 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "FEC02484-4DD3-E298-2068-C3BF455D3804";
createNode transform -s -n "persp";
	rename -uid "75ADBA63-482B-AD54-08AF-E3AD97F91DE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.614434673817154 77.828570044093169 206.83680043104121 ;
	setAttr ".r" -type "double3" -16.538352729528661 -355.3999999999632 -1.9942704634687496e-16 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".rpt" -type "double3" 1.8957754820551695e-15 -3.9443045261050599e-31 3.1426629306533203e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EF561EF0-4C3A-B9C3-1EA4-20A30AB3FDF7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 215.84289801133016;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 9.9920072216264089e-16 8.8182525634765625 -1.6153745008296028e-14 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CC4D28DF-4DC5-81B1-D744-F5A87B155243";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.20713166647031755 1000.1 1.3019704749562726 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5ECB89CC-4AF2-A84F-5DED-44A65C032CCA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 38.970343534486616;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "23CC0248-403D-442F-BC8D-A48EEDF78527";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 8.8182525634765625 1000.2700790192677 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "74699871-4D67-349B-B31E-40AE5C7E4CEF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.2700790192677;
	setAttr ".ow" 35.976127796373021;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 8.8182525634765625 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7E3201AE-41BB-21E7-AE2B-CE899B8F60AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 12.131997607547087 1.834594760165658 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2CECFE9E-462C-4860-B6E7-C594BA0A7B5E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 38.970343534486616;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "D1CA1AA4-47AF-0E23-4001-A886DC750952";
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
	rename -uid "B7A95BD7-470E-36DB-8CD6-8D988DD67C19";
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
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "0DC565DB-4D46-2D80-DA05-3684B7F7C1AB";
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
	rename -uid "1D566090-4828-796D-E42A-E4A464551EE5";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "control" -ln "control" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 1.2722218725854067e-14 -4.9435750538161791e-30 4.4527765540489241e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 90 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Body" -p "Root";
	rename -uid "AE7B82C6-4F81-D7A7-CF8E-44A78081AAC4";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "control" -ln "control" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8182525634765625 6.853158923052041e-15 0 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -90 0 ;
	setAttr ".radi" 0.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "DE685973-4D61-CD83-2E2B-AD8638F302E0";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "1EA80C60-4A5A-0FF2-F936-498AB346504A";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "1D36AF90-4F9C-7A27-B0F9-15BB28F5A2FA";
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
	setAttr -l on ".height" 8.8182525634765625;
	setAttr -l on ".version" 6.6;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "1DFBAD7A-47D4-478C-F978-CBA5BDDA8D7E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.29826636 1.181678006e-15 -19.29826636
		1.671145063e-15 1.671145063e-15 -27.29187001
		-19.29826636 1.181678006e-15 -19.29826636
		-27.29187001 8.6632455169999996e-32 -1.41481536e-15
		-19.29826636 -1.181678006e-15 19.29826636
		-2.7338452850000001e-15 -1.671145063e-15 27.29187001
		19.29826636 -1.181678006e-15 19.29826636
		27.29187001 -2.2789346210000001e-31 3.7217826770000004e-15
		19.29826636 1.181678006e-15 -19.29826636
		1.671145063e-15 1.671145063e-15 -27.29187001
		-19.29826636 1.181678006e-15 -19.29826636
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "3C440694-49AF-D61A-DFD2-58A81E207194";
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "4D7929A8-4B51-908F-4D0C-4286BFD7BA1E";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "E765030A-4069-2501-D9DC-828088FA037D";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "20E7916A-417A-9C19-FF3F-F0B30C6C7414";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "280EAD9B-432A-EF70-EF39-23B84C6E2D54";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -15.854757559709196 -15.854757559709196
		0 2.3848144980643623e-15 -22.422013527638715
		0 15.854757559709196 -15.854757559709196
		-8.985225100794474e-15 22.422013527638715 -6.9886724122648887e-15
		0 15.854757559709196 15.854757559709196
		0 7.3769345785822092e-15 22.422013527638715
		0 -15.854757559709196 15.854757559709196
		8.985225100794474e-15 -22.422013527638715 1.2042862247786053e-14
		0 -15.854757559709196 -15.854757559709196
		0 2.3848144980643623e-15 -22.422013527638715
		0 15.854757559709196 -15.854757559709196
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "E6982A98-425B-BD35-1B7E-EDAFAC231B23";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetBody_M" -p "FKXRoot_M";
	rename -uid "D197305A-4217-FE74-9F68-14A5551E5F26";
	setAttr ".t" -type "double3" 8.8182525634765625 -9.3007156812849165e-15 9.7902270329314934e-16 ;
	setAttr ".r" -type "double3" -90 -90 0 ;
createNode transform -n "FKExtraBody_M" -p "FKOffsetBody_M";
	rename -uid "51CE1722-4E9A-12A7-1F35-CD8A24F5F042";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKBody_M" -p "FKExtraBody_M";
	rename -uid "22FD8738-4061-64A1-E77E-CAA2FCCB5EF0";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "FKXBody_M" -p "FKBody_M";
	rename -uid "C48B215D-47E3-0893-F425-30B8E4168A99";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode nurbsCurve -n "FKBody_MShape" -p "FKBody_M";
	rename -uid "A316BA96-4B1D-4678-4B98-F58542434A29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		12.179154274740327 8.2922635941779372 12.179154274740327
		12.179154274740327 8.2922635941779372 -12.179154274740327
		-12.179154274740327 8.2922635941779372 -12.179154274740327
		-12.179154274740327 -8.2922635941779372 -12.179154274740327
		12.179154274740327 -8.2922635941779372 -12.179154274740327
		12.179154274740327 8.2922635941779372 -12.179154274740327
		-12.179154274740327 8.2922635941779372 -12.179154274740327
		-12.179154274740327 8.2922635941779372 12.179154274740327
		12.179154274740327 8.2922635941779372 12.179154274740327
		12.179154274740327 -8.2922635941779372 12.179154274740327
		12.179154274740327 -8.2922635941779372 -12.179154274740327
		-12.179154274740327 -8.2922635941779372 -12.179154274740327
		-12.179154274740327 -8.2922635941779372 12.179154274740327
		12.179154274740327 -8.2922635941779372 12.179154274740327
		-12.179154274740327 -8.2922635941779372 12.179154274740327
		-12.179154274740327 8.2922635941779372 12.179154274740327
		;
createNode transform -n "FKHSRoot_M" -p "FKRoot_M";
	rename -uid "A554B28E-494B-B0BC-CC71-22AE7826B205";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "1F5992FA-448B-03CC-CDB9-C3A9494F8E15";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "26CF95E2-4E94-821B-B906-0FA6DB5303E6";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "19E296D5-45D9-AC5D-0199-0585DCD6E905";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "78443C31-4013-8069-AB5E-DA822C3CDA87";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "8B04B727-4642-133A-3E3F-CB83DC636719";
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
	rename -uid "C879D625-46C3-2737-7FB9-349D773E1875";
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
	rename -uid "BF6F1D73-45E6-6AFD-B963-65ACF8E09620";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "9F0C5D61-4C5B-77B8-9793-048E4B41EE60";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "98BDFFEB-4955-0CF7-6F0F-038C27F90EF5";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "0C63589F-4F35-80A7-9B8A-BEB149F5C44E";
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
	rename -uid "0136A146-4269-FD8E-76E4-14A3E1BD3AB8";
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
	rename -uid "C4E01019-425B-7DCB-C6D5-1D923BE188B3";
	setAttr -l on ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "77783427-40E9-BE6B-50FE-CC8714E73572";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "D199A0FA-4192-4DF7-017E-BB9C051684E4";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "D046BF24-480A-7ECF-3F9A-7BBC159D0731";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "C3C5DBB4-4808-03FA-31E5-F69A57A427DA";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "B509EB2D-4520-88AC-59B1-FB98CF9CAAD6";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "C72D5A40-489B-CE66-C736-B19E71F99EEF";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "00005D41-4D60-EC6C-AFAA-A5A5930D4B12";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "B7310700-4186-772D-67F3-92ABA4C23125";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "9C072598-46FB-EA1D-E66D-FDAC976AAE60";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "C0477761-4D9B-C619-1A06-2980CCB80730";
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
	rename -uid "FC7C46B6-4E03-3803-5E49-01A314093BCF";
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
	rename -uid "D8C3A117-443C-CDE4-D6C1-7994F026BFBE";
	setAttr ".t" -type "double3" 0 0 -1.3877787807814457e-17 ;
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "EF276056-4D45-99F3-2CB4-65B10220B4B9";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "8F9CD763-4373-538B-7710-AD8B99F9166E";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "7CCAE1FE-4057-F31C-96A8-C1B687F91C9A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.532650444199898 8.8490486100741103e-16 -17.532650444199902
		-2.6356771725657803e-15 9.8244175129315162e-32 -24.794912444430242
		-17.532650444199898 -8.8490486100741103e-16 -17.532650444199902
		-24.794912444430242 -9.7339534710815296e-15 -7.728225365883154e-15
		-17.532650444199898 -8.8490486100741103e-16 17.532650444199902
		-8.1561082511255044e-15 7.8595340103452129e-31 24.794912444430242
		17.532650444199898 8.8490486100741103e-16 17.532650444199902
		24.794912444430242 9.7339534710815296e-15 1.3317397275068809e-14
		17.532650444199898 8.8490486100741103e-16 -17.532650444199902
		-2.6356771725657803e-15 9.8244175129315162e-32 -24.794912444430242
		-17.532650444199898 -8.8490486100741103e-16 -17.532650444199902
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "93143F40-49FC-5A92-4907-5AB13D195A0D";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "E4DEABB7-415D-A6CC-063E-42820767EBBF";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "DAC696B0-48CF-5947-C6D4-FEBB9B172BCF";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "1BF5D4AA-498C-51E7-8906-218E789692E4";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "5618A03E-4FEA-0466-1DA9-A49339F8FAC9";
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
	rename -uid "0DF67066-4B03-7370-12C8-388ED1F838C1";
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
	rename -uid "3D3CAD71-4179-A643-A81D-0F90B5354648";
	setAttr -l on ".v" no;
createNode pointConstraint -n "Body_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "35A8CFFA-451B-72C9-297B-809F0864B7E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXBody_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 9.7902270329314954e-16 8.8182525634765625 -9.314593469092731e-15 ;
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
	setAttr ".rst" -type "double3" 8.8182525634765625 6.853158923052041e-15 1.2186298213223034e-31 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Body_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "6A30B545-4059-7769-3D0D-7FBCDFDD00B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXBody_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 9.7902270329314954e-16 8.8182525634765625 -9.314593469092731e-15 ;
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
	setAttr ".lr" -type "double3" 2.5044782722237186e-06 -1.1198709766671487e-13 2.5044781704459685e-06 ;
	setAttr ".rsrr" -type "double3" 2.5044782722237186e-06 -1.1198709766671487e-13 2.5044781704459685e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "C2CF1C25-462E-6ADC-C923-F6894C90CA54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "18D5A22A-4549-AB35-8156-B0B00C9F914B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.5044781640848633e-06 -2.504478164084859e-06 1.1198709516423853e-13 ;
	setAttr ".rsrr" -type "double3" -2.5044781640848633e-06 -2.5044781640848586e-06 
		1.1198709516423853e-13 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "8C50D57E-4741-444A-3912-7EB46EC30C93";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "26F88B09-430C-9C2C-1742-CD857C69AEF9";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "7C7103FC-4097-8FD8-5E7A-BDBBCB8E0901";
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
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKBody_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraBody_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;";
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "49902EB0-43DA-8085-B3BC-9B8B7590D199";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "5A97F3EA-4EB4-322B-9C23-9D81FCBDE8E9";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000002504478161 0 90.000002504478161 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-16 1 -1.8318679906315083e-15 0
		 5.5511151231257827e-17 1.8873791418627661e-15 1 0 1 -5.5511151231257827e-17 0 0 0 0 -1.3877787807814457e-17 1;
createNode joint -n "Body_M" -p "Root_M";
	rename -uid "95D7E9C1-40C5-6DDA-9CD9-9E8A26E7D568";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -k true -sn "control" -ln "control" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000002504478161 -90.000002504478161 0 ;
	setAttr ".bps" -type "matrix" 1 -5.55111512312615e-17 -1.9428902930940239e-15 0 1.1102230246251575e-16 1 5.5511151231257827e-17 0
		 1.9428902930940236e-15 -5.5511151231257926e-17 1 0 9.7902270329314954e-16 8.8182525634765625 -9.314593469092731e-15 1;
createNode transform -n "Geometry" -p "Group";
	rename -uid "B7EE42AF-406D-C3DE-C9E6-388B40B6B2E0";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "1C2614E8-486B-50D6-C4EE-87924DC6DDD7";
createNode transform -n "Jacob_Hat_Geo" -p "geo";
	rename -uid "59007989-496A-B20E-8974-F0BDE0509437";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 18.223821096569523 0 ;
	setAttr ".sp" -type "double3" 0 18.223821096569523 0 ;
createNode mesh -n "Jacob_Hat_GeoShape" -p "Jacob_Hat_Geo";
	rename -uid "CC0B6406-4308-E284-046A-B4B59E217407";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "Jacob_Hat_GeoShapeOrig" -p "Jacob_Hat_Geo";
	rename -uid "A71AA097-4106-D4AA-9810-6CBF6B059007";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[43:106]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[0:19]" "e[120]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:59]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:59]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:59]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:19]" "f[41]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 3 "f[20:40]" "f[42]" "f[107:190]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 2 "e[20:39]" "e[121]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 254 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.51874983 0.3125 0.3908748 0.2653752
		 0.3908748 0.7346248 0.51874983 0.6875 0.53715438 0.16832228 0.53906649 0.15624994
		 0.46284571 0.16832225 0.53715461 0.14417769 0.53160548 0.17921276 0.52296275 0.18785551
		 0.51207221 0.19340451 0.5 0.19531658 0.48792779 0.19340451 0.47703716 0.18785559
		 0.47271574 0.18353409 0.4683947 0.17921267 0.46093339 0.15624996 0.46284571 0.14417775
		 0.46839455 0.13328722 0.47703725 0.12464449 0.48792773 0.11909541 0.50000012 0.11718341
		 0.51207203 0.11909539 0.52296269 0.12464441 0.5316056 0.13328721 0.61145198 0.19246292
		 0.59175527 0.15625019 0.59480667 0.22513109 0.58726448 0.18460393 0.56888109 0.2510567
		 0.57423156 0.2101824 0.53621292 0.26770195 0.55393249 0.23048168 0.5 0.2734375 0.52835393
		 0.24351445 0.46378708 0.26770195 0.49999979 0.24800527 0.43111891 0.2510567 0.47164586
		 0.2435144 0.43591797 0.22033198 0.4051933 0.22513109 0.38854805 0.19246292 0.42576844
		 0.2101824 0.3828125 0.15625 0.4127354 0.18460399 0.38854805 0.12003707 0.40824473
		 0.15624981 0.4051933 0.087368891 0.41273555 0.12789607 0.43111891 0.061443288 0.42576832
		 0.10231752 0.46378705 0.044798013 0.4460676 0.082018405 0.5 0.039062444 0.47164604
		 0.068985522 0.53621292 0.044798002 0.5 0.064494699 0.56888115 0.061443266 0.52835393
		 0.068985507 0.59480679 0.087368876 0.55393243 0.08201839 0.61145198 0.12003705 0.57423162
		 0.10231757 0.6171875 0.15625 0.58726466 0.127896 0.41815609 0.2380939 0.44606763
		 0.23048159 0.5743013 0.86789197 0.578125 0.84375 0.56320447 0.88967073 0.5743013
		 0.86789197 0.54592073 0.90695447 0.56320447 0.88967073 0.52414191 0.9180513 0.54592073
		 0.90695447 0.5 0.921875 0.52414191 0.9180513 0.47585803 0.9180513 0.5 0.921875 0.45407927
		 0.90695447 0.47585803 0.9180513 0.43679553 0.88967073 0.45407927 0.90695447 0.4256987
		 0.86789197 0.43679553 0.88967073 0.421875 0.84375 0.4256987 0.86789197 0.4256987
		 0.81960803 0.421875 0.84375 0.43679553 0.79782927 0.4256987 0.81960803 0.4454374
		 0.78918743 0.43679553 0.79782927 0.47585803 0.76944864 0.45407927 0.78054547 0.5
		 0.765625 0.47585803 0.76944864 0.52414197 0.76944864 0.5 0.765625 0.54592073 0.78054547
		 0.52414197 0.76944864 0.56320453 0.79782927 0.54592073 0.78054547 0.57430136 0.81960803
		 0.56320453 0.79782927 0.578125 0.84375 0.57430136 0.81960803 0.5743013 0.86789197
		 0.578125 0.84375 0.56320447 0.88967079 0.5743013 0.86789197 0.54592073 0.90695447
		 0.56320447 0.88967073 0.52414191 0.9180513 0.54592073 0.90695447 0.5 0.921875 0.52414191
		 0.9180513 0.47585803 0.9180513 0.5 0.921875 0.45407924 0.90695447 0.47585803 0.9180513
		 0.43679553 0.88967073 0.45407927 0.90695447 0.4256987 0.86789197 0.43679553 0.88967073
		 0.421875 0.84375 0.4256987 0.86789197 0.42569873 0.81960803 0.421875 0.84375 0.43679553
		 0.79782927 0.4256987 0.81960803 0.4454374 0.78918743 0.43679553 0.79782927 0.47585803
		 0.76944864 0.45407927 0.78054553 0.5 0.765625 0.47585803 0.76944864 0.52414197 0.76944864
		 0.5 0.765625 0.54592073 0.78054547 0.52414197 0.76944864 0.56320453 0.79782927 0.54592073
		 0.78054547 0.57430136 0.81960803 0.56320453 0.79782927 0.578125 0.84375 0.57430136
		 0.81960803 0.4454374 0.78918743 0.45407927 0.78054553 0.4454374 0.78918743 0.45407927
		 0.78054559 0.578125 0.84375 0.5743013 0.86789197 0.56320447 0.88967073 0.54592073
		 0.90695447 0.52414191 0.9180513 0.5 0.921875 0.47585803 0.9180513 0.45407927 0.90695447
		 0.43679553 0.88967073 0.4256987 0.86789197 0.421875 0.84375 0.4256987 0.81960803
		 0.43679553 0.79782927 0.4454374 0.78918743 0.45407927 0.78054553 0.47585803 0.76944864
		 0.5 0.765625;
	setAttr ".uvst[0].uvsp[250:253]" 0.52414197 0.76944864 0.54592073 0.78054547
		 0.56320453 0.79782927 0.57430136 0.81960803;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 210 ".pt";
	setAttr ".pt[0:165]" -type "float3"  13.285393 18.223822 -4.3166852 11.30123 
		18.223822 -8.2108212 8.210824 18.223822 -11.301227 4.3166852 18.223822 -13.285391 
		1.9994008e-07 18.223822 -13.969086 -4.3166852 18.223822 -13.285388 -8.2108212 18.223822 
		-11.301227 -11.301227 18.223822 -8.2108202 -13.285388 18.223822 -4.3166828 -13.969081 
		18.223822 2.9991011e-07 -13.285388 18.223822 4.3166828 -11.301227 18.223822 8.2108212 
		-8.2108212 18.223822 11.301222 -4.3166828 18.223822 13.285386 -2.1637089e-07 18.223822 
		13.969081 4.3166828 18.223822 13.285383 8.2108173 18.223822 11.301222 11.301222 18.223822 
		8.2108202 13.285383 18.223822 4.3166828 13.96908 18.223822 2.9991011e-07 13.830068 
		18.223822 -4.49366 11.764558 18.223822 -8.5474482 8.5474482 18.223822 -11.764555 
		4.49366 18.223822 -13.830064 2.6821155e-07 18.223822 -14.541789 -4.49366 18.223822 
		-13.830059 -8.5474482 18.223822 -11.76455 -11.76455 18.223822 -8.5474472 -13.830059 
		18.223822 -4.4936576 -14.541785 18.223822 4.023174e-07 -13.830059 18.223822 4.4936576 
		-11.76455 18.223822 8.5474482 -8.5474472 18.223822 11.76455 -4.4936576 18.223822 
		13.830059 -1.6516724e-07 18.223822 14.541785 4.4936576 18.223822 13.830054 8.5474434 
		18.223822 11.764549 11.764545 18.223822 8.5474472 13.830054 18.223822 4.4936576 14.54178 
		18.223822 4.023174e-07 13.269593 18.223822 -4.3115511 11.28779 18.223822 -8.2010593 
		8.2010603 18.223822 -11.28779 4.3115516 18.223822 -13.269589 6.1091026e-07 18.223822 
		-13.952475 -4.3115492 18.223822 -13.269589 -8.2010565 18.223822 -11.287786 -11.287786 
		18.223822 -8.2010565 -13.269589 18.223822 -4.3115492 -13.952472 18.223822 7.1374586e-07 
		-13.269589 18.223822 4.3115511 -11.287786 18.223822 8.2010565 -8.2010555 18.223822 
		11.287786 -4.3115492 18.223822 13.269588 1.9509456e-07 18.223822 13.952472 4.3115492 
		18.223822 13.269585 8.2010565 18.223822 11.287786 11.287786 18.223822 8.2010565 13.269585 
		18.223822 4.3115492 13.952468 18.223822 7.1374586e-07 5.3593612 18.223822 -3.8943386e-07 
		5.0970592 18.223822 -1.6561357 4.3358178 18.223822 -3.1501544 3.1501541 18.223822 
		-4.3358178 1.6561354 18.223822 -5.0970602 6.7368961e-07 18.223822 -5.3593636 -1.6561328 
		18.223822 -5.0970602 -3.1501529 18.223822 -4.3358173 -4.335815 18.223822 -3.1501544 
		-5.0970588 18.223822 -1.6561345 -5.3593612 18.223822 -3.8943386e-07 -5.0970588 18.223822 
		1.6561344 -4.335813 18.223822 3.1501529 -3.1501529 18.223822 4.3358154 -1.6561323 
		18.223822 5.0970569 1.9715603e-07 18.223822 5.3593612 1.6561345 18.223822 5.0970569 
		3.1501522 18.223822 4.3358154 4.335815 18.223822 3.1501522 5.0970569 18.223822 1.6561344 
		-9.7560215 18.223822 9.7560215 -10.155996 18.223822 10.155996 -9.7444201 18.223822 
		9.744421 -3.7429836 18.223822 3.7429843 11.956852 18.223822 -3.8850162 12.57217 18.223822 
		2.9991011e-07 11.956843 18.223822 3.8850138 10.1711 18.223822 7.3897381 7.3897376 
		18.223822 10.1711 3.8850138 18.223822 11.956843 -1.7473978e-07 18.223822 12.572175 
		-3.8850138 18.223822 11.956847 -7.3897381 18.223822 10.171103 -8.7804203 18.223822 
		8.7804203 -10.171103 18.223822 7.3897381 -11.956848 18.223822 3.8850157 -12.572175 
		18.223822 2.9991011e-07 -11.956848 18.223822 -3.8850138 -10.171103 18.223822 -7.3897381 
		-7.3897395 18.223822 -10.171103 -3.8850162 18.223822 -11.956848 1.9994008e-07 18.223822 
		-12.572178 3.8850162 18.223822 -11.956848 7.3897419 18.223822 -10.171103 10.171108 
		18.223822 -7.3897405 2.6132531 18.223822 0.84909952 7.5746002 18.223822 2.4611375 
		7.9644065 18.223822 7.9429284e-08 2.7477379 18.223822 -2.9644566e-06 2.2229671 18.223822 
		1.6150814 6.4433422 18.223822 4.6813626 1.6150804 18.223822 2.2229674 4.6813622 18.223822 
		6.4433432 0.8490966 18.223822 2.613255 2.4611373 18.223822 7.5746002 -8.2817468e-07 
		18.223822 2.74774 -5.8850509e-07 18.223822 7.9644113 -0.84909797 18.223822 2.613255 
		-2.4611382 18.223822 7.5746031 -1.615082 18.223822 2.2229674 -4.6813626 18.223822 
		6.4433422 -1.9190254 18.223822 1.9190243 -5.5623531 18.223822 5.5623531 -2.6132572 
		18.223822 0.84909821 -7.5746045 18.223822 2.4611382 -6.4433432 18.223822 4.6813626 
		-2.2229705 18.223822 1.6150789 -2.7477403 18.223822 -4.2831612e-08 -7.9644079 18.223822 
		7.9429292e-08 -2.6132572 18.223822 -0.84909868 -7.5746045 18.223822 -2.4611375 -2.2229686 
		18.223822 -1.6150814 -6.4433432 18.223822 -4.6813626 -1.6150814 18.223822 -2.2229698 
		-4.6813626 18.223822 -6.4433432 -0.84909934 18.223822 -2.6132572 -2.4611385 18.223822 
		-7.5746045 -6.915709e-07 18.223822 -2.7477412 -3.5114741e-07 18.223822 -7.9644113 
		0.84909904 18.223822 -2.6132572 2.4611375 18.223822 -7.5746045 1.6150826 18.223822 
		-2.2229698 4.6813626 18.223822 -6.4433446 2.2229698 18.223822 -1.615083 6.4433451 
		18.223822 -4.6813641 2.613255 18.223822 -0.8491025 7.5746045 18.223822 -2.4611385 
		13.703648 18.223822 7.4505596e-07 11.767573 18.223822 3.8518633e-06 9.0356531 18.223822 
		7.570341e-06 13.032951 18.223822 -4.2346621 11.191634 18.223822 -3.6363814 8.5934181 
		18.223822 -2.7921696 11.086491 18.223822 -8.0548058 9.5201721 18.223822 -6.91681 
		7.3099995 18.223822 -5.3110237 8.0548067 18.223822 -11.08649 6.9168105 18.223822 
		-9.5201721 5.3110242 18.223822 -7.3099985 4.2346621 18.223822 -13.032946 3.6363819 
		18.223822 -11.19163 2.7921696 18.223822 -8.5934162 6.7253171e-07 18.223822 -13.703654 
		-2.6062971e-06 18.223822 -11.767581 -6.5595127e-06 18.223822 -9.0356598 -4.2346601 
		18.223822 -13.032946;
	setAttr ".pt[166:209]" -3.6363974 18.223822 -11.191644 -2.7922029 18.223822 
		-8.593441 -8.0548048 18.223822 -11.086485 -6.9168987 18.223822 -9.5202389 -5.3111777 
		18.223822 -7.3101144 -11.086485 18.223822 -8.0548048 -9.5205793 18.223822 -6.9171152 
		-7.3106565 18.223822 -5.3115077 -13.032946 18.223822 -4.2346601 -11.193869 18.223822 
		-3.6381559 -8.5964479 18.223822 -2.7944558 -13.703651 18.223822 7.4505596e-07 -11.776637 
		18.223822 -0.0064736572 -9.0471573 18.223822 -0.0080399327 -13.032946 18.223822 4.2346621 
		-11.246257 18.223822 3.5918176 -8.6500216 18.223822 2.7483912 -11.086485 18.223822 
		8.0548048 -9.7027502 18.223822 6.7981224 -7.473382 18.223822 5.2131405 -9.5706444 
		18.223822 9.5706453 -8.3165703 18.223822 8.3165741 -6.3976531 18.223822 6.3976564 
		-8.0548019 18.223822 11.086485 -6.79812 18.223822 9.7027512 -5.2131386 18.223822 
		7.4733844 -4.2346601 18.223822 13.032946 -3.5918157 18.223822 11.246257 -2.7483892 
		18.223822 8.6500216 2.2630375e-07 18.223822 13.703651 0.0064745788 18.223822 11.776637 
		0.0080405101 18.223822 9.0471573 4.2346601 18.223822 13.032941 3.6381564 18.223822 
		11.193868 2.7944558 18.223822 8.596447 8.0548019 18.223822 11.086485 6.9171147 18.223822 
		9.5205812 5.3115067 18.223822 7.3106585 11.086485 18.223822 8.0548048 9.5202398 18.223822 
		6.9168992 7.3101134 18.223822 5.3111787 13.032941 18.223822 4.2346606 11.191639 18.223822 
		3.6363981 8.5934372 18.223822 2.7922037;
	setAttr -s 210 ".vt";
	setAttr ".vt[0:165]"  1.080828309 -2.47930241 -0.35118237 0.91940755 -2.47930241 -0.66798842
		 0.66798866 -2.47930241 -0.91940719 0.35118237 -2.47930241 -1.08082819 1.6266053e-08 -2.47930241 -1.13644993
		 -0.35118237 -2.47930241 -1.080827951 -0.66798842 -2.47930241 -0.91940719 -0.91940719 -2.47930241 -0.66798836
		 -1.080827951 -2.47930241 -0.35118219 -1.13644958 -2.47930241 2.4399078e-08 -1.080827951 -2.47930241 0.35118219
		 -0.91940719 -2.47930241 0.66798842 -0.66798842 -2.47930241 0.91940683 -0.35118219 -2.47930241 1.080827832
		 -1.7602776e-08 -2.47930241 1.13644958 0.35118219 -2.47930241 1.080827594 0.66798806 -2.47930241 0.91940683
		 0.91940683 -2.47930241 0.66798836 1.080827594 -2.47930241 0.35118219 1.13644946 -2.47930241 2.4399078e-08
		 1.12514019 -1.68867302 -0.36558008 0.9571014 -1.68867302 -0.69537455 0.69537455 -1.68867302 -0.95710111
		 0.36558008 -1.68867302 -1.12513983 2.1820254e-08 -1.68867493 -1.18304205 -0.36558008 -1.68867493 -1.12513947
		 -0.69537455 -1.68867493 -0.95710075 -0.95710075 -1.68867493 -0.69537449 -1.12513947 -1.68867493 -0.3655799
		 -1.18304169 -1.68867493 3.2730387e-08 -1.12513947 -1.68867493 0.3655799 -0.95710075 -1.68867493 0.69537455
		 -0.69537449 -1.68867493 0.95710075 -0.3655799 -1.68867493 1.12513947 -1.3437122e-08 -1.68867493 1.18304169
		 0.3655799 -1.68867302 1.12513912 0.69537419 -1.68867302 0.95710069 0.95710039 -1.68867302 0.69537449
		 1.12513912 -1.68867302 0.3655799 1.18304133 -1.68867302 3.2730387e-08 1.079542994 0.14896774 -0.35076469
		 0.9183141 0.14896774 -0.66719425 0.66719431 0.14896774 -0.9183141 0.35076472 0.14896774 -1.079542637
		 4.9700382e-08 0.14896965 -1.13509858 -0.35076454 0.14896965 -1.079542637 -0.66719401 0.14896965 -0.91831374
		 -0.91831374 0.14896965 -0.66719401 -1.079542637 0.14896965 -0.35076454 -1.13509834 0.14896965 5.806654e-08
		 -1.079542637 0.14896965 0.35076469 -0.91831374 0.14896965 0.66719401 -0.66719389 0.14896965 0.91831374
		 -0.35076454 0.14896965 1.079542518 1.5871848e-08 0.14896965 1.13509834 0.35076454 0.14896774 1.079542279
		 0.66719401 0.14896774 0.91831374 0.91831374 0.14896774 0.66719401 1.079542279 0.14896774 0.35076454
		 1.13509798 0.14896774 5.806654e-08 0.4360089 5.63624001 -3.1682251e-08 0.41466942 5.63624001 -0.13473432
		 0.35273889 5.63624001 -0.25627968 0.25627965 5.63624001 -0.35273892 0.1347343 5.63624001 -0.41466948
		 5.4807778e-08 5.63624001 -0.43600908 -0.13473409 5.63624001 -0.41466948 -0.25627956 5.63624001 -0.35273886
		 -0.35273865 5.63624001 -0.25627968 -0.41466939 5.63624001 -0.13473423 -0.4360089 5.63624001 -3.1682251e-08
		 -0.41466939 5.63624001 0.13473421 -0.35273853 5.63624001 0.25627956 -0.25627956 5.63624001 0.35273871
		 -0.13473405 5.63624001 0.41466925 1.6039557e-08 5.63624001 0.4360089 0.13473423 5.63624001 0.41466925
		 0.2562795 5.63624001 0.35273871 0.35273868 5.63624001 0.2562795 0.41466925 5.63624001 0.13473421
		 -0.7936976 -2.47930241 0.7936976 -0.82623744 -1.68867493 0.82623744 -0.79275382 0.14896965 0.79275388
		 -0.30450907 5.63624001 0.30450913 0.97274542 -2.47930241 -0.31606409 1.022804379 -2.47930241 2.4399078e-08
		 0.9727447 -2.47930241 0.31606391 0.82746613 -2.47930241 0.60118949 0.60118943 -2.47930241 0.82746613
		 0.31606391 -2.47930241 0.9727447 -1.4215892e-08 -2.47930241 1.022804737 -0.31606391 -2.47930241 0.972745
		 -0.60118949 -2.47930241 0.82746637 -0.71432793 -2.47930241 0.71432793 -0.82746637 -2.47930241 0.60118949
		 -0.97274506 -2.47930241 0.31606406 -1.022804737 -2.47930241 2.4399078e-08 -0.97274506 -2.47930241 -0.31606391
		 -0.82746643 -2.47930241 -0.60118949 -0.60118961 -2.47930241 -0.82746649 -0.31606409 -2.47930241 -0.97274506
		 1.6266053e-08 -2.47930241 -1.022804976 0.31606409 -2.47930241 -0.97274506 0.60118979 -2.47930241 -0.82746649
		 0.82746685 -2.47930241 -0.60118967 0.21260026 1.20454979 0.069078185 0.61622888 -0.080873489 0.20022495
		 0.64794141 -0.080873489 6.4619408e-09 0.22354123 1.20454979 -2.411723e-07 0.18084869 1.20454979 0.13139437
		 0.52419579 -0.080873489 0.38085058 0.13139428 1.20454979 0.1808487 0.38085052 -0.080873489 0.52419585
		 0.069077946 1.20454979 0.21260042 0.20022494 -0.080873489 0.61622888 -6.7375851e-08 1.20454979 0.22354141
		 -4.787762e-08 -0.080873489 0.64794183 -0.069078058 1.20454979 0.21260042 -0.20022503 -0.080873489 0.61622912
		 -0.13139442 1.20454979 0.1808487 -0.38085055 -0.080873489 0.52419579 -0.15612163 1.20454979 0.15612154
		 -0.45252323 -0.080873489 0.45252323 -0.2126006 1.20454979 0.06907808 -0.61622924 -0.080873489 0.20022503
		 -0.52419585 -0.080873489 0.38085055 -0.18084896 1.20454979 0.13139416 -0.22354142 1.20454979 -3.4845504e-09
		 -0.64794153 -0.080873489 6.4619412e-09 -0.2126006 1.20454979 -0.069078118 -0.61622924 -0.080873489 -0.20022495
		 -0.18084881 1.20454979 -0.13139437 -0.52419585 -0.080873489 -0.38085058 -0.13139437 1.20454979 -0.1808489
		 -0.38085058 -0.080873489 -0.52419585 -0.06907817 1.20454979 -0.2126006 -0.20022504 -0.080873489 -0.61622924
		 -5.62625e-08 1.20454979 -0.2235415 -2.8567472e-08 -0.080873489 -0.64794183 0.069078147 1.20454979 -0.2126006
		 0.20022495 -0.080873489 -0.61622924 0.13139446 1.20454979 -0.1808489 0.38085058 -0.080873489 -0.52419597
		 0.1808489 1.20454979 -0.13139449 0.52419603 -0.080873489 -0.3808507 0.21260042 1.20454979 -0.069078431
		 0.61622924 -0.080873489 -0.20022504 1.11485529 1.11829185 6.0613758e-08 0.95734668 3.34535742 3.1336697e-07
		 0.73509228 4.71030664 6.1588236e-07 1.060291052 1.11828995 -0.34450939 0.91049135 3.34535718 -0.29583651
		 0.69911444 4.71030664 -0.22715595 0.90193743 1.11829185 -0.65529585 0.7745102 3.34535742 -0.56271458
		 0.59470236 4.71030664 -0.43207642 0.65529591 1.11828995 -0.90193737 0.56271464 3.34535718 -0.77451015
		 0.43207645 4.71030664 -0.5947023 0.34450942 1.11828995 -1.060290575 0.29583654 3.34535718 -0.91049105
		 0.22715595 4.71030664 -0.69911426 5.4713574e-08 1.11828995 -1.11485589 -2.1203437e-07 3.34535599 -0.95734733
		 -5.3364681e-07 4.71030617 -0.73509282 -0.34450924 1.11828995 -1.060290575;
	setAttr ".vt[166:209]" -0.29583779 3.34535623 -0.91049212 -0.22715867 4.71030617 -0.69911629
		 -0.65529573 1.11828995 -0.90193701 -0.56272179 3.34535623 -0.77451563 -0.43208894 4.71030617 -0.59471172
		 -0.90193701 1.11828995 -0.65529573 -0.77454334 3.34535599 -0.56273943 -0.59475583 4.71030617 -0.43211579
		 -1.060290575 1.11829185 -0.34450924 -0.91067314 3.34535718 -0.29598087 -0.69936097 4.71030664 -0.22734195
		 -1.11485565 1.11829185 6.0613758e-08 -0.95808405 3.34535742 -0.00052666204 -0.73602819 4.71030664 -0.00065408583
		 -1.060290575 1.11829185 0.34450939 -0.91493517 3.34535527 0.29221103 -0.70371938 4.71030569 0.22359437
		 -0.90193701 1.11828995 0.65529573 -0.78936374 3.3453598 0.5530588 -0.60799432 4.71030426 0.42411318
		 -0.77861631 1.11828995 0.77861637 -0.67659158 3.34527707 0.67659187 -0.52047879 4.71029663 0.52047902
		 -0.65529549 1.11828995 0.90193701 -0.55305862 3.3453598 0.78936386 -0.42411301 4.71030331 0.6079945
		 -0.34450924 1.11828995 1.060290575 -0.29221088 3.34535384 0.91493517 -0.22359422 4.71030569 0.70371938
		 1.841086e-08 1.11828995 1.11485565 0.00052673701 3.34535599 0.95808411 0.0006541328 4.71030617 0.73602825
		 0.34450924 1.11828995 1.060290217 0.2959809 3.34535694 0.91067308 0.22734195 4.71030664 0.69936085
		 0.65529555 1.11828995 0.90193701 0.56273937 3.34535694 0.77454346 0.4321157 4.71030664 0.59475601
		 0.90193701 1.11828995 0.65529573 0.77451569 3.34535718 0.56272185 0.59471166 4.71030664 0.43208903
		 1.060290217 1.11828995 0.34450927 0.91049176 3.34535718 0.29583785 0.69911599 4.71030664 0.22715873;
	setAttr -s 399 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 80 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 81 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 59 40 1 40 41 1 41 42 1 42 43 1 43 44 1 44 45 1 45 46 1
		 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 82 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1
		 57 58 1 58 59 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1
		 69 70 1 70 71 1 71 72 1 72 83 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1
		 80 12 1 81 32 1 82 52 1 83 73 1 80 81 1 81 82 1 84 0 1 85 19 1 86 18 1 87 17 1 88 16 1
		 89 15 1 90 14 1 91 13 1 92 12 1 93 80 1 94 11 1 95 10 1 96 9 1 97 8 1 98 7 1 99 6 1
		 100 5 1 101 4 1 102 3 1 103 2 1 104 1 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1
		 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1
		 100 101 1 101 102 1 102 103 1;
	setAttr ".ed[166:331]" 103 104 1 104 84 1 105 106 1 106 110 1 110 109 1 109 105 1
		 105 108 1 108 107 1 107 106 1 108 145 1 145 146 1 146 107 1 110 112 1 112 111 1 111 109 1
		 112 114 1 114 113 1 113 111 1 114 116 1 116 115 1 115 113 1 116 118 1 118 117 1 117 115 1
		 118 120 1 120 119 1 119 117 1 120 122 1 122 121 1 121 119 1 122 125 1 125 126 1 126 121 1
		 123 124 1 124 128 1 128 127 1 127 123 1 123 126 1 125 124 1 128 130 1 130 129 1 129 127 1
		 130 132 1 132 131 1 131 129 1 132 134 1 134 133 1 133 131 1 134 136 1 136 135 1 135 133 1
		 136 138 1 138 137 1 137 135 1 138 140 1 140 139 1 139 137 1 140 142 1 142 141 1 141 139 1
		 142 144 1 144 143 1 143 141 1 144 146 1 145 143 1 86 106 1 107 85 1 87 110 1 88 112 1
		 89 114 1 90 116 1 91 118 1 92 120 1 122 93 1 94 125 1 95 124 1 96 128 1 97 130 1
		 98 132 1 99 134 1 100 136 1 101 138 1 102 140 1 103 142 1 104 144 1 84 146 1 208 207 1
		 207 147 1 149 209 1 209 208 1 149 148 1 152 149 1 148 147 1 147 150 1 152 151 1 155 152 1
		 151 150 1 150 153 1 155 154 1 158 155 1 154 153 1 153 156 1 158 157 1 161 158 1 157 156 1
		 156 159 1 161 160 1 164 161 1 160 159 1 159 162 1 164 163 1 167 164 1 163 162 1 162 165 1
		 167 166 1 170 167 1 166 165 1 165 168 1 170 169 1 173 170 1 169 168 1 168 171 1 173 172 1
		 176 173 1 172 171 1 171 174 1 176 175 1 179 176 1 175 174 1 174 177 1 179 178 1 182 179 1
		 178 177 1 177 180 1 182 181 1 185 182 1 181 180 1 180 183 1 185 184 1 188 185 1 184 183 1
		 183 186 1 188 187 1 191 188 1 187 186 1 186 189 1 191 190 1 194 191 1 190 189 1 189 192 1
		 194 193 1 197 194 1 193 192 1 192 195 1 197 196 1 200 197 1 196 195 1 195 198 1 200 199 1
		 203 200 1 199 198 1 198 201 1 203 202 1 206 203 1 202 201 1 201 204 1;
	setAttr ".ed[332:398]" 206 205 1 209 206 1 205 204 1 204 207 1 40 150 1 147 59 1
		 41 153 1 42 156 1 43 159 1 44 162 1 45 165 1 46 168 1 47 171 1 48 174 1 49 177 1
		 50 180 1 51 183 1 82 186 1 53 192 1 189 52 1 54 195 1 55 198 1 56 201 1 57 204 1
		 58 207 1 152 61 1 60 149 1 155 62 1 158 63 1 161 64 1 164 65 1 167 66 1 170 67 1
		 173 68 1 176 69 1 179 70 1 182 71 1 185 72 1 188 83 1 194 74 1 73 191 1 197 75 1
		 200 76 1 203 77 1 206 78 1 209 79 1 148 208 0 148 151 0 151 154 0 154 157 0 157 160 0
		 160 163 0 163 166 0 166 169 0 169 172 0 172 175 0 175 178 0 178 181 0 181 184 0 184 187 0
		 187 190 0 190 193 0 193 196 0 196 199 0 199 202 0 202 205 0 205 208 0;
	setAttr -s 191 -ch 798 ".fc[0:190]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 124 -32 -52
		mu 0 4 31 82 85 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 21 100 101 102 103 104 105 106 107 108 109 110 111 112 123 113 114 115 116 117 118
		 119
		mu 0 21 190 192 194 196 198 200 202 204 206 208 210 212 214 231 216 218 220 222 224 226
		 228
		f 4 39 60 -81 -80
		mu 0 4 81 80 149 187
		f 4 20 61 -82 -61
		mu 0 4 80 79 151 149
		f 4 21 62 -83 -62
		mu 0 4 79 78 153 151
		f 4 22 63 -84 -63
		mu 0 4 78 77 155 153
		f 4 23 64 -85 -64
		mu 0 4 77 76 157 155
		f 4 24 65 -86 -65
		mu 0 4 76 75 159 157
		f 4 25 66 -87 -66
		mu 0 4 75 74 161 159
		f 4 26 67 -88 -67
		mu 0 4 74 73 163 161
		f 4 27 68 -89 -68
		mu 0 4 73 72 165 163
		f 4 28 69 -90 -69
		mu 0 4 72 71 167 165
		f 4 29 70 -91 -70
		mu 0 4 71 70 169 167
		f 4 30 71 -92 -71
		mu 0 4 70 69 171 169
		f 4 31 125 -93 -72
		mu 0 4 69 84 173 171
		f 4 32 73 -94 -73
		mu 0 4 68 67 175 230
		f 4 33 74 -95 -74
		mu 0 4 67 66 177 175
		f 4 34 75 -96 -75
		mu 0 4 66 65 179 177
		f 4 35 76 -97 -76
		mu 0 4 65 64 181 179
		f 4 36 77 -98 -77
		mu 0 4 64 63 183 181
		f 4 37 78 -99 -78
		mu 0 4 63 62 185 183
		f 4 38 79 -100 -79
		mu 0 4 62 81 187 185
		f 4 -125 120 52 -122
		mu 0 4 85 82 32 53
		f 4 -126 121 72 -123
		mu 0 4 173 84 68 230
		f 4 -20 -128 -148 126
		mu 0 4 0 19 145 143
		f 4 -19 -129 -149 127
		mu 0 4 19 18 107 145
		f 4 -18 -130 -150 128
		mu 0 4 18 17 109 107
		f 4 -17 -131 -151 129
		mu 0 4 17 16 111 109
		f 4 -16 -132 -152 130
		mu 0 4 16 15 113 111
		f 4 -15 -133 -153 131
		mu 0 4 15 14 115 113
		f 4 -14 -134 -154 132
		mu 0 4 14 13 117 115
		f 4 -13 -135 -155 133
		mu 0 4 13 12 119 117
		f 4 -121 -136 -156 134
		mu 0 4 12 83 147 119
		f 4 -157 135 -12 -137
		mu 0 4 122 147 83 11
		f 4 -11 -138 -158 136
		mu 0 4 11 10 123 122
		f 4 -10 -139 -159 137
		mu 0 4 10 9 125 123
		f 4 -9 -140 -160 138
		mu 0 4 9 8 127 125
		f 4 -8 -141 -161 139
		mu 0 4 8 7 129 127
		f 4 -7 -142 -162 140
		mu 0 4 7 6 131 129
		f 4 -6 -143 -163 141
		mu 0 4 6 5 133 131
		f 4 -5 -144 -164 142
		mu 0 4 5 4 135 133
		f 4 -4 -145 -165 143
		mu 0 4 4 3 137 135
		f 4 -3 -146 -166 144
		mu 0 4 3 2 139 137
		f 4 -2 -147 -167 145
		mu 0 4 2 1 141 139
		f 4 -1 -127 -168 146
		mu 0 4 1 0 143 141
		f 4 168 169 170 171
		mu 0 4 86 110 112 90
		f 4 -169 172 173 174
		mu 0 4 110 86 87 108
		f 4 -174 175 176 177
		mu 0 4 108 87 89 146
		f 4 -171 178 179 180
		mu 0 4 90 112 114 91
		f 4 -180 181 182 183
		mu 0 4 91 114 116 92
		f 4 -183 184 185 186
		mu 0 4 92 116 118 93
		f 4 -186 187 188 189
		mu 0 4 93 118 120 94
		f 4 -189 190 191 192
		mu 0 4 94 120 148 95
		f 4 -192 193 194 195
		mu 0 4 95 148 121 96
		f 4 -195 196 197 198
		mu 0 4 96 121 124 97
		f 4 199 200 201 202
		mu 0 4 88 126 128 98
		f 4 -200 203 -198 204
		mu 0 4 126 88 97 124
		f 4 -202 205 206 207
		mu 0 4 98 128 130 99
		f 4 -207 208 209 210
		mu 0 4 99 130 132 100
		f 4 -210 211 212 213
		mu 0 4 100 132 134 101
		f 4 -213 214 215 216
		mu 0 4 101 134 136 102
		f 4 -216 217 218 219
		mu 0 4 102 136 138 103
		f 4 -219 220 221 222
		mu 0 4 103 138 140 104
		f 4 -222 223 224 225
		mu 0 4 104 140 142 105
		f 4 -225 226 227 228
		mu 0 4 105 142 144 106
		f 4 -228 229 -177 230
		mu 0 4 106 144 146 89
		f 21 -172 -181 -184 -187 -190 -193 -196 -199 -204 -203 -208 -211 -214 -217 -220 -223
		 -226 -229 -231 -176 -173
		mu 0 21 86 90 91 92 93 94 95 96 97 88 98 99 100 101 102 103 104 105 106 89 87
		f 4 148 231 -175 232
		mu 0 4 145 107 110 108
		f 4 149 233 -170 -232
		mu 0 4 107 109 112 110
		f 4 150 234 -179 -234
		mu 0 4 109 111 114 112
		f 4 151 235 -182 -235
		mu 0 4 111 113 116 114
		f 4 152 236 -185 -236
		mu 0 4 113 115 118 116
		f 4 153 237 -188 -237
		mu 0 4 115 117 120 118
		f 4 154 238 -191 -238
		mu 0 4 117 119 148 120
		f 4 239 156 240 -197
		mu 0 4 121 147 122 124
		f 4 157 241 -205 -241
		mu 0 4 122 123 126 124
		f 4 158 242 -201 -242
		mu 0 4 123 125 128 126
		f 4 159 243 -206 -243
		mu 0 4 125 127 130 128
		f 4 160 244 -209 -244
		mu 0 4 127 129 132 130
		f 4 161 245 -212 -245
		mu 0 4 129 131 134 132
		f 4 162 246 -215 -246
		mu 0 4 131 133 136 134
		f 4 163 247 -218 -247
		mu 0 4 133 135 138 136
		f 4 164 248 -221 -248
		mu 0 4 135 137 140 138
		f 4 165 249 -224 -249
		mu 0 4 137 139 142 140
		f 4 166 250 -227 -250
		mu 0 4 139 141 144 142
		f 4 167 251 -230 -251
		mu 0 4 141 143 146 144
		f 4 147 -233 -178 -252
		mu 0 4 143 145 108 146
		f 4 155 -240 -194 -239
		mu 0 4 119 147 121 148
		f 4 80 336 -260 337
		mu 0 4 187 149 152 150
		f 4 81 338 -264 -337
		mu 0 4 149 151 154 152
		f 4 82 339 -268 -339
		mu 0 4 151 153 156 154
		f 4 83 340 -272 -340
		mu 0 4 153 155 158 156
		f 4 84 341 -276 -341
		mu 0 4 155 157 160 158
		f 4 85 342 -280 -342
		mu 0 4 157 159 162 160
		f 4 86 343 -284 -343
		mu 0 4 159 161 164 162
		f 4 87 344 -288 -344
		mu 0 4 161 163 166 164
		f 4 88 345 -292 -345
		mu 0 4 163 165 168 166
		f 4 89 346 -296 -346
		mu 0 4 165 167 170 168
		f 4 90 347 -300 -347
		mu 0 4 167 169 172 170
		f 4 91 348 -304 -348
		mu 0 4 169 171 174 172
		f 4 92 349 -308 -349
		mu 0 4 171 173 229 174
		f 4 93 350 -316 351
		mu 0 4 230 175 178 176
		f 4 94 352 -320 -351
		mu 0 4 175 177 180 178
		f 4 95 353 -324 -353
		mu 0 4 177 179 182 180
		f 4 96 354 -328 -354
		mu 0 4 179 181 184 182
		f 4 97 355 -332 -355
		mu 0 4 181 183 186 184
		f 4 98 356 -336 -356
		mu 0 4 183 185 188 186
		f 4 99 -338 -254 -357
		mu 0 4 185 187 150 188
		f 4 -258 357 -101 358
		mu 0 4 227 189 192 190
		f 4 -262 359 -102 -358
		mu 0 4 189 191 194 192
		f 4 -266 360 -103 -360
		mu 0 4 191 193 196 194
		f 4 -270 361 -104 -361
		mu 0 4 193 195 198 196
		f 4 -274 362 -105 -362
		mu 0 4 195 197 200 198
		f 4 -278 363 -106 -363
		mu 0 4 197 199 202 200
		f 4 -282 364 -107 -364
		mu 0 4 199 201 204 202
		f 4 -286 365 -108 -365
		mu 0 4 201 203 206 204
		f 4 -290 366 -109 -366
		mu 0 4 203 205 208 206
		f 4 -294 367 -110 -367
		mu 0 4 205 207 210 208
		f 4 -298 368 -111 -368
		mu 0 4 207 209 212 210
		f 4 -302 369 -112 -369
		mu 0 4 209 211 214 212
		f 4 -306 370 -113 -370
		mu 0 4 211 213 231 214
		f 4 -314 371 -114 372
		mu 0 4 232 215 218 216
		f 4 -318 373 -115 -372
		mu 0 4 215 217 220 218
		f 4 -322 374 -116 -374
		mu 0 4 217 219 222 220
		f 4 -326 375 -117 -375
		mu 0 4 219 221 224 222
		f 4 -330 376 -118 -376
		mu 0 4 221 223 226 224
		f 4 -334 377 -119 -377
		mu 0 4 223 225 228 226
		f 4 -255 -359 -120 -378
		mu 0 4 225 227 190 228
		f 4 -350 122 -352 -312
		mu 0 4 229 173 230 176
		f 4 -371 -310 -373 -124
		mu 0 4 231 213 232 216
		f 4 -259 378 252 253
		mu 0 4 150 233 253 188
		f 4 -257 254 255 -379
		mu 0 4 233 227 225 253
		f 4 256 379 -261 257
		mu 0 4 227 233 234 189
		f 4 258 259 -263 -380
		mu 0 4 233 150 152 234
		f 4 260 380 -265 261
		mu 0 4 189 234 235 191
		f 4 262 263 -267 -381
		mu 0 4 234 152 154 235
		f 4 264 381 -269 265
		mu 0 4 191 235 236 193
		f 4 266 267 -271 -382
		mu 0 4 235 154 156 236
		f 4 268 382 -273 269
		mu 0 4 193 236 237 195
		f 4 270 271 -275 -383
		mu 0 4 236 156 158 237
		f 4 272 383 -277 273
		mu 0 4 195 237 238 197
		f 4 274 275 -279 -384
		mu 0 4 237 158 160 238
		f 4 276 384 -281 277
		mu 0 4 197 238 239 199
		f 4 278 279 -283 -385
		mu 0 4 238 160 162 239
		f 4 280 385 -285 281
		mu 0 4 199 239 240 201
		f 4 282 283 -287 -386
		mu 0 4 239 162 164 240
		f 4 284 386 -289 285
		mu 0 4 201 240 241 203
		f 4 286 287 -291 -387
		mu 0 4 240 164 166 241
		f 4 288 387 -293 289
		mu 0 4 203 241 242 205
		f 4 290 291 -295 -388
		mu 0 4 241 166 168 242
		f 4 292 388 -297 293
		mu 0 4 205 242 243 207
		f 4 294 295 -299 -389
		mu 0 4 242 168 170 243
		f 4 296 389 -301 297
		mu 0 4 207 243 244 209
		f 4 298 299 -303 -390
		mu 0 4 243 170 172 244
		f 4 300 390 -305 301
		mu 0 4 209 244 245 211
		f 4 302 303 -307 -391
		mu 0 4 244 172 174 245
		f 4 304 391 -309 305
		mu 0 4 211 245 246 213
		f 4 306 307 -311 -392
		mu 0 4 245 174 229 246
		f 4 308 392 -313 309
		mu 0 4 213 246 247 232
		f 4 310 311 -315 -393
		mu 0 4 246 229 176 247
		f 4 312 393 -317 313
		mu 0 4 232 247 248 215
		f 4 314 315 -319 -394
		mu 0 4 247 176 178 248
		f 4 316 394 -321 317
		mu 0 4 215 248 249 217
		f 4 318 319 -323 -395
		mu 0 4 248 178 180 249
		f 4 320 395 -325 321
		mu 0 4 217 249 250 219
		f 4 322 323 -327 -396
		mu 0 4 249 180 182 250
		f 4 324 396 -329 325
		mu 0 4 219 250 251 221
		f 4 326 327 -331 -397
		mu 0 4 250 182 184 251
		f 4 328 397 -333 329
		mu 0 4 221 251 252 223
		f 4 330 331 -335 -398
		mu 0 4 251 184 186 252
		f 4 332 398 -256 333
		mu 0 4 223 252 253 225
		f 4 334 335 -253 -399
		mu 0 4 252 186 188 253;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Jacob_Body_Geo" -p "geo";
	rename -uid "B7CDB150-4846-974F-DC9D-1684FC214D23";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.5998716850880504e-06 8.8182526773446419 -2.3998075276459534e-06 ;
	setAttr ".sp" -type "double3" -1.5998716850880504e-06 8.8182526773446419 -2.3998075276459534e-06 ;
createNode mesh -n "Jacob_Body_GeoShape" -p "Jacob_Body_Geo";
	rename -uid "F88191A0-4D0C-864F-E2B1-C79E7548379B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Jacob_Body_GeoShapeOrig" -p "Jacob_Body_Geo";
	rename -uid "35555A51-4D93-4C65-16EC-2EB8F80A4BF8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60:61]" "f[64:65]" "f[68:69]" "f[72:73]" "f[76:77]" "f[80:81]" "f[84:85]" "f[88:89]" "f[92:93]" "f[96:97]" "f[100:101]" "f[104:105]" "f[108:109]" "f[112:113]" "f[116:117]" "f[120:121]" "f[124:125]" "f[128:129]" "f[132:133]" "f[136:137]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 41 "f[0:19]" "f[62:63]" "f[66:67]" "f[70:71]" "f[74:75]" "f[78:79]" "f[82:83]" "f[86:87]" "f[90:91]" "f[94:95]" "f[98:99]" "f[102:103]" "f[106:107]" "f[110:111]" "f[114:115]" "f[118:119]" "f[122:123]" "f[126:127]" "f[130:131]" "f[134:135]" "f[138:139]" "f[142:143]" "f[146:147]" "f[150:151]" "f[154:155]" "f[158:159]" "f[162:163]" "f[166:167]" "f[170:171]" "f[174:175]" "f[178:179]" "f[182:183]" "f[186:187]" "f[190:191]" "f[194:195]" "f[198:199]" "f[202:203]" "f[206:207]" "f[210:211]" "f[214:215]" "f[218:219]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 21 "f[40:59]" "f[140:141]" "f[144:145]" "f[148:149]" "f[152:153]" "f[156:157]" "f[160:161]" "f[164:165]" "f[168:169]" "f[172:173]" "f[176:177]" "f[180:181]" "f[184:185]" "f[188:189]" "f[192:193]" "f[196:197]" "f[200:201]" "f[204:205]" "f[208:209]" "f[212:213]" "f[216:217]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 248 ".uvst[0].uvsp[0:247]" -type "float2" 0.38749999 0.39124244
		 0.375 0.60875797 0.39999998 0.39124206 0.38749999 0.60875791 0.41249996 0.39124244
		 0.40000001 0.60875791 0.42499995 0.39124212 0.41249996 0.60875779 0.43749994 0.39124212
		 0.42499998 0.60875791 0.44999993 0.39124244 0.43749994 0.60875791 0.46249992 0.39124244
		 0.44999993 0.60875779 0.4749999 0.39124221 0.46249992 0.60875791 0.48749989 0.39124244
		 0.4749999 0.60875785 0.49999988 0.39124212 0.48749989 0.60875791 0.51249987 0.39124244
		 0.49999988 0.60875791 0.52499986 0.39124212 0.51249987 0.60875779 0.53749985 0.39124244
		 0.52499986 0.60875791 0.54999983 0.39124244 0.53749985 0.60875785 0.56249982 0.39124244
		 0.54999983 0.60875791 0.57499981 0.39124244 0.56249982 0.60875779 0.5874998 0.39124212
		 0.57499981 0.60875779 0.59999979 0.39124244 0.58749986 0.60875791 0.61249977 0.39124244
		 0.59999979 0.60875791 0.62499976 0.39124215 0.61249977 0.60875791 0.60927123 0.12074555
		 0.59295171 0.088716626 0.56753337 0.063298292 0.53550452 0.046978574 0.5 0.041355323
		 0.46449563 0.046978697 0.4324666 0.063298248 0.40704829 0.088716581 0.39072883 0.12074562
		 0.3851054 0.15625 0.39072874 0.19175436 0.40704817 0.22378337 0.4324666 0.2492017
		 0.4644956 0.26552123 0.49999997 0.27114466 0.53550434 0.26552123 0.56753331 0.24920166
		 0.59295166 0.22378336 0.60927129 0.19175439 0.5 0.15625 0.61489457 0.15624997 0.59295166
		 0.91128337 0.56753331 0.93670166 0.53550446 0.95302141 0.5 0.95864463 0.46449566
		 0.95302129 0.43246663 0.93670171 0.40704829 0.91128337 0.39072883 0.8792544 0.3851054
		 0.84375 0.39072874 0.8082456 0.40704817 0.77621663 0.4324666 0.75079829 0.46449557
		 0.73447871 0.49999997 0.72885531 0.5355044 0.73447871 0.56753337 0.75079829 0.59295171
		 0.77621657 0.60927135 0.8082456 0.61489457 0.84375 0.60927123 0.87925446 0.5 0.84375
		 0.375 0.39124206 0.62499976 0.60875791 0.62499976 0.35007447 0.375 0.35007444 0.62499976
		 0.3125 0.64860266 0.10796607 0.375 0.3125 0.62721664 0.11491476 0.38749999 0.350752
		 0.62640899 0.064408496 0.38749999 0.3125 0.608217 0.077625766 0.39999998 0.35081959
		 0.59184152 0.029841021 0.39999998 0.3125 0.57862425 0.048033021 0.41249996 0.3508265
		 0.54828393 0.0076473355 0.41249996 0.3125 0.54133528 0.029033249 0.42499995 0.35082707
		 0.5 -7.4505806e-08 0.42499995 0.3125 0.5 0.022486445 0.43749994 0.35082713 0.45171607
		 0.0076473504 0.43749994 0.3125 0.4586648 0.029033313 0.44999993 0.35082725 0.40815851
		 0.029841051 0.44999993 0.3125 0.42137575 0.048033029 0.46249992 0.35082725 0.37359107
		 0.064408526 0.46249992 0.3125 0.39178306 0.077625759 0.4749999 0.35082716 0.3513974
		 0.1079661 0.4749999 0.3125 0.37278339 0.11491481 0.48749989 0.35082725 0.34374997
		 0.15625 0.48749989 0.3125 0.36623651 0.15625 0.49999988 0.35082716 0.3513974 0.2045339
		 0.49999988 0.3125 0.37278333 0.19758518 0.51249987 0.35082725 0.37359107 0.24809146
		 0.51249987 0.3125 0.391783 0.23487422 0.52499986 0.35082716 0.40815854 0.28265893
		 0.52499986 0.3125 0.42137575 0.26446694 0.53749985 0.35082725 0.4517161 0.3048526
		 0.53749985 0.3125 0.4586648 0.28346664 0.54999983 0.35082728 0.5 0.3125 0.54999983
		 0.3125 0.49999997 0.29001352 0.56249982 0.35082725 0.54828387 0.3048526 0.56249982
		 0.3125 0.54133517 0.28346664 0.57499981 0.35082719 0.59184146 0.28265893 0.57499981
		 0.3125 0.57862419 0.26446694 0.5874998 0.35082638 0.62640893 0.24809146 0.5874998
		 0.3125 0.60821694 0.2348742 0.59999979 0.35081974 0.6486026 0.2045339 0.59999979
		 0.3125 0.62721664 0.1975852 0.61249977 0.350752 0.65625 0.15625 0.61249977 0.3125
		 0.63376343 0.15624999 0.375 0.64992559 0.62499976 0.64992559 0.375 0.6875 0.6486026
		 0.89203393 0.62499976 0.6875 0.62721664 0.88508523 0.38749999 0.64924818 0.38749999
		 0.6875 0.62640893 0.93559146 0.60821694 0.92237419 0.39999998 0.64918041 0.39999998
		 0.6875 0.59184146 0.97015893 0.57862419 0.95196694 0.41249996 0.64917362 0.41249996
		 0.6875 0.54828387 0.9923526 0.54133523 0.9709667 0.42499995 0.64917296 0.42499995
		 0.6875 0.5 1 0.5 0.97751349 0.43749994 0.6491729 0.43749994 0.6875 0.4517161 0.9923526
		 0.45866483 0.97096664 0.44999993 0.64917284 0.44999993 0.6875 0.40815854 0.97015893
		 0.42137578 0.95196694 0.46249992 0.6491729 0.46249992 0.6875 0.37359107 0.93559146
		 0.39178306 0.92237419 0.4749999 0.6491729 0.4749999 0.6875 0.3513974 0.89203393 0.37278339
		 0.88508523 0.48749989 0.6491729 0.48749989 0.6875 0.34374997 0.84375 0.36623651 0.84375
		 0.49999988 0.6491729 0.49999988 0.6875 0.3513974 0.79546607 0.37278336 0.80241477
		 0.51249987 0.64917284 0.51249987 0.6875 0.37359107 0.75190854 0.391783 0.76512575
		 0.52499986 0.6491729 0.52499986 0.6875 0.40815851 0.71734107 0.42137575 0.73553306
		 0.53749985 0.6491729 0.53749985 0.6875 0.45171607 0.69514734 0.45866477 0.7165333
		 0.54999983 0.6491729 0.54999983 0.6875 0.5 0.68749994 0.5 0.70998645 0.56249982 0.64917284
		 0.56249982 0.6875 0.54828393 0.69514734 0.54133523 0.7165333 0.57499981 0.6491729
		 0.57499981 0.6875 0.59184152 0.71734101 0.57862425 0.735533 0.5874998 0.64917368
		 0.5874998 0.6875 0.62640899 0.75190848 0.608217 0.76512575 0.59999979 0.64918041
		 0.59999979 0.6875 0.64860266 0.79546607 0.6272167 0.80241477 0.61249977 0.64924818
		 0.65625 0.84375 0.61249977 0.6875 0.63376343 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0.99999976 -1.3877788e-17 0 16.636505 
		-1.3877788e-17 11.812792 4.2833371 -3.8382087 11.574798 3.0268576 -3.76088 10.897048 
		1.9616663 -3.5406666 9.8827229 1.249928 -3.2110937 8.6862469 0.99999976 -2.8223355 
		10.04856 4.2833371 -7.3007064 9.8461113 3.0268576 -7.1536183 9.2695837 1.9616663 
		-6.7347465 8.4067469 1.249928 -6.1078591 7.3889637 0.99999976 -5.3683958 7.3007064 
		4.2833371 -10.04856 7.1536183 3.0268576 -9.8461113 6.7347465 1.9616663 -9.2695837 
		6.1078591 1.249928 -8.4067469 5.3683963 0.99999976 -7.3889627 3.8382082 4.2833371 
		-11.812791 3.760879 3.0268576 -11.574797 3.5406654 1.9616663 -10.897046 3.2110915 
		1.249928 -9.8827229 2.8223329 0.99999976 -8.686245 0 4.2833371 -12.420702 2.8068035e-08 
		3.0268576 -12.170461 1.0799904e-07 1.9616663 -11.457832 2.2762424e-07 1.249928 -10.391308 
		3.687318e-07 0.99999976 -9.1332588 -3.8382082 4.2833371 -11.81279 -3.760879 3.0268576 
		-11.574796 -3.5406647 1.9616663 -10.897046 -3.2110908 1.249928 -9.8827219 -2.8223317 
		0.99999976 -8.686245 -7.300705 4.2833371 -10.048558 -7.153616 3.0268576 -9.8461084 
		-6.7347441 1.9616663 -9.2695799 -6.1078568 1.249928 -8.406744 -5.3683934 0.99999976 
		-7.3889613 -10.048557 4.2833371 -7.3007045 -9.8461075 3.0268576 -7.153616 -9.2695799 
		1.9616663 -6.7347441 -8.406744 1.249928 -6.1078572 -7.3889594 0.99999976 -5.3683939 
		-11.812787 4.2833371 -3.8382068 -11.574793 3.0268576 -3.7608781 -10.897044 1.9616663 
		-3.540664 -9.88272 1.249928 -3.2110903 -8.6862431 0.99999976 -2.8223314 -12.420699 
		4.2833371 -1.3877788e-17 -12.170456 3.0268576 -1.3877788e-17 -11.457829 1.9616663 
		-1.3877788e-17 -10.391307 1.249928 -1.3877788e-17 -9.1332569 0.99999976 -1.3877788e-17 
		-11.812787 4.2833371 3.8382068 -11.574793 3.0268576 3.7608781 -10.897044 1.9616663 
		3.5406635 -9.88272 1.249928 3.2110898 -8.6862431 0.99999976 2.8223307 -10.048556 
		4.2833371 7.3007035 -9.8461065 3.0268576 7.1536145 -9.2695789 1.9616663 6.7347426 
		-8.406743 1.249928 6.1078558 -7.3889594 0.99999976 5.3683915 -7.3007035 4.2833371 
		10.048556 -7.1536145 3.0268576 9.8461065 -6.7347426 1.9616663 9.2695789 -6.1078558 
		1.249928 8.406743 -5.3683929 0.99999976 7.3889585 -3.8382068 4.2833371 11.812786 
		-3.7608781 3.0268576 11.574792 -3.5406635 1.9616663 10.897041 -3.2110898 1.249928 
		9.8827181 -2.8223314 0.99999976 8.6862411 -3.7016559e-07 4.2833371 12.420698 -3.9895028e-07 
		3.0268576 12.170456 -4.8092221e-07 1.9616663 11.457829 -6.0360179e-07 1.249928 10.391303 
		-7.4831223e-07 0.99999976 9.1332541 3.8382061 4.2833371 11.812785 3.7608769 3.0268576 
		11.574791 3.5406628 1.9616663 10.897041 3.2110889 1.249928 9.8827171 2.8223298 0.99999976 
		8.6862411 7.3007021 4.2833371 10.048555 7.153614 3.0268576 9.8461056 6.7347417 1.9616663 
		9.269577 6.1078544 1.249928 8.4067421 5.3683915 0.99999976 7.3889575 10.048554 4.2833371 
		7.300703 9.8461046 3.0268576 7.153614 9.269577 1.9616663 6.7347417 8.4067402 1.249928 
		6.1078548 7.388957 0.99999976 5.3683915 11.812783 4.2833371 3.8382063 11.574789 3.0268576 
		3.7608776 10.89704 1.9616663 3.5406632 9.8827171 1.249928 3.2110896 8.6862392 0.99999976 
		2.8223307 12.420696 4.2833371 -1.3877788e-17 12.170455 3.0268576 -2.6372618e-07 11.457827 
		1.9616663 -1.0147547e-06 10.391303 1.249928 -2.1387486e-06 9.1332531 0.99999976 -3.4645896e-06 
		11.812792 13.353167 -3.8382087 11.574798 14.609647 -3.76088 10.897048 15.674837 -3.5406666 
		9.8827229 16.386576 -3.2110937 8.6862469 16.636505 -2.8223355 10.04856 13.353167 
		-7.3007064 9.8461113 14.609647 -7.1536183 9.2695837 15.674837 -6.7347465 8.4067469 
		16.386576 -6.1078591 7.3889637 16.636505 -5.3683958 7.3007064 13.353167 -10.04856 
		7.1536183 14.609647 -9.8461113 6.7347465 15.674837 -9.2695837 6.1078591 16.386576 
		-8.4067469 5.3683963 16.636505 -7.3889627 3.8382082 13.353167 -11.812791 3.760879 
		14.609647 -11.574797 3.5406654 15.674837 -10.897046 3.2110915 16.386576 -9.8827229 
		2.8223329 16.636505 -8.686245 0 13.353167 -12.420702 2.8068035e-08 14.609647 -12.170461 
		1.0799904e-07 15.674837 -11.457832 2.2762424e-07 16.386576 -10.391308 3.687318e-07 
		16.636505 -9.1332588 -3.8382082 13.353167 -11.81279 -3.760879 14.609647 -11.574796 
		-3.5406647 15.674837 -10.897046 -3.2110908 16.386576 -9.8827219 -2.8223317 16.636505 
		-8.686245 -7.300705 13.353167 -10.048558 -7.153616 14.609647 -9.8461084 -6.7347441 
		15.674837 -9.2695799 -6.1078568 16.386576 -8.406744 -5.3683934 16.636505 -7.3889613 
		-10.048557 13.353167 -7.3007045 -9.8461075 14.609647 -7.153616 -9.2695799 15.674837 
		-6.7347441 -8.406744 16.386576 -6.1078572 -7.3889594 16.636505 -5.3683939 -11.812787 
		13.353167 -3.8382068 -11.574793 14.609647 -3.7608781 -10.897044 15.674837 -3.540664 
		-9.88272 16.386576 -3.2110903 -8.6862431 16.636505 -2.8223314 -12.420699 13.353167 
		-1.3877788e-17 -12.170456 14.609647 -1.3877788e-17 -11.457829 15.674837 -1.3877788e-17 
		-10.391307 16.386576 -1.3877788e-17 -9.1332569 16.636505 -1.3877788e-17 -11.812787 
		13.353167 3.8382068 -11.574793 14.609647 3.7608781 -10.897044 15.674837 3.5406635 
		-9.88272 16.386576 3.2110898 -8.6862431 16.636505 2.8223307 -10.048556 13.353167 
		7.3007035 -9.8461065 14.609647 7.1536145 -9.2695789 15.674837 6.7347426 -8.406743 
		16.386576 6.1078558 -7.3889594 16.636505 5.3683915 -7.3007035 13.353167 10.048556 
		-7.1536145 14.609647 9.8461065 -6.7347426 15.674837 9.2695789 -6.1078558 16.386576 
		8.406743;
	setAttr ".pt[166:201]" -5.3683929 16.636505 7.3889585 -3.8382068 13.353167 
		11.812786 -3.7608781 14.609647 11.574792 -3.5406635 15.674837 10.897041 -3.2110898 
		16.386576 9.8827181 -2.8223314 16.636505 8.6862411 -3.7016559e-07 13.353167 12.420698 
		-3.9895028e-07 14.609647 12.170456 -4.8092221e-07 15.674837 11.457829 -6.0360179e-07 
		16.386576 10.391303 -7.4831223e-07 16.636505 9.1332541 3.8382061 13.353167 11.812785 
		3.7608769 14.609647 11.574791 3.5406628 15.674837 10.897041 3.2110889 16.386576 9.8827171 
		2.8223298 16.636505 8.6862411 7.3007021 13.353167 10.048555 7.153614 14.609647 9.8461056 
		6.7347417 15.674837 9.269577 6.1078544 16.386576 8.4067421 5.3683915 16.636505 7.3889575 
		10.048554 13.353167 7.300703 9.8461046 14.609647 7.153614 9.269577 15.674837 6.7347417 
		8.4067402 16.386576 6.1078548 7.388957 16.636505 5.3683915 11.812783 13.353167 3.8382063 
		11.574789 14.609647 3.7608776 10.89704 15.674837 3.5406632 9.8827171 16.386576 3.2110896 
		8.6862392 16.636505 2.8223307 12.420696 13.353167 -1.3877788e-17 12.170455 14.609647 
		-2.6372618e-07 11.457827 15.674837 -1.0147547e-06 10.391303 16.386576 -2.1387486e-06 
		9.1332531 16.636505 -3.4645896e-06;
	setAttr -s 202 ".vt";
	setAttr ".vt[0:165]"  0 -1 0 0 1.000000238419 0 0.95105714 -0.580042 -0.30901718
		 0.93189603 -0.74075305 -0.30279139 0.87732989 -0.87699723 -0.28506184 0.79566574 -0.96803272 -0.25852767
		 0.69933653 -1 -0.22722843 0.80901748 -0.580042 -0.5877856 0.79271811 -0.74075305 -0.57594341
		 0.74630141 -0.87699723 -0.5422197 0.67683381 -0.96803272 -0.49174851 0.59489125 -1 -0.43221375
		 0.5877856 -0.580042 -0.80901748 0.57594341 -0.74075305 -0.79271811 0.5422197 -0.87699723 -0.74630141
		 0.49174854 -0.96803272 -0.67683381 0.43221378 -1 -0.59489119 0.30901715 -0.580042 -0.95105702
		 0.30279133 -0.74075305 -0.93189591 0.28506175 -0.87699723 -0.87732971 0.25852749 -0.96803272 -0.79566574
		 0.22722824 -1 -0.69933641 0 -0.580042 -1.000000476837 2.2597795e-09 -0.74075305 -0.97985333
		 8.6950873e-09 -0.87699723 -0.92247909 1.8326206e-08 -0.96803272 -0.83661234 2.9686886e-08 -1 -0.73532581
		 -0.30901715 -0.580042 -0.95105696 -0.30279133 -0.74075305 -0.93189585 -0.28506169 -0.87699723 -0.87732971
		 -0.25852743 -0.96803272 -0.79566568 -0.22722813 -1 -0.69933641 -0.58778548 -0.580042 -0.8090173
		 -0.57594323 -0.74075305 -0.79271793 -0.54221952 -0.87699723 -0.74630117 -0.49174833 -0.96803272 -0.67683357
		 -0.43221354 -1 -0.59489107 -0.80901724 -0.580042 -0.58778542 -0.79271781 -0.74075305 -0.57594323
		 -0.74630111 -0.87699723 -0.54221952 -0.67683351 -0.96803272 -0.49174836 -0.59489089 -1 -0.4322136
		 -0.95105678 -0.580042 -0.30901703 -0.93189567 -0.74075305 -0.30279124 -0.87732953 -0.87699723 -0.28506163
		 -0.79566556 -0.96803272 -0.2585274 -0.69933623 -1 -0.22722812 -1.000000238419 -0.580042 0
		 -0.97985297 -0.74075305 0 -0.9224788 -0.87699723 0 -0.83661222 -0.96803272 0 -0.73532563 -1 0
		 -0.95105678 -0.580042 0.30901703 -0.93189567 -0.74075305 0.30279124 -0.87732953 -0.87699723 0.2850616
		 -0.79566556 -0.96803272 0.25852737 -0.69933623 -1 0.22722806 -0.80901712 -0.580042 0.58778536
		 -0.79271775 -0.74075305 0.57594311 -0.74630105 -0.87699723 0.5422194 -0.67683345 -0.96803272 0.49174827
		 -0.59489089 -1 0.43221343 -0.58778536 -0.580042 0.80901712 -0.57594311 -0.74075305 0.79271775
		 -0.5422194 -0.87699723 0.74630105 -0.49174827 -0.96803272 0.67683345 -0.43221352 -1 0.59489083
		 -0.30901703 -0.580042 0.95105666 -0.30279124 -0.74075305 0.93189555 -0.2850616 -0.87699723 0.87732935
		 -0.25852737 -0.96803272 0.79566538 -0.22722811 -1 0.69933605 -2.9802322e-08 -0.580042 1.000000119209
		 -3.21198e-08 -0.74075305 0.97985297 -3.8719424e-08 -0.87699723 0.92247874 -4.8596455e-08 -0.96803272 0.83661199
		 -6.0247203e-08 -1 0.73532546 0.30901697 -0.580042 0.9510566 0.30279115 -0.74075305 0.93189549
		 0.28506154 -0.87699723 0.87732935 0.25852728 -0.96803272 0.79566532 0.22722797 -1 0.69933605
		 0.58778524 -0.580042 0.80901706 0.57594305 -0.74075305 0.7927177 0.54221934 -0.87699723 0.74630088
		 0.49174815 -0.96803272 0.67683339 0.4322134 -1 0.59489077 0.809017 -0.580042 0.5877853
		 0.79271764 -0.74075305 0.57594305 0.74630088 -0.87699723 0.54221934 0.67683321 -0.96803272 0.49174818
		 0.59489071 -1 0.43221343 0.95105642 -0.580042 0.309017 0.93189532 -0.74075305 0.30279121
		 0.87732923 -0.87699723 0.28506157 0.79566526 -0.96803272 0.25852734 0.69933593 -1 0.22722806
		 1 -0.580042 0 0.97985286 -0.74075305 -2.1232802e-08 0.92247862 -0.87699723 -8.1698701e-08
		 0.83661199 -0.96803272 -1.7219233e-07 0.7353254 -1 -2.7893682e-07 0.95105714 0.58004206 -0.30901718
		 0.93189603 0.74075323 -0.30279139 0.87732989 0.87699729 -0.28506184 0.79566574 0.9680329 -0.25852767
		 0.69933653 1.000000238419 -0.22722843 0.80901748 0.58004206 -0.5877856 0.79271811 0.74075323 -0.57594341
		 0.74630141 0.87699729 -0.5422197 0.67683381 0.9680329 -0.49174851 0.59489125 1.000000238419 -0.43221375
		 0.5877856 0.58004206 -0.80901748 0.57594341 0.74075323 -0.79271811 0.5422197 0.87699729 -0.74630141
		 0.49174854 0.9680329 -0.67683381 0.43221378 1.000000238419 -0.59489119 0.30901715 0.58004206 -0.95105702
		 0.30279133 0.74075323 -0.93189591 0.28506175 0.87699729 -0.87732971 0.25852749 0.9680329 -0.79566574
		 0.22722824 1.000000238419 -0.69933641 0 0.58004206 -1.000000476837 2.2597795e-09 0.74075323 -0.97985333
		 8.6950873e-09 0.87699729 -0.92247909 1.8326206e-08 0.9680329 -0.83661234 2.9686886e-08 1.000000238419 -0.73532581
		 -0.30901715 0.58004206 -0.95105696 -0.30279133 0.74075323 -0.93189585 -0.28506169 0.87699729 -0.87732971
		 -0.25852743 0.9680329 -0.79566568 -0.22722813 1.000000238419 -0.69933641 -0.58778548 0.58004206 -0.8090173
		 -0.57594323 0.74075323 -0.79271793 -0.54221952 0.87699729 -0.74630117 -0.49174833 0.9680329 -0.67683357
		 -0.43221354 1.000000238419 -0.59489107 -0.80901724 0.58004206 -0.58778542 -0.79271781 0.74075323 -0.57594323
		 -0.74630111 0.87699729 -0.54221952 -0.67683351 0.9680329 -0.49174836 -0.59489089 1.000000238419 -0.4322136
		 -0.95105678 0.58004206 -0.30901703 -0.93189567 0.74075323 -0.30279124 -0.87732953 0.87699729 -0.28506163
		 -0.79566556 0.9680329 -0.2585274 -0.69933623 1.000000238419 -0.22722812 -1.000000238419 0.58004206 0
		 -0.97985297 0.74075323 0 -0.9224788 0.87699729 0 -0.83661222 0.9680329 0 -0.73532563 1.000000238419 0
		 -0.95105678 0.58004206 0.30901703 -0.93189567 0.74075323 0.30279124 -0.87732953 0.87699729 0.2850616
		 -0.79566556 0.9680329 0.25852737 -0.69933623 1.000000238419 0.22722806 -0.80901712 0.58004206 0.58778536
		 -0.79271775 0.74075323 0.57594311 -0.74630105 0.87699729 0.5422194 -0.67683345 0.9680329 0.49174827
		 -0.59489089 1.000000238419 0.43221343 -0.58778536 0.58004206 0.80901712 -0.57594311 0.74075323 0.79271775
		 -0.5422194 0.87699729 0.74630105 -0.49174827 0.9680329 0.67683345;
	setAttr ".vt[166:201]" -0.43221352 1.000000238419 0.59489083 -0.30901703 0.58004206 0.95105666
		 -0.30279124 0.74075323 0.93189555 -0.2850616 0.87699729 0.87732935 -0.25852737 0.9680329 0.79566538
		 -0.22722811 1.000000238419 0.69933605 -2.9802322e-08 0.58004206 1.000000119209 -3.21198e-08 0.74075323 0.97985297
		 -3.8719424e-08 0.87699729 0.92247874 -4.8596455e-08 0.9680329 0.83661199 -6.0247203e-08 1.000000238419 0.73532546
		 0.30901697 0.58004206 0.9510566 0.30279115 0.74075323 0.93189549 0.28506154 0.87699729 0.87732935
		 0.25852728 0.9680329 0.79566532 0.22722797 1.000000238419 0.69933605 0.58778524 0.58004206 0.80901706
		 0.57594305 0.74075323 0.7927177 0.54221934 0.87699729 0.74630088 0.49174815 0.9680329 0.67683339
		 0.4322134 1.000000238419 0.59489077 0.809017 0.58004206 0.5877853 0.79271764 0.74075323 0.57594305
		 0.74630088 0.87699729 0.54221934 0.67683321 0.9680329 0.49174818 0.59489071 1.000000238419 0.43221343
		 0.95105642 0.58004206 0.309017 0.93189532 0.74075323 0.30279121 0.87732923 0.87699729 0.28506157
		 0.79566526 0.9680329 0.25852734 0.69933593 1.000000238419 0.22722806 1 0.58004206 0
		 0.97985286 0.74075323 -2.1232802e-08 0.92247862 0.87699729 -8.1698701e-08 0.83661199 0.9680329 -1.7219233e-07
		 0.7353254 1.000000238419 -2.7893682e-07;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  8 7 1 7 2 1 9 8 1 10 9 1 6 11 1 11 10 1 6 5 1 101 6 1
		 5 4 1 4 3 1 3 2 1 2 97 1 13 12 1 12 7 1 14 13 1 15 14 1 11 16 1 16 15 1 18 17 1 17 12 1
		 19 18 1 20 19 1 16 21 1 21 20 1 23 22 1 22 17 1 24 23 1 25 24 1 21 26 1 26 25 1 28 27 1
		 27 22 1 29 28 1 30 29 1 26 31 1 31 30 1 33 32 1 32 27 1 34 33 1 35 34 1 31 36 1 36 35 1
		 38 37 1 37 32 1 39 38 1 40 39 1 36 41 1 41 40 1 43 42 1 42 37 1 44 43 1 45 44 1 41 46 1
		 46 45 1 48 47 1 47 42 1 49 48 1 50 49 1 46 51 1 51 50 1 53 52 1 52 47 1 54 53 1 55 54 1
		 51 56 1 56 55 1 58 57 1 57 52 1 59 58 1 60 59 1 56 61 1 61 60 1 63 62 1 62 57 1 64 63 1
		 65 64 1 61 66 1 66 65 1 68 67 1 67 62 1 69 68 1 70 69 1 66 71 1 71 70 1 73 72 1 72 67 1
		 74 73 1 75 74 1 71 76 1 76 75 1 78 77 1 77 72 1 79 78 1 80 79 1 76 81 1 81 80 1 83 82 1
		 82 77 1 84 83 1 85 84 1 81 86 1 86 85 1 88 87 1 87 82 1 89 88 1 90 89 1 86 91 1 91 90 1
		 93 92 1 92 87 1 94 93 1 95 94 1 91 96 1 96 95 1 98 97 1 97 92 1 99 98 1 100 99 1
		 96 101 1 101 100 1 198 197 1 197 102 1 199 198 1 200 199 1 106 201 1 201 200 1 106 105 1
		 111 106 1 105 104 1 104 103 1 103 102 1 102 107 1 111 110 1 116 111 1 110 109 1 109 108 1
		 108 107 1 107 112 1 116 115 1 121 116 1 115 114 1 114 113 1 113 112 1 112 117 1 121 120 1
		 126 121 1 120 119 1 119 118 1 118 117 1 117 122 1 126 125 1 131 126 1 125 124 1 124 123 1
		 123 122 1 122 127 1 131 130 1 136 131 1 130 129 1 129 128 1 128 127 1 127 132 1 136 135 1
		 141 136 1 135 134 1 134 133 1;
	setAttr ".ed[166:331]" 133 132 1 132 137 1 141 140 1 146 141 1 140 139 1 139 138 1
		 138 137 1 137 142 1 146 145 1 151 146 1 145 144 1 144 143 1 143 142 1 142 147 1 151 150 1
		 156 151 1 150 149 1 149 148 1 148 147 1 147 152 1 156 155 1 161 156 1 155 154 1 154 153 1
		 153 152 1 152 157 1 161 160 1 166 161 1 160 159 1 159 158 1 158 157 1 157 162 1 166 165 1
		 171 166 1 165 164 1 164 163 1 163 162 1 162 167 1 171 170 1 176 171 1 170 169 1 169 168 1
		 168 167 1 167 172 1 176 175 1 181 176 1 175 174 1 174 173 1 173 172 1 172 177 1 181 180 1
		 186 181 1 180 179 1 179 178 1 178 177 1 177 182 1 186 185 1 191 186 1 185 184 1 184 183 1
		 183 182 1 182 187 1 191 190 1 196 191 1 190 189 1 189 188 1 188 187 1 187 192 1 196 195 1
		 201 196 1 195 194 1 194 193 1 193 192 1 192 197 1 7 107 1 102 2 1 12 112 1 17 117 1
		 22 122 1 27 127 1 32 132 1 37 137 1 42 142 1 47 147 1 52 152 1 57 157 1 62 162 1
		 67 167 1 72 172 1 77 177 1 82 182 1 87 187 1 92 192 1 97 197 1 6 0 1 0 11 1 0 16 1
		 0 21 1 0 26 1 0 31 1 0 36 1 0 41 1 0 46 1 0 51 1 0 56 1 0 61 1 0 66 1 0 71 1 0 76 1
		 0 81 1 0 86 1 0 91 1 0 96 1 0 101 1 111 1 1 1 106 1 116 1 1 121 1 1 126 1 1 131 1 1
		 136 1 1 141 1 1 146 1 1 151 1 1 156 1 1 161 1 1 166 1 1 171 1 1 176 1 1 181 1 1 186 1 1
		 191 1 1 196 1 1 201 1 1 5 10 1 4 9 1 3 8 1 10 15 1 9 14 1 8 13 1 15 20 1 14 19 1
		 13 18 1 20 25 1 19 24 1 18 23 1 25 30 1 24 29 1 23 28 1 30 35 1 29 34 1 28 33 1 35 40 1
		 34 39 1 33 38 1 40 45 1 39 44 1 38 43 1 45 50 1 44 49 1 43 48 1 50 55 1 49 54 1 48 53 1
		 55 60 1 54 59 1;
	setAttr ".ed[332:419]" 53 58 1 60 65 1 59 64 1 58 63 1 65 70 1 64 69 1 63 68 1
		 70 75 1 69 74 1 68 73 1 75 80 1 74 79 1 73 78 1 80 85 1 79 84 1 78 83 1 85 90 1 84 89 1
		 83 88 1 90 95 1 89 94 1 88 93 1 95 100 1 94 99 1 93 98 1 5 100 1 4 99 1 3 98 1 105 200 1
		 104 199 1 103 198 1 105 110 1 104 109 1 103 108 1 110 115 1 109 114 1 108 113 1 115 120 1
		 114 119 1 113 118 1 120 125 1 119 124 1 118 123 1 125 130 1 124 129 1 123 128 1 130 135 1
		 129 134 1 128 133 1 135 140 1 134 139 1 133 138 1 140 145 1 139 144 1 138 143 1 145 150 1
		 144 149 1 143 148 1 150 155 1 149 154 1 148 153 1 155 160 1 154 159 1 153 158 1 160 165 1
		 159 164 1 158 163 1 165 170 1 164 169 1 163 168 1 170 175 1 169 174 1 168 173 1 175 180 1
		 174 179 1 173 178 1 180 185 1 179 184 1 178 183 1 185 190 1 184 189 1 183 188 1 190 195 1
		 189 194 1 188 193 1 195 200 1 194 199 1 193 198 1;
	setAttr -s 220 -ch 840 ".fc[0:219]" -type "polyFaces" 
		f 4 -2 240 -132 241
		mu 0 4 82 0 3 1
		f 4 -14 242 -138 -241
		mu 0 4 0 2 5 3
		f 4 -20 243 -144 -243
		mu 0 4 2 4 7 5
		f 4 -26 244 -150 -244
		mu 0 4 4 6 9 7
		f 4 -32 245 -156 -245
		mu 0 4 6 8 11 9
		f 4 -38 246 -162 -246
		mu 0 4 8 10 13 11
		f 4 -44 247 -168 -247
		mu 0 4 10 12 15 13
		f 4 -50 248 -174 -248
		mu 0 4 12 14 17 15
		f 4 -56 249 -180 -249
		mu 0 4 14 16 19 17
		f 4 -62 250 -186 -250
		mu 0 4 16 18 21 19
		f 4 -68 251 -192 -251
		mu 0 4 18 20 23 21
		f 4 -74 252 -198 -252
		mu 0 4 20 22 25 23
		f 4 -80 253 -204 -253
		mu 0 4 22 24 27 25
		f 4 -86 254 -210 -254
		mu 0 4 24 26 29 27
		f 4 -92 255 -216 -255
		mu 0 4 26 28 31 29
		f 4 -98 256 -222 -256
		mu 0 4 28 30 33 31
		f 4 -104 257 -228 -257
		mu 0 4 30 32 35 33
		f 4 -110 258 -234 -258
		mu 0 4 32 34 37 35
		f 4 -116 259 -240 -259
		mu 0 4 34 36 39 37
		f 4 -12 -242 -122 -260
		mu 0 4 36 38 83 39
		f 3 -5 260 261
		mu 0 3 41 40 59
		f 3 -17 -262 262
		mu 0 3 42 41 59
		f 3 -23 -263 263
		mu 0 3 43 42 59
		f 3 -29 -264 264
		mu 0 3 44 43 59
		f 3 -35 -265 265
		mu 0 3 45 44 59
		f 3 -41 -266 266
		mu 0 3 46 45 59
		f 3 -47 -267 267
		mu 0 3 47 46 59
		f 3 -53 -268 268
		mu 0 3 48 47 59
		f 3 -59 -269 269
		mu 0 3 49 48 59
		f 3 -65 -270 270
		mu 0 3 50 49 59
		f 3 -71 -271 271
		mu 0 3 51 50 59
		f 3 -77 -272 272
		mu 0 3 52 51 59
		f 3 -83 -273 273
		mu 0 3 53 52 59
		f 3 -89 -274 274
		mu 0 3 54 53 59
		f 3 -95 -275 275
		mu 0 3 55 54 59
		f 3 -101 -276 276
		mu 0 3 56 55 59
		f 3 -107 -277 277
		mu 0 3 57 56 59
		f 3 -113 -278 278
		mu 0 3 58 57 59
		f 3 -119 -279 279
		mu 0 3 60 58 59
		f 3 -8 -280 -261
		mu 0 3 40 60 59
		f 3 -128 280 281
		mu 0 3 80 61 81
		f 3 -134 282 -281
		mu 0 3 61 62 81
		f 3 -140 283 -283
		mu 0 3 62 63 81
		f 3 -146 284 -284
		mu 0 3 63 64 81
		f 3 -152 285 -285
		mu 0 3 64 65 81
		f 3 -158 286 -286
		mu 0 3 65 66 81
		f 3 -164 287 -287
		mu 0 3 66 67 81
		f 3 -170 288 -288
		mu 0 3 67 68 81
		f 3 -176 289 -289
		mu 0 3 68 69 81
		f 3 -182 290 -290
		mu 0 3 69 70 81
		f 3 -188 291 -291
		mu 0 3 70 71 81
		f 3 -194 292 -292
		mu 0 3 71 72 81
		f 3 -200 293 -293
		mu 0 3 72 73 81
		f 3 -206 294 -294
		mu 0 3 73 74 81
		f 3 -212 295 -295
		mu 0 3 74 75 81
		f 3 -218 296 -296
		mu 0 3 75 76 81
		f 3 -224 297 -297
		mu 0 3 76 77 81
		f 3 -230 298 -298
		mu 0 3 77 78 81
		f 3 -236 299 -299
		mu 0 3 78 79 81
		f 3 -125 -282 -300
		mu 0 3 79 80 81
		f 4 -7 4 5 -301
		mu 0 4 89 40 41 93
		f 4 -9 300 3 -302
		mu 0 4 87 89 93 91
		f 4 -11 302 0 1
		mu 0 4 82 85 90 0
		f 4 -10 301 2 -303
		mu 0 4 85 88 92 90
		f 4 -6 16 17 -304
		mu 0 4 93 41 42 97
		f 4 -4 303 15 -305
		mu 0 4 91 93 97 95
		f 4 -1 305 12 13
		mu 0 4 0 90 94 2
		f 4 -3 304 14 -306
		mu 0 4 90 92 96 94
		f 4 -18 22 23 -307
		mu 0 4 97 42 43 101
		f 4 -16 306 21 -308
		mu 0 4 95 97 101 99
		f 4 -13 308 18 19
		mu 0 4 2 94 98 4
		f 4 -15 307 20 -309
		mu 0 4 94 96 100 98
		f 4 -24 28 29 -310
		mu 0 4 101 43 44 105
		f 4 -22 309 27 -311
		mu 0 4 99 101 105 103
		f 4 -19 311 24 25
		mu 0 4 4 98 102 6
		f 4 -21 310 26 -312
		mu 0 4 98 100 104 102
		f 4 -30 34 35 -313
		mu 0 4 105 44 45 109
		f 4 -28 312 33 -314
		mu 0 4 103 105 109 107
		f 4 -25 314 30 31
		mu 0 4 6 102 106 8
		f 4 -27 313 32 -315
		mu 0 4 102 104 108 106
		f 4 -36 40 41 -316
		mu 0 4 109 45 46 113
		f 4 -34 315 39 -317
		mu 0 4 107 109 113 111
		f 4 -31 317 36 37
		mu 0 4 8 106 110 10
		f 4 -33 316 38 -318
		mu 0 4 106 108 112 110
		f 4 -42 46 47 -319
		mu 0 4 113 46 47 117
		f 4 -40 318 45 -320
		mu 0 4 111 113 117 115
		f 4 -37 320 42 43
		mu 0 4 10 110 114 12
		f 4 -39 319 44 -321
		mu 0 4 110 112 116 114
		f 4 -48 52 53 -322
		mu 0 4 117 47 48 121
		f 4 -46 321 51 -323
		mu 0 4 115 117 121 119
		f 4 -43 323 48 49
		mu 0 4 12 114 118 14
		f 4 -45 322 50 -324
		mu 0 4 114 116 120 118
		f 4 -54 58 59 -325
		mu 0 4 121 48 49 125
		f 4 -52 324 57 -326
		mu 0 4 119 121 125 123
		f 4 -49 326 54 55
		mu 0 4 14 118 122 16
		f 4 -51 325 56 -327
		mu 0 4 118 120 124 122
		f 4 -60 64 65 -328
		mu 0 4 125 49 50 129
		f 4 -58 327 63 -329
		mu 0 4 123 125 129 127
		f 4 -55 329 60 61
		mu 0 4 16 122 126 18
		f 4 -57 328 62 -330
		mu 0 4 122 124 128 126
		f 4 -66 70 71 -331
		mu 0 4 129 50 51 133
		f 4 -64 330 69 -332
		mu 0 4 127 129 133 131
		f 4 -61 332 66 67
		mu 0 4 18 126 130 20
		f 4 -63 331 68 -333
		mu 0 4 126 128 132 130
		f 4 -72 76 77 -334
		mu 0 4 133 51 52 137
		f 4 -70 333 75 -335
		mu 0 4 131 133 137 135
		f 4 -67 335 72 73
		mu 0 4 20 130 134 22
		f 4 -69 334 74 -336
		mu 0 4 130 132 136 134
		f 4 -78 82 83 -337
		mu 0 4 137 52 53 141
		f 4 -76 336 81 -338
		mu 0 4 135 137 141 139
		f 4 -73 338 78 79
		mu 0 4 22 134 138 24
		f 4 -75 337 80 -339
		mu 0 4 134 136 140 138
		f 4 -84 88 89 -340
		mu 0 4 141 53 54 145
		f 4 -82 339 87 -341
		mu 0 4 139 141 145 143
		f 4 -79 341 84 85
		mu 0 4 24 138 142 26
		f 4 -81 340 86 -342
		mu 0 4 138 140 144 142
		f 4 -90 94 95 -343
		mu 0 4 145 54 55 149
		f 4 -88 342 93 -344
		mu 0 4 143 145 149 147
		f 4 -85 344 90 91
		mu 0 4 26 142 146 28
		f 4 -87 343 92 -345
		mu 0 4 142 144 148 146
		f 4 -96 100 101 -346
		mu 0 4 149 55 56 153
		f 4 -94 345 99 -347
		mu 0 4 147 149 153 151
		f 4 -91 347 96 97
		mu 0 4 28 146 150 30
		f 4 -93 346 98 -348
		mu 0 4 146 148 152 150
		f 4 -102 106 107 -349
		mu 0 4 153 56 57 157
		f 4 -100 348 105 -350
		mu 0 4 151 153 157 155
		f 4 -97 350 102 103
		mu 0 4 30 150 154 32
		f 4 -99 349 104 -351
		mu 0 4 150 152 156 154
		f 4 -108 112 113 -352
		mu 0 4 157 57 58 161
		f 4 -106 351 111 -353
		mu 0 4 155 157 161 159
		f 4 -103 353 108 109
		mu 0 4 32 154 158 34
		f 4 -105 352 110 -354
		mu 0 4 154 156 160 158
		f 4 -114 118 119 -355
		mu 0 4 161 58 60 165
		f 4 -112 354 117 -356
		mu 0 4 159 161 165 163
		f 4 -109 356 114 115
		mu 0 4 34 158 162 36
		f 4 -111 355 116 -357
		mu 0 4 158 160 164 162
		f 4 6 357 -120 7
		mu 0 4 40 89 165 60
		f 4 8 358 -118 -358
		mu 0 4 89 87 163 165
		f 4 9 359 -117 -359
		mu 0 4 86 84 162 164
		f 4 10 11 -115 -360
		mu 0 4 84 38 36 162
		f 4 -127 124 125 -361
		mu 0 4 171 80 79 247
		f 4 -129 360 123 -362
		mu 0 4 169 171 247 245
		f 4 -131 362 120 121
		mu 0 4 83 167 244 39
		f 4 -130 361 122 -363
		mu 0 4 167 170 246 244
		f 4 126 363 -133 127
		mu 0 4 80 171 175 61
		f 4 128 364 -135 -364
		mu 0 4 171 169 174 175
		f 4 129 365 -136 -365
		mu 0 4 168 166 172 173
		f 4 130 131 -137 -366
		mu 0 4 166 1 3 172
		f 4 132 366 -139 133
		mu 0 4 61 175 179 62
		f 4 134 367 -141 -367
		mu 0 4 175 174 178 179
		f 4 135 368 -142 -368
		mu 0 4 173 172 176 177
		f 4 136 137 -143 -369
		mu 0 4 172 3 5 176
		f 4 138 369 -145 139
		mu 0 4 62 179 183 63
		f 4 140 370 -147 -370
		mu 0 4 179 178 182 183
		f 4 141 371 -148 -371
		mu 0 4 177 176 180 181
		f 4 142 143 -149 -372
		mu 0 4 176 5 7 180
		f 4 144 372 -151 145
		mu 0 4 63 183 187 64
		f 4 146 373 -153 -373
		mu 0 4 183 182 186 187
		f 4 147 374 -154 -374
		mu 0 4 181 180 184 185
		f 4 148 149 -155 -375
		mu 0 4 180 7 9 184
		f 4 150 375 -157 151
		mu 0 4 64 187 191 65
		f 4 152 376 -159 -376
		mu 0 4 187 186 190 191
		f 4 153 377 -160 -377
		mu 0 4 185 184 188 189
		f 4 154 155 -161 -378
		mu 0 4 184 9 11 188
		f 4 156 378 -163 157
		mu 0 4 65 191 195 66
		f 4 158 379 -165 -379
		mu 0 4 191 190 194 195
		f 4 159 380 -166 -380
		mu 0 4 189 188 192 193
		f 4 160 161 -167 -381
		mu 0 4 188 11 13 192
		f 4 162 381 -169 163
		mu 0 4 66 195 199 67
		f 4 164 382 -171 -382
		mu 0 4 195 194 198 199
		f 4 165 383 -172 -383
		mu 0 4 193 192 196 197
		f 4 166 167 -173 -384
		mu 0 4 192 13 15 196
		f 4 168 384 -175 169
		mu 0 4 67 199 203 68
		f 4 170 385 -177 -385
		mu 0 4 199 198 202 203
		f 4 171 386 -178 -386
		mu 0 4 197 196 200 201
		f 4 172 173 -179 -387
		mu 0 4 196 15 17 200
		f 4 174 387 -181 175
		mu 0 4 68 203 207 69
		f 4 176 388 -183 -388
		mu 0 4 203 202 206 207
		f 4 177 389 -184 -389
		mu 0 4 201 200 204 205
		f 4 178 179 -185 -390
		mu 0 4 200 17 19 204
		f 4 180 390 -187 181
		mu 0 4 69 207 211 70
		f 4 182 391 -189 -391
		mu 0 4 207 206 210 211
		f 4 183 392 -190 -392
		mu 0 4 205 204 208 209
		f 4 184 185 -191 -393
		mu 0 4 204 19 21 208
		f 4 186 393 -193 187
		mu 0 4 70 211 215 71
		f 4 188 394 -195 -394
		mu 0 4 211 210 214 215
		f 4 189 395 -196 -395
		mu 0 4 209 208 212 213
		f 4 190 191 -197 -396
		mu 0 4 208 21 23 212
		f 4 192 396 -199 193
		mu 0 4 71 215 219 72
		f 4 194 397 -201 -397
		mu 0 4 215 214 218 219
		f 4 195 398 -202 -398
		mu 0 4 213 212 216 217
		f 4 196 197 -203 -399
		mu 0 4 212 23 25 216
		f 4 198 399 -205 199
		mu 0 4 72 219 223 73
		f 4 200 400 -207 -400
		mu 0 4 219 218 222 223
		f 4 201 401 -208 -401
		mu 0 4 217 216 220 221
		f 4 202 203 -209 -402
		mu 0 4 216 25 27 220
		f 4 204 402 -211 205
		mu 0 4 73 223 227 74
		f 4 206 403 -213 -403
		mu 0 4 223 222 226 227
		f 4 207 404 -214 -404
		mu 0 4 221 220 224 225
		f 4 208 209 -215 -405
		mu 0 4 220 27 29 224
		f 4 210 405 -217 211
		mu 0 4 74 227 231 75
		f 4 212 406 -219 -406
		mu 0 4 227 226 230 231
		f 4 213 407 -220 -407
		mu 0 4 225 224 228 229
		f 4 214 215 -221 -408
		mu 0 4 224 29 31 228
		f 4 216 408 -223 217
		mu 0 4 75 231 235 76
		f 4 218 409 -225 -409
		mu 0 4 231 230 234 235
		f 4 219 410 -226 -410
		mu 0 4 229 228 232 233
		f 4 220 221 -227 -411
		mu 0 4 228 31 33 232
		f 4 222 411 -229 223
		mu 0 4 76 235 239 77
		f 4 224 412 -231 -412
		mu 0 4 235 234 238 239
		f 4 225 413 -232 -413
		mu 0 4 233 232 236 237
		f 4 226 227 -233 -414
		mu 0 4 232 33 35 236
		f 4 228 414 -235 229
		mu 0 4 77 239 243 78
		f 4 230 415 -237 -415
		mu 0 4 239 238 242 243
		f 4 231 416 -238 -416
		mu 0 4 237 236 240 241
		f 4 232 233 -239 -417
		mu 0 4 236 35 37 240
		f 4 234 417 -126 235
		mu 0 4 78 243 247 79
		f 4 236 418 -124 -418
		mu 0 4 243 242 245 247
		f 4 237 419 -123 -419
		mu 0 4 241 240 244 246
		f 4 238 239 -121 -420
		mu 0 4 240 37 39 244;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Jacob_FacePanel_Geo" -p "geo";
	rename -uid "58D7AC16-435E-B849-3716-DD88E3102C3E";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.9073486328124941e-06 8.8182489462407165 8.9223952293396014 ;
	setAttr ".sp" -type "double3" -1.9073486328124943e-06 8.8182489462407165 8.9223952293395996 ;
createNode mesh -n "Jacob_FacePanel_GeoShape" -p "Jacob_FacePanel_Geo";
	rename -uid "FA873878-4348-007A-DFE6-EAA67A4FC44D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54999983310699463 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "Jacob_FacePanel_GeoShapeOrig" -p "Jacob_FacePanel_Geo";
	rename -uid "C3E314F5-46CC-5335-9672-358C2C5B8144";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:471]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 534 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.51249987 0.39124244 0.51249987
		 0.39124244 0.52499986 0.39124212 0.52499986 0.39124212 0.53749985 0.39124244 0.53749985
		 0.39124244 0.54999983 0.39124244 0.54999983 0.39124244 0.56249982 0.39124244 0.56249982
		 0.39124244 0.57499981 0.39124244 0.57499981 0.39124244 0.5874998 0.39124212 0.5874998
		 0.39124212 0.51249987 0.60875779 0.51249987 0.60875779 0.52499986 0.60875791 0.52499986
		 0.60875791 0.53749985 0.60875785 0.53749985 0.60875785 0.54999983 0.60875791 0.54999983
		 0.60875791 0.56249982 0.60875779 0.56249982 0.60875779 0.57499981 0.60875779 0.57499981
		 0.60875779 0.58749986 0.60875791 0.58749986 0.60875791 0.51384193 0.41843182 0.51384193
		 0.58156836 0.52499986 0.41843164 0.52499986 0.58156842 0.53749985 0.41843185 0.53749985
		 0.58156848 0.54999983 0.41843188 0.54999983 0.58156848 0.56249976 0.41843188 0.56249976
		 0.58156836 0.57499981 0.41843182 0.57499981 0.58156836 0.58615774 0.41843161 0.5861578
		 0.58156842 0.50714988 0.3912423 0.50714988 0.3912423 0.50525248 0.40554714 0.50525248
		 0.40554714 0.50283831 0.42374834 0.50283831 0.42374834 0.49999988 0.44514784 0.49999988
		 0.44514784 0.50039828 0.47219646 0.50187677 0.44341475 0.50475919 0.41933456 0.51014698
		 0.4180727 0.49999988 0.55485231 0.49999988 0.55485231 0.50283831 0.5762518 0.50283831
		 0.5762518 0.50525248 0.59445298 0.50525248 0.59445298 0.50714988 0.60875785 0.50714988
		 0.60875785 0.5007056 0.52534384 0.51045197 0.57938403 0.50676227 0.56402099 0.50321877
		 0.54573989 0.59999979 0.44514802 0.59999979 0.44514802 0.59716135 0.42374843 0.59716135
		 0.42374843 0.59474713 0.40554714 0.59474713 0.40554714 0.59284973 0.39124224 0.59284973
		 0.39124224 0.5994035 0.47385579 0.58957124 0.41997665 0.59344041 0.43169278 0.59717381
		 0.45091879 0.59284979 0.60875791 0.59284979 0.60875791 0.59474719 0.59445304 0.59474719
		 0.59445304 0.59716135 0.5762518 0.59716135 0.5762518 0.59999979 0.55485231 0.59999979
		 0.55485231 0.58957815 0.57995915 0.59932613 0.52592629 0.59691966 0.5482806 0.59343827
		 0.56779927 0.52499986 0.41843167 0.51384193 0.41843182 0.52499986 0.58156842 0.51384193
		 0.58156836 0.53749985 0.41843182 0.53749985 0.58156848 0.54999983 0.41843188 0.54999983
		 0.58156848 0.56249976 0.41843188 0.56249982 0.58156836 0.57499981 0.41843182 0.57499981
		 0.58156836 0.58615774 0.41843164 0.5861578 0.58156842 0.51014698 0.4180727 0.50793922
		 0.39276308 0.51345766 0.39124238 0.50800025 0.60687375 0.51345766 0.60875785 0.51045197
		 0.57938397 0.5007056 0.52534384 0.50036561 0.5416317 0.50033104 0.45817077 0.50039828
		 0.47219646 0.52499986 0.39124221 0.52499986 0.60875785 0.53749985 0.39124241 0.53749985
		 0.60875785 0.54999983 0.39124244 0.54999983 0.60875791 0.56249976 0.39124244 0.56249982
		 0.60875785 0.57499981 0.39124238 0.57499981 0.60875785 0.58654201 0.39124215 0.58654207
		 0.60875785 0.59201121 0.39307296 0.58957124 0.41997665 0.5994035 0.47385579 0.59964901
		 0.45832157 0.59964031 0.54166126 0.59932613 0.52592629 0.58957815 0.57995915 0.5920127
		 0.60691798 0.50261718 0.4245187 0.50187671 0.44341475 0.50506938 0.40447152 0.50475919
		 0.41933456 0.50547004 0.59315085 0.50676227 0.56402099 0.50288552 0.57393205 0.50321877
		 0.54573989 0.59461588 0.40648216 0.59344047 0.43169278 0.59721583 0.42573261 0.59717375
		 0.45091882 0.59716499 0.57415318 0.59691966 0.5482806 0.59461546 0.59344542 0.59343827
		 0.56779927 0.51874983 0.50000006 0.53124988 0.50000006 0.54374981 0.50000012 0.55624986
		 0.50000018 0.56874979 0.50000012 0.58124983 0.50000006 0.5108496 0.39124238 0.5108496
		 0.60875779 0.49999988 0.50000012 0.51874983 0.39124227 0.51874983 0.60875785 0.53124988
		 0.3912423 0.53124988 0.60875785 0.54374981 0.39124244 0.54374981 0.60875785 0.55624986
		 0.39124244 0.55624986 0.60875785 0.56874979 0.39124244 0.56874979 0.60875779 0.58124983
		 0.39124227 0.58124983 0.60875785 0.58915007 0.39124215 0.59999979 0.50000018 0.58915013
		 0.60875791 0.50104135 0.44133139 0.50324392 0.41103467 0.50680214 0.39411682 0.50777829
		 0.60006964 0.50477308 0.57998914 0.50159442 0.55550605 0.59241158 0.39907667 0.59565634
		 0.41840479 0.59864485 0.44374168 0.59850562 0.555978 0.59553921 0.581168 0.59243363
		 0.60077667 0.50121665 0.49683738 0.58812535 0.5 0.51187426 0.50000012 0.50837922
		 0.4941864 0.50397158 0.49102372 0.59104675 0.49985322 0.59524125 0.49957266 0.59856987
		 0.49971956 0.51874983 0.50000006 0.53124988 0.50000006 0.54374981 0.50000018 0.5562498
		 0.50000018 0.56874979 0.50000012 0.58124983 0.50000006 0.5108496 0.39124238 0.5108496
		 0.60875785 0.49999988 0.50000006 0.51874983 0.3912423 0.51874983 0.60875785 0.53124988
		 0.39124227 0.53124988 0.60875791 0.54374981 0.39124244 0.54374987 0.60875785 0.5562498
		 0.39124244 0.55624986 0.60875785 0.56874979 0.39124244 0.56874979 0.60875779 0.58124983
		 0.3912423 0.58124983 0.60875785 0.58915007 0.39124215 0.59999979 0.50000018 0.58915013
		 0.60875791 0.50104135 0.44133142 0.50324392 0.41103467 0.50680214 0.39411682 0.50777829
		 0.60006964 0.50477308 0.57998908 0.50159442 0.55550605 0.59241158 0.39907667 0.59565634
		 0.41840482 0.59864479 0.44374168 0.59850562 0.555978 0.59553921 0.581168 0.59243363
		 0.60077667 0.50121665 0.49683741 0.58812541 0.5 0.51187432 0.50000012 0.50837922
		 0.4941864 0.50397158 0.49102372 0.59104675 0.49985322 0.59524131 0.49957269 0.59856987
		 0.4997195 0.50982487 0.39124238 0.50982487 0.60875785 0.49999988 0.50000006 0.51874983
		 0.39124227 0.51874983 0.60875785 0.53124988 0.3912423 0.53124988 0.60875785 0.54374981
		 0.39124244 0.54374981 0.60875785 0.55624986 0.39124244 0.55624986 0.60875785 0.56874979
		 0.39124244;
	setAttr ".uvst[0].uvsp[250:499]" 0.56874979 0.60875779 0.58124983 0.39124227
		 0.58124983 0.60875785 0.59017479 0.39124218 0.59999979 0.50000018 0.59017479 0.60875791
		 0.50141907 0.43444809 0.50404537 0.41464776 0.50620115 0.3983947 0.50620115 0.60160542
		 0.50404537 0.58535242 0.50141907 0.56555206 0.5937984 0.3983947 0.59595424 0.41464779
		 0.5985806 0.43444824 0.5985806 0.56555206 0.5959543 0.58535242 0.59379852 0.60160547
		 0.51874983 0.4184317 0.52499986 0.5 0.51874983 0.58156836 0.51390594 0.50000012 0.53124988
		 0.4184317 0.53749985 0.50000012 0.53124988 0.58156836 0.54374981 0.41843188 0.54999983
		 0.50000018 0.54374981 0.58156842 0.55624986 0.41843188 0.56249982 0.50000012 0.55624986
		 0.58156848 0.56874979 0.41843188 0.57499981 0.50000012 0.56874979 0.58156836 0.58124983
		 0.4184317 0.58609372 0.5 0.58124983 0.58156836 0.50901258 0.39196098 0.51008105 0.39124238
		 0.51364982 0.39124238 0.51161814 0.41843185 0.51008105 0.60875785 0.5092566 0.60658574
		 0.51161814 0.58156836 0.51364982 0.60875785 0.50039852 0.53508425 0.49999988 0.50000006
		 0.50026023 0.46412528 0.5003041 0.4992094 0.51874983 0.39124227 0.52499986 0.39124221
		 0.51874983 0.60875785 0.52499986 0.60875785 0.53124988 0.39124227 0.53749985 0.39124238
		 0.53124988 0.60875785 0.53749985 0.60875785 0.54374981 0.39124244 0.54999983 0.39124244
		 0.54374981 0.60875785 0.54999983 0.60875785 0.55624986 0.39124244 0.56249982 0.39124244
		 0.55624986 0.60875785 0.56249982 0.60875779 0.56874979 0.39124244 0.57499981 0.39124238
		 0.56874979 0.60875779 0.57499981 0.60875785 0.58124983 0.39124227 0.58634984 0.39124218
		 0.58124983 0.60875785 0.5863499 0.60875791 0.58991861 0.39124218 0.59079057 0.39320081
		 0.58838153 0.41843158 0.59966105 0.46472794 0.59999979 0.50000018 0.59962624 0.53520226
		 0.59964228 0.49993002 0.59079617 0.60676259 0.58991861 0.60875791 0.58838153 0.58156842
		 0.50132465 0.43616894 0.50211275 0.42563054 0.50089633 0.45864955 0.50384498 0.41374451
		 0.50471401 0.39978355 0.50302505 0.42922539 0.50635135 0.39732525 0.50749689 0.41699529
		 0.50659543 0.60122144 0.50631642 0.59070539 0.50871706 0.57283092 0.50422728 0.58401161
		 0.50318635 0.56817216 0.50493658 0.55506617 0.50146294 0.56304055 0.50158763 0.53581589
		 0.59345168 0.3985652 0.59402841 0.40782595 0.59137696 0.42461181 0.59587973 0.41558704
		 0.59722018 0.43048584 0.59540361 0.44057527 0.59859669 0.4367716 0.5986582 0.46238291
		 0.59856188 0.56315851 0.59701693 0.56905681 0.59848422 0.53712636 0.59585053 0.5843063
		 0.59402663 0.59188384 0.59525716 0.55867696 0.59345734 0.60139829 0.5914045 0.57513136
		 0.50251377 0.49380267 0.58916849 0.49996331 0.51068771 0.49854669 0.50584257 0.49048889
		 0.5932433 0.4997097 0.59702277 0.49954253 0.513906 0.50000012 0.51874983 0.58156836
		 0.52499986 0.5 0.51874983 0.4184317 0.53124988 0.58156842 0.53749985 0.50000012 0.53124988
		 0.4184317 0.54374981 0.58156848 0.54999983 0.50000018 0.54374981 0.41843188 0.55624986
		 0.58156848 0.56249976 0.50000012 0.55624986 0.41843188 0.56874979 0.58156836 0.57499981
		 0.50000012 0.56874979 0.41843188 0.58124983 0.58156836 0.58609372 0.5 0.58124983
		 0.4184317 0.51161814 0.41843185 0.51364982 0.39124238 0.50982487 0.39124238 0.50982487
		 0.39124238 0.50901258 0.39196098 0.51364982 0.60875785 0.51161814 0.58156836 0.5092566
		 0.6065858 0.50982487 0.60875785 0.50982487 0.60875785 0.5003041 0.4992094 0.50026023
		 0.46412528 0.49999988 0.50000006 0.49999988 0.50000006 0.50039852 0.53508419 0.52499986
		 0.39124221 0.51874983 0.39124227 0.51874983 0.39124227 0.52499986 0.60875791 0.51874983
		 0.60875785 0.51874983 0.60875785 0.53749985 0.39124238 0.53124988 0.39124227 0.53124988
		 0.39124227 0.53749985 0.60875785 0.53124988 0.60875785 0.53124988 0.60875785 0.54999983
		 0.39124244 0.54374981 0.39124244 0.54374981 0.39124244 0.54999983 0.60875785 0.54374981
		 0.60875785 0.54374981 0.60875785 0.56249976 0.39124244 0.55624986 0.39124244 0.55624986
		 0.39124244 0.56249982 0.60875779 0.55624986 0.60875785 0.55624986 0.60875785 0.57499981
		 0.39124238 0.56874979 0.39124244 0.56874979 0.39124244 0.57499981 0.60875785 0.56874979
		 0.60875779 0.56874979 0.60875779 0.58634984 0.39124218 0.58124983 0.39124227 0.58124983
		 0.39124227 0.5863499 0.60875791 0.58124983 0.60875785 0.58124983 0.60875785 0.58838153
		 0.41843158 0.59079057 0.39320081 0.59017479 0.39124218 0.59017479 0.39124218 0.59964228
		 0.49992999 0.59962624 0.53520226 0.59999979 0.50000018 0.59999979 0.50000018 0.59966105
		 0.46472794 0.58838159 0.58156842 0.59017479 0.60875791 0.59017479 0.60875791 0.59079617
		 0.60676259 0.50089633 0.45864955 0.50211275 0.42563054 0.50141907 0.43444809 0.50141907
		 0.43444809 0.50302505 0.42922539 0.50471401 0.39978355 0.50404537 0.41464776 0.50404537
		 0.41464776 0.50749689 0.41699529 0.50620115 0.3983947 0.50620115 0.3983947 0.50871706
		 0.57283092 0.50631642 0.59070539 0.50620115 0.60160542 0.50620115 0.60160542 0.50493658
		 0.55506611 0.50318635 0.56817216 0.50404537 0.58535242 0.50404537 0.58535242 0.50158763
		 0.53581589 0.50141907 0.56555206 0.50141907 0.56555206 0.59137696 0.42461181 0.59402841
		 0.40782595 0.5937984 0.3983947 0.5937984 0.3983947 0.59540361 0.4405753 0.59722018
		 0.43048584 0.59595424 0.41464779 0.59595424 0.41464779 0.5986582 0.46238288 0.5985806
		 0.43444824 0.5985806 0.43444824 0.59848422 0.5371263 0.59701693 0.56905681 0.5985806
		 0.56555206 0.5985806 0.56555206 0.59525716 0.55867696 0.59402663 0.59188384 0.5959543
		 0.58535242 0.5959543 0.58535242 0.5914045 0.57513136 0.59379852 0.60160547 0.59379852
		 0.60160547 0.50251377 0.49380267 0.58916855 0.49996331;
	setAttr ".uvst[0].uvsp[500:533]" 0.51068771 0.49854669 0.50584257 0.49048889
		 0.5932433 0.49970973 0.59702277 0.4995425 0.51339364 0.39124238 0.50758147 0.39303043
		 0.50758147 0.60696971 0.51339364 0.60875785 0.50035465 0.45618597 0.50035465 0.54381418
		 0.52499986 0.39124221 0.52499986 0.60875785 0.53749985 0.39124238 0.53749985 0.60875785
		 0.54999983 0.39124244 0.54999983 0.60875785 0.56249982 0.39124244 0.56249982 0.60875779
		 0.57499981 0.39124238 0.57499981 0.60875785 0.58660603 0.39124218 0.58660609 0.60875791
		 0.59241819 0.39303035 0.59964502 0.54381418 0.59964502 0.45618612 0.59241819 0.60696977
		 0.50278527 0.42414814 0.50518787 0.4060342 0.50518787 0.59396595 0.50278527 0.57585204
		 0.59481174 0.4060342 0.5972144 0.42414823 0.5972144 0.57585204 0.5948118 0.59396601;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 474 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -0.14673054 0 0 -0.14008352 0 0 -0.13938841 
		0 5.7174724e-21 -0.13938841 0 0 -0.13938841 0 0 -0.14008337 0 0 -0.14673033 0 0 1.0749676 
		0 0 1.0683208 0 0 1.067626 0 5.7174724e-21 1.067626 0 0 1.067626 0 0 1.068321 0 0 
		1.0749682 0 0 0.11001282 0 0 0.81822515 0 0 0.11515716 0 0 0.81308067 0 0 0.11687858 
		0 0 0.81135911 0 5.7174724e-21 0.11687858 0 5.7174724e-21 0.81135911 0 0 0.11687858 
		0 0 0.81135911 0 0 0.11515692 0 0 0.81308126 0 0 0.11001252 0 0 0.81822616 0 0 -0.14657989 
		0 0 -0.092827857 0 0 0.024247989 0 0 0.22597396 0 0 0.34262881 0 0 0.25113195 0 0 
		0.16422008 0 0 0.11633133 0 0 0.70226359 0 0 0.90398961 0 0 1.0210652 0 0 1.0748172 
		0 0 0.58560902 0 0 0.81190634 0 0 0.76401752 0 0 0.67710602 0 0 0.22597396 0 0 0.024247915 
		0 0 -0.092827708 0 0 -0.14657968 0 0 0.34262887 0 0 0.11633126 0 0 0.16422008 0 0 
		0.25113189 0 0 1.0748177 0 0 1.0210654 0 0 0.90398979 0 0 0.70226359 0 0 0.81190711 
		0 0 0.58560902 0 0 0.6771059 0 0 0.76401788 0 0 0.11533054 0 0 0.1100665 0 0 0.81290716 
		0 0 0.81817126 0 0 0.11687858 0 0 0.81135911 0 5.7174724e-21 0.11687858 0 5.7174724e-21 
		0.81135911 0 0 0.11687861 0 0 0.81135911 0 0 0.11533029 0 0 0.8129074 0 0 0.11006606 
		0 0 0.81817162 0 0 0.11569766 0 0 -0.14745268 0 0 -0.14704841 0 0 1.0756892 0 0 1.0752848 
		0 0 0.81253982 0 0 0.58557826 0 0 0.70222163 0 0 0.22601601 0 0 0.34265971 0 0 -0.14006343 
		0 0 1.0683 0 0 -0.13938847 0 0 1.067626 0 5.7174724e-21 -0.13938838 0 5.7174724e-21 
		1.067626 0 0 -0.13938838 0 0 1.067626 0 0 -0.14006329 0 0 1.068301 0 0 -0.14704823 
		0 0 1.0752861 0 0 -0.14745262 0 0 0.11569736 0 0 0.34265971 0 0 0.22601601 0 0 0.70222151 
		0 0 0.58557814 0 0 0.81254029 0 0 1.07569 0 0 0.024248421 0 0 0.2511332 0 0 -0.093453914 
		0 0 0.16360508 0 0 1.0216912 0 0 0.76463246 0 0 0.90398937 0 0 0.65078098 0 0 -0.093453974 
		0 0 0.16360503 0 0 0.024248347 0 0 0.2511332 0 0 0.90398937 0 0 0.65078086 0 0 1.0216914 
		0 0 0.76463258 0 0 0.11753319 0 0 0.81303132 0 0 0.46411884 0 0 0.11520559 0 0 0.11209586 
		0 0 -0.072689891 0 0 -0.14929563 0 0 -0.067102402 0 0 1.0009289 0 0 0.81614208 0 
		0 0.99534094 0 0 1.0775331 0 0 0.46411896 0 0 0.28289568 0 0 0.46411884 0 0 0.64534193 
		0 0 -0.066444993 0 0 -0.1416223 0 0 0.99468333 0 0 1.0698599 0 0 -0.064995408 0 0 
		-0.13890451 0 0 0.99323273 0 0 1.067142 0 5.7174724e-21 -0.064995408 0 0 -0.13938841 
		0 5.7174724e-21 0.99323273 0 0 1.0676258 0 0 -0.064995408 0 0 -0.13938841 0 0 0.99323273 
		0 0 1.0676258 0 0 -0.066444933 0 0 -0.13890463 0 0 0.99468327 0 0 1.067142 0 0 -0.072689772 
		0 0 -0.14162245 0 0 1.0009285 0 0 1.0698593 0 0 0.11209591 0 0 -0.067102343 0 0 -0.14929578 
		0 0 0.46411896 0 0 0.64534193 0 0 0.46411884 0;
	setAttr ".pt[166:331]" 0 0.28289568 0 0 0.81614071 0 0 1.0775328 0 0 0.9953407 
		0 0 0.29961419 0 0 0.10677699 0 0 0.095696121 0 0 0.2073411 0 0 -0.0079127252 0 0 
		-0.037408262 0 0 0.13456985 0 0 -0.12893227 0 0 0.79366773 0 0 0.93615049 0 0 1.0571699 
		0 0 0.72089666 0 0 0.82146055 0 0 0.96564579 0 0 0.6286236 0 0 0.83254135 0 0 0.13456991 
		0 0 -0.0079127252 0 0 -0.12893233 0 0 0.2073411 0 0 0.10677699 0 0 -0.037408262 0 
		0 0.29961419 0 0 0.095696121 0 0 0.6286236 0 0 0.82146055 0 0 0.83254135 0 0 0.72089666 
		0 0 0.93615049 0 0 0.96564579 0 0 0.79366714 0 0 1.0571694 0 0 0.46411884 0 0 0.46411884 
		0 0 0.46411884 0 0 0.46411884 0 0 0.46411896 0 0 0.46411884 0 0 -0.17182475 0 0 -0.17365 
		0 0 1.1018879 0 0 1.100063 0 0 0.20701987 0 0 0.72121775 0 0 -0.16473135 0 0 1.0929693 
		0 0 -0.16418612 0 0 1.0924234 0 5.7174724e-21 -0.16418606 0 5.7174724e-21 1.0924234 
		0 0 -0.16418606 0 0 1.0924234 0 0 -0.16473135 0 0 1.0929693 0 0 -0.1718249 0 0 1.100063 
		0 0 -0.17365012 0 0 0.72121775 0 0 0.20701987 0 0 1.1018879 0 0 -0.0032616556 0 0 
		-0.12144399 0 0 1.0496818 0 0 0.9314993 0 0 -0.12144399 0 0 -0.0032616556 0 0 0.9314993 
		0 0 1.0496818 0 0 0.11487646 0 0 0.46411884 0 0 0.81336117 0 0 0.46411884 0 0 0.11741758 
		0 0 0.46411884 0 0 0.8108201 0 0 0.11687858 0 5.7174724e-21 0.46411884 0 0 0.81135911 
		0 0 0.11687858 0 0 0.46411884 0 0 0.81135911 0 0 0.11741775 0 0 0.46411884 0 0 0.81081998 
		0 0 0.11487673 0 0 0.46411884 0 0 0.81336105 0 0 -0.068146884 0 0 -0.1501587 0 0 
		-0.072964281 0 0 0.11126595 0 0 1.0783968 0 0 0.99638528 0 0 0.81697178 0 0 1.0012031 
		0 0 0.64529288 0 0 0.46411884 0 0 0.28294483 0 0 0.46411896 0 0 -0.14191228 0 0 -0.066365182 
		0 0 1.0701506 0 0 0.99460351 0 0 -0.13894573 0 0 -0.064995408 0 0 1.0671834 0 0 0.99323273 
		0 0 -0.13938847 0 5.7174724e-21 -0.064995408 0 0 1.0676258 0 5.7174724e-21 0.99323273 
		0 0 -0.13938841 0 0 -0.064995408 0 0 1.0676258 0 0 0.99323273 0 0 -0.13894576 0 0 
		-0.066365063 0 0 1.0671829 0 0 0.99460304 0 0 -0.14191249 0 0 -0.072964221 0 0 1.0701495 
		0 0 1.0012023 0 0 -0.15015885 0 0 -0.068146795 0 0 0.11126626 0 0 0.28294483 0 0 
		0.46411884 0 0 0.645293 0 0 0.46411896 0 0 0.99638486 0 0 1.078396 0 0 0.81697166 
		0 0 0.095743351 0 0 0.10677809 0 0 0.29964805 0 0 -0.037521482 0 0 -0.0087046325 
		0 0 0.20726895 0 0 -0.12998211 0 0 0.13345523 0 0 1.0582201 0 0 0.93694246 0 0 0.79478228 
		0 0 0.96575916 0 0 0.82145965 0 0 0.68101114 0 0 0.83249426 0 0 0.61589062 0 0 -0.12998223 
		0 0 -0.0087044835 0 0 0.13345554 0 0 -0.037521482 0 0 0.10677809 0 0 0.20726895 0 
		0 0.095743284 0 0 0.29964805 0 0 0.83249426 0 0 0.82145965 0 0 0.61589062 0 0 0.96575916 
		0 0 0.93694234 0;
	setAttr ".pt[332:473]" 0 0.68101132 0 0 1.0582197 0 0 0.79478228 0 0 0.46411896 
		0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411896 0 0 0.46411884 
		0 0 0.81303227 0 0 0.46411884 0 0 0.11520541 0 0 0.81070453 0 0 0.46411884 0 0 0.11753312 
		0 0 0.81135911 0 5.7174724e-21 0.46411884 0 0 0.11687858 0 0 0.81135911 0 0 0.46411884 
		0 0 0.11687858 0 0 0.81070411 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 
		0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 -0.073124051 0 0 1.0013607 0 0 0.46411884 
		0 0 -0.067620009 0 0 0.99585664 0 0 -0.064478159 0 0 0.99271512 0 0 -0.064995408 
		0 0 0.99323297 0 0 -0.064995319 0 0 0.99323297 0 0 -0.064478189 0 0 0.99271566 0 
		0 -0.067620128 0 0 0.99585772 0 0 -0.07312423 0 0 0.46411884 0 0 1.0013617 0 0 0.17467266 
		0 0 0.046737388 0 0 -0.046757162 0 0 0.97499418 0 0 0.88150024 0 0 0.75356513 0 0 
		-0.046757162 0 0 0.046737388 0 0 0.17467266 0 0 0.75356513 0 0 0.88150036 0 0 0.97499466 
		0 0 0.46411896 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 
		0 0 0.46411884 0 0 0.46411896 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 
		0 0 0.46411884 0 0 0.46411884 0 0 -0.07205534 0 0 1.0002918 0 0 0.46411884 0 0 -0.06726259 
		0 0 0.99549913 0 0 -0.064406991 0 0 0.99264419 0 0 -0.064995319 0 0 0.99323297 0 
		0 -0.064995319 0 0 0.99323297 0 0 -0.06440711 0 0 0.99264419 0 0 -0.067262709 0 0 
		0.99549949 0 0 -0.072055429 0 0 0.46411884 0 0 1.0002921 0 0 0.17461857 0 0 0.046860844 
		0 0 -0.04540062 0 0 0.97363764 0 0 0.88137668 0 0 0.75361907 0 0 -0.045400798 0 0 
		0.046860918 0 0 0.17461863 0 0 0.75361907 0 0 0.88137674 0 0 0.9736377 0 0 0.46411884 
		0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411884 0 0 0.46411896 
		0 0 0.46411896 0 0 -0.17545217 0 0 1.1036891 0 0 0.46411884 0 0 -0.16650119 0 0 1.0947382 
		0 0 -0.16369885 0 0 1.0919361 0 0 -0.16418612 0 0 1.0924236 0 0 -0.16418606 0 0 1.0924236 
		0 0 -0.16369879 0 0 1.0919361 0 0 -0.16650113 0 0 1.0947382 0 0 -0.17545211 0 0 0.46411884 
		0 0 1.103689 0 0 0.069411218 0 0 -0.065552801 0 0 -0.15722221 0 0 1.0854596 0 0 0.99379051 
		0 0 0.85882652 0 0 -0.15722215 0 0 -0.065552801 0 0 0.069411159 0 0 0.85882652 0 
		0 0.99379051 0 0 1.0854591 0;
	setAttr -s 474 ".vt";
	setAttr ".vt[0:165]"  -9.81641674 3.64300895 9.024019241 -7.48811913 3.69427371 11.014422417
		 -4.11038589 3.69963455 12.6504631 -4.0233135e-07 3.69963455 13.30148792 4.11038494 3.69963455 12.65046597
		 7.48811626 3.6942749 11.014421463 9.81641197 3.64301062 9.02401638 -9.81641483 13.065253258 9.024018288
		 -7.48811817 13.013989449 11.01442337 -4.11038589 13.0086307526 12.65046597 -3.9488077e-07 13.0086307526 13.30148697
		 4.11038542 13.0086307526 12.65046406 7.48811769 13.013991356 11.014422417 9.81641483 13.06525898 9.024020195
		 -9.64581585 5.62312078 9.26212025 -9.64581585 11.085148811 9.26211929 -7.41544247 5.66279602 11.045288086
		 -7.41544247 11.045472145 11.045288086 -4.096479416 5.67607212 12.60766411 -4.096479416 11.032195091 12.60766602
		 -4.0978193e-07 5.67607212 13.25648499 -4.0978193e-07 11.032195091 13.25648499 4.096477985 5.67607212 12.60766506
		 4.096478462 11.032195091 12.60766411 7.41544008 5.66279411 11.045288086 7.41544247 11.045476913 11.04528904
		 9.64581299 5.6231184 9.26211834 9.6458168 11.085156441 9.26212025 -11.28529739 3.64417076 7.060749054
		 -12.11511421 4.058729172 5.53688478 -12.54231548 4.96166658 4.68501663 -12.69900799 6.5174613 4.37405872
		 -12.19178867 7.41715193 5.2757659 -11.99712753 6.71149015 5.67931271 -11.68695068 6.041189671 6.3576169
		 -11.0092763901 5.67185163 7.59331131 -12.69900799 10.19080544 4.3740592 -12.54231453 11.74660015 4.68501663
		 -12.11511326 12.64953613 5.53688383 -11.28529453 13.06409359 7.060747623 -12.19178867 9.29111671 5.2757659
		 -11.0092763901 11.036416054 7.59331131 -11.68695068 10.66707706 6.35761738 -11.99712849 9.99677944 5.67931271
		 12.69900417 6.5174613 4.37405872 12.54231071 4.96166611 4.68501616 12.11510944 4.058730125 5.53688383
		 11.28529167 3.64417243 7.06074667 12.19178677 7.4171524 5.2757659 11.0092735291 5.67185116 7.5933094
		 11.68694782 6.041189671 6.3576169 11.99712467 6.71148968 5.67931271 11.28529358 13.064097404 7.060748577
		 12.11510944 12.64953709 5.53688478 12.54231071 11.7466011 4.68501663 12.69900417 10.19080544 4.37405872
		 11.0092763901 11.036421776 7.59331083 12.19178677 9.29111671 5.27576637 11.99712467 9.99677849 5.67931271
		 11.68694878 10.66707993 6.3576169 -7.61697054 5.66413307 11.34310055 -9.90862656 5.62353468 9.50699234
		 -7.61696815 11.04413414 11.34309769 -9.90862179 11.084733009 9.50698853 -4.20773411 5.67607212 12.95007133
		 -4.20773411 11.032195091 12.95007229 -3.4272671e-07 5.67607212 13.61651134 -3.7252903e-07 11.032195091 13.6165123
		 4.20773315 5.6760726 12.95007229 4.20773315 11.032195091 12.95007133 7.61696863 5.66413116 11.34309769
		 7.61696959 11.044136047 11.34309959 9.9086237 5.62353134 9.50698948 9.9086256 11.08473587 9.50699329
		 -11.31065273 5.66696453 7.78865242 -11.51150894 3.63743949 7.20741415 -10.0141716 3.64055753 9.20750141
		 -11.5115118 13.070818901 7.20741653 -10.014174461 13.067699432 9.20750618 -11.31064796 11.041300774 7.78865004
		 -12.51499844 9.29087925 5.43438339 -12.94043922 10.19048119 4.49494839 -12.94043922 6.51778555 4.49494791
		 -12.51499939 7.41739035 5.43438339 -7.63967514 3.69442868 11.23777103 -7.63967752 13.013830185 11.2377739
		 -4.19382715 3.69963431 12.90726948 -4.19382763 13.0086307526 12.90727234 -3.7252903e-07 3.69963479 13.57150841
		 -3.9488077e-07 13.0086307526 13.57150841 4.1938262 3.69963479 12.90727139 4.1938262 13.0086307526 12.90726948
		 7.63967562 3.69442964 11.2377739 7.63967896 13.013836861 11.2377758 10.014172554 3.64055872 9.20750427
		 10.01417923 13.067709923 9.20750809 11.51150799 3.63743997 7.20741606 11.31065178 5.66696215 7.78865194
		 12.51499271 7.41739035 5.43438244 12.94043255 6.51778555 4.49494743 12.94043255 10.19048023 4.49494743
		 12.51499271 9.2908783 5.43438244 11.31065178 11.041304588 7.78865433 11.51151371 13.070825577 7.2074194
		 -12.78451347 4.96166992 4.80434847 -12.32141018 6.71149969 5.83570719 -12.35490322 4.053900719 5.66059494
		 -12.0073404312 6.036446571 6.52084446 -12.35490322 12.65436363 5.66059542 -12.0073385239 10.67181969 6.52084446
		 -12.78451443 11.74659824 4.80434895 -12.33061314 9.79374981 5.84684181 12.35490036 4.053900242 5.66059494
		 12.0073385239 6.036446095 6.52084494 12.78451061 4.96166945 4.80434847 12.32140636 6.71149969 5.83570671
		 12.78450966 11.74659824 4.80434847 12.33061123 9.79374886 5.84684134 12.35490131 12.65436554 5.66059637
		 12.0073375702 10.67182064 6.52084494 5.82246494 5.68112087 11.89103317 8.61552906 11.045091629 10.067517281
		 9.60933113 8.35413361 9.32167912 8.61553192 5.66316938 10.067521095 -10.39979935 5.63918591 8.29842281
		 -9.71809864 4.21404123 9.12356567 -10.68964005 3.62322593 7.998528 -11.13504696 4.25713444 7.30281973
		 -9.71810055 12.49423504 9.12356663 -10.39979744 11.069083214 8.29842091 -11.13504791 12.45113945 7.30281878
		 -10.68964005 13.085040092 7.99852896 -12.13822556 8.35413456 5.37881088 -12.39849281 6.95646524 4.86613894
		 -12.71719837 8.35413361 4.33789253 -12.39849281 9.75180149 4.86613894 -7.43976116 4.26220465 11.010397911
		 -8.80347824 3.68240595 10.026706696 -7.43976307 12.44606781 11.010398865 -8.80348015 13.025859833 10.026708603
		 -4.096478939 4.27338457 12.60766411 -5.890697 3.70336652 11.93807125 -4.096478939 12.43488026 12.60766602
		 -5.89069748 13.004899025 11.93807316 -4.1723251e-07 4.27338457 13.25648308 -2.080651522 3.69963455 13.13671398
		 -4.1723251e-07 12.43488026 13.25648308 -2.08065176 13.0086297989 13.13671589 4.096478462 4.27338457 12.60766602
		 2.080651045 3.69963455 13.13671589 4.096478462 12.43488026 12.60766411 2.080651045 13.0086297989 13.13671398
		 7.43975973 4.26220512 11.010396957 5.89069748 3.7033658 11.93807316 7.43976021 12.44606686 11.010396957
		 5.89069605 13.0048980713 11.9380703 9.71809769 4.21404219 9.12356663 8.80347824 3.68240476 10.026706696
		 9.71809959 12.49423313 9.12356663 8.80347633 13.025856018 10.026705742 10.39979839 5.63918638 8.29842377
		 11.13504314 4.25713491 7.30281973 10.68963623 3.62322497 7.99852753 12.13822269 8.35413456 5.37881088
		 12.39848709 9.75180149 4.86613846 12.7171936 8.35413361 4.33789206;
	setAttr ".vt[166:331]" 12.39848709 6.95646524 4.86613846 10.39979553 11.069072723 8.29842281
		 10.68963623 13.085037231 7.99852848 11.1350441 12.45113754 7.30281973 -12.084500313 7.08540535 5.49360943
		 -12.2495575 5.59816456 5.17218065 -12.64443874 5.51270437 4.48255873 -11.8781414 6.37375689 5.92932272
		 -11.88650227 4.71362972 5.92605972 -12.3814621 4.48614788 5.0030579567 -11.38390923 5.81251478 6.88836288
		 -11.77138329 3.78027678 6.24484205 -11.38390732 10.89575195 6.88836145 -11.88650227 11.99463844 5.9260602
		 -11.77138233 12.92798996 6.24484158 -11.8781414 10.3345108 5.92932272 -12.2495575 11.1101017 5.17218065
		 -12.3814621 12.22211742 5.0030574799 -12.084500313 9.62286282 5.49360943 -12.6444397 11.19556141 4.48255873
		 11.38390732 5.81251526 6.88836384 11.88649654 4.71362972 5.92605972 11.77137852 3.7802763 6.24484253
		 11.87813854 6.37375689 5.9293232 12.24955463 5.59816456 5.17218065 12.38145733 4.48614788 5.0030574799
		 12.084496498 7.08540535 5.49360943 12.64443493 5.51270437 4.48255873 12.084496498 9.62286282 5.49360943
		 12.24955463 11.1101017 5.17218065 12.64443493 11.19556141 4.48255873 11.87813854 10.3345108 5.92932272
		 11.8864975 11.99463844 5.92605925 12.38145733 12.22211742 5.0030574799 11.38390636 10.89574718 6.88836241
		 11.77137852 12.9279871 6.24484301 -11.91298485 8.35413361 5.8483572 10.94564438 8.35413361 7.73039007
		 -10.94564819 8.35413361 7.73039198 -11.59736061 8.35413361 6.54850054 11.5973568 8.35413456 6.54850054
		 11.91298199 8.35413361 5.8483572 -9.9374218 3.44947195 9.072146416 -11.43615818 3.43539476 7.044941425
		 -11.43616104 13.27287483 7.044943333 -9.93742466 13.25879955 9.072149277 -12.90637398 6.37127924 4.26397324
		 -12.90637493 10.3369875 4.26397371 -7.57187843 3.50417948 11.11510849 -7.57187986 13.20409012 11.1151123
		 -4.15210629 3.50838447 12.77886677 -4.15210676 13.19987965 12.77886963 -3.8743019e-07 3.5083847 13.43649673
		 -3.8743019e-07 13.19987965 13.43649673 4.15210581 3.5083847 12.77886963 4.15210581 13.19987965 12.77886772
		 7.57187986 3.50417924 11.11511135 7.57187891 13.20409012 11.11511135 9.93742466 3.449471 9.07215023
		 9.93742561 13.25879955 9.07215023 11.43616009 3.43539405 7.044942379 12.90637016 10.3369875 4.26397324
		 12.90636921 6.37127924 4.26397276 11.43616104 13.27287388 7.044944286 -12.74743843 4.74950075 4.57587814
		 -12.29789925 3.83802938 5.46229649 -12.29789925 12.8702383 5.46229696 -12.74744034 11.95876598 4.57587814
		 12.29789639 3.83802938 5.46229649 12.74743557 4.74950075 4.57587814 12.74743462 11.95876598 4.57587767
		 12.29789639 12.8702383 5.46229696 -8.85328388 5.66063118 10.34142303 -7.60511541 8.35413361 11.35627747
		 -8.85328674 11.047636032 10.3414259 -9.87180901 8.35413361 9.56626797 -5.98195219 5.68022919 12.21503544
		 -4.20773411 8.35413361 12.95007324 -5.9819541 11.028038025 12.2150383 -2.12992835 5.67607212 13.44783783
		 -3.5762787e-07 8.35413361 13.61651134 -2.12992859 11.032195091 13.44783783 2.12992811 5.67607212 13.44783783
		 4.20773315 8.35413361 12.95007324 2.12992811 11.032195091 13.44783783 5.98195076 5.68023062 12.21503544
		 7.60511827 8.35413361 11.35628033 5.98195028 11.028037071 12.21503448 8.85328102 5.66063309 10.34142113
		 9.87181664 8.35413361 9.56627464 8.85328007 11.047635078 10.34141922 -11.43663883 4.24907875 7.49810839
		 -10.9048481 3.61656976 8.16366577 -9.98142147 4.21192503 9.36832428 -10.68708706 5.63278532 8.51950645
		 -10.90484524 13.091701508 8.16366291 -11.43664074 12.45919418 7.49810886 -10.68709183 11.075482368 8.51950836
		 -9.98142433 12.49635029 9.36832619 -12.72104931 9.75142288 5.026050091 -12.95852089 8.35413361 4.4589982
		 -12.72104931 6.95684433 5.026049614 -12.46151352 8.35413456 5.5372858 -8.98168278 3.68016934 10.23125267
		 -7.64162254 4.26282024 11.30823612 -8.98168182 13.028101921 10.23124981 -7.64162445 12.44545174 11.30823803
		 -6.010289192 3.70304871 12.18074036 -4.20773363 4.27338457 12.95007133 -6.010288715 13.0052185059 12.18074036
		 -4.20773411 12.43488026 12.95007324 -2.1228888 3.69963408 13.40339088 -3.5762787e-07 4.27338457 13.61651134
		 -2.12288904 13.0086297989 13.40339184 -3.5762787e-07 12.43488026 13.61651134 2.12288857 3.69963455 13.40339184
		 4.20773315 4.27338457 12.95007324 2.12288857 13.0086297989 13.40339184 4.20773315 12.43488026 12.95007229
		 6.010286331 3.70304847 12.18074036 7.6416235 4.2628212 11.30823708 6.010284424 13.0052146912 12.18073559
		 7.64162445 12.44544888 11.30823803 8.98167801 3.68016791 10.2312479 9.98142529 4.21192551 9.36832809
		 8.98167419 13.028094292 10.23124218 9.98142719 12.49634552 9.36833 10.90484142 3.61656857 8.163661
		 11.43664265 4.2490797 7.49811125 10.6870842 5.6327877 8.51950455 12.72104359 6.95684433 5.026049137
		 12.95851707 8.35413361 4.45899773 12.72104359 9.75142384 5.026049137 12.46150875 8.35413456 5.53728533
		 11.43664265 12.45919037 7.4981122 10.90483761 13.091693878 8.16365814 10.68708324 11.075481415 8.51950455
		 -12.88619137 5.51306868 4.60279751 -12.57312489 5.59817314 5.33001232 -12.40821075 7.085666656 5.65119648
		 -12.62414455 4.48527479 5.12140369 -12.20663452 4.70752239 6.09000206 -12.20300293 6.37320042 6.08450985
		 -12.0059957504 3.77217984 6.37946844 -11.69742584 5.80391836 7.067408085 -12.0059928894 12.93608952 6.37946606
		 -12.20663548 12.00074577332 6.09000206 -11.69742775 10.90434742 7.067409992 -12.62414455 12.22299194 5.12140369
		 -12.57312393 11.11009502 5.3300128 -12.20319557 10.02689743 6.11939049 -12.88619232 11.19519806 4.60279751
		 -12.42679214 9.52466106 5.6389432 12.0059890747 3.77217889 6.37946463 12.20663261 4.70752335 6.090002537
		 11.69742298 5.80392075 7.067408562 12.62414074 4.48527479 5.12140274 12.57312202 5.59817314 5.33001184
		 12.20300007 6.37320042 6.08450985 12.8861866 5.5130682 4.60279703 12.40820789 7.085666656 5.65119648
		 12.8861866 11.19519806 4.60279751 12.57312202 11.11009502 5.33001232 12.42678928 9.52466106 5.63894272
		 12.62413979 12.22299194 5.12140322 12.20663452 12.00074481964 6.090003014;
	setAttr ".vt[332:473]" 12.20319462 10.026898384 6.11939049 12.0059871674 12.9360857 6.37946463
		 11.69742107 10.90434742 7.067408085 -12.23750496 8.35413456 6.0042724609 11.24668312 8.35413361 7.92601013
		 -11.24667645 8.35413361 7.92600441 -11.91728115 8.35413361 6.71273327 11.9172821 8.35413361 6.71273518
		 12.23750114 8.35413456 6.0042724609 -9.6093359 8.35413361 9.32168388 -8.61553097 11.045099258 10.067516327
		 -7.40380573 8.35413361 11.058651924 -8.61553097 5.66316795 10.067519188 -5.82246542 11.027146339 11.89103317
		 -4.096478939 8.35413361 12.60766602 -5.82246542 5.6811204 11.89103222 -2.073611975 11.032195091 13.092269897
		 -4.1723251e-07 8.35413361 13.25648308 -2.073611975 5.67607212 13.092269897 2.073611498 11.032195091 13.092269897
		 4.096478462 8.35413361 12.60766602 2.073611498 5.67607212 13.092269897 5.82246447 11.027143478 11.89103031
		 7.40380144 8.35413361 11.058648109 -8.81729031 8.35413361 10.35861588 -5.97181177 8.35413361 12.21393871
		 -2.12992859 8.35413361 13.44783878 2.12992811 8.35413361 13.44783783 5.97180796 8.35413361 12.2139349
		 8.81727982 8.35413361 10.35860634 -10.82108021 4.21069288 8.34932327 -10.82107449 12.49756622 8.34931946
		 -12.73895645 8.35413361 4.98904705 -8.93653965 4.25314236 10.30436611 -8.93653679 12.45511723 10.30436039
		 -6.0071697235 4.27737379 12.21901035 -6.0071692467 12.43088818 12.2190094 -2.12992859 4.27338457 13.44783783
		 -2.12992859 12.43488216 13.44783878 2.12992811 4.27338505 13.44783783 2.12992787 12.43488216 13.44783783
		 6.0071659088 4.27737331 12.21900845 6.0071659088 12.43089199 12.21900654 8.93653107 4.2531414 10.30435944
		 8.93653107 12.45512486 10.30435848 10.82106972 4.21069145 8.3493185 12.73895073 8.35413361 4.9890461
		 10.82106972 12.49757385 8.34931755 -12.66732788 6.12180424 5.1370573 -12.43377876 5.13511419 5.61285734
		 -11.88001251 4.41404533 6.71964264 -11.8800106 12.29421711 6.71964121 -12.43377876 11.57315254 5.61285734
		 -12.66732693 10.58646393 5.1370573 11.88000584 4.41404533 6.7196393 12.43377495 5.13511419 5.61285686
		 12.66732311 6.12180424 5.13705635 12.66732311 10.58646393 5.13705683 12.4337759 11.5731535 5.61285686
		 11.88000584 12.29422092 6.7196393 -12.32183933 8.35413456 5.82257605 10.62469482 8.35413361 8.60293388
		 -10.62470531 8.35413361 8.60294056 -11.60697746 8.35413361 7.24320793 -12.12607861 8.35413361 6.24172688
		 11.60697079 8.35413361 7.24320507 12.1260767 8.35413361 6.24172688 12.32183552 8.35413456 5.82257557
		 -8.57929897 8.35413361 10.084139824 -5.81220007 8.35413361 11.88970184 -2.073611975 8.35413361 13.092269897
		 2.073611259 8.35413361 13.092269897 5.8122015 8.35413361 11.88970375 8.57930183 8.35413361 10.084143639
		 -10.53402615 4.21893549 8.12893009 -10.53402042 12.48932266 8.12892532 -12.4165411 8.35413361 4.82884407
		 -8.69893837 4.25589895 10.031246185 -8.69893551 12.4523592 10.031242371 -5.84772682 4.27792263 11.89530087
		 -5.84772682 12.43034077 11.89530182 -2.073611975 4.27338505 13.092269897 -2.073612213 12.43488216 13.092270851
		 2.073611259 4.27338505 13.092269897 2.073611498 12.43488216 13.092269897 5.84772587 4.27792168 11.89530182
		 5.84772587 12.43034077 11.89529991 8.69893837 4.255898 10.031245232 8.69893742 12.45236206 10.031245232
		 10.5340271 4.21893454 8.12892818 12.41653824 8.35413361 4.82884359 10.53402519 12.48932457 8.12892818
		 -12.34434319 6.121387 4.97802448 -12.10959816 5.13606644 5.45628977 -11.56677914 4.42450762 6.54066753
		 -11.56677628 12.28375435 6.54066563 -12.10959721 11.57219982 5.45629025 -12.34434414 10.58687973 4.97802401
		 11.56677628 4.42450619 6.54066658 12.10959339 5.13606691 5.45628977 12.34434032 6.12138748 4.97802353
		 12.34434032 10.58687973 4.97802353 12.10959435 11.57220078 5.45628977 11.56677437 12.2837553 6.54066658
		 -11.99788475 8.35413361 5.66547108 10.33729553 8.35413361 8.38106823 -10.33729458 8.35413361 8.38106537
		 -11.29387093 8.35413361 7.062681198 -11.8009901 8.35413361 6.087000847 11.29387093 8.35413361 7.062682152
		 11.80098724 8.35413456 6.087000847 11.99788284 8.35413456 5.66547108 -10.83649635 3.42149591 8.027215004
		 -10.83649158 13.2867651 8.02721405 -12.92456245 8.35413361 4.22827911 -8.91683388 3.49052954 10.11478138
		 -8.91682911 13.21773243 10.11478043 -5.95795155 3.51214242 12.05970192 -5.95795012 13.19612122 12.059703827
		 -2.1017704 3.50838447 13.27005291 -2.1017704 13.19988155 13.27005482 2.10176969 3.5083847 13.27005386
		 2.10176945 13.19988155 13.27005291 5.95794821 3.51214266 12.059700966 5.95794868 13.19612217 12.059700966
		 8.91682529 3.49053001 10.11477566 8.91682529 13.21773243 10.11477757 10.83648872 3.42149639 8.027210236
		 12.92455864 8.35413361 4.22827816 10.83648777 13.28676319 8.027212143 -12.85180855 5.30998421 4.37105751
		 -12.57984161 4.26908541 4.90478325 -11.94357586 3.56209302 6.20565271 -11.94357395 13.14617157 6.20565224
		 -12.57984161 12.43918133 4.90478325 -12.85180855 11.398283 4.37105751 11.94356918 3.56209326 6.20564985
		 12.5798378 4.26908541 4.90478325 12.85180378 5.30998373 4.37105703 12.85180378 11.398283 4.37105751
		 12.57983685 12.43918133 4.90478277 11.94356728 13.14616871 6.20565081;
	setAttr -s 944 ".ed";
	setAttr ".ed[0:165]"  0 126 1 126 28 1 1 137 1 137 0 1 2 141 1 141 1 1 3 145 1
		 145 2 1 4 149 1 149 3 1 5 153 1 153 4 1 6 157 1 157 5 1 7 139 1 139 8 1 8 143 1 143 9 1
		 9 147 1 147 10 1 10 151 1 151 11 1 11 155 1 155 12 1 12 159 1 159 13 1 13 168 1 168 52 1
		 0 125 1 125 14 1 14 124 1 124 35 1 7 128 1 128 15 1 14 341 1 341 15 1 1 136 1 136 16 1
		 16 344 1 344 14 1 8 138 1 138 17 1 16 343 1 343 17 1 15 342 1 342 17 1 2 140 1 140 18 1
		 18 347 1 347 16 1 9 142 1 142 19 1 18 346 1 346 19 1 17 345 1 345 19 1 3 144 1 144 20 1
		 20 350 1 350 18 1 10 146 1 146 21 1 20 349 1 349 21 1 19 348 1 348 21 1 4 148 1 148 22 1
		 22 353 1 353 20 1 11 150 1 150 23 1 22 352 1 352 23 1 21 351 1 351 23 1 5 152 1 152 24 1
		 24 120 1 120 22 1 12 154 1 154 25 1 24 355 1 355 25 1 23 354 1 354 25 1 6 156 1 156 26 1
		 26 123 1 123 24 1 13 158 1 158 27 1 26 122 1 122 27 1 25 121 1 121 27 1 27 167 1
		 167 56 1 31 134 1 134 36 1 32 132 1 132 40 1 39 131 1 131 7 1 41 129 1 129 15 1 44 165 1
		 165 55 1 47 162 1 162 6 1 48 163 1 163 57 1 49 160 1 160 26 1 31 133 1 133 32 1 35 127 1
		 127 28 1 39 130 1 130 41 1 40 135 1 135 36 1 47 161 1 161 49 1 48 166 1 166 44 1
		 55 164 1 164 57 1 56 169 1 169 52 1 31 172 1 172 30 1 30 171 1 171 33 1 33 170 1
		 170 32 1 30 175 1 175 29 1 29 174 1 174 34 1 34 173 1 173 33 1 29 177 1 177 28 1
		 35 176 1 176 34 1 39 180 1 180 38 1 38 179 1 179 42 1 42 178 1 178 41 1 38 183 1
		 183 37 1 37 182 1 182 43 1 43 181 1 181 42 1 37 185 1 185 36 1 40 184 1 184 43 1
		 47 188 1 188 46 1 46 187 1 187 50 1;
	setAttr ".ed[166:331]" 50 186 1 186 49 1 46 191 1 191 45 1 45 190 1 190 51 1
		 51 189 1 189 50 1 45 193 1 193 44 1 48 192 1 192 51 1 55 196 1 196 54 1 54 195 1
		 195 58 1 58 194 1 194 57 1 54 199 1 199 53 1 53 198 1 198 59 1 59 197 1 197 58 1
		 53 201 1 201 52 1 56 200 1 200 59 1 35 204 1 204 41 1 34 205 1 205 42 1 33 202 1
		 202 43 1 49 203 1 203 56 1 50 206 1 206 59 1 51 207 1 207 58 1 60 238 1 238 61 1
		 60 239 1 239 62 1 63 240 1 240 62 1 61 241 1 241 63 1 64 242 1 242 60 1 64 243 1
		 243 65 1 62 244 1 244 65 1 66 245 1 245 64 1 66 246 1 246 67 1 65 247 1 247 67 1
		 68 248 1 248 66 1 68 249 1 249 69 1 67 250 1 250 69 1 70 251 1 251 68 1 70 252 1
		 252 71 1 69 253 1 253 71 1 72 254 1 254 70 1 72 255 1 255 73 1 71 256 1 256 73 1
		 28 209 1 209 75 1 74 257 1 257 75 1 0 208 1 208 76 1 76 258 1 258 75 1 76 259 1 259 61 1
		 61 260 1 260 74 1 39 210 1 210 77 1 7 211 1 211 78 1 77 261 1 261 78 1 77 262 1 262 79 1
		 79 263 1 263 63 1 78 264 1 264 63 1 36 213 1 213 81 1 80 265 1 265 81 1 31 212 1
		 212 82 1 82 266 1 266 81 1 82 267 1 267 83 1 83 268 1 268 80 1 1 214 1 214 84 1 84 269 1
		 269 76 1 84 270 1 270 60 1 8 215 1 215 85 1 78 271 1 271 85 1 85 272 1 272 62 1 2 216 1
		 216 86 1 86 273 1 273 84 1 86 274 1 274 64 1 9 217 1 217 87 1 85 275 1 275 87 1 87 276 1
		 276 65 1 3 218 1 218 88 1 88 277 1 277 86 1 88 278 1 278 66 1 10 219 1 219 89 1 87 279 1
		 279 89 1 89 280 1 280 67 1 4 220 1 220 90 1 90 281 1 281 88 1 90 282 1 282 68 1 11 221 1
		 221 91 1 89 283 1 283 91 1 91 284 1 284 69 1 5 222 1 222 92 1 92 285 1 285 90 1;
	setAttr ".ed[332:497]" 92 286 1 286 70 1 12 223 1 223 93 1 91 287 1 287 93 1
		 93 288 1 288 71 1 6 224 1 224 94 1 94 289 1 289 92 1 94 290 1 290 72 1 13 225 1 225 95 1
		 93 291 1 291 95 1 95 292 1 292 73 1 47 226 1 226 96 1 96 293 1 293 94 1 96 294 1
		 294 97 1 97 295 1 295 72 1 44 228 1 228 99 1 98 296 1 296 99 1 55 227 1 227 100 1
		 99 297 1 297 100 1 100 298 1 298 101 1 98 299 1 299 101 1 52 229 1 229 103 1 102 300 1
		 300 103 1 95 301 1 301 103 1 73 302 1 302 102 1 30 230 1 230 104 1 82 303 1 303 104 1
		 104 304 1 304 105 1 105 305 1 305 83 1 29 231 1 231 106 1 104 306 1 306 106 1 106 307 1
		 307 107 1 107 308 1 308 105 1 106 309 1 309 75 1 74 310 1 310 107 1 38 232 1 232 108 1
		 77 311 1 311 108 1 108 312 1 312 109 1 109 313 1 313 79 1 37 233 1 233 110 1 108 314 1
		 314 110 1 110 315 1 315 111 1 111 316 1 316 109 1 110 317 1 317 81 1 80 318 1 318 111 1
		 46 234 1 234 112 1 96 319 1 319 112 1 112 320 1 320 113 1 113 321 1 321 97 1 45 235 1
		 235 114 1 112 322 1 322 114 1 114 323 1 323 115 1 115 324 1 324 113 1 114 325 1 325 99 1
		 98 326 1 326 115 1 54 236 1 236 116 1 100 327 1 327 116 1 116 328 1 328 117 1 117 329 1
		 329 101 1 53 237 1 237 118 1 116 330 1 330 118 1 118 331 1 331 119 1 119 332 1 332 117 1
		 118 333 1 333 103 1 102 334 1 334 119 1 105 335 1 335 111 1 97 336 1 336 102 1 74 337 1
		 337 79 1 107 338 1 338 109 1 113 339 1 339 119 1 115 340 1 340 117 1 238 356 1 356 241 1
		 239 356 1 240 356 1 242 357 1 357 239 1 243 357 1 244 357 1 245 358 1 358 243 1 246 358 1
		 247 358 1 248 359 1 359 246 1 249 359 1 250 359 1 251 360 1 360 249 1 252 360 1 253 360 1
		 254 361 1 361 252 1 255 361 1 256 361 1 257 362 1 362 260 1;
	setAttr ".ed[498:663]" 258 362 1 259 362 1 261 363 1 363 264 1 262 363 1 263 363 1
		 265 364 1 364 268 1 266 364 1 267 364 1 269 365 1 365 259 1 270 365 1 238 365 1 271 366 1
		 366 272 1 264 366 1 240 366 1 273 367 1 367 270 1 274 367 1 242 367 1 275 368 1 368 276 1
		 272 368 1 244 368 1 277 369 1 369 274 1 278 369 1 245 369 1 279 370 1 370 280 1 276 370 1
		 247 370 1 281 371 1 371 278 1 282 371 1 248 371 1 283 372 1 372 284 1 280 372 1 250 372 1
		 285 373 1 373 282 1 286 373 1 251 373 1 287 374 1 374 288 1 284 374 1 253 374 1 289 375 1
		 375 286 1 290 375 1 254 375 1 291 376 1 376 292 1 288 376 1 256 376 1 293 377 1 377 290 1
		 294 377 1 295 377 1 296 378 1 378 299 1 297 378 1 298 378 1 300 379 1 379 302 1 301 379 1
		 292 379 1 303 380 1 380 267 1 304 380 1 305 380 1 306 381 1 381 304 1 307 381 1 308 381 1
		 309 382 1 382 307 1 257 382 1 310 382 1 311 383 1 383 262 1 312 383 1 313 383 1 314 384 1
		 384 312 1 315 384 1 316 384 1 317 385 1 385 315 1 265 385 1 318 385 1 319 386 1 386 294 1
		 320 386 1 321 386 1 322 387 1 387 320 1 323 387 1 324 387 1 325 388 1 388 323 1 296 388 1
		 326 388 1 327 389 1 389 298 1 328 389 1 329 389 1 330 390 1 390 328 1 331 390 1 332 390 1
		 333 391 1 391 331 1 300 391 1 334 391 1 268 392 1 392 318 1 305 392 1 335 392 1 302 393 1
		 393 336 1 255 393 1 295 393 1 337 394 1 394 263 1 260 394 1 241 394 1 338 395 1 395 313 1
		 310 395 1 337 395 1 335 396 1 396 316 1 308 396 1 338 396 1 336 397 1 397 334 1 321 397 1
		 339 397 1 339 398 1 398 332 1 324 398 1 340 398 1 340 399 1 399 329 1 326 399 1 299 399 1
		 341 400 1 400 344 1 342 400 1 343 400 1 343 401 1 401 347 1 345 401 1 346 401 1 346 402 1
		 402 350 1 348 402 1 349 402 1 349 403 1 403 353 1 351 403 1 352 403 1;
	setAttr ".ed[664:829]" 352 404 1 404 120 1 354 404 1 355 404 1 355 405 1 405 123 1
		 121 405 1 122 405 1 124 406 1 406 127 1 125 406 1 126 406 1 128 407 1 407 131 1 129 407 1
		 130 407 1 132 408 1 408 135 1 133 408 1 134 408 1 125 409 1 409 137 1 344 409 1 136 409 1
		 138 410 1 410 139 1 342 410 1 128 410 1 136 411 1 411 141 1 347 411 1 140 411 1 142 412 1
		 412 143 1 345 412 1 138 412 1 140 413 1 413 145 1 350 413 1 144 413 1 146 414 1 414 147 1
		 348 414 1 142 414 1 144 415 1 415 149 1 353 415 1 148 415 1 150 416 1 416 151 1 351 416 1
		 146 416 1 148 417 1 417 153 1 120 417 1 152 417 1 154 418 1 418 155 1 354 418 1 150 418 1
		 152 419 1 419 157 1 123 419 1 156 419 1 158 420 1 420 159 1 121 420 1 154 420 1 156 421 1
		 421 162 1 160 421 1 161 421 1 163 422 1 422 166 1 164 422 1 165 422 1 167 423 1 423 169 1
		 158 423 1 168 423 1 133 424 1 424 172 1 170 424 1 171 424 1 171 425 1 425 175 1 173 425 1
		 174 425 1 174 426 1 426 177 1 176 426 1 127 426 1 130 427 1 427 180 1 178 427 1 179 427 1
		 179 428 1 428 183 1 181 428 1 182 428 1 182 429 1 429 185 1 184 429 1 135 429 1 161 430 1
		 430 188 1 186 430 1 187 430 1 187 431 1 431 191 1 189 431 1 190 431 1 190 432 1 432 193 1
		 192 432 1 166 432 1 164 433 1 433 196 1 194 433 1 195 433 1 195 434 1 434 199 1 197 434 1
		 198 434 1 198 435 1 435 201 1 200 435 1 169 435 1 184 436 1 436 132 1 202 436 1 170 436 1
		 203 437 1 437 167 1 160 437 1 122 437 1 129 438 1 438 204 1 341 438 1 124 438 1 178 439 1
		 439 205 1 204 439 1 176 439 1 181 440 1 440 202 1 205 440 1 173 440 1 200 441 1 441 203 1
		 206 441 1 186 441 1 197 442 1 442 206 1 207 442 1 189 442 1 194 443 1 443 207 1 163 443 1
		 192 443 1 126 444 1 444 209 1 208 444 1 258 444 1 131 445 1 445 211 1;
	setAttr ".ed[830:943]" 210 445 1 261 445 1 134 446 1 446 213 1 212 446 1 266 446 1
		 137 447 1 447 208 1 214 447 1 269 447 1 139 448 1 448 215 1 211 448 1 271 448 1 141 449 1
		 449 214 1 216 449 1 273 449 1 143 450 1 450 217 1 215 450 1 275 450 1 145 451 1 451 216 1
		 218 451 1 277 451 1 147 452 1 452 219 1 217 452 1 279 452 1 149 453 1 453 218 1 220 453 1
		 281 453 1 151 454 1 454 221 1 219 454 1 283 454 1 153 455 1 455 220 1 222 455 1 285 455 1
		 155 456 1 456 223 1 221 456 1 287 456 1 157 457 1 457 222 1 224 457 1 289 457 1 159 458 1
		 458 225 1 223 458 1 291 458 1 162 459 1 459 224 1 226 459 1 293 459 1 165 460 1 460 228 1
		 227 460 1 297 460 1 168 461 1 461 229 1 225 461 1 301 461 1 172 462 1 462 212 1 230 462 1
		 303 462 1 175 463 1 463 230 1 231 463 1 306 463 1 177 464 1 464 231 1 209 464 1 309 464 1
		 180 465 1 465 210 1 232 465 1 311 465 1 183 466 1 466 232 1 233 466 1 314 466 1 185 467 1
		 467 233 1 213 467 1 317 467 1 188 468 1 468 226 1 234 468 1 319 468 1 191 469 1 469 234 1
		 235 469 1 322 469 1 193 470 1 470 235 1 228 470 1 325 470 1 196 471 1 471 227 1 236 471 1
		 327 471 1 199 472 1 472 236 1 237 472 1 330 472 1 201 473 1 473 237 1 229 473 1 333 473 1;
	setAttr -s 472 -ch 1888 ".fc[0:471]" -type "polyFaces" 
		f 4 -208 472 473 -213
		mu 0 4 91 268 150 271
		f 4 -207 208 474 -473
		mu 0 4 268 90 269 150
		f 4 -475 209 -212 475
		mu 0 4 150 269 92 270
		f 4 -474 -476 -211 -214
		mu 0 4 271 150 270 93
		f 4 -216 476 477 -209
		mu 0 4 90 272 151 269
		f 4 -215 216 478 -477
		mu 0 4 272 94 273 151
		f 4 -479 217 -220 479
		mu 0 4 151 273 95 274
		f 4 -478 -480 -219 -210
		mu 0 4 269 151 274 92
		f 4 -222 480 481 -217
		mu 0 4 94 275 152 273
		f 4 -221 222 482 -481
		mu 0 4 275 96 276 152
		f 4 -483 223 -226 483
		mu 0 4 152 276 97 277
		f 4 -482 -484 -225 -218
		mu 0 4 273 152 277 95
		f 4 -228 484 485 -223
		mu 0 4 96 278 153 276
		f 4 -227 228 486 -485
		mu 0 4 278 98 279 153
		f 4 -487 229 -232 487
		mu 0 4 153 279 99 280
		f 4 -486 -488 -231 -224
		mu 0 4 276 153 280 97
		f 4 -234 488 489 -229
		mu 0 4 98 281 154 279
		f 4 -233 234 490 -489
		mu 0 4 281 100 282 154
		f 4 -491 235 -238 491
		mu 0 4 154 282 101 283
		f 4 -490 -492 -237 -230
		mu 0 4 279 154 283 99
		f 4 -240 492 493 -235
		mu 0 4 100 284 155 282
		f 4 -239 240 494 -493
		mu 0 4 284 102 285 155
		f 4 -495 241 -244 495
		mu 0 4 155 285 103 286
		f 4 -494 -496 -243 -236
		mu 0 4 282 155 286 101
		f 4 246 496 497 255
		mu 0 4 104 287 156 290
		f 4 247 -252 498 -497
		mu 0 4 287 105 288 156
		f 4 -499 -251 252 499
		mu 0 4 156 288 106 289
		f 4 -498 -500 253 254
		mu 0 4 290 156 289 91
		f 4 -262 500 501 -267
		mu 0 4 108 291 157 294
		f 4 -261 262 502 -501
		mu 0 4 291 107 292 157
		f 4 -503 263 264 503
		mu 0 4 157 292 109 293
		f 4 -502 -504 265 -268
		mu 0 4 294 157 293 93
		f 4 270 504 505 279
		mu 0 4 110 295 158 298
		f 4 271 -276 506 -505
		mu 0 4 295 111 296 158
		f 4 -507 -275 276 507
		mu 0 4 158 296 112 297
		f 4 -506 -508 277 278
		mu 0 4 298 158 297 113
		f 4 -284 508 509 -253
		mu 0 4 106 299 159 289
		f 4 -283 284 510 -509
		mu 0 4 299 114 300 159
		f 4 -511 285 206 511
		mu 0 4 159 300 90 268
		f 4 -510 -512 207 -254
		mu 0 4 289 159 268 91
		f 4 -290 512 513 -291
		mu 0 4 115 301 160 302
		f 4 -289 266 514 -513
		mu 0 4 301 108 294 160
		f 4 -515 267 210 515
		mu 0 4 160 294 93 270
		f 4 -514 -516 211 -292
		mu 0 4 302 160 270 92
		f 4 -296 516 517 -285
		mu 0 4 114 303 161 300
		f 4 -295 296 518 -517
		mu 0 4 303 116 304 161
		f 4 -519 297 214 519
		mu 0 4 161 304 94 272
		f 4 -518 -520 215 -286
		mu 0 4 300 161 272 90
		f 4 -302 520 521 -303
		mu 0 4 117 305 162 306
		f 4 -301 290 522 -521
		mu 0 4 305 115 302 162
		f 4 -523 291 218 523
		mu 0 4 162 302 92 274
		f 4 -522 -524 219 -304
		mu 0 4 306 162 274 95
		f 4 -308 524 525 -297
		mu 0 4 116 307 163 304
		f 4 -307 308 526 -525
		mu 0 4 307 118 308 163
		f 4 -527 309 220 527
		mu 0 4 163 308 96 275
		f 4 -526 -528 221 -298
		mu 0 4 304 163 275 94
		f 4 -314 528 529 -315
		mu 0 4 119 309 164 310
		f 4 -313 302 530 -529
		mu 0 4 309 117 306 164
		f 4 -531 303 224 531
		mu 0 4 164 306 95 277
		f 4 -530 -532 225 -316
		mu 0 4 310 164 277 97
		f 4 -320 532 533 -309
		mu 0 4 118 311 165 308
		f 4 -319 320 534 -533
		mu 0 4 311 120 312 165
		f 4 -535 321 226 535
		mu 0 4 165 312 98 278
		f 4 -534 -536 227 -310
		mu 0 4 308 165 278 96
		f 4 -326 536 537 -327
		mu 0 4 121 313 166 314
		f 4 -325 314 538 -537
		mu 0 4 313 119 310 166
		f 4 -539 315 230 539
		mu 0 4 166 310 97 280
		f 4 -538 -540 231 -328
		mu 0 4 314 166 280 99
		f 4 -332 540 541 -321
		mu 0 4 120 315 167 312
		f 4 -331 332 542 -541
		mu 0 4 315 122 316 167
		f 4 -543 333 232 543
		mu 0 4 167 316 100 281
		f 4 -542 -544 233 -322
		mu 0 4 312 167 281 98
		f 4 -338 544 545 -339
		mu 0 4 123 317 168 318
		f 4 -337 326 546 -545
		mu 0 4 317 121 314 168
		f 4 -547 327 236 547
		mu 0 4 168 314 99 283
		f 4 -546 -548 237 -340
		mu 0 4 318 168 283 101
		f 4 -344 548 549 -333
		mu 0 4 122 319 169 316
		f 4 -343 344 550 -549
		mu 0 4 319 124 320 169
		f 4 -551 345 238 551
		mu 0 4 169 320 102 284
		f 4 -550 -552 239 -334
		mu 0 4 316 169 284 100
		f 4 -350 552 553 -351
		mu 0 4 125 321 170 322
		f 4 -349 338 554 -553
		mu 0 4 321 123 318 170
		f 4 -555 339 242 555
		mu 0 4 170 318 101 286
		f 4 -554 -556 243 -352
		mu 0 4 322 170 286 103
		f 4 -356 556 557 -345
		mu 0 4 124 323 171 320
		f 4 -355 356 558 -557
		mu 0 4 323 126 324 171
		f 4 -559 357 358 559
		mu 0 4 171 324 127 325
		f 4 -558 -560 359 -346
		mu 0 4 320 171 325 102
		f 4 362 560 561 -371
		mu 0 4 128 326 172 329
		f 4 363 366 562 -561
		mu 0 4 326 129 327 172
		f 4 -563 367 368 563
		mu 0 4 172 327 130 328
		f 4 -562 -564 369 -372
		mu 0 4 329 172 328 131
		f 4 374 564 565 379
		mu 0 4 132 330 173 332
		f 4 375 -378 566 -565
		mu 0 4 330 133 331 173
		f 4 -567 -377 350 567
		mu 0 4 173 331 125 322
		f 4 -566 -568 351 378
		mu 0 4 332 173 322 103
		f 4 382 568 569 -277
		mu 0 4 112 333 174 297
		f 4 383 384 570 -569
		mu 0 4 333 134 334 174
		f 4 -571 385 386 571
		mu 0 4 174 334 135 335
		f 4 -570 -572 387 -278
		mu 0 4 297 174 335 113
		f 4 390 572 573 -385
		mu 0 4 134 336 175 334
		f 4 391 392 574 -573
		mu 0 4 336 136 337 175
		f 4 -575 393 394 575
		mu 0 4 175 337 137 338
		f 4 -574 -576 395 -386
		mu 0 4 334 175 338 135
		f 4 396 576 577 -393
		mu 0 4 136 339 176 337
		f 4 397 -248 578 -577
		mu 0 4 339 105 287 176
		f 4 -579 -247 398 579
		mu 0 4 176 287 104 340
		f 4 -578 -580 399 -394
		mu 0 4 337 176 340 137
		f 4 402 580 581 -263
		mu 0 4 107 341 177 292
		f 4 403 404 582 -581
		mu 0 4 341 138 342 177
		f 4 -583 405 406 583
		mu 0 4 177 342 139 343
		f 4 -582 -584 407 -264
		mu 0 4 292 177 343 109
		f 4 410 584 585 -405
		mu 0 4 138 344 178 342
		f 4 411 412 586 -585
		mu 0 4 344 140 345 178
		f 4 -587 413 414 587
		mu 0 4 178 345 141 346
		f 4 -586 -588 415 -406
		mu 0 4 342 178 346 139
		f 4 416 588 589 -413
		mu 0 4 140 347 179 345
		f 4 417 -272 590 -589
		mu 0 4 347 111 295 179
		f 4 -591 -271 418 591
		mu 0 4 179 295 110 348
		f 4 -590 -592 419 -414
		mu 0 4 345 179 348 141
		f 4 422 592 593 -357
		mu 0 4 126 349 180 324
		f 4 423 424 594 -593
		mu 0 4 349 142 350 180
		f 4 -595 425 426 595
		mu 0 4 180 350 143 351
		f 4 -594 -596 427 -358
		mu 0 4 324 180 351 127
		f 4 430 596 597 -425
		mu 0 4 142 352 181 350
		f 4 431 432 598 -597
		mu 0 4 352 144 353 181
		f 4 -599 433 434 599
		mu 0 4 181 353 145 354
		f 4 -598 -600 435 -426
		mu 0 4 350 181 354 143
		f 4 436 600 601 -433
		mu 0 4 144 355 182 353
		f 4 437 -364 602 -601
		mu 0 4 355 129 326 182
		f 4 -603 -363 438 603
		mu 0 4 182 326 128 356
		f 4 -602 -604 439 -434
		mu 0 4 353 182 356 145
		f 4 442 604 605 -369
		mu 0 4 130 357 183 328
		f 4 443 444 606 -605
		mu 0 4 357 146 358 183
		f 4 -607 445 446 607
		mu 0 4 183 358 147 359
		f 4 -606 -608 447 -370
		mu 0 4 328 183 359 131
		f 4 450 608 609 -445
		mu 0 4 146 360 184 358
		f 4 451 452 610 -609
		mu 0 4 360 148 361 184
		f 4 -611 453 454 611
		mu 0 4 184 361 149 362
		f 4 -610 -612 455 -446
		mu 0 4 358 184 362 147
		f 4 456 612 613 -453
		mu 0 4 148 363 185 361
		f 4 457 -376 614 -613
		mu 0 4 363 133 330 185
		f 4 -615 -375 458 615
		mu 0 4 185 330 132 364
		f 4 -614 -616 459 -454
		mu 0 4 361 185 364 149
		f 4 -280 616 617 -419
		mu 0 4 110 298 186 348
		f 4 -279 -388 618 -617
		mu 0 4 298 113 335 186
		f 4 -619 -387 460 619
		mu 0 4 186 335 135 365
		f 4 -618 -620 461 -420
		mu 0 4 348 186 365 141
		f 4 -380 620 621 463
		mu 0 4 132 332 187 366
		f 4 -379 -242 622 -621
		mu 0 4 332 103 285 187
		f 4 -623 -241 -360 623
		mu 0 4 187 285 102 325
		f 4 -622 -624 -359 462
		mu 0 4 366 187 325 127
		f 4 -466 624 625 -265
		mu 0 4 109 367 188 293
		f 4 -465 -256 626 -625
		mu 0 4 367 104 290 188
		f 4 -627 -255 212 627
		mu 0 4 188 290 91 271
		f 4 -626 -628 213 -266
		mu 0 4 293 188 271 93
		f 4 -468 628 629 -407
		mu 0 4 139 368 189 343
		f 4 -467 -400 630 -629
		mu 0 4 368 137 340 189
		f 4 -631 -399 464 631
		mu 0 4 189 340 104 367
		f 4 -630 -632 465 -408
		mu 0 4 343 189 367 109
		f 4 -462 632 633 -415
		mu 0 4 141 365 190 346
		f 4 -461 -396 634 -633
		mu 0 4 365 135 338 190
		f 4 -635 -395 466 635
		mu 0 4 190 338 137 368
		f 4 -634 -636 467 -416
		mu 0 4 346 190 368 139
		f 4 -464 636 637 -459
		mu 0 4 132 366 191 364
		f 4 -463 -428 638 -637
		mu 0 4 366 127 351 191
		f 4 -639 -427 468 639
		mu 0 4 191 351 143 369
		f 4 -638 -640 469 -460
		mu 0 4 364 191 369 149
		f 4 -470 640 641 -455
		mu 0 4 149 369 192 362
		f 4 -469 -436 642 -641
		mu 0 4 369 143 354 192
		f 4 -643 -435 470 643
		mu 0 4 192 354 145 370
		f 4 -642 -644 471 -456
		mu 0 4 362 192 370 147
		f 4 -472 644 645 -447
		mu 0 4 147 370 193 359
		f 4 -471 -440 646 -645
		mu 0 4 370 145 356 193
		f 4 -647 -439 370 647
		mu 0 4 193 356 128 329
		f 4 -646 -648 371 -448
		mu 0 4 359 193 329 131
		f 4 34 648 649 39
		mu 0 4 28 371 194 374
		f 4 35 44 650 -649
		mu 0 4 371 29 372 194
		f 4 -651 45 -44 651
		mu 0 4 194 372 31 373
		f 4 -650 -652 -43 38
		mu 0 4 374 194 373 30
		f 4 42 652 653 49
		mu 0 4 30 373 195 377
		f 4 43 54 654 -653
		mu 0 4 373 31 375 195
		f 4 -655 55 -54 655
		mu 0 4 195 375 33 376
		f 4 -654 -656 -53 48
		mu 0 4 377 195 376 32
		f 4 52 656 657 59
		mu 0 4 32 376 196 380
		f 4 53 64 658 -657
		mu 0 4 376 33 378 196
		f 4 -659 65 -64 659
		mu 0 4 196 378 35 379
		f 4 -658 -660 -63 58
		mu 0 4 380 196 379 34
		f 4 62 660 661 69
		mu 0 4 34 379 197 383
		f 4 63 74 662 -661
		mu 0 4 379 35 381 197
		f 4 -663 75 -74 663
		mu 0 4 197 381 37 382
		f 4 -662 -664 -73 68
		mu 0 4 383 197 382 36
		f 4 72 664 665 79
		mu 0 4 36 382 198 386
		f 4 73 84 666 -665
		mu 0 4 382 37 384 198
		f 4 -667 85 -84 667
		mu 0 4 198 384 39 385
		f 4 -666 -668 -83 78
		mu 0 4 386 198 385 38
		f 4 82 668 669 89
		mu 0 4 38 385 199 389
		f 4 83 94 670 -669
		mu 0 4 385 39 387 199
		f 4 -671 95 -94 671
		mu 0 4 199 387 41 388
		f 4 -670 -672 -93 88
		mu 0 4 389 199 388 40
		f 4 -32 672 673 -117
		mu 0 4 53 390 200 394
		f 4 -31 -30 674 -673
		mu 0 4 390 28 391 200
		f 4 -675 -29 0 675
		mu 0 4 200 391 0 392
		f 4 -674 -676 1 -118
		mu 0 4 394 200 392 42
		f 4 32 676 677 103
		mu 0 4 14 395 201 398
		f 4 33 -106 678 -677
		mu 0 4 395 29 396 201
		f 4 -679 -105 -120 679
		mu 0 4 201 396 63 397
		f 4 -678 -680 -119 102
		mu 0 4 398 201 397 60
		f 4 -102 680 681 -121
		mu 0 4 62 400 202 404
		f 4 -101 -116 682 -681
		mu 0 4 400 50 401 202
		f 4 -683 -115 98 683
		mu 0 4 202 401 48 402
		f 4 -682 -684 99 -122
		mu 0 4 404 202 402 54
		f 4 28 684 685 3
		mu 0 4 0 391 203 406
		f 4 29 -40 686 -685
		mu 0 4 391 28 374 203
		f 4 -687 -39 -38 687
		mu 0 4 203 374 30 405
		f 4 -686 -688 -37 2
		mu 0 4 406 203 405 2
		f 4 40 688 689 15
		mu 0 4 16 408 204 409
		f 4 41 -46 690 -689
		mu 0 4 408 31 372 204
		f 4 -691 -45 -34 691
		mu 0 4 204 372 29 395
		f 4 -690 -692 -33 14
		mu 0 4 409 204 395 14
		f 4 36 692 693 5
		mu 0 4 2 405 205 412
		f 4 37 -50 694 -693
		mu 0 4 405 30 377 205
		f 4 -695 -49 -48 695
		mu 0 4 205 377 32 411
		f 4 -694 -696 -47 4
		mu 0 4 412 205 411 4
		f 4 50 696 697 17
		mu 0 4 18 414 206 415
		f 4 51 -56 698 -697
		mu 0 4 414 33 375 206
		f 4 -699 -55 -42 699
		mu 0 4 206 375 31 408
		f 4 -698 -700 -41 16
		mu 0 4 415 206 408 16
		f 4 46 700 701 7
		mu 0 4 4 411 207 418
		f 4 47 -60 702 -701
		mu 0 4 411 32 380 207
		f 4 -703 -59 -58 703
		mu 0 4 207 380 34 417
		f 4 -702 -704 -57 6
		mu 0 4 418 207 417 6
		f 4 60 704 705 19
		mu 0 4 20 420 208 421
		f 4 61 -66 706 -705
		mu 0 4 420 35 378 208
		f 4 -707 -65 -52 707
		mu 0 4 208 378 33 414
		f 4 -706 -708 -51 18
		mu 0 4 421 208 414 18
		f 4 56 708 709 9
		mu 0 4 6 417 209 424
		f 4 57 -70 710 -709
		mu 0 4 417 34 383 209
		f 4 -711 -69 -68 711
		mu 0 4 209 383 36 423
		f 4 -710 -712 -67 8
		mu 0 4 424 209 423 8
		f 4 70 712 713 21
		mu 0 4 22 426 210 427
		f 4 71 -76 714 -713
		mu 0 4 426 37 381 210
		f 4 -715 -75 -62 715
		mu 0 4 210 381 35 420
		f 4 -714 -716 -61 20
		mu 0 4 427 210 420 20
		f 4 66 716 717 11
		mu 0 4 8 423 211 430
		f 4 67 -80 718 -717
		mu 0 4 423 36 386 211
		f 4 -719 -79 -78 719
		mu 0 4 211 386 38 429
		f 4 -718 -720 -77 10
		mu 0 4 430 211 429 10
		f 4 80 720 721 23
		mu 0 4 24 432 212 433
		f 4 81 -86 722 -721
		mu 0 4 432 39 384 212
		f 4 -723 -85 -72 723
		mu 0 4 212 384 37 426
		f 4 -722 -724 -71 22
		mu 0 4 433 212 426 22
		f 4 76 724 725 13
		mu 0 4 10 429 213 436
		f 4 77 -90 726 -725
		mu 0 4 429 38 389 213
		f 4 -727 -89 -88 727
		mu 0 4 213 389 40 435
		f 4 -726 -728 -87 12
		mu 0 4 436 213 435 12
		f 4 90 728 729 25
		mu 0 4 26 438 214 439
		f 4 91 -96 730 -729
		mu 0 4 438 41 387 214
		f 4 -731 -95 -82 731
		mu 0 4 214 387 39 432
		f 4 -730 -732 -81 24
		mu 0 4 439 214 432 24
		f 4 86 732 733 109
		mu 0 4 12 435 215 443
		f 4 87 -114 734 -733
		mu 0 4 435 40 441 215
		f 4 -735 -113 -124 735
		mu 0 4 215 441 75 442
		f 4 -734 -736 -123 108
		mu 0 4 443 215 442 72
		f 4 110 736 737 -125
		mu 0 4 74 445 216 449
		f 4 111 -128 738 -737
		mu 0 4 445 87 446 216
		f 4 -739 -127 -108 739
		mu 0 4 216 446 84 447
		f 4 -738 -740 -107 -126
		mu 0 4 449 216 447 66
		f 4 -98 740 741 -129
		mu 0 4 86 450 217 453
		f 4 -97 -92 742 -741
		mu 0 4 450 41 438 217
		f 4 -743 -91 26 743
		mu 0 4 217 438 26 451
		f 4 -742 -744 27 -130
		mu 0 4 453 217 451 78
		f 4 114 744 745 -131
		mu 0 4 48 401 218 456
		f 4 115 -136 746 -745
		mu 0 4 401 50 454 218
		f 4 -747 -135 -134 747
		mu 0 4 218 454 51 455
		f 4 -746 -748 -133 -132
		mu 0 4 456 218 455 46
		f 4 132 748 749 -137
		mu 0 4 46 455 219 460
		f 4 133 -142 750 -749
		mu 0 4 455 51 458 219
		f 4 -751 -141 -140 751
		mu 0 4 219 458 52 459
		f 4 -750 -752 -139 -138
		mu 0 4 460 219 459 44
		f 4 138 752 753 -143
		mu 0 4 44 459 220 463
		f 4 139 -146 754 -753
		mu 0 4 459 52 462 220
		f 4 -755 -145 116 755
		mu 0 4 220 462 53 394
		f 4 -754 -756 117 -144
		mu 0 4 463 220 394 42
		f 4 118 756 757 -147
		mu 0 4 60 397 221 467
		f 4 119 -152 758 -757
		mu 0 4 397 63 465 221
		f 4 -759 -151 -150 759
		mu 0 4 221 465 64 466
		f 4 -758 -760 -149 -148
		mu 0 4 467 221 466 58
		f 4 148 760 761 -153
		mu 0 4 58 466 222 471
		f 4 149 -158 762 -761
		mu 0 4 466 64 469 222
		f 4 -763 -157 -156 763
		mu 0 4 222 469 65 470
		f 4 -762 -764 -155 -154
		mu 0 4 471 222 470 56
		f 4 154 764 765 -159
		mu 0 4 56 470 223 474
		f 4 155 -162 766 -765
		mu 0 4 470 65 473 223
		f 4 -767 -161 120 767
		mu 0 4 223 473 62 404
		f 4 -766 -768 121 -160
		mu 0 4 474 223 404 54
		f 4 122 768 769 -163
		mu 0 4 72 442 224 478
		f 4 123 -168 770 -769
		mu 0 4 442 75 476 224
		f 4 -771 -167 -166 771
		mu 0 4 224 476 76 477
		f 4 -770 -772 -165 -164
		mu 0 4 478 224 477 70
		f 4 164 772 773 -169
		mu 0 4 70 477 225 482
		f 4 165 -174 774 -773
		mu 0 4 477 76 480 225
		f 4 -775 -173 -172 775
		mu 0 4 225 480 77 481
		f 4 -774 -776 -171 -170
		mu 0 4 482 225 481 68
		f 4 170 776 777 -175
		mu 0 4 68 481 226 485
		f 4 171 -178 778 -777
		mu 0 4 481 77 484 226
		f 4 -779 -177 124 779
		mu 0 4 226 484 74 449
		f 4 -778 -780 125 -176
		mu 0 4 485 226 449 66
		f 4 126 780 781 -179
		mu 0 4 84 446 227 489
		f 4 127 -184 782 -781
		mu 0 4 446 87 487 227
		f 4 -783 -183 -182 783
		mu 0 4 227 487 88 488
		f 4 -782 -784 -181 -180
		mu 0 4 489 227 488 82
		f 4 180 784 785 -185
		mu 0 4 82 488 228 493
		f 4 181 -190 786 -785
		mu 0 4 488 88 491 228
		f 4 -787 -189 -188 787
		mu 0 4 228 491 89 492
		f 4 -786 -788 -187 -186
		mu 0 4 493 228 492 80
		f 4 186 788 789 -191
		mu 0 4 80 492 229 496
		f 4 187 -194 790 -789
		mu 0 4 492 89 495 229
		f 4 -791 -193 128 791
		mu 0 4 229 495 86 453
		f 4 -790 -792 129 -192
		mu 0 4 496 229 453 78
		f 4 160 792 793 101
		mu 0 4 62 473 230 400
		f 4 161 -200 794 -793
		mu 0 4 473 65 498 230
		f 4 -795 -199 134 795
		mu 0 4 230 498 51 454
		f 4 -794 -796 135 100
		mu 0 4 400 230 454 50
		f 4 -202 796 797 97
		mu 0 4 86 499 231 450
		f 4 -201 112 798 -797
		mu 0 4 499 75 441 231
		f 4 -799 113 92 799
		mu 0 4 231 441 40 388
		f 4 -798 -800 93 96
		mu 0 4 450 231 388 41
		f 4 104 800 801 195
		mu 0 4 63 396 232 500
		f 4 105 -36 802 -801
		mu 0 4 396 29 371 232
		f 4 -803 -35 30 803
		mu 0 4 232 371 28 390
		f 4 -802 -804 31 194
		mu 0 4 500 232 390 53
		f 4 150 804 805 197
		mu 0 4 64 465 233 501
		f 4 151 -196 806 -805
		mu 0 4 465 63 500 233
		f 4 -807 -195 144 807
		mu 0 4 233 500 53 462
		f 4 -806 -808 145 196
		mu 0 4 501 233 462 52
		f 4 156 808 809 199
		mu 0 4 65 469 234 498
		f 4 157 -198 810 -809
		mu 0 4 469 64 501 234
		f 4 -811 -197 140 811
		mu 0 4 234 501 52 458
		f 4 -810 -812 141 198
		mu 0 4 498 234 458 51
		f 4 192 812 813 201
		mu 0 4 86 495 235 499
		f 4 193 -204 814 -813
		mu 0 4 495 89 502 235
		f 4 -815 -203 166 815
		mu 0 4 235 502 76 476
		f 4 -814 -816 167 200
		mu 0 4 499 235 476 75
		f 4 188 816 817 203
		mu 0 4 89 491 236 502
		f 4 189 -206 818 -817
		mu 0 4 491 88 503 236
		f 4 -819 -205 172 819
		mu 0 4 236 503 77 480
		f 4 -818 -820 173 202
		mu 0 4 502 236 480 76
		f 4 182 820 821 205
		mu 0 4 88 487 237 503
		f 4 183 -112 822 -821
		mu 0 4 487 87 445 237
		f 4 -823 -111 176 823
		mu 0 4 237 445 74 484
		f 4 -822 -824 177 204
		mu 0 4 503 237 484 77
		f 4 -2 824 825 -245
		mu 0 4 43 393 238 505
		f 4 -1 248 826 -825
		mu 0 4 393 1 504 238
		f 4 -827 249 250 827
		mu 0 4 238 504 106 288
		f 4 -826 -828 251 -246
		mu 0 4 505 238 288 105
		f 4 -104 828 829 -259
		mu 0 4 15 399 239 507
		f 4 -103 256 830 -829
		mu 0 4 399 61 506 239
		f 4 -831 257 260 831
		mu 0 4 239 506 107 291
		f 4 -830 -832 261 -260
		mu 0 4 507 239 291 108
		f 4 -100 832 833 -269
		mu 0 4 55 403 240 509
		f 4 -99 272 834 -833
		mu 0 4 403 49 508 240
		f 4 -835 273 274 835
		mu 0 4 240 508 112 296
		f 4 -834 -836 275 -270
		mu 0 4 509 240 296 111
		f 4 -4 836 837 -249
		mu 0 4 1 407 241 504
		f 4 -3 280 838 -837
		mu 0 4 407 3 510 241
		f 4 -839 281 282 839
		mu 0 4 241 510 114 299
		f 4 -838 -840 283 -250
		mu 0 4 504 241 299 106
		f 4 -16 840 841 -287
		mu 0 4 17 410 242 511
		f 4 -15 258 842 -841
		mu 0 4 410 15 507 242
		f 4 -843 259 288 843
		mu 0 4 242 507 108 301
		f 4 -842 -844 289 -288
		mu 0 4 511 242 301 115
		f 4 -6 844 845 -281
		mu 0 4 3 413 243 510
		f 4 -5 292 846 -845
		mu 0 4 413 5 512 243
		f 4 -847 293 294 847
		mu 0 4 243 512 116 303
		f 4 -846 -848 295 -282
		mu 0 4 510 243 303 114
		f 4 -18 848 849 -299
		mu 0 4 19 416 244 513
		f 4 -17 286 850 -849
		mu 0 4 416 17 511 244
		f 4 -851 287 300 851
		mu 0 4 244 511 115 305
		f 4 -850 -852 301 -300
		mu 0 4 513 244 305 117
		f 4 -8 852 853 -293
		mu 0 4 5 419 245 512
		f 4 -7 304 854 -853
		mu 0 4 419 7 514 245
		f 4 -855 305 306 855
		mu 0 4 245 514 118 307
		f 4 -854 -856 307 -294
		mu 0 4 512 245 307 116
		f 4 -20 856 857 -311
		mu 0 4 21 422 246 515
		f 4 -19 298 858 -857
		mu 0 4 422 19 513 246
		f 4 -859 299 312 859
		mu 0 4 246 513 117 309
		f 4 -858 -860 313 -312
		mu 0 4 515 246 309 119
		f 4 -10 860 861 -305
		mu 0 4 7 425 247 514
		f 4 -9 316 862 -861
		mu 0 4 425 9 516 247
		f 4 -863 317 318 863
		mu 0 4 247 516 120 311
		f 4 -862 -864 319 -306
		mu 0 4 514 247 311 118
		f 4 -22 864 865 -323
		mu 0 4 23 428 248 517
		f 4 -21 310 866 -865
		mu 0 4 428 21 515 248
		f 4 -867 311 324 867
		mu 0 4 248 515 119 313
		f 4 -866 -868 325 -324
		mu 0 4 517 248 313 121
		f 4 -12 868 869 -317
		mu 0 4 9 431 249 516
		f 4 -11 328 870 -869
		mu 0 4 431 11 518 249
		f 4 -871 329 330 871
		mu 0 4 249 518 122 315
		f 4 -870 -872 331 -318
		mu 0 4 516 249 315 120
		f 4 -24 872 873 -335
		mu 0 4 25 434 250 519
		f 4 -23 322 874 -873
		mu 0 4 434 23 517 250
		f 4 -875 323 336 875
		mu 0 4 250 517 121 317
		f 4 -874 -876 337 -336
		mu 0 4 519 250 317 123
		f 4 -14 876 877 -329
		mu 0 4 11 437 251 518
		f 4 -13 340 878 -877
		mu 0 4 437 13 520 251
		f 4 -879 341 342 879
		mu 0 4 251 520 124 319
		f 4 -878 -880 343 -330
		mu 0 4 518 251 319 122
		f 4 -26 880 881 -347
		mu 0 4 27 440 252 521
		f 4 -25 334 882 -881
		mu 0 4 440 25 519 252
		f 4 -883 335 348 883
		mu 0 4 252 519 123 321
		f 4 -882 -884 349 -348
		mu 0 4 521 252 321 125
		f 4 -110 884 885 -341
		mu 0 4 13 444 253 520
		f 4 -109 352 886 -885
		mu 0 4 444 73 522 253
		f 4 -887 353 354 887
		mu 0 4 253 522 126 323
		f 4 -886 -888 355 -342
		mu 0 4 520 253 323 124
		f 4 106 888 889 -361
		mu 0 4 67 448 254 524
		f 4 107 364 890 -889
		mu 0 4 448 85 523 254
		f 4 -891 365 -368 891
		mu 0 4 254 523 130 327
		f 4 -890 -892 -367 -362
		mu 0 4 524 254 327 129
		f 4 -28 892 893 -373
		mu 0 4 79 452 255 525
		f 4 -27 346 894 -893
		mu 0 4 452 27 521 255
		f 4 -895 347 376 895
		mu 0 4 255 521 125 331
		f 4 -894 -896 377 -374
		mu 0 4 525 255 331 133
		f 4 130 896 897 -273
		mu 0 4 49 457 256 508
		f 4 131 380 898 -897
		mu 0 4 457 47 526 256
		f 4 -899 381 -384 899
		mu 0 4 256 526 134 333
		f 4 -898 -900 -383 -274
		mu 0 4 508 256 333 112
		f 4 136 900 901 -381
		mu 0 4 47 461 257 526
		f 4 137 388 902 -901
		mu 0 4 461 45 527 257
		f 4 -903 389 -392 903
		mu 0 4 257 527 136 336
		f 4 -902 -904 -391 -382
		mu 0 4 526 257 336 134
		f 4 142 904 905 -389
		mu 0 4 45 464 258 527
		f 4 143 244 906 -905
		mu 0 4 464 43 505 258
		f 4 -907 245 -398 907
		mu 0 4 258 505 105 339
		f 4 -906 -908 -397 -390
		mu 0 4 527 258 339 136
		f 4 146 908 909 -257
		mu 0 4 61 468 259 506
		f 4 147 400 910 -909
		mu 0 4 468 59 528 259
		f 4 -911 401 -404 911
		mu 0 4 259 528 138 341
		f 4 -910 -912 -403 -258
		mu 0 4 506 259 341 107
		f 4 152 912 913 -401
		mu 0 4 59 472 260 528
		f 4 153 408 914 -913
		mu 0 4 472 57 529 260
		f 4 -915 409 -412 915
		mu 0 4 260 529 140 344
		f 4 -914 -916 -411 -402
		mu 0 4 528 260 344 138
		f 4 158 916 917 -409
		mu 0 4 57 475 261 529
		f 4 159 268 918 -917
		mu 0 4 475 55 509 261
		f 4 -919 269 -418 919
		mu 0 4 261 509 111 347
		f 4 -918 -920 -417 -410
		mu 0 4 529 261 347 140
		f 4 162 920 921 -353
		mu 0 4 73 479 262 522
		f 4 163 420 922 -921
		mu 0 4 479 71 530 262
		f 4 -923 421 -424 923
		mu 0 4 262 530 142 349
		f 4 -922 -924 -423 -354
		mu 0 4 522 262 349 126
		f 4 168 924 925 -421
		mu 0 4 71 483 263 530
		f 4 169 428 926 -925
		mu 0 4 483 69 531 263
		f 4 -927 429 -432 927
		mu 0 4 263 531 144 352
		f 4 -926 -928 -431 -422
		mu 0 4 530 263 352 142
		f 4 174 928 929 -429
		mu 0 4 69 486 264 531
		f 4 175 360 930 -929
		mu 0 4 486 67 524 264
		f 4 -931 361 -438 931
		mu 0 4 264 524 129 355
		f 4 -930 -932 -437 -430
		mu 0 4 531 264 355 144
		f 4 178 932 933 -365
		mu 0 4 85 490 265 523
		f 4 179 440 934 -933
		mu 0 4 490 83 532 265
		f 4 -935 441 -444 935
		mu 0 4 265 532 146 357
		f 4 -934 -936 -443 -366
		mu 0 4 523 265 357 130
		f 4 184 936 937 -441
		mu 0 4 83 494 266 532
		f 4 185 448 938 -937
		mu 0 4 494 81 533 266
		f 4 -939 449 -452 939
		mu 0 4 266 533 148 360
		f 4 -938 -940 -451 -442
		mu 0 4 532 266 360 146
		f 4 190 940 941 -449
		mu 0 4 81 497 267 533
		f 4 191 372 942 -941
		mu 0 4 497 79 525 267
		f 4 -943 373 -458 943
		mu 0 4 267 525 133 363
		f 4 -942 -944 -457 -450
		mu 0 4 533 267 363 148;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Jacob_RibbonPin_Geo" -p "geo";
	rename -uid "7E6F9C48-41C6-5EA0-258D-6E950F7BDC5F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 13.803061548181171 9.4789581392650071 0 ;
	setAttr ".sp" -type "double3" 13.803061548181171 9.4789581392650071 0 ;
createNode mesh -n "Jacob_RibbonPin_GeoShape" -p "Jacob_RibbonPin_Geo";
	rename -uid "29660249-48F6-6652-EA80-B9999EAE5068";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5022701621055603 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Jacob_RibbonPin_GeoShapeOrig" -p "Jacob_RibbonPin_Geo";
	rename -uid "DCE9E9F0-4AD2-7056-2B6C-458734413E6C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[0:12]" "f[91:103]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 14 "e[0:12]" "e[169]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "vtx[0:12]" "vtx[26]" "vtx[80:92]" "vtx[106]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[0:12]" "vtx[80:92]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "vtx[0:25]" "vtx[80:105]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "vtx[13:25]" "vtx[27]" "vtx[93:105]" "vtx[107]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 2 "vtx[13:25]" "vtx[93:105]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[26:90]" "f[117:181]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[13:25]" "f[104:116]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 14 "e[13:25]" "e[195]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 224 ".uvst[0].uvsp[0:223]" -type "float2" 0.63835251 0.083637044
		 0.58876014 0.02765879 0.51883394 0.0011392236 0.44459301 0.010153681 0.38304523 0.052637056
		 0.34829035 0.11885691 0.34829032 0.19364303 0.3830452 0.2598629 0.44459298 0.30234629
		 0.51883382 0.31136078 0.58876014 0.28484124 0.63835251 0.228863 0.65625 0.15625 0.63835251
		 0.77113706 0.58876014 0.71515882 0.51883394 0.68863922 0.44459301 0.69765365 0.38304523
		 0.74013704 0.34829035 0.80635691 0.34829032 0.88114303 0.3830452 0.9473629 0.44459298
		 0.98984629 0.51883382 0.99886078 0.58876014 0.97234124 0.63835251 0.916363 0.65625
		 0.84375 0.5 0.15625 0.5 0.84375 0.375 0.66123384 0.62500018 0.33876616 0.375 0.3125
		 0.39423078 0.3125 0.375 0.33876613 0.41346157 0.3125 0.39423078 0.33876613 0.43269235
		 0.3125 0.41346157 0.33876613 0.45192313 0.3125 0.43269235 0.33876616 0.47115391 0.3125
		 0.45192313 0.3387661 0.4903847 0.3125 0.47115391 0.33876616 0.50961548 0.3125 0.4903847
		 0.33876613 0.52884626 0.3125 0.50961548 0.3387661 0.54807705 0.3125 0.52884626 0.33876622
		 0.56730783 0.3125 0.54807705 0.33876616 0.58653861 0.3125 0.56730783 0.33876613 0.6057694
		 0.3125 0.58653861 0.33876613 0.62500018 0.3125 0.6057694 0.33876616 0.62500018 0.66123384
		 0.62500018 0.6875 0.6057694 0.6875 0.6057694 0.66123384 0.58653861 0.6875 0.58653861
		 0.66123384 0.56730783 0.6875 0.56730783 0.66123384 0.54807705 0.6875 0.54807705 0.6612339
		 0.52884626 0.6875 0.52884626 0.66123384 0.50961548 0.6875 0.50961548 0.66123384 0.4903847
		 0.6875 0.4903847 0.66123384 0.47115391 0.6875 0.47115389 0.66123384 0.45192313 0.6875
		 0.45192313 0.66123384 0.43269235 0.6875 0.43269235 0.6612339 0.41346157 0.6875 0.41346157
		 0.66123384 0.39423078 0.6875 0.39423078 0.6612339 0.375 0.6875 0.375 0.33876613 0.39423078
		 0.33876613 0.39423078 0.6612339 0.375 0.66123384 0.62500018 0.66123384 0.6057694
		 0.66123384 0.6057694 0.33876616 0.62500018 0.33876616 0.58653861 0.66123384 0.58653861
		 0.33876613 0.56730783 0.66123384 0.56730783 0.33876613 0.54807705 0.6612339 0.54807705
		 0.33876616 0.52884626 0.66123384 0.52884626 0.33876622 0.50961548 0.66123384 0.50961548
		 0.3387661 0.4903847 0.66123384 0.4903847 0.33876613 0.47115389 0.66123384 0.47115391
		 0.33876616 0.45192313 0.66123384 0.45192313 0.3387661 0.43269235 0.6612339 0.43269235
		 0.33876616 0.41346157 0.66123384 0.41346157 0.33876613 0.58876014 0.02765879 0.63835251
		 0.083637044 0.5 0.15625 0.51883394 0.0011392236 0.44459301 0.010153681 0.38304523
		 0.052637056 0.34829035 0.11885691 0.34829032 0.19364303 0.3830452 0.2598629 0.44459298
		 0.30234629 0.51883382 0.31136078 0.58876014 0.28484124 0.63835251 0.228863 0.65625
		 0.15625 0.63835251 0.916363 0.58876014 0.97234124 0.5 0.84375 0.51883382 0.99886078
		 0.44459298 0.98984629 0.3830452 0.9473629 0.34829032 0.88114303 0.34829035 0.80635691
		 0.38304523 0.74013704 0.44459301 0.69765365 0.51883394 0.68863922 0.58876014 0.71515882
		 0.63835251 0.77113706 0.65625 0.84375 0.375 0.66123384 0.375 0.33876613 0.39423078
		 0.33876613 0.39423078 0.6612339 0.62500018 0.33876616 0.62500018 0.66123384 0.6057694
		 0.66123384 0.6057694 0.33876616 0.58653861 0.66123384 0.58653861 0.33876613 0.56730783
		 0.66123384 0.56730783 0.33876613 0.54807705 0.6612339 0.54807705 0.33876616 0.52884626
		 0.66123384 0.52884626 0.33876622 0.50961548 0.66123384 0.50961548 0.3387661 0.4903847
		 0.66123384 0.4903847 0.33876613 0.47115389 0.66123384 0.47115391 0.33876616 0.45192313
		 0.66123384 0.45192313 0.3387661 0.43269235 0.6612339 0.43269235 0.33876616 0.41346157
		 0.66123384 0.41346157 0.33876613 0.375 0.3125 0.39423078 0.3125 0.39423078 0.33876613
		 0.375 0.33876613 0.41346157 0.3125 0.41346157 0.33876613 0.43269235 0.3125 0.43269235
		 0.33876616 0.45192313 0.3125 0.45192313 0.3387661 0.47115391 0.3125 0.47115391 0.33876616
		 0.4903847 0.3125 0.4903847 0.33876613 0.50961548 0.3125 0.50961548 0.3387661 0.52884626
		 0.3125 0.52884626 0.33876622 0.54807705 0.3125 0.54807705 0.33876616 0.56730783 0.3125
		 0.56730783 0.33876613 0.58653861 0.3125 0.58653861 0.33876613 0.6057694 0.3125 0.6057694
		 0.33876616 0.62500018 0.3125 0.62500018 0.33876616 0.6057694 0.66123384 0.62500018
		 0.66123384 0.62500018 0.6875 0.6057694 0.6875 0.58653861 0.66123384 0.58653861 0.6875
		 0.56730783 0.66123384 0.56730783 0.6875 0.54807705 0.6612339 0.54807705 0.6875 0.52884626
		 0.66123384 0.52884626 0.6875 0.50961548 0.66123384 0.50961548 0.6875 0.4903847 0.66123384
		 0.4903847 0.6875 0.47115389 0.66123384 0.47115391 0.6875 0.45192313 0.66123384 0.45192313
		 0.6875 0.43269235 0.6612339 0.43269235 0.6875 0.41346157 0.66123384 0.41346157 0.6875
		 0.39423078 0.6612339 0.39423078 0.6875 0.375 0.66123384 0.375 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 160 ".pt[0:159]" -type "float3"  14.209054 5.0656548 -0.21308121 
		14.063526 5.0656548 -0.37734824 13.858329 5.0656548 -0.45516932 13.640471 5.0656548 
		-0.4287166 13.45986 5.0656548 -0.30405006 13.357873 5.0656548 -0.10972929 13.357873 
		5.0656548 0.10972911 13.45986 5.0656548 0.30404991 13.640471 5.0656548 0.42871654 
		13.858329 5.0656548 0.45516932 14.063526 5.0656548 0.37734833 14.209054 5.0656548 
		0.21308136 14.261574 5.0656548 0 14.209054 12.704683 -0.21308121 14.063526 12.704683 
		-0.37734824 13.858329 12.704683 -0.45516932 13.640471 12.704683 -0.4287166 13.45986 
		12.704683 -0.30405006 13.357873 12.704683 -0.10972929 13.357873 12.704683 0.10972911 
		13.45986 12.704683 0.30404991 13.640471 12.704683 0.42871654 13.858329 12.704683 
		0.45516932 14.063526 12.704683 0.37734833 14.209054 12.704683 0.21308136 14.261574 
		12.704683 0 13.803061 5.0656548 0 13.803061 12.704683 0 14.209054 12.169621 -0.21308121 
		14.209054 5.6007152 -0.21308121 14.261574 5.6007152 0 14.261574 12.169621 0 14.209054 
		5.6007152 0.21308136 14.209054 12.169621 0.21308136 14.063526 5.6007152 0.37734833 
		14.063526 12.169621 0.37734833 13.858329 5.6007152 0.45516932 13.858329 12.169621 
		0.45516932 13.640471 5.6007152 0.42871654 13.640471 12.169621 0.42871654 13.45986 
		5.6007152 0.30404991 13.45986 12.169621 0.30404991 13.357873 5.6007152 0.10972911 
		13.357873 12.169621 0.10972911 13.357873 5.6007152 -0.10972929 13.357873 12.169621 
		-0.10972929 13.45986 5.6007152 -0.30405006 13.45986 12.169621 -0.30405006 13.640471 
		5.6007152 -0.4287166 13.640471 12.169621 -0.4287166 13.858329 5.6007152 -0.45516932 
		13.858329 12.169621 -0.45516932 14.063526 5.6007152 -0.37734824 14.063526 12.169621 
		-0.37734824 14.121244 12.169621 -0.16699506 14.121244 5.6007152 -0.16699506 14.007191 
		5.6007152 -0.29573348 14.007191 12.169621 -0.29573348 14.162405 12.169621 6.8488033e-09 
		14.162405 5.6007152 6.8488033e-09 14.121244 12.169621 0.16699527 14.121244 5.6007152 
		0.16699527 14.007191 12.169621 0.29573387 14.007191 5.6007152 0.29573387 13.846375 
		12.169621 0.3567231 13.846375 5.6007152 0.3567231 13.675636 12.169621 0.33599171 
		13.675636 5.6007152 0.33599171 13.534089 12.169621 0.2382887 13.534089 5.6007152 
		0.2382887 13.454161 12.169621 0.085996404 13.454161 5.6007152 0.085996404 13.454161 
		12.169621 -0.085996509 13.454161 5.6007152 -0.085996509 13.534089 12.169621 -0.2382888 
		13.534089 5.6007152 -0.2382888 13.675636 12.169621 -0.33599162 13.675636 5.6007152 
		-0.33599162 13.846375 12.169621 -0.35672319 13.846375 5.6007152 -0.35672319 4.7185345 
		5.0656548 -0.21308121 4.8640628 5.0656548 -0.37734824 5.0692596 5.0656548 -0.45516932 
		5.2871184 5.0656548 -0.4287166 5.4677291 5.0656548 -0.30405006 5.569716 5.0656548 
		-0.10972929 5.569716 5.0656548 0.10972911 5.4677291 5.0656548 0.30404991 5.2871184 
		5.0656548 0.42871654 5.0692596 5.0656548 0.45516932 4.8640628 5.0656548 0.37734833 
		4.7185345 5.0656548 0.21308136 4.6660147 5.0656548 9.4369906e-17 4.7185345 12.704683 
		-0.21308121 4.8640628 12.704683 -0.37734824 5.0692596 12.704683 -0.45516932 5.2871184 
		12.704683 -0.4287166 5.4677291 12.704683 -0.30405006 5.569716 12.704683 -0.10972929 
		5.569716 12.704683 0.10972911 5.4677291 12.704683 0.30404991 5.2871184 12.704683 
		0.42871654 5.0692596 12.704683 0.45516932 4.8640628 12.704683 0.37734833 4.7185345 
		12.704683 0.21308136 4.6660147 12.704683 -2.5956893e-17 5.124527 5.0656548 -5.9746486e-18 
		5.124527 12.704683 2.4983809e-19 4.7185345 12.169621 -0.21308121 4.7185345 5.6007152 
		-0.21308121 4.6660147 5.6007152 9.4369906e-17 4.6660147 12.169621 -2.1813793e-17 
		4.7185345 5.6007152 0.21308136 4.7185345 12.169621 0.21308136 4.8640628 5.6007152 
		0.37734833 4.8640628 12.169621 0.37734833 5.0692596 5.6007152 0.45516932 5.0692596 
		12.169621 0.45516932 5.2871184 5.6007152 0.42871654 5.2871184 12.169621 0.42871654 
		5.4677291 5.6007152 0.30404991 5.4677291 12.169621 0.30404991 5.569716 5.6007152 
		0.10972911 5.569716 12.169621 0.10972911 5.569716 5.6007152 -0.10972929 5.569716 
		12.169621 -0.10972929 5.4677291 5.6007152 -0.30405006 5.4677291 12.169621 -0.30405006 
		5.2871184 5.6007152 -0.4287166 5.2871184 12.169621 -0.4287166 5.0692596 5.6007152 
		-0.45516932 5.0692596 12.169621 -0.45516932 4.8640628 5.6007152 -0.37734824 4.8640628 
		12.169621 -0.37734824 4.8063436 12.169621 -0.16699506 4.8063436 5.6007152 -0.16699506 
		4.9203982 5.6007152 -0.29573348 4.9203982 12.169621 -0.29573348 4.7651844 12.169621 
		6.8488033e-09 4.7651844 5.6007152 6.8488033e-09 4.8063436 12.169621 0.16699527 4.8063436 
		5.6007152 0.16699527 4.9203982 12.169621 0.29573387 4.9203982 5.6007152 0.29573387 
		5.0812144 12.169621 0.3567231 5.0812144 5.6007152 0.3567231 5.2519522 12.169621 0.33599171 
		5.2519522 5.6007152 0.33599171 5.3934999 12.169621 0.2382887 5.3934999 5.6007152 
		0.2382887 5.4734278 12.169621 0.085996404 5.4734278 5.6007152 0.085996404 5.4734278 
		12.169621 -0.085996509 5.4734278 5.6007152 -0.085996509 5.3934999 12.169621 -0.2382888 
		5.3934999 5.6007152 -0.2382888 5.2519522 12.169621 -0.33599162 5.2519522 5.6007152 
		-0.33599162 5.0812144 12.169621 -0.35672319 5.0812144 5.6007152 -0.35672319;
	setAttr -s 160 ".vt[0:159]"  0.88545513 -1.16274881 -0.4647229 0.56806374 -1.16274881 -0.82298374
		 0.12053585 -1.16274881 -0.99270886 -0.35460567 -1.16274881 -0.93501639 -0.74851131 -1.16274881 -0.66312283
		 -0.97094154 -1.16274881 -0.23931587 -0.97094154 -1.16274881 0.23931547 -0.74851131 -1.16274881 0.66312253
		 -0.35460567 -1.16274881 0.93501621 0.12053585 -1.16274881 0.99270886 0.56806374 -1.16274881 0.82298392
		 0.88545513 -1.16274881 0.46472323 0.99999905 -1.16274881 0 0.88545513 1.16274858 -0.4647229
		 0.56806374 1.16274858 -0.82298374 0.12053585 1.16274858 -0.99270886 -0.35460567 1.16274858 -0.93501639
		 -0.74851131 1.16274858 -0.66312283 -0.97094154 1.16274858 -0.23931587 -0.97094154 1.16274858 0.23931547
		 -0.74851131 1.16274858 0.66312253 -0.35460567 1.16274858 0.93501621 0.12053585 1.16274858 0.99270886
		 0.56806374 1.16274858 0.82298392 0.88545513 1.16274858 0.46472323 0.99999905 1.16274858 0
		 -9.5367432e-07 -1.16274881 0 -9.5367432e-07 1.16274858 0 0.88545513 0.99986339 -0.4647229
		 0.88545513 -0.99986404 -0.4647229 0.99999905 -0.99986404 0 0.99999905 0.99986339 0
		 0.88545513 -0.99986404 0.46472323 0.88545513 0.99986339 0.46472323 0.56806374 -0.99986404 0.82298392
		 0.56806374 0.99986339 0.82298392 0.12053585 -0.99986404 0.99270886 0.12053585 0.99986339 0.99270886
		 -0.35460567 -0.99986404 0.93501621 -0.35460567 0.99986339 0.93501621 -0.74851131 -0.99986404 0.66312253
		 -0.74851131 0.99986339 0.66312253 -0.97094154 -0.99986404 0.23931547 -0.97094154 0.99986339 0.23931547
		 -0.97094154 -0.99986404 -0.23931587 -0.97094154 0.99986339 -0.23931587 -0.74851131 -0.99986404 -0.66312283
		 -0.74851131 0.99986339 -0.66312283 -0.35460567 -0.99986404 -0.93501639 -0.35460567 0.99986339 -0.93501639
		 0.12053585 -0.99986404 -0.99270886 0.12053585 0.99986339 -0.99270886 0.56806374 -0.99986404 -0.82298374
		 0.56806374 0.99986339 -0.82298374 0.69394588 0.99986339 -0.36421058 0.69394588 -0.99986404 -0.36421058
		 0.44519901 -0.99986404 -0.64498472 0.44519901 0.99986339 -0.64498472 0.78371525 0.99986339 1.4937008e-08
		 0.78371525 -0.99986404 1.4937008e-08 0.69394588 0.99986339 0.36421102 0.69394588 -0.99986404 0.36421102
		 0.44519901 0.99986339 0.64498556 0.44519901 -0.99986404 0.64498556 0.094464302 0.99986339 0.77800095
		 0.094464302 -0.99986404 0.77800095 -0.27791023 0.99986339 0.73278654 -0.27791023 -0.99986404 0.73278654
		 -0.58662033 0.99986339 0.51969957 -0.58662033 -0.99986404 0.51969957 -0.76094151 0.99986339 0.18755524
		 -0.76094151 -0.99986404 0.18755524 -0.76094151 0.99986339 -0.18755546 -0.76094151 -0.99986404 -0.18755546
		 -0.58662033 0.99986339 -0.51969981 -0.58662033 -0.99986404 -0.51969981 -0.27791023 0.99986339 -0.73278636
		 -0.27791023 -0.99986404 -0.73278636 0.094464302 0.99986339 -0.77800119 0.094464302 -0.99986404 -0.77800119
		 -19.8130455 -1.16274881 -0.4647229 -19.49565315 -1.16274881 -0.82298374 -19.048126221 -1.16274881 -0.99270886
		 -18.57298279 -1.16274881 -0.93501639 -18.17907715 -1.16274881 -0.66312283 -17.95664787 -1.16274881 -0.23931587
		 -17.95664787 -1.16274881 0.23931547 -18.17907715 -1.16274881 0.66312253 -18.57298279 -1.16274881 0.93501621
		 -19.048126221 -1.16274881 0.99270886 -19.49565315 -1.16274881 0.82298392 -19.8130455 -1.16274881 0.46472323
		 -19.92758942 -1.16274881 2.0581756e-16 -19.8130455 1.16274858 -0.4647229 -19.49565315 1.16274858 -0.82298374
		 -19.048126221 1.16274858 -0.99270886 -18.57298279 1.16274858 -0.93501639 -18.17907715 1.16274858 -0.66312283
		 -17.95664787 1.16274858 -0.23931587 -17.95664787 1.16274858 0.23931547 -18.17907715 1.16274858 0.66312253
		 -18.57298279 1.16274858 0.93501621 -19.048126221 1.16274858 0.99270886 -19.49565315 1.16274858 0.82298392
		 -19.8130455 1.16274858 0.46472323 -19.92758942 1.16274858 -5.6611103e-17 -18.92758942 -1.16274881 -1.3030506e-17
		 -18.92758942 1.16274858 5.4488837e-19 -19.8130455 0.99986339 -0.4647229 -19.8130455 -0.99986404 -0.4647229
		 -19.92758942 -0.99986404 2.0581756e-16 -19.92758942 0.99986339 -4.7575144e-17 -19.8130455 -0.99986404 0.46472323
		 -19.8130455 0.99986339 0.46472323 -19.49565315 -0.99986404 0.82298392 -19.49565315 0.99986339 0.82298392
		 -19.048126221 -0.99986404 0.99270886 -19.048126221 0.99986339 0.99270886 -18.57298279 -0.99986404 0.93501621
		 -18.57298279 0.99986339 0.93501621 -18.17907715 -0.99986404 0.66312253 -18.17907715 0.99986339 0.66312253
		 -17.95664787 -0.99986404 0.23931547 -17.95664787 0.99986339 0.23931547 -17.95664787 -0.99986404 -0.23931587
		 -17.95664787 0.99986339 -0.23931587 -18.17907715 -0.99986404 -0.66312283 -18.17907715 0.99986339 -0.66312283
		 -18.57298279 -0.99986404 -0.93501639 -18.57298279 0.99986339 -0.93501639 -19.048126221 -0.99986404 -0.99270886
		 -19.048126221 0.99986339 -0.99270886 -19.49565315 -0.99986404 -0.82298374 -19.49565315 0.99986339 -0.82298374
		 -19.62153625 0.99986339 -0.36421058 -19.62153625 -0.99986404 -0.36421058 -19.37278748 -0.99986404 -0.64498472
		 -19.37278748 0.99986339 -0.64498472 -19.71130371 0.99986339 1.4937008e-08 -19.71130371 -0.99986404 1.4937008e-08
		 -19.62153625 0.99986339 0.36421102 -19.62153625 -0.99986404 0.36421102 -19.37278748 0.99986339 0.64498556
		 -19.37278748 -0.99986404 0.64498556 -19.022052765 0.99986339 0.77800095 -19.022052765 -0.99986404 0.77800095
		 -18.64967918 0.99986339 0.73278654 -18.64967918 -0.99986404 0.73278654 -18.34096909 0.99986339 0.51969957
		 -18.34096909 -0.99986404 0.51969957 -18.16664886 0.99986339 0.18755524 -18.16664886 -0.99986404 0.18755524
		 -18.16664886 0.99986339 -0.18755546 -18.16664886 -0.99986404 -0.18755546 -18.34096909 0.99986339 -0.51969981
		 -18.34096909 -0.99986404 -0.51969981 -18.64967918 0.99986339 -0.73278636 -18.64967918 -0.99986404 -0.73278636
		 -19.022052765 0.99986339 -0.77800119 -19.022052765 -0.99986404 -0.77800119;
	setAttr -s 338 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 0 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 13 0 26 0 1 26 1 1 26 2 1 26 3 1 26 4 1
		 26 5 1 26 6 1 26 7 1 26 8 1 26 9 1 26 10 1 26 11 1 26 12 1 13 27 1 14 27 1 15 27 1
		 16 27 1 17 27 1 18 27 1 19 27 1 20 27 1 21 27 1 22 27 1 23 27 1 24 27 1 25 27 1 29 52 0
		 53 28 0 28 31 0 30 29 0 31 33 0 32 30 0 33 35 0 34 32 0 35 37 0 36 34 0 37 39 0 38 36 0
		 39 41 0 40 38 0 41 43 0 42 40 0 43 45 0 44 42 0 45 47 0 46 44 0 47 49 0 48 46 0 49 51 0
		 50 48 0 51 53 0 52 50 0 1 52 1 29 0 1 2 50 1 3 48 1 4 46 1 5 44 1 6 42 1 7 40 1 8 38 1
		 9 36 1 10 34 1 11 32 1 12 30 1 28 13 1 25 31 1 24 33 1 23 35 1 22 37 1 21 39 1 20 41 1
		 19 43 1 18 45 1 17 47 1 16 49 1 15 51 1 14 53 1 28 54 1 29 55 1 54 55 1 52 56 1 55 56 0
		 53 57 1 56 57 1 57 54 0 31 58 1 54 58 0 30 59 1 58 59 1 59 55 0 33 60 1 58 60 0 32 61 1
		 60 61 1 61 59 0 35 62 1 60 62 0 34 63 1 62 63 1 63 61 0 37 64 1 62 64 0 36 65 1 64 65 1
		 65 63 0 39 66 1 64 66 0 38 67 1 66 67 1 67 65 0 41 68 1 66 68 0 40 69 1 68 69 1 69 67 0
		 43 70 1 68 70 0 42 71 1 70 71 1 71 69 0 45 72 1 70 72 0 44 73 1 72 73 1 73 71 0 47 74 1
		 72 74 0 46 75 1 74 75 1 75 73 0 49 76 1 74 76 0 48 77 1 76 77 1 77 75 0 51 78 1 76 78 0
		 50 79 1 78 79 1;
	setAttr ".ed[166:331]" 79 77 0 78 57 0 56 79 0 80 81 0 106 80 1 106 81 1 81 82 0
		 106 82 1 82 83 0 106 83 1 83 84 0 106 84 1 84 85 0 106 85 1 85 86 0 106 86 1 86 87 0
		 106 87 1 87 88 0 106 88 1 88 89 0 106 89 1 89 90 0 106 90 1 90 91 0 106 91 1 91 92 0
		 106 92 1 92 80 0 93 94 0 94 107 1 93 107 1 94 95 0 95 107 1 95 96 0 96 107 1 96 97 0
		 97 107 1 97 98 0 98 107 1 98 99 0 99 107 1 99 100 0 100 107 1 100 101 0 101 107 1
		 101 102 0 102 107 1 102 103 0 103 107 1 103 104 0 104 107 1 104 105 0 105 107 1 105 93 0
		 134 135 1 135 136 0 136 137 1 137 134 0 134 138 0 138 139 1 139 135 0 138 140 0 140 141 1
		 141 139 0 140 142 0 142 143 1 143 141 0 142 144 0 144 145 1 145 143 0 144 146 0 146 147 1
		 147 145 0 146 148 0 148 149 1 149 147 0 148 150 0 150 151 1 151 149 0 150 152 0 152 153 1
		 153 151 0 152 154 0 154 155 1 155 153 0 154 156 0 156 157 1 157 155 0 156 158 0 158 159 1
		 159 157 0 158 137 0 136 159 0 81 132 1 109 132 0 109 80 1 82 130 1 132 130 0 83 128 1
		 130 128 0 84 126 1 128 126 0 85 124 1 126 124 0 86 122 1 124 122 0 87 120 1 122 120 0
		 88 118 1 120 118 0 89 116 1 118 116 0 90 114 1 116 114 0 91 112 1 114 112 0 92 110 1
		 112 110 0 110 109 0 108 111 0 108 93 1 105 111 1 111 113 0 104 113 1 113 115 0 103 115 1
		 115 117 0 102 117 1 117 119 0 101 119 1 119 121 0 100 121 1 121 123 0 99 123 1 123 125 0
		 98 125 1 125 127 0 97 127 1 127 129 0 96 129 1 129 131 0 95 131 1 131 133 0 94 133 1
		 133 108 0 132 136 1 109 135 1 108 134 1 133 137 1 111 138 1 110 139 1 113 140 1 112 141 1
		 115 142 1 114 143 1 117 144 1 116 145 1 119 146 1 118 147 1 121 148 1 120 149 1 123 150 1
		 122 151 1 125 152 1 124 153 1;
	setAttr ".ed[332:337]" 127 154 1 126 155 1 129 156 1 128 157 1 131 158 1 130 159 1;
	setAttr -s 182 -ch 676 ".fc[0:181]" -type "polyFaces" 
		f 3 -1 -27 27
		mu 0 3 1 0 26
		f 3 -2 -28 28
		mu 0 3 2 1 26
		f 3 -3 -29 29
		mu 0 3 3 2 26
		f 3 -4 -30 30
		mu 0 3 4 3 26
		f 3 -5 -31 31
		mu 0 3 5 4 26
		f 3 -6 -32 32
		mu 0 3 6 5 26
		f 3 -7 -33 33
		mu 0 3 7 6 26
		f 3 -8 -34 34
		mu 0 3 8 7 26
		f 3 -9 -35 35
		mu 0 3 9 8 26
		f 3 -10 -36 36
		mu 0 3 10 9 26
		f 3 -11 -37 37
		mu 0 3 11 10 26
		f 3 -12 -38 38
		mu 0 3 12 11 26
		f 3 -13 -39 26
		mu 0 3 0 12 26
		f 3 13 40 -40
		mu 0 3 24 23 27
		f 3 14 41 -41
		mu 0 3 23 22 27
		f 3 15 42 -42
		mu 0 3 22 21 27
		f 3 16 43 -43
		mu 0 3 21 20 27
		f 3 17 44 -44
		mu 0 3 20 19 27
		f 3 18 45 -45
		mu 0 3 19 18 27
		f 3 19 46 -46
		mu 0 3 18 17 27
		f 3 20 47 -47
		mu 0 3 17 16 27
		f 3 21 48 -48
		mu 0 3 16 15 27
		f 3 22 49 -49
		mu 0 3 15 14 27
		f 3 23 50 -50
		mu 0 3 14 13 27
		f 3 24 51 -51
		mu 0 3 13 25 27
		f 3 25 39 -52
		mu 0 3 25 24 27
		f 4 106 108 110 111
		mu 0 4 87 84 85 86
		f 4 -107 113 115 116
		mu 0 4 91 88 89 90
		f 4 -116 118 120 121
		mu 0 4 90 89 92 93
		f 4 -121 123 125 126
		mu 0 4 93 92 94 95
		f 4 -126 128 130 131
		mu 0 4 95 94 96 97
		f 4 -131 133 135 136
		mu 0 4 97 96 98 99
		f 4 -136 138 140 141
		mu 0 4 99 98 100 101
		f 4 -141 143 145 146
		mu 0 4 101 100 102 103
		f 4 -146 148 150 151
		mu 0 4 103 102 104 105
		f 4 -151 153 155 156
		mu 0 4 105 104 106 107
		f 4 -156 158 160 161
		mu 0 4 107 106 108 109
		f 4 -161 163 165 166
		mu 0 4 109 108 110 111
		f 4 -166 167 -111 168
		mu 0 4 111 110 86 85
		f 4 0 78 -53 79
		mu 0 4 30 31 34 32
		f 4 1 80 -78 -79
		mu 0 4 31 33 36 34
		f 4 2 81 -76 -81
		mu 0 4 33 35 38 36
		f 4 3 82 -74 -82
		mu 0 4 35 37 40 38
		f 4 4 83 -72 -83
		mu 0 4 37 39 42 40
		f 4 5 84 -70 -84
		mu 0 4 39 41 44 42
		f 4 6 85 -68 -85
		mu 0 4 41 43 46 44
		f 4 7 86 -66 -86
		mu 0 4 43 45 48 46
		f 4 8 87 -64 -87
		mu 0 4 45 47 50 48
		f 4 9 88 -62 -88
		mu 0 4 47 49 52 50
		f 4 10 89 -60 -89
		mu 0 4 49 51 54 52
		f 4 11 90 -58 -90
		mu 0 4 51 53 56 54
		f 4 12 -80 -56 -91
		mu 0 4 53 55 29 56
		f 4 -55 91 -26 92
		mu 0 4 60 57 58 59
		f 4 -57 -93 -25 93
		mu 0 4 62 60 59 61
		f 4 -59 -94 -24 94
		mu 0 4 64 62 61 63
		f 4 -61 -95 -23 95
		mu 0 4 66 64 63 65
		f 4 -63 -96 -22 96
		mu 0 4 68 66 65 67
		f 4 -65 -97 -21 97
		mu 0 4 70 68 67 69
		f 4 -67 -98 -20 98
		mu 0 4 72 70 69 71
		f 4 -69 -99 -19 99
		mu 0 4 74 72 71 73
		f 4 -71 -100 -18 100
		mu 0 4 76 74 73 75
		f 4 -73 -101 -17 101
		mu 0 4 78 76 75 77
		f 4 -75 -102 -16 102
		mu 0 4 80 78 77 79
		f 4 -77 -103 -15 103
		mu 0 4 82 80 79 81
		f 4 -54 -104 -14 -92
		mu 0 4 28 82 81 83
		f 4 52 107 -109 -106
		mu 0 4 32 34 85 84
		f 4 53 104 -112 -110
		mu 0 4 82 28 87 86
		f 4 54 112 -114 -105
		mu 0 4 57 60 89 88
		f 4 55 105 -117 -115
		mu 0 4 56 29 91 90
		f 4 56 117 -119 -113
		mu 0 4 60 62 92 89
		f 4 57 114 -122 -120
		mu 0 4 54 56 90 93
		f 4 58 122 -124 -118
		mu 0 4 62 64 94 92
		f 4 59 119 -127 -125
		mu 0 4 52 54 93 95
		f 4 60 127 -129 -123
		mu 0 4 64 66 96 94
		f 4 61 124 -132 -130
		mu 0 4 50 52 95 97
		f 4 62 132 -134 -128
		mu 0 4 66 68 98 96
		f 4 63 129 -137 -135
		mu 0 4 48 50 97 99
		f 4 64 137 -139 -133
		mu 0 4 68 70 100 98
		f 4 65 134 -142 -140
		mu 0 4 46 48 99 101
		f 4 66 142 -144 -138
		mu 0 4 70 72 102 100
		f 4 67 139 -147 -145
		mu 0 4 44 46 101 103
		f 4 68 147 -149 -143
		mu 0 4 72 74 104 102
		f 4 69 144 -152 -150
		mu 0 4 42 44 103 105
		f 4 70 152 -154 -148
		mu 0 4 74 76 106 104
		f 4 71 149 -157 -155
		mu 0 4 40 42 105 107
		f 4 72 157 -159 -153
		mu 0 4 76 78 108 106
		f 4 73 154 -162 -160
		mu 0 4 38 40 107 109
		f 4 74 162 -164 -158
		mu 0 4 78 80 110 108
		f 4 75 159 -167 -165
		mu 0 4 36 38 109 111
		f 4 76 109 -168 -163
		mu 0 4 80 82 86 110
		f 4 77 164 -169 -108
		mu 0 4 34 36 111 85
		f 3 -172 170 169
		mu 0 3 112 114 113
		f 3 -174 171 172
		mu 0 3 115 114 112
		f 3 -176 173 174
		mu 0 3 116 114 115
		f 3 -178 175 176
		mu 0 3 117 114 116
		f 3 -180 177 178
		mu 0 3 118 114 117
		f 3 -182 179 180
		mu 0 3 119 114 118
		f 3 -184 181 182
		mu 0 3 120 114 119
		f 3 -186 183 184
		mu 0 3 121 114 120
		f 3 -188 185 186
		mu 0 3 122 114 121
		f 3 -190 187 188
		mu 0 3 123 114 122
		f 3 -192 189 190
		mu 0 3 124 114 123
		f 3 -194 191 192
		mu 0 3 125 114 124
		f 3 -171 193 194
		mu 0 3 113 114 125
		f 3 197 -197 -196
		mu 0 3 126 128 127
		f 3 196 -200 -199
		mu 0 3 127 128 129
		f 3 199 -202 -201
		mu 0 3 129 128 130
		f 3 201 -204 -203
		mu 0 3 130 128 131
		f 3 203 -206 -205
		mu 0 3 131 128 132
		f 3 205 -208 -207
		mu 0 3 132 128 133
		f 3 207 -210 -209
		mu 0 3 133 128 134
		f 3 209 -212 -211
		mu 0 3 134 128 135
		f 3 211 -214 -213
		mu 0 3 135 128 136
		f 3 213 -216 -215
		mu 0 3 136 128 137
		f 3 215 -218 -217
		mu 0 3 137 128 138
		f 3 217 -220 -219
		mu 0 3 138 128 139
		f 3 219 -198 -221
		mu 0 3 139 128 126
		f 4 -225 -224 -223 -222
		mu 0 4 140 143 142 141
		f 4 -228 -227 -226 221
		mu 0 4 144 147 146 145
		f 4 -231 -230 -229 226
		mu 0 4 147 149 148 146
		f 4 -234 -233 -232 229
		mu 0 4 149 151 150 148
		f 4 -237 -236 -235 232
		mu 0 4 151 153 152 150
		f 4 -240 -239 -238 235
		mu 0 4 153 155 154 152
		f 4 -243 -242 -241 238
		mu 0 4 155 157 156 154
		f 4 -246 -245 -244 241
		mu 0 4 157 159 158 156
		f 4 -249 -248 -247 244
		mu 0 4 159 161 160 158
		f 4 -252 -251 -250 247
		mu 0 4 161 163 162 160
		f 4 -255 -254 -253 250
		mu 0 4 163 165 164 162
		f 4 -258 -257 -256 253
		mu 0 4 165 167 166 164
		f 4 -260 223 -259 256
		mu 0 4 167 142 143 166
		f 4 -263 261 -261 -170
		mu 0 4 168 171 170 169
		f 4 260 264 -264 -173
		mu 0 4 169 170 173 172
		f 4 263 266 -266 -175
		mu 0 4 172 173 175 174
		f 4 265 268 -268 -177
		mu 0 4 174 175 177 176
		f 4 267 270 -270 -179
		mu 0 4 176 177 179 178
		f 4 269 272 -272 -181
		mu 0 4 178 179 181 180
		f 4 271 274 -274 -183
		mu 0 4 180 181 183 182
		f 4 273 276 -276 -185
		mu 0 4 182 183 185 184
		f 4 275 278 -278 -187
		mu 0 4 184 185 187 186
		f 4 277 280 -280 -189
		mu 0 4 186 187 189 188
		f 4 279 282 -282 -191
		mu 0 4 188 189 191 190
		f 4 281 284 -284 -193
		mu 0 4 190 191 193 192
		f 4 283 285 262 -195
		mu 0 4 192 193 195 194
		f 4 -289 220 -288 286
		mu 0 4 196 199 198 197
		f 4 -291 218 288 289
		mu 0 4 200 201 199 196
		f 4 -293 216 290 291
		mu 0 4 202 203 201 200
		f 4 -295 214 292 293
		mu 0 4 204 205 203 202
		f 4 -297 212 294 295
		mu 0 4 206 207 205 204
		f 4 -299 210 296 297
		mu 0 4 208 209 207 206
		f 4 -301 208 298 299
		mu 0 4 210 211 209 208
		f 4 -303 206 300 301
		mu 0 4 212 213 211 210
		f 4 -305 204 302 303
		mu 0 4 214 215 213 212
		f 4 -307 202 304 305
		mu 0 4 216 217 215 214
		f 4 -309 200 306 307
		mu 0 4 218 219 217 216
		f 4 -311 198 308 309
		mu 0 4 220 221 219 218
		f 4 287 195 310 311
		mu 0 4 222 223 221 220
		f 4 313 222 -313 -262
		mu 0 4 171 141 142 170
		f 4 315 224 -315 -312
		mu 0 4 220 143 140 222
		f 4 314 225 -317 -287
		mu 0 4 197 145 146 196
		f 4 317 227 -314 -286
		mu 0 4 193 147 144 195
		f 4 316 228 -319 -290
		mu 0 4 196 146 148 200
		f 4 319 230 -318 -285
		mu 0 4 191 149 147 193
		f 4 318 231 -321 -292
		mu 0 4 200 148 150 202
		f 4 321 233 -320 -283
		mu 0 4 189 151 149 191
		f 4 320 234 -323 -294
		mu 0 4 202 150 152 204
		f 4 323 236 -322 -281
		mu 0 4 187 153 151 189
		f 4 322 237 -325 -296
		mu 0 4 204 152 154 206
		f 4 325 239 -324 -279
		mu 0 4 185 155 153 187
		f 4 324 240 -327 -298
		mu 0 4 206 154 156 208
		f 4 327 242 -326 -277
		mu 0 4 183 157 155 185
		f 4 326 243 -329 -300
		mu 0 4 208 156 158 210
		f 4 329 245 -328 -275
		mu 0 4 181 159 157 183
		f 4 328 246 -331 -302
		mu 0 4 210 158 160 212
		f 4 331 248 -330 -273
		mu 0 4 179 161 159 181
		f 4 330 249 -333 -304
		mu 0 4 212 160 162 214
		f 4 333 251 -332 -271
		mu 0 4 177 163 161 179
		f 4 332 252 -335 -306
		mu 0 4 214 162 164 216
		f 4 335 254 -334 -269
		mu 0 4 175 165 163 177
		f 4 334 255 -337 -308
		mu 0 4 216 164 166 218
		f 4 337 257 -336 -267
		mu 0 4 173 167 165 175
		f 4 336 258 -316 -310
		mu 0 4 218 166 143 220
		f 4 312 259 -338 -265
		mu 0 4 170 142 167 173;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Jacob_Ribbon_Geo" -p "geo";
	rename -uid "AC6771DE-43D0-22F1-5589-A0AA5AFE6878";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 12.940432548522949 8.8182526773446419 -2.3998075276459534e-06 ;
	setAttr ".sp" -type "double3" 12.940432548522956 8.8182526773446526 -2.3998075276459534e-06 ;
createNode mesh -n "Jacob_Ribbon_GeoShape" -p "Jacob_Ribbon_Geo";
	rename -uid "2442C05D-423F-1D5C-EFC8-949B6BC9E7F4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Jacob_Ribbon_GeoShapeOrig" -p "Jacob_Ribbon_Geo";
	rename -uid "71684520-4D35-BF56-27DE-7FA41CDB91E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 24 "e[282:304]" "e[564]" "e[567]" "e[569]" "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]" "e[595]" "e[597]" "e[599]" "e[601]" "e[603]" "e[605]" "e[607]" "e[609]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 46 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[24]" "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[38]" "e[40]" "e[42]" "e[44]" "e[305]" "e[309]" "e[312]" "e[315]" "e[318]" "e[321]" "e[324]" "e[327]" "e[330]" "e[333]" "e[336]" "e[339]" "e[342]" "e[345]" "e[348]" "e[351]" "e[354]" "e[357]" "e[360]" "e[363]" "e[366]" "e[369]" "e[372]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 12 "e[1]" "e[48]" "e[95]" "e[142]" "e[189]" "e[236]" "e[308]" "e[377]" "e[424]" "e[471]" "e[518]" "e[565]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "e[46]" "e[93]" "e[140]" "e[187]" "e[234]" "e[281]" "e[373]" "e[420]" "e[467]" "e[514]" "e[561]" "e[608]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 85 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[24]" "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[38]" "e[40]" "e[42]" "e[44]" "e[46]" "e[48]" "e[93]" "e[95]" "e[140]" "e[142]" "e[187]" "e[189]" "e[234]" "e[236]" "e[281:305]" "e[308:309]" "e[312]" "e[315]" "e[318]" "e[321]" "e[324]" "e[327]" "e[330]" "e[333]" "e[336]" "e[339]" "e[342]" "e[345]" "e[348]" "e[351]" "e[354]" "e[357]" "e[360]" "e[363]" "e[366]" "e[369]" "e[372:373]" "e[377]" "e[420]" "e[424]" "e[467]" "e[471]" "e[514]" "e[518]" "e[561]" "e[564:565]" "e[567]" "e[569]" "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]" "e[595]" "e[597]" "e[599]" "e[601]" "e[603]" "e[605]" "e[607:609]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 336 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.043478262 0 0.086956523
		 0 0.13043478 0 0.17391305 0 0.21739131 0 0.26086956 0 0.30434784 0 0.34782609 0 0.39130434
		 0 0.43478262 0 0.47826087 0 0.52173913 0 0.56521738 0 0.60869569 0 0.65217394 0 0.69565219
		 0 0.73913044 0 0.78260869 0 0.826087 0 0.86956525 0 0.9130435 0 0.95652175 0 1 0
		 0 0.16666667 0.043478262 0.16666667 0.086956523 0.16666667 0.13043478 0.16666667
		 0.17391305 0.16666667 0.21739131 0.16666667 0.26086956 0.16666667 0.30434784 0.16666667
		 0.34782609 0.16666667 0.39130434 0.16666667 0.43478262 0.16666667 0.47826087 0.16666667
		 0.52173913 0.16666667 0.56521738 0.16666667 0.60869569 0.16666667 0.65217394 0.16666667
		 0.69565219 0.16666667 0.73913044 0.16666667 0.78260869 0.16666667 0.826087 0.16666667
		 0.86956525 0.16666667 0.9130435 0.16666667 0.95652175 0.16666667 1 0.16666667 0 0.33333334
		 0.043478262 0.33333334 0.086956523 0.33333334 0.13043478 0.33333334 0.17391305 0.33333334
		 0.21739131 0.33333334 0.26086956 0.33333334 0.30434784 0.33333334 0.34782609 0.33333334
		 0.39130434 0.33333334 0.43478262 0.33333334 0.47826087 0.33333334 0.52173913 0.33333334
		 0.56521738 0.33333334 0.60869569 0.33333334 0.65217394 0.33333334 0.69565219 0.33333334
		 0.73913044 0.33333334 0.78260869 0.33333334 0.826087 0.33333334 0.86956525 0.33333334
		 0.9130435 0.33333334 0.95652175 0.33333334 1 0.33333334 0 0.5 0.043478262 0.5 0.086956523
		 0.5 0.13043478 0.5 0.17391305 0.5 0.21739131 0.5 0.26086956 0.5 0.30434784 0.5 0.34782609
		 0.5 0.39130434 0.5 0.43478262 0.5 0.47826087 0.5 0.52173913 0.5 0.56521738 0.5 0.60869569
		 0.5 0.65217394 0.5 0.69565219 0.5 0.73913044 0.5 0.78260869 0.5 0.826087 0.5 0.86956525
		 0.5 0.9130435 0.5 0.95652175 0.5 1 0.5 0 0.66666669 0.043478262 0.66666669 0.086956523
		 0.66666669 0.13043478 0.66666669 0.17391305 0.66666669 0.21739131 0.66666669 0.26086956
		 0.66666669 0.30434784 0.66666669 0.34782609 0.66666669 0.39130434 0.66666669 0.43478262
		 0.66666669 0.47826087 0.66666669 0.52173913 0.66666669 0.56521738 0.66666669 0.60869569
		 0.66666669 0.65217394 0.66666669 0.69565219 0.66666669 0.73913044 0.66666669 0.78260869
		 0.66666669 0.826087 0.66666669 0.86956525 0.66666669 0.9130435 0.66666669 0.95652175
		 0.66666669 1 0.66666669 0 0.83333337 0.043478262 0.83333337 0.086956523 0.83333337
		 0.13043478 0.83333337 0.17391305 0.83333337 0.21739131 0.83333337 0.26086956 0.83333337
		 0.30434784 0.83333337 0.34782609 0.83333337 0.39130434 0.83333337 0.43478262 0.83333337
		 0.47826087 0.83333337 0.52173913 0.83333337 0.56521738 0.83333337 0.60869569 0.83333337
		 0.65217394 0.83333337 0.69565219 0.83333337 0.73913044 0.83333337 0.78260869 0.83333337
		 0.826087 0.83333337 0.86956525 0.83333337 0.9130435 0.83333337 0.95652175 0.83333337
		 1 0.83333337 0 1 0.043478262 1 0.086956523 1 0.13043478 1 0.17391305 1 0.21739131
		 1 0.26086956 1 0.30434784 1 0.34782609 1 0.39130434 1 0.43478262 1 0.47826087 1 0.52173913
		 1 0.56521738 1 0.60869569 1 0.65217394 1 0.69565219 1 0.73913044 1 0.78260869 1 0.826087
		 1 0.86956525 1 0.9130435 1 0.95652175 1 1 1 0 0 0.043478262 0 0.043478262 0.16666667
		 0 0.16666667 0.086956523 0 0.086956523 0.16666667 0.13043478 0 0.13043478 0.16666667
		 0.17391305 0 0.17391305 0.16666667 0.21739131 0 0.21739131 0.16666667 0.26086956
		 0 0.26086956 0.16666667 0.30434784 0 0.30434784 0.16666667 0.34782609 0 0.34782609
		 0.16666667 0.39130434 0 0.39130434 0.16666667 0.43478262 0 0.43478262 0.16666667
		 0.47826087 0 0.47826087 0.16666667 0.52173913 0 0.52173913 0.16666667 0.56521738
		 0 0.56521738 0.16666667 0.60869569 0 0.60869569 0.16666667 0.65217394 0 0.65217394
		 0.16666667 0.69565219 0 0.69565219 0.16666667 0.73913044 0 0.73913044 0.16666667
		 0.78260869 0 0.78260869 0.16666667 0.826087 0 0.826087 0.16666667 0.86956525 0 0.86956525
		 0.16666667 0.9130435 0 0.9130435 0.16666667 0.95652175 0 0.95652175 0.16666667 1
		 0 1 0.16666667 0.043478262 0.33333334 0 0.33333334 0.086956523 0.33333334 0.13043478
		 0.33333334 0.17391305 0.33333334 0.21739131 0.33333334 0.26086956 0.33333334 0.30434784
		 0.33333334 0.34782609 0.33333334 0.39130434 0.33333334 0.43478262 0.33333334 0.47826087
		 0.33333334 0.52173913 0.33333334 0.56521738 0.33333334 0.60869569 0.33333334 0.65217394
		 0.33333334 0.69565219 0.33333334 0.73913044 0.33333334 0.78260869 0.33333334 0.826087
		 0.33333334 0.86956525 0.33333334 0.9130435 0.33333334 0.95652175 0.33333334 1 0.33333334
		 0.043478262 0.5 0 0.5 0.086956523 0.5 0.13043478 0.5 0.17391305 0.5 0.21739131 0.5
		 0.26086956 0.5 0.30434784 0.5 0.34782609 0.5 0.39130434 0.5;
	setAttr ".uvst[0].uvsp[250:335]" 0.43478262 0.5 0.47826087 0.5 0.52173913 0.5
		 0.56521738 0.5 0.60869569 0.5 0.65217394 0.5 0.69565219 0.5 0.73913044 0.5 0.78260869
		 0.5 0.826087 0.5 0.86956525 0.5 0.9130435 0.5 0.95652175 0.5 1 0.5 0.043478262 0.66666669
		 0 0.66666669 0.086956523 0.66666669 0.13043478 0.66666669 0.17391305 0.66666669 0.21739131
		 0.66666669 0.26086956 0.66666669 0.30434784 0.66666669 0.34782609 0.66666669 0.39130434
		 0.66666669 0.43478262 0.66666669 0.47826087 0.66666669 0.52173913 0.66666669 0.56521738
		 0.66666669 0.60869569 0.66666669 0.65217394 0.66666669 0.69565219 0.66666669 0.73913044
		 0.66666669 0.78260869 0.66666669 0.826087 0.66666669 0.86956525 0.66666669 0.9130435
		 0.66666669 0.95652175 0.66666669 1 0.66666669 0.043478262 0.83333337 0 0.83333337
		 0.086956523 0.83333337 0.13043478 0.83333337 0.17391305 0.83333337 0.21739131 0.83333337
		 0.26086956 0.83333337 0.30434784 0.83333337 0.34782609 0.83333337 0.39130434 0.83333337
		 0.43478262 0.83333337 0.47826087 0.83333337 0.52173913 0.83333337 0.56521738 0.83333337
		 0.60869569 0.83333337 0.65217394 0.83333337 0.69565219 0.83333337 0.73913044 0.83333337
		 0.78260869 0.83333337 0.826087 0.83333337 0.86956525 0.83333337 0.9130435 0.83333337
		 0.95652175 0.83333337 1 0.83333337 0.043478262 1 0 1 0.086956523 1 0.13043478 1 0.17391305
		 1 0.21739131 1 0.26086956 1 0.30434784 1 0.34782609 1 0.39130434 1 0.43478262 1 0.47826087
		 1 0.52173913 1 0.56521738 1 0.60869569 1 0.65217394 1 0.69565219 1 0.73913044 1 0.78260869
		 1 0.826087 1 0.86956525 1 0.9130435 1 0.95652175 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 336 ".vt";
	setAttr ".vt[0:165]"  12.9404335 4.46277046 -2.3998075e-06 14.15764236 4.46277046 -2.3998075e-06
		 15.37485313 4.46277046 -2.3998075e-06 16.592062 4.46277046 -2.3998075e-06 17.80927277 4.46277046 -2.3998075e-06
		 19.026481628 4.46277046 -2.3998075e-06 20.24369049 4.46277046 -2.3998075e-06 21.46090126 4.46277046 -2.3998075e-06
		 22.67811012 4.46277046 -2.3998075e-06 23.89531708 4.46277046 -2.3998075e-06 25.11252785 4.46277046 -2.3998075e-06
		 26.32973862 4.46277046 -2.3998075e-06 27.54694748 4.46277046 -2.3998075e-06 28.76415443 4.46277046 -2.3998075e-06
		 29.98136902 4.46277046 -2.3998075e-06 31.19857597 4.46277046 -2.3998075e-06 32.41579056 4.46277046 -2.3998075e-06
		 33.63299942 4.46277046 -2.3998075e-06 34.85020828 4.46277046 -2.3998075e-06 36.067420959 4.46277046 -2.3998075e-06
		 37.28462601 4.46277046 -2.3998075e-06 38.50183487 4.46277046 -2.3998075e-06 39.71904373 4.46277046 -2.3998075e-06
		 40.93625641 4.46277046 -2.3998075e-06 12.9404335 5.91459751 -2.3998075e-06 14.15764236 5.91459751 -2.3998075e-06
		 15.37485313 5.91459751 -2.3998075e-06 16.592062 5.91459751 -2.3998075e-06 17.80927277 5.91459751 -2.3998075e-06
		 19.026481628 5.91459751 -2.3998075e-06 20.24369049 5.91459751 -2.3998075e-06 21.46090126 5.91459751 -2.3998075e-06
		 22.67811012 5.91459751 -2.3998075e-06 23.89531708 5.91459751 -2.3998075e-06 25.11252785 5.91459751 -2.3998075e-06
		 26.32973862 5.91459751 -2.3998075e-06 27.54694748 5.91459751 -2.3998075e-06 28.76415443 5.91459751 -2.3998075e-06
		 29.98136902 5.91459751 -2.3998075e-06 31.19857597 5.91459751 -2.3998075e-06 32.41579056 5.91459751 -2.3998075e-06
		 33.63299942 5.91459751 -2.3998075e-06 34.85020828 5.91459751 -2.3998075e-06 36.067420959 5.91459751 -2.3998075e-06
		 37.28462601 5.91459751 -2.3998075e-06 38.50183487 5.91459751 -2.3998075e-06 39.71904373 5.91459751 -2.3998075e-06
		 40.93625641 5.91459751 -2.3998075e-06 12.9404335 7.36642551 -2.3998075e-06 14.15764236 7.36642551 -2.3998075e-06
		 15.37485313 7.36642551 -2.3998075e-06 16.592062 7.36642551 -2.3998075e-06 17.80927277 7.36642551 -2.3998075e-06
		 19.026481628 7.36642551 -2.3998075e-06 20.24369049 7.36642551 -2.3998075e-06 21.46090126 7.36642551 -2.3998075e-06
		 22.67811012 7.36642551 -2.3998075e-06 23.89531708 7.36642551 -2.3998075e-06 25.11252785 7.36642551 -2.3998075e-06
		 26.32973862 7.36642551 -2.3998075e-06 27.54694748 7.36642551 -2.3998075e-06 28.76415443 7.36642551 -2.3998075e-06
		 29.98136902 7.36642551 -2.3998075e-06 31.19857597 7.36642551 -2.3998075e-06 32.41579056 7.36642551 -2.3998075e-06
		 33.63299942 7.36642551 -2.3998075e-06 34.85020828 7.36642551 -2.3998075e-06 36.067420959 7.36642551 -2.3998075e-06
		 37.28462601 7.36642551 -2.3998075e-06 38.50183487 7.36642551 -2.3998075e-06 39.71904373 7.36642551 -2.3998075e-06
		 40.93625641 7.36642551 -2.3998075e-06 12.9404335 8.81825161 -2.3998075e-06 14.15764236 8.81825161 -2.3998075e-06
		 15.37485313 8.81825161 -2.3998075e-06 16.592062 8.81825161 -2.3998075e-06 17.80927277 8.81825161 -2.3998075e-06
		 19.026481628 8.81825161 -2.3998075e-06 20.24369049 8.81825161 -2.3998075e-06 21.46090126 8.81825161 -2.3998075e-06
		 22.67811012 8.81825161 -2.3998075e-06 23.89531708 8.81825161 -2.3998075e-06 25.11252785 8.81825161 -2.3998075e-06
		 26.32973862 8.81825161 -2.3998075e-06 27.54694748 8.81825161 -2.3998075e-06 28.76415443 8.81825161 -2.3998075e-06
		 29.98136902 8.81825161 -2.3998075e-06 31.19857597 8.81825161 -2.3998075e-06 32.41579056 8.81825161 -2.3998075e-06
		 33.63299942 8.81825161 -2.3998075e-06 34.85020828 8.81825161 -2.3998075e-06 36.067420959 8.81825161 -2.3998075e-06
		 37.28462601 8.81825161 -2.3998075e-06 38.50183487 8.81825161 -2.3998075e-06 39.71904373 8.81825161 -2.3998075e-06
		 40.93625641 8.81825161 -2.3998075e-06 12.9404335 10.27007866 -2.3998075e-06 14.15764236 10.27007866 -2.3998075e-06
		 15.37485313 10.27007866 -2.3998075e-06 16.592062 10.27007866 -2.3998075e-06 17.80927277 10.27007866 -2.3998075e-06
		 19.026481628 10.27007866 -2.3998075e-06 20.24369049 10.27007866 -2.3998075e-06 21.46090126 10.27007866 -2.3998075e-06
		 22.67811012 10.27007866 -2.3998075e-06 23.89531708 10.27007866 -2.3998075e-06 25.11252785 10.27007866 -2.3998075e-06
		 26.32973862 10.27007866 -2.3998075e-06 27.54694748 10.27007866 -2.3998075e-06 28.76415443 10.27007866 -2.3998075e-06
		 29.98136902 10.27007866 -2.3998075e-06 31.19857597 10.27007866 -2.3998075e-06 32.41579056 10.27007866 -2.3998075e-06
		 33.63299942 10.27007866 -2.3998075e-06 34.85020828 10.27007866 -2.3998075e-06 36.067420959 10.27007866 -2.3998075e-06
		 37.28462601 10.27007866 -2.3998075e-06 38.50183487 10.27007866 -2.3998075e-06 39.71904373 10.27007866 -2.3998075e-06
		 40.93625641 10.27007866 -2.3998075e-06 12.9404335 11.72190571 -2.3998075e-06 14.15764236 11.72190571 -2.3998075e-06
		 15.37485313 11.72190571 -2.3998075e-06 16.592062 11.72190571 -2.3998075e-06 17.80927277 11.72190571 -2.3998075e-06
		 19.026481628 11.72190571 -2.3998075e-06 20.24369049 11.72190571 -2.3998075e-06 21.46090126 11.72190571 -2.3998075e-06
		 22.67811012 11.72190571 -2.3998075e-06 23.89531708 11.72190571 -2.3998075e-06 25.11252785 11.72190571 -2.3998075e-06
		 26.32973862 11.72190571 -2.3998075e-06 27.54694748 11.72190571 -2.3998075e-06 28.76415443 11.72190571 -2.3998075e-06
		 29.98136902 11.72190571 -2.3998075e-06 31.19857597 11.72190571 -2.3998075e-06 32.41579056 11.72190571 -2.3998075e-06
		 33.63299942 11.72190571 -2.3998075e-06 34.85020828 11.72190571 -2.3998075e-06 36.067420959 11.72190571 -2.3998075e-06
		 37.28462601 11.72190571 -2.3998075e-06 38.50183487 11.72190571 -2.3998075e-06 39.71904373 11.72190571 -2.3998075e-06
		 40.93625641 11.72190571 -2.3998075e-06 12.9404335 13.17373276 -2.3998075e-06 14.15764236 13.17373276 -2.3998075e-06
		 15.37485313 13.17373276 -2.3998075e-06 16.592062 13.17373276 -2.3998075e-06 17.80927277 13.17373276 -2.3998075e-06
		 19.026481628 13.17373276 -2.3998075e-06 20.24369049 13.17373276 -2.3998075e-06 21.46090126 13.17373276 -2.3998075e-06
		 22.67811012 13.17373276 -2.3998075e-06 23.89531708 13.17373276 -2.3998075e-06 25.11252785 13.17373276 -2.3998075e-06
		 26.32973862 13.17373276 -2.3998075e-06 27.54694748 13.17373276 -2.3998075e-06 28.76415443 13.17373276 -2.3998075e-06
		 29.98136902 13.17373276 -2.3998075e-06 31.19857597 13.17373276 -2.3998075e-06 32.41579056 13.17373276 -2.3998075e-06
		 33.63299942 13.17373276 -2.3998075e-06 34.85020828 13.17373276 -2.3998075e-06 36.067420959 13.17373276 -2.3998075e-06
		 37.28462601 13.17373276 -2.3998075e-06 38.50183487 13.17373276 -2.3998075e-06;
	setAttr ".vt[166:331]" 39.71904373 13.17373276 -2.3998075e-06 40.93625641 13.17373276 -2.3998075e-06
		 -12.9404335 4.46277046 -2.3998075e-06 -14.15764236 4.46277046 -2.3998075e-06 -15.37485313 4.46277046 -2.3998075e-06
		 -16.592062 4.46277046 -2.3998075e-06 -17.80927277 4.46277046 -2.3998075e-06 -19.026481628 4.46277046 -2.3998075e-06
		 -20.24369049 4.46277046 -2.3998075e-06 -21.46090126 4.46277046 -2.3998075e-06 -22.67810822 4.46277046 -2.3998075e-06
		 -23.89531708 4.46277046 -2.3998075e-06 -25.11252594 4.46277046 -2.3998075e-06 -26.32973862 4.46277046 -2.3998075e-06
		 -27.54694748 4.46277046 -2.3998075e-06 -28.76415634 4.46277046 -2.3998075e-06 -29.98136902 4.46277046 -2.3998075e-06
		 -31.19857788 4.46277046 -2.3998075e-06 -32.41579056 4.46277046 -2.3998075e-06 -33.63299942 4.46277046 -2.3998075e-06
		 -34.85020447 4.46277046 -2.3998075e-06 -36.067420959 4.46277046 -2.3998075e-06 -37.28462601 4.46277046 -2.3998075e-06
		 -38.50183105 4.46277046 -2.3998075e-06 -39.71904373 4.46277046 -2.3998075e-06 -40.93625259 4.46277046 -2.3998075e-06
		 -12.9404335 5.91459751 -2.3998075e-06 -14.15764236 5.91459751 -2.3998075e-06 -15.37485313 5.91459751 -2.3998075e-06
		 -16.592062 5.91459751 -2.3998075e-06 -17.80927277 5.91459751 -2.3998075e-06 -19.026481628 5.91459751 -2.3998075e-06
		 -20.24369049 5.91459751 -2.3998075e-06 -21.46090126 5.91459751 -2.3998075e-06 -22.67810822 5.91459751 -2.3998075e-06
		 -23.89531708 5.91459751 -2.3998075e-06 -25.11252594 5.91459751 -2.3998075e-06 -26.32973862 5.91459751 -2.3998075e-06
		 -27.54694748 5.91459751 -2.3998075e-06 -28.76415634 5.91459751 -2.3998075e-06 -29.98136902 5.91459751 -2.3998075e-06
		 -31.19857788 5.91459751 -2.3998075e-06 -32.41579056 5.91459751 -2.3998075e-06 -33.63299942 5.91459751 -2.3998075e-06
		 -34.85020447 5.91459751 -2.3998075e-06 -36.067420959 5.91459751 -2.3998075e-06 -37.28462601 5.91459751 -2.3998075e-06
		 -38.50183105 5.91459751 -2.3998075e-06 -39.71904373 5.91459751 -2.3998075e-06 -40.93625259 5.91459751 -2.3998075e-06
		 -12.9404335 7.36642551 -2.3998075e-06 -14.15764236 7.36642551 -2.3998075e-06 -15.37485313 7.36642551 -2.3998075e-06
		 -16.592062 7.36642551 -2.3998075e-06 -17.80927277 7.36642551 -2.3998075e-06 -19.026481628 7.36642551 -2.3998075e-06
		 -20.24369049 7.36642551 -2.3998075e-06 -21.46090126 7.36642551 -2.3998075e-06 -22.67810822 7.36642551 -2.3998075e-06
		 -23.89531708 7.36642551 -2.3998075e-06 -25.11252594 7.36642551 -2.3998075e-06 -26.32973862 7.36642551 -2.3998075e-06
		 -27.54694748 7.36642551 -2.3998075e-06 -28.76415634 7.36642551 -2.3998075e-06 -29.98136902 7.36642551 -2.3998075e-06
		 -31.19857788 7.36642551 -2.3998075e-06 -32.41579056 7.36642551 -2.3998075e-06 -33.63299942 7.36642551 -2.3998075e-06
		 -34.85020447 7.36642551 -2.3998075e-06 -36.067420959 7.36642551 -2.3998075e-06 -37.28462601 7.36642551 -2.3998075e-06
		 -38.50183105 7.36642551 -2.3998075e-06 -39.71904373 7.36642551 -2.3998075e-06 -40.93625259 7.36642551 -2.3998075e-06
		 -12.9404335 8.81825161 -2.3998075e-06 -14.15764236 8.81825161 -2.3998075e-06 -15.37485313 8.81825161 -2.3998075e-06
		 -16.592062 8.81825161 -2.3998075e-06 -17.80927277 8.81825161 -2.3998075e-06 -19.026481628 8.81825161 -2.3998075e-06
		 -20.24369049 8.81825161 -2.3998075e-06 -21.46090126 8.81825161 -2.3998075e-06 -22.67810822 8.81825161 -2.3998075e-06
		 -23.89531708 8.81825161 -2.3998075e-06 -25.11252594 8.81825161 -2.3998075e-06 -26.32973862 8.81825161 -2.3998075e-06
		 -27.54694748 8.81825161 -2.3998075e-06 -28.76415634 8.81825161 -2.3998075e-06 -29.98136902 8.81825161 -2.3998075e-06
		 -31.19857788 8.81825161 -2.3998075e-06 -32.41579056 8.81825161 -2.3998075e-06 -33.63299942 8.81825161 -2.3998075e-06
		 -34.85020447 8.81825161 -2.3998075e-06 -36.067420959 8.81825161 -2.3998075e-06 -37.28462601 8.81825161 -2.3998075e-06
		 -38.50183105 8.81825161 -2.3998075e-06 -39.71904373 8.81825161 -2.3998075e-06 -40.93625259 8.81825161 -2.3998075e-06
		 -12.9404335 10.27007866 -2.3998075e-06 -14.15764236 10.27007866 -2.3998075e-06 -15.37485313 10.27007866 -2.3998075e-06
		 -16.592062 10.27007866 -2.3998075e-06 -17.80927277 10.27007866 -2.3998075e-06 -19.026481628 10.27007866 -2.3998075e-06
		 -20.24369049 10.27007866 -2.3998075e-06 -21.46090126 10.27007866 -2.3998075e-06 -22.67810822 10.27007866 -2.3998075e-06
		 -23.89531708 10.27007866 -2.3998075e-06 -25.11252594 10.27007866 -2.3998075e-06 -26.32973862 10.27007866 -2.3998075e-06
		 -27.54694748 10.27007866 -2.3998075e-06 -28.76415634 10.27007866 -2.3998075e-06 -29.98136902 10.27007866 -2.3998075e-06
		 -31.19857788 10.27007866 -2.3998075e-06 -32.41579056 10.27007866 -2.3998075e-06 -33.63299942 10.27007866 -2.3998075e-06
		 -34.85020447 10.27007866 -2.3998075e-06 -36.067420959 10.27007866 -2.3998075e-06
		 -37.28462601 10.27007866 -2.3998075e-06 -38.50183105 10.27007866 -2.3998075e-06 -39.71904373 10.27007866 -2.3998075e-06
		 -40.93625259 10.27007866 -2.3998075e-06 -12.9404335 11.72190571 -2.3998075e-06 -14.15764236 11.72190571 -2.3998075e-06
		 -15.37485313 11.72190571 -2.3998075e-06 -16.592062 11.72190571 -2.3998075e-06 -17.80927277 11.72190571 -2.3998075e-06
		 -19.026481628 11.72190571 -2.3998075e-06 -20.24369049 11.72190571 -2.3998075e-06
		 -21.46090126 11.72190571 -2.3998075e-06 -22.67810822 11.72190571 -2.3998075e-06 -23.89531708 11.72190571 -2.3998075e-06
		 -25.11252594 11.72190571 -2.3998075e-06 -26.32973862 11.72190571 -2.3998075e-06 -27.54694748 11.72190571 -2.3998075e-06
		 -28.76415634 11.72190571 -2.3998075e-06 -29.98136902 11.72190571 -2.3998075e-06 -31.19857788 11.72190571 -2.3998075e-06
		 -32.41579056 11.72190571 -2.3998075e-06 -33.63299942 11.72190571 -2.3998075e-06 -34.85020447 11.72190571 -2.3998075e-06
		 -36.067420959 11.72190571 -2.3998075e-06 -37.28462601 11.72190571 -2.3998075e-06
		 -38.50183105 11.72190571 -2.3998075e-06 -39.71904373 11.72190571 -2.3998075e-06 -40.93625259 11.72190571 -2.3998075e-06
		 -12.9404335 13.17373276 -2.3998075e-06 -14.15764236 13.17373276 -2.3998075e-06 -15.37485313 13.17373276 -2.3998075e-06
		 -16.592062 13.17373276 -2.3998075e-06 -17.80927277 13.17373276 -2.3998075e-06 -19.026481628 13.17373276 -2.3998075e-06
		 -20.24369049 13.17373276 -2.3998075e-06 -21.46090126 13.17373276 -2.3998075e-06 -22.67810822 13.17373276 -2.3998075e-06
		 -23.89531708 13.17373276 -2.3998075e-06 -25.11252594 13.17373276 -2.3998075e-06 -26.32973862 13.17373276 -2.3998075e-06
		 -27.54694748 13.17373276 -2.3998075e-06 -28.76415634 13.17373276 -2.3998075e-06 -29.98136902 13.17373276 -2.3998075e-06
		 -31.19857788 13.17373276 -2.3998075e-06 -32.41579056 13.17373276 -2.3998075e-06 -33.63299942 13.17373276 -2.3998075e-06
		 -34.85020447 13.17373276 -2.3998075e-06 -36.067420959 13.17373276 -2.3998075e-06;
	setAttr ".vt[332:335]" -37.28462601 13.17373276 -2.3998075e-06 -38.50183105 13.17373276 -2.3998075e-06
		 -39.71904373 13.17373276 -2.3998075e-06 -40.93625259 13.17373276 -2.3998075e-06;
	setAttr -s 610 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 24 0 1 2 0 1 25 1 2 3 0 2 26 1 3 4 0 3 27 1
		 4 5 0 4 28 1 5 6 0 5 29 1 6 7 0 6 30 1 7 8 0 7 31 1 8 9 0 8 32 1 9 10 0 9 33 1 10 11 0
		 10 34 1 11 12 0 11 35 1 12 13 0 12 36 1 13 14 0 13 37 1 14 15 0 14 38 1 15 16 0 15 39 1
		 16 17 0 16 40 1 17 18 0 17 41 1 18 19 0 18 42 1 19 20 0 19 43 1 20 21 0 20 44 1 21 22 0
		 21 45 1 22 23 0 22 46 1 23 47 0 24 25 1 24 48 0 25 26 1 25 49 1 26 27 1 26 50 1 27 28 1
		 27 51 1 28 29 1 28 52 1 29 30 1 29 53 1 30 31 1 30 54 1 31 32 1 31 55 1 32 33 1 32 56 1
		 33 34 1 33 57 1 34 35 1 34 58 1 35 36 1 35 59 1 36 37 1 36 60 1 37 38 1 37 61 1 38 39 1
		 38 62 1 39 40 1 39 63 1 40 41 1 40 64 1 41 42 1 41 65 1 42 43 1 42 66 1 43 44 1 43 67 1
		 44 45 1 44 68 1 45 46 1 45 69 1 46 47 1 46 70 1 47 71 0 48 49 1 48 72 0 49 50 1 49 73 1
		 50 51 1 50 74 1 51 52 1 51 75 1 52 53 1 52 76 1 53 54 1 53 77 1 54 55 1 54 78 1 55 56 1
		 55 79 1 56 57 1 56 80 1 57 58 1 57 81 1 58 59 1 58 82 1 59 60 1 59 83 1 60 61 1 60 84 1
		 61 62 1 61 85 1 62 63 1 62 86 1 63 64 1 63 87 1 64 65 1 64 88 1 65 66 1 65 89 1 66 67 1
		 66 90 1 67 68 1 67 91 1 68 69 1 68 92 1 69 70 1 69 93 1 70 71 1 70 94 1 71 95 0 72 73 1
		 72 96 0 73 74 1 73 97 1 74 75 1 74 98 1 75 76 1 75 99 1 76 77 1 76 100 1 77 78 1
		 77 101 1 78 79 1 78 102 1 79 80 1 79 103 1 80 81 1 80 104 1 81 82 1 81 105 1 82 83 1
		 82 106 1 83 84 1 83 107 1 84 85 1;
	setAttr ".ed[166:331]" 84 108 1 85 86 1 85 109 1 86 87 1 86 110 1 87 88 1 87 111 1
		 88 89 1 88 112 1 89 90 1 89 113 1 90 91 1 90 114 1 91 92 1 91 115 1 92 93 1 92 116 1
		 93 94 1 93 117 1 94 95 1 94 118 1 95 119 0 96 97 1 96 120 0 97 98 1 97 121 1 98 99 1
		 98 122 1 99 100 1 99 123 1 100 101 1 100 124 1 101 102 1 101 125 1 102 103 1 102 126 1
		 103 104 1 103 127 1 104 105 1 104 128 1 105 106 1 105 129 1 106 107 1 106 130 1 107 108 1
		 107 131 1 108 109 1 108 132 1 109 110 1 109 133 1 110 111 1 110 134 1 111 112 1 111 135 1
		 112 113 1 112 136 1 113 114 1 113 137 1 114 115 1 114 138 1 115 116 1 115 139 1 116 117 1
		 116 140 1 117 118 1 117 141 1 118 119 1 118 142 1 119 143 0 120 121 1 120 144 0 121 122 1
		 121 145 1 122 123 1 122 146 1 123 124 1 123 147 1 124 125 1 124 148 1 125 126 1 125 149 1
		 126 127 1 126 150 1 127 128 1 127 151 1 128 129 1 128 152 1 129 130 1 129 153 1 130 131 1
		 130 154 1 131 132 1 131 155 1 132 133 1 132 156 1 133 134 1 133 157 1 134 135 1 134 158 1
		 135 136 1 135 159 1 136 137 1 136 160 1 137 138 1 137 161 1 138 139 1 138 162 1 139 140 1
		 139 163 1 140 141 1 140 164 1 141 142 1 141 165 1 142 143 1 142 166 1 143 167 0 144 145 0
		 145 146 0 146 147 0 147 148 0 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0 153 154 0
		 154 155 0 155 156 0 156 157 0 157 158 0 158 159 0 159 160 0 160 161 0 161 162 0 162 163 0
		 163 164 0 164 165 0 165 166 0 166 167 0 168 169 0 169 193 1 192 193 1 168 192 0 169 170 0
		 170 194 1 193 194 1 170 171 0 171 195 1 194 195 1 171 172 0 172 196 1 195 196 1 172 173 0
		 173 197 1 196 197 1 173 174 0 174 198 1 197 198 1 174 175 0 175 199 1 198 199 1 175 176 0
		 176 200 1 199 200 1 176 177 0 177 201 1;
	setAttr ".ed[332:497]" 200 201 1 177 178 0 178 202 1 201 202 1 178 179 0 179 203 1
		 202 203 1 179 180 0 180 204 1 203 204 1 180 181 0 181 205 1 204 205 1 181 182 0 182 206 1
		 205 206 1 182 183 0 183 207 1 206 207 1 183 184 0 184 208 1 207 208 1 184 185 0 185 209 1
		 208 209 1 185 186 0 186 210 1 209 210 1 186 187 0 187 211 1 210 211 1 187 188 0 188 212 1
		 211 212 1 188 189 0 189 213 1 212 213 1 189 190 0 190 214 1 213 214 1 190 191 0 191 215 0
		 214 215 1 193 217 1 216 217 1 192 216 0 194 218 1 217 218 1 195 219 1 218 219 1 196 220 1
		 219 220 1 197 221 1 220 221 1 198 222 1 221 222 1 199 223 1 222 223 1 200 224 1 223 224 1
		 201 225 1 224 225 1 202 226 1 225 226 1 203 227 1 226 227 1 204 228 1 227 228 1 205 229 1
		 228 229 1 206 230 1 229 230 1 207 231 1 230 231 1 208 232 1 231 232 1 209 233 1 232 233 1
		 210 234 1 233 234 1 211 235 1 234 235 1 212 236 1 235 236 1 213 237 1 236 237 1 214 238 1
		 237 238 1 215 239 0 238 239 1 217 241 1 240 241 1 216 240 0 218 242 1 241 242 1 219 243 1
		 242 243 1 220 244 1 243 244 1 221 245 1 244 245 1 222 246 1 245 246 1 223 247 1 246 247 1
		 224 248 1 247 248 1 225 249 1 248 249 1 226 250 1 249 250 1 227 251 1 250 251 1 228 252 1
		 251 252 1 229 253 1 252 253 1 230 254 1 253 254 1 231 255 1 254 255 1 232 256 1 255 256 1
		 233 257 1 256 257 1 234 258 1 257 258 1 235 259 1 258 259 1 236 260 1 259 260 1 237 261 1
		 260 261 1 238 262 1 261 262 1 239 263 0 262 263 1 241 265 1 264 265 1 240 264 0 242 266 1
		 265 266 1 243 267 1 266 267 1 244 268 1 267 268 1 245 269 1 268 269 1 246 270 1 269 270 1
		 247 271 1 270 271 1 248 272 1 271 272 1 249 273 1 272 273 1 250 274 1 273 274 1 251 275 1
		 274 275 1 252 276 1 275 276 1 253 277 1 276 277 1 254 278 1 277 278 1;
	setAttr ".ed[498:609]" 255 279 1 278 279 1 256 280 1 279 280 1 257 281 1 280 281 1
		 258 282 1 281 282 1 259 283 1 282 283 1 260 284 1 283 284 1 261 285 1 284 285 1 262 286 1
		 285 286 1 263 287 0 286 287 1 265 289 1 288 289 1 264 288 0 266 290 1 289 290 1 267 291 1
		 290 291 1 268 292 1 291 292 1 269 293 1 292 293 1 270 294 1 293 294 1 271 295 1 294 295 1
		 272 296 1 295 296 1 273 297 1 296 297 1 274 298 1 297 298 1 275 299 1 298 299 1 276 300 1
		 299 300 1 277 301 1 300 301 1 278 302 1 301 302 1 279 303 1 302 303 1 280 304 1 303 304 1
		 281 305 1 304 305 1 282 306 1 305 306 1 283 307 1 306 307 1 284 308 1 307 308 1 285 309 1
		 308 309 1 286 310 1 309 310 1 287 311 0 310 311 1 289 313 1 312 313 0 288 312 0 290 314 1
		 313 314 0 291 315 1 314 315 0 292 316 1 315 316 0 293 317 1 316 317 0 294 318 1 317 318 0
		 295 319 1 318 319 0 296 320 1 319 320 0 297 321 1 320 321 0 298 322 1 321 322 0 299 323 1
		 322 323 0 300 324 1 323 324 0 301 325 1 324 325 0 302 326 1 325 326 0 303 327 1 326 327 0
		 304 328 1 327 328 0 305 329 1 328 329 0 306 330 1 329 330 0 307 331 1 330 331 0 308 332 1
		 331 332 0 309 333 1 332 333 0 310 334 1 333 334 0 311 335 0 334 335 0;
	setAttr -s 276 -ch 1104 ".fc[0:275]" -type "polyFaces" 
		f 4 0 3 -48 -2
		mu 0 4 0 1 25 24
		f 4 2 5 -50 -4
		mu 0 4 1 2 26 25
		f 4 4 7 -52 -6
		mu 0 4 2 3 27 26
		f 4 6 9 -54 -8
		mu 0 4 3 4 28 27
		f 4 8 11 -56 -10
		mu 0 4 4 5 29 28
		f 4 10 13 -58 -12
		mu 0 4 5 6 30 29
		f 4 12 15 -60 -14
		mu 0 4 6 7 31 30
		f 4 14 17 -62 -16
		mu 0 4 7 8 32 31
		f 4 16 19 -64 -18
		mu 0 4 8 9 33 32
		f 4 18 21 -66 -20
		mu 0 4 9 10 34 33
		f 4 20 23 -68 -22
		mu 0 4 10 11 35 34
		f 4 22 25 -70 -24
		mu 0 4 11 12 36 35
		f 4 24 27 -72 -26
		mu 0 4 12 13 37 36
		f 4 26 29 -74 -28
		mu 0 4 13 14 38 37
		f 4 28 31 -76 -30
		mu 0 4 14 15 39 38
		f 4 30 33 -78 -32
		mu 0 4 15 16 40 39
		f 4 32 35 -80 -34
		mu 0 4 16 17 41 40
		f 4 34 37 -82 -36
		mu 0 4 17 18 42 41
		f 4 36 39 -84 -38
		mu 0 4 18 19 43 42
		f 4 38 41 -86 -40
		mu 0 4 19 20 44 43
		f 4 40 43 -88 -42
		mu 0 4 20 21 45 44
		f 4 42 45 -90 -44
		mu 0 4 21 22 46 45
		f 4 44 46 -92 -46
		mu 0 4 22 23 47 46
		f 4 47 50 -95 -49
		mu 0 4 24 25 49 48
		f 4 49 52 -97 -51
		mu 0 4 25 26 50 49
		f 4 51 54 -99 -53
		mu 0 4 26 27 51 50
		f 4 53 56 -101 -55
		mu 0 4 27 28 52 51
		f 4 55 58 -103 -57
		mu 0 4 28 29 53 52
		f 4 57 60 -105 -59
		mu 0 4 29 30 54 53
		f 4 59 62 -107 -61
		mu 0 4 30 31 55 54
		f 4 61 64 -109 -63
		mu 0 4 31 32 56 55
		f 4 63 66 -111 -65
		mu 0 4 32 33 57 56
		f 4 65 68 -113 -67
		mu 0 4 33 34 58 57
		f 4 67 70 -115 -69
		mu 0 4 34 35 59 58
		f 4 69 72 -117 -71
		mu 0 4 35 36 60 59
		f 4 71 74 -119 -73
		mu 0 4 36 37 61 60
		f 4 73 76 -121 -75
		mu 0 4 37 38 62 61
		f 4 75 78 -123 -77
		mu 0 4 38 39 63 62
		f 4 77 80 -125 -79
		mu 0 4 39 40 64 63
		f 4 79 82 -127 -81
		mu 0 4 40 41 65 64
		f 4 81 84 -129 -83
		mu 0 4 41 42 66 65
		f 4 83 86 -131 -85
		mu 0 4 42 43 67 66
		f 4 85 88 -133 -87
		mu 0 4 43 44 68 67
		f 4 87 90 -135 -89
		mu 0 4 44 45 69 68
		f 4 89 92 -137 -91
		mu 0 4 45 46 70 69
		f 4 91 93 -139 -93
		mu 0 4 46 47 71 70
		f 4 94 97 -142 -96
		mu 0 4 48 49 73 72
		f 4 96 99 -144 -98
		mu 0 4 49 50 74 73
		f 4 98 101 -146 -100
		mu 0 4 50 51 75 74
		f 4 100 103 -148 -102
		mu 0 4 51 52 76 75
		f 4 102 105 -150 -104
		mu 0 4 52 53 77 76
		f 4 104 107 -152 -106
		mu 0 4 53 54 78 77
		f 4 106 109 -154 -108
		mu 0 4 54 55 79 78
		f 4 108 111 -156 -110
		mu 0 4 55 56 80 79
		f 4 110 113 -158 -112
		mu 0 4 56 57 81 80
		f 4 112 115 -160 -114
		mu 0 4 57 58 82 81
		f 4 114 117 -162 -116
		mu 0 4 58 59 83 82
		f 4 116 119 -164 -118
		mu 0 4 59 60 84 83
		f 4 118 121 -166 -120
		mu 0 4 60 61 85 84
		f 4 120 123 -168 -122
		mu 0 4 61 62 86 85
		f 4 122 125 -170 -124
		mu 0 4 62 63 87 86
		f 4 124 127 -172 -126
		mu 0 4 63 64 88 87
		f 4 126 129 -174 -128
		mu 0 4 64 65 89 88
		f 4 128 131 -176 -130
		mu 0 4 65 66 90 89
		f 4 130 133 -178 -132
		mu 0 4 66 67 91 90
		f 4 132 135 -180 -134
		mu 0 4 67 68 92 91
		f 4 134 137 -182 -136
		mu 0 4 68 69 93 92
		f 4 136 139 -184 -138
		mu 0 4 69 70 94 93
		f 4 138 140 -186 -140
		mu 0 4 70 71 95 94
		f 4 141 144 -189 -143
		mu 0 4 72 73 97 96
		f 4 143 146 -191 -145
		mu 0 4 73 74 98 97
		f 4 145 148 -193 -147
		mu 0 4 74 75 99 98
		f 4 147 150 -195 -149
		mu 0 4 75 76 100 99
		f 4 149 152 -197 -151
		mu 0 4 76 77 101 100
		f 4 151 154 -199 -153
		mu 0 4 77 78 102 101
		f 4 153 156 -201 -155
		mu 0 4 78 79 103 102
		f 4 155 158 -203 -157
		mu 0 4 79 80 104 103
		f 4 157 160 -205 -159
		mu 0 4 80 81 105 104
		f 4 159 162 -207 -161
		mu 0 4 81 82 106 105
		f 4 161 164 -209 -163
		mu 0 4 82 83 107 106
		f 4 163 166 -211 -165
		mu 0 4 83 84 108 107
		f 4 165 168 -213 -167
		mu 0 4 84 85 109 108
		f 4 167 170 -215 -169
		mu 0 4 85 86 110 109
		f 4 169 172 -217 -171
		mu 0 4 86 87 111 110
		f 4 171 174 -219 -173
		mu 0 4 87 88 112 111
		f 4 173 176 -221 -175
		mu 0 4 88 89 113 112
		f 4 175 178 -223 -177
		mu 0 4 89 90 114 113
		f 4 177 180 -225 -179
		mu 0 4 90 91 115 114
		f 4 179 182 -227 -181
		mu 0 4 91 92 116 115
		f 4 181 184 -229 -183
		mu 0 4 92 93 117 116
		f 4 183 186 -231 -185
		mu 0 4 93 94 118 117
		f 4 185 187 -233 -187
		mu 0 4 94 95 119 118
		f 4 188 191 -236 -190
		mu 0 4 96 97 121 120
		f 4 190 193 -238 -192
		mu 0 4 97 98 122 121
		f 4 192 195 -240 -194
		mu 0 4 98 99 123 122
		f 4 194 197 -242 -196
		mu 0 4 99 100 124 123
		f 4 196 199 -244 -198
		mu 0 4 100 101 125 124
		f 4 198 201 -246 -200
		mu 0 4 101 102 126 125
		f 4 200 203 -248 -202
		mu 0 4 102 103 127 126
		f 4 202 205 -250 -204
		mu 0 4 103 104 128 127
		f 4 204 207 -252 -206
		mu 0 4 104 105 129 128
		f 4 206 209 -254 -208
		mu 0 4 105 106 130 129
		f 4 208 211 -256 -210
		mu 0 4 106 107 131 130
		f 4 210 213 -258 -212
		mu 0 4 107 108 132 131
		f 4 212 215 -260 -214
		mu 0 4 108 109 133 132
		f 4 214 217 -262 -216
		mu 0 4 109 110 134 133
		f 4 216 219 -264 -218
		mu 0 4 110 111 135 134
		f 4 218 221 -266 -220
		mu 0 4 111 112 136 135
		f 4 220 223 -268 -222
		mu 0 4 112 113 137 136
		f 4 222 225 -270 -224
		mu 0 4 113 114 138 137
		f 4 224 227 -272 -226
		mu 0 4 114 115 139 138
		f 4 226 229 -274 -228
		mu 0 4 115 116 140 139
		f 4 228 231 -276 -230
		mu 0 4 116 117 141 140
		f 4 230 233 -278 -232
		mu 0 4 117 118 142 141
		f 4 232 234 -280 -234
		mu 0 4 118 119 143 142
		f 4 235 238 -283 -237
		mu 0 4 120 121 145 144
		f 4 237 240 -284 -239
		mu 0 4 121 122 146 145
		f 4 239 242 -285 -241
		mu 0 4 122 123 147 146
		f 4 241 244 -286 -243
		mu 0 4 123 124 148 147
		f 4 243 246 -287 -245
		mu 0 4 124 125 149 148
		f 4 245 248 -288 -247
		mu 0 4 125 126 150 149
		f 4 247 250 -289 -249
		mu 0 4 126 127 151 150
		f 4 249 252 -290 -251
		mu 0 4 127 128 152 151
		f 4 251 254 -291 -253
		mu 0 4 128 129 153 152
		f 4 253 256 -292 -255
		mu 0 4 129 130 154 153
		f 4 255 258 -293 -257
		mu 0 4 130 131 155 154
		f 4 257 260 -294 -259
		mu 0 4 131 132 156 155
		f 4 259 262 -295 -261
		mu 0 4 132 133 157 156
		f 4 261 264 -296 -263
		mu 0 4 133 134 158 157
		f 4 263 266 -297 -265
		mu 0 4 134 135 159 158
		f 4 265 268 -298 -267
		mu 0 4 135 136 160 159
		f 4 267 270 -299 -269
		mu 0 4 136 137 161 160
		f 4 269 272 -300 -271
		mu 0 4 137 138 162 161
		f 4 271 274 -301 -273
		mu 0 4 138 139 163 162
		f 4 273 276 -302 -275
		mu 0 4 139 140 164 163
		f 4 275 278 -303 -277
		mu 0 4 140 141 165 164
		f 4 277 280 -304 -279
		mu 0 4 141 142 166 165
		f 4 279 281 -305 -281
		mu 0 4 142 143 167 166
		f 4 308 307 -307 -306
		mu 0 4 168 171 170 169
		f 4 306 311 -311 -310
		mu 0 4 169 170 173 172
		f 4 310 314 -314 -313
		mu 0 4 172 173 175 174
		f 4 313 317 -317 -316
		mu 0 4 174 175 177 176
		f 4 316 320 -320 -319
		mu 0 4 176 177 179 178
		f 4 319 323 -323 -322
		mu 0 4 178 179 181 180
		f 4 322 326 -326 -325
		mu 0 4 180 181 183 182
		f 4 325 329 -329 -328
		mu 0 4 182 183 185 184
		f 4 328 332 -332 -331
		mu 0 4 184 185 187 186
		f 4 331 335 -335 -334
		mu 0 4 186 187 189 188
		f 4 334 338 -338 -337
		mu 0 4 188 189 191 190
		f 4 337 341 -341 -340
		mu 0 4 190 191 193 192
		f 4 340 344 -344 -343
		mu 0 4 192 193 195 194
		f 4 343 347 -347 -346
		mu 0 4 194 195 197 196
		f 4 346 350 -350 -349
		mu 0 4 196 197 199 198
		f 4 349 353 -353 -352
		mu 0 4 198 199 201 200
		f 4 352 356 -356 -355
		mu 0 4 200 201 203 202
		f 4 355 359 -359 -358
		mu 0 4 202 203 205 204
		f 4 358 362 -362 -361
		mu 0 4 204 205 207 206
		f 4 361 365 -365 -364
		mu 0 4 206 207 209 208
		f 4 364 368 -368 -367
		mu 0 4 208 209 211 210
		f 4 367 371 -371 -370
		mu 0 4 210 211 213 212
		f 4 370 374 -374 -373
		mu 0 4 212 213 215 214
		f 4 377 376 -376 -308
		mu 0 4 171 217 216 170
		f 4 375 379 -379 -312
		mu 0 4 170 216 218 173
		f 4 378 381 -381 -315
		mu 0 4 173 218 219 175
		f 4 380 383 -383 -318
		mu 0 4 175 219 220 177
		f 4 382 385 -385 -321
		mu 0 4 177 220 221 179
		f 4 384 387 -387 -324
		mu 0 4 179 221 222 181
		f 4 386 389 -389 -327
		mu 0 4 181 222 223 183
		f 4 388 391 -391 -330
		mu 0 4 183 223 224 185
		f 4 390 393 -393 -333
		mu 0 4 185 224 225 187
		f 4 392 395 -395 -336
		mu 0 4 187 225 226 189
		f 4 394 397 -397 -339
		mu 0 4 189 226 227 191
		f 4 396 399 -399 -342
		mu 0 4 191 227 228 193
		f 4 398 401 -401 -345
		mu 0 4 193 228 229 195
		f 4 400 403 -403 -348
		mu 0 4 195 229 230 197
		f 4 402 405 -405 -351
		mu 0 4 197 230 231 199
		f 4 404 407 -407 -354
		mu 0 4 199 231 232 201
		f 4 406 409 -409 -357
		mu 0 4 201 232 233 203
		f 4 408 411 -411 -360
		mu 0 4 203 233 234 205
		f 4 410 413 -413 -363
		mu 0 4 205 234 235 207
		f 4 412 415 -415 -366
		mu 0 4 207 235 236 209
		f 4 414 417 -417 -369
		mu 0 4 209 236 237 211
		f 4 416 419 -419 -372
		mu 0 4 211 237 238 213
		f 4 418 421 -421 -375
		mu 0 4 213 238 239 215
		f 4 424 423 -423 -377
		mu 0 4 217 241 240 216
		f 4 422 426 -426 -380
		mu 0 4 216 240 242 218
		f 4 425 428 -428 -382
		mu 0 4 218 242 243 219
		f 4 427 430 -430 -384
		mu 0 4 219 243 244 220
		f 4 429 432 -432 -386
		mu 0 4 220 244 245 221
		f 4 431 434 -434 -388
		mu 0 4 221 245 246 222
		f 4 433 436 -436 -390
		mu 0 4 222 246 247 223
		f 4 435 438 -438 -392
		mu 0 4 223 247 248 224
		f 4 437 440 -440 -394
		mu 0 4 224 248 249 225
		f 4 439 442 -442 -396
		mu 0 4 225 249 250 226
		f 4 441 444 -444 -398
		mu 0 4 226 250 251 227
		f 4 443 446 -446 -400
		mu 0 4 227 251 252 228
		f 4 445 448 -448 -402
		mu 0 4 228 252 253 229
		f 4 447 450 -450 -404
		mu 0 4 229 253 254 230
		f 4 449 452 -452 -406
		mu 0 4 230 254 255 231
		f 4 451 454 -454 -408
		mu 0 4 231 255 256 232
		f 4 453 456 -456 -410
		mu 0 4 232 256 257 233
		f 4 455 458 -458 -412
		mu 0 4 233 257 258 234
		f 4 457 460 -460 -414
		mu 0 4 234 258 259 235
		f 4 459 462 -462 -416
		mu 0 4 235 259 260 236
		f 4 461 464 -464 -418
		mu 0 4 236 260 261 237
		f 4 463 466 -466 -420
		mu 0 4 237 261 262 238
		f 4 465 468 -468 -422
		mu 0 4 238 262 263 239
		f 4 471 470 -470 -424
		mu 0 4 241 265 264 240
		f 4 469 473 -473 -427
		mu 0 4 240 264 266 242
		f 4 472 475 -475 -429
		mu 0 4 242 266 267 243
		f 4 474 477 -477 -431
		mu 0 4 243 267 268 244
		f 4 476 479 -479 -433
		mu 0 4 244 268 269 245
		f 4 478 481 -481 -435
		mu 0 4 245 269 270 246
		f 4 480 483 -483 -437
		mu 0 4 246 270 271 247
		f 4 482 485 -485 -439
		mu 0 4 247 271 272 248
		f 4 484 487 -487 -441
		mu 0 4 248 272 273 249
		f 4 486 489 -489 -443
		mu 0 4 249 273 274 250
		f 4 488 491 -491 -445
		mu 0 4 250 274 275 251
		f 4 490 493 -493 -447
		mu 0 4 251 275 276 252
		f 4 492 495 -495 -449
		mu 0 4 252 276 277 253
		f 4 494 497 -497 -451
		mu 0 4 253 277 278 254
		f 4 496 499 -499 -453
		mu 0 4 254 278 279 255
		f 4 498 501 -501 -455
		mu 0 4 255 279 280 256
		f 4 500 503 -503 -457
		mu 0 4 256 280 281 257
		f 4 502 505 -505 -459
		mu 0 4 257 281 282 258
		f 4 504 507 -507 -461
		mu 0 4 258 282 283 259
		f 4 506 509 -509 -463
		mu 0 4 259 283 284 260
		f 4 508 511 -511 -465
		mu 0 4 260 284 285 261
		f 4 510 513 -513 -467
		mu 0 4 261 285 286 262
		f 4 512 515 -515 -469
		mu 0 4 262 286 287 263
		f 4 518 517 -517 -471
		mu 0 4 265 289 288 264
		f 4 516 520 -520 -474
		mu 0 4 264 288 290 266
		f 4 519 522 -522 -476
		mu 0 4 266 290 291 267
		f 4 521 524 -524 -478
		mu 0 4 267 291 292 268
		f 4 523 526 -526 -480
		mu 0 4 268 292 293 269
		f 4 525 528 -528 -482
		mu 0 4 269 293 294 270
		f 4 527 530 -530 -484
		mu 0 4 270 294 295 271
		f 4 529 532 -532 -486
		mu 0 4 271 295 296 272
		f 4 531 534 -534 -488
		mu 0 4 272 296 297 273
		f 4 533 536 -536 -490
		mu 0 4 273 297 298 274
		f 4 535 538 -538 -492
		mu 0 4 274 298 299 275
		f 4 537 540 -540 -494
		mu 0 4 275 299 300 276
		f 4 539 542 -542 -496
		mu 0 4 276 300 301 277
		f 4 541 544 -544 -498
		mu 0 4 277 301 302 278
		f 4 543 546 -546 -500
		mu 0 4 278 302 303 279
		f 4 545 548 -548 -502
		mu 0 4 279 303 304 280
		f 4 547 550 -550 -504
		mu 0 4 280 304 305 281
		f 4 549 552 -552 -506
		mu 0 4 281 305 306 282
		f 4 551 554 -554 -508
		mu 0 4 282 306 307 283
		f 4 553 556 -556 -510
		mu 0 4 283 307 308 284
		f 4 555 558 -558 -512
		mu 0 4 284 308 309 285
		f 4 557 560 -560 -514
		mu 0 4 285 309 310 286
		f 4 559 562 -562 -516
		mu 0 4 286 310 311 287
		f 4 565 564 -564 -518
		mu 0 4 289 313 312 288
		f 4 563 567 -567 -521
		mu 0 4 288 312 314 290
		f 4 566 569 -569 -523
		mu 0 4 290 314 315 291
		f 4 568 571 -571 -525
		mu 0 4 291 315 316 292
		f 4 570 573 -573 -527
		mu 0 4 292 316 317 293
		f 4 572 575 -575 -529
		mu 0 4 293 317 318 294
		f 4 574 577 -577 -531
		mu 0 4 294 318 319 295
		f 4 576 579 -579 -533
		mu 0 4 295 319 320 296
		f 4 578 581 -581 -535
		mu 0 4 296 320 321 297
		f 4 580 583 -583 -537
		mu 0 4 297 321 322 298
		f 4 582 585 -585 -539
		mu 0 4 298 322 323 299
		f 4 584 587 -587 -541
		mu 0 4 299 323 324 300
		f 4 586 589 -589 -543
		mu 0 4 300 324 325 301
		f 4 588 591 -591 -545
		mu 0 4 301 325 326 302
		f 4 590 593 -593 -547
		mu 0 4 302 326 327 303
		f 4 592 595 -595 -549
		mu 0 4 303 327 328 304
		f 4 594 597 -597 -551
		mu 0 4 304 328 329 305
		f 4 596 599 -599 -553
		mu 0 4 305 329 330 306
		f 4 598 601 -601 -555
		mu 0 4 306 330 331 307
		f 4 600 603 -603 -557
		mu 0 4 307 331 332 308
		f 4 602 605 -605 -559
		mu 0 4 308 332 333 309
		f 4 604 607 -607 -561
		mu 0 4 309 333 334 310
		f 4 606 609 -609 -563
		mu 0 4 310 334 335 311;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9A41B04D-43A1-3773-724E-D39E4E78F5E2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3C4A3729-410C-A0CB-A759-5998595298D0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0D9BD8E5-4C1D-219B-57EC-61B8922A7208";
createNode displayLayerManager -n "layerManager";
	rename -uid "4B9AFDF3-47D5-8063-C619-748EE041D3E7";
createNode displayLayer -n "defaultLayer";
	rename -uid "C31575E9-47ED-AC64-052A-BE9C361813F0";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6CFA3380-4DBF-2D05-3CA6-E7A55ED4DB21";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0838516C-415A-3EC7-6952-13B68BE034AA";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D28E3036-49C8-FDD9-C97E-B59B33566389";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "F71BE899-4D30-FABD-B6CA-FCA76CB3258F";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9B71952D-4C21-9B3D-3CCA-F8AE4DB57E50";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "D09C71D3-438F-2CA8-C83F-B6A189E44805";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "C0AFD4FA-41BD-6001-3D98-55A537DC8B8D";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "64621D84-43A4-3F49-FA96-898C712D1041";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1317\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n"
		+ "\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "22075463-4A73-B1F6-B952-78AA158738C6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 20 -ast 0 -aet 20 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "RootFat";
	rename -uid "070E2161-44FA-329A-48B5-3DAF786D5C32";
createNode multiplyDivide -n "BodyFat";
	rename -uid "CF8B7DEE-4CF6-61F3-1581-7D98E75B8F8F";
createNode objectSet -n "ControlSet";
	rename -uid "B1079864-4252-9E69-1579-CEBA165ED5F2";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "A30BE627-47E5-2AEB-14B4-11ADDE2E3FA2";
	setAttr ".ihi" 0;
createNode objectSet -n "AllSet";
	rename -uid "6D81A22B-449D-4960-F160-E7AC8593072E";
	setAttr ".ihi" 0;
	setAttr -s 61 ".dsm";
	setAttr -s 14 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "8244B03D-4CEF-E9F6-2210-D9B4923CA98B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "C729AF58-42FE-0209-6C08-86A4C453B17D";
	setAttr ".ihi" 0;
createNode unitConversion -n "LegLockRoot_MUnitConversion";
	rename -uid "8CFCFA20-4433-28F3-BBE3-E5A220ACE827";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKOffsetRootMM_M";
	rename -uid "FEBDF6C5-4389-8106-723E-6CB78C1AF6C8";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1;
createNode decomposeMatrix -n "FKOffsetRootDM_M";
	rename -uid "E59C30B8-47C6-6267-68CE-6C9592ADEA9A";
	setAttr ".ihi" 0;
createNode blendMatrix -n "BodyBM_M";
	rename -uid "F9BF2150-4E69-F884-EBB3-47AE5CFC3674";
createNode blendMatrix -n "RootBM_M";
	rename -uid "37BD75B4-477D-3AF5-EB77-2CB35A5539E1";
createNode multMatrix -n "FKRootRemoveInbtRotMM_M";
	rename -uid "9255B8DF-42EF-A7E0-1968-A7808305AF69";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LegLockConstrainedDM2_M";
	rename -uid "3A63ADBA-4B81-271F-0C7C-68827ECE7F9C";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKRootRemoveInbtRotMM2_M";
	rename -uid "1707D94F-4CFE-BD49-E599-8CAD36C51B79";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FKRootRemoveInbtRotPM_M";
	rename -uid "65064C43-4D71-C1F9-3621-57A98156E2C2";
	setAttr ".ihi" 0;
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode blendMatrix -n "FKRootRemoveInbtRotBM_M";
	rename -uid "4621C52B-4AFA-AC9C-03B6-19A4F90C2F75";
	setAttr ".ihi" 0;
createNode inverseMatrix -n "FKRootRemoveInbtRotIM_M";
	rename -uid "5EF0428F-43C2-C1AD-AEBC-EABFD46F79D5";
	setAttr ".ihi" 0;
createNode blendMatrix -n "FKRootRemoveInbtRotBM2_M";
	rename -uid "9335AC82-434B-F3A3-F401-34B4DDED476A";
	setAttr ".ihi" 0;
createNode multMatrix -n "RootXformInverterRemoveInbtRotMM_M";
	rename -uid "535B0806-4FBF-F9B0-6C74-39B7D9B94589";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode skinCluster -n "skinCluster1";
	rename -uid "48AEA58B-4CDB-1FDB-B286-DAA8DDDF2F03";
	setAttr -s 474 ".wl";
	setAttr ".wl[0:473].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr ".pm[0]" -type "matrix" 1 5.5511151231261611e-17 1.9428902930940239e-15 0
		 -1.1102230246251564e-16 1 -5.5511151231258049e-17 0 -1.9428902930940236e-15 5.5511151231257815e-17 1 0
		 -1.8897652447251483e-29 -8.8182525634765625 9.8041048207393055e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode dagPose -n "bindPose1";
	rename -uid "7CF1C349-4F2B-B1FE-C200-2DA7EF218016";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -4.3711390007583663e-08 -4.3711390007583584e-08
		 1.9545435303601822e-15 0 0 0 -1.3877787807814457e-17 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0.4999999999999995 0.50000002185569503 0.4999999999999995 0.49999997814430497 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 4.3711391894962732e-08 -1.9545435740366337e-15
		 4.3711390118605893e-08 0 8.8182525634765625 6.853158923052041e-15 3.1907820843748334e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4999999999999995 -0.4999999999999995 -0.50000002185569503 0.49999997814430497 1
		 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "A037CEF8-48AD-AEF9-4A9D-5BBB2CE3B330";
	setAttr -s 210 ".wl";
	setAttr ".wl[0:209].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr ".pm[0]" -type "matrix" 1 5.5511151231261611e-17 1.9428902930940239e-15 0
		 -1.1102230246251564e-16 1 -5.5511151231258049e-17 0 -1.9428902930940236e-15 5.5511151231257815e-17 1 0
		 -1.8897652447251483e-29 -8.8182525634765625 9.8041048207393055e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster3";
	rename -uid "CC3BE3BC-4B77-7CC1-3924-6C846FAA08E9";
	setAttr -s 202 ".wl";
	setAttr ".wl[0:201].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr ".pm[0]" -type "matrix" 1 5.5511151231261611e-17 1.9428902930940239e-15 0
		 -1.1102230246251564e-16 1 -5.5511151231258049e-17 0 -1.9428902930940236e-15 5.5511151231257815e-17 1 0
		 -1.8897652447251483e-29 -8.8182525634765625 9.8041048207393055e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster4";
	rename -uid "8D8873E1-438B-B5B7-5311-71A83EE16D20";
	setAttr -s 336 ".wl";
	setAttr ".wl[0:335].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr ".pm[0]" -type "matrix" 1 5.5511151231261611e-17 1.9428902930940239e-15 0
		 -1.1102230246251564e-16 1 -5.5511151231258049e-17 0 -1.9428902930940236e-15 5.5511151231257815e-17 1 0
		 -1.8897652447251483e-29 -8.8182525634765625 9.8041048207393055e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster5";
	rename -uid "8A8BB34D-4C64-608E-0570-71AA30CA46B3";
	setAttr -s 160 ".wl";
	setAttr ".wl[0:159].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr ".pm[0]" -type "matrix" 1 5.5511151231261611e-17 1.9428902930940239e-15 0
		 -1.1102230246251564e-16 1 -5.5511151231258049e-17 0 -1.9428902930940236e-15 5.5511151231257815e-17 1 0
		 -1.8897652447251483e-29 -8.8182525634765625 9.8041048207393055e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
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
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
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
connectAttr "Root.s" "Body.is";
connectAttr "BodyFat.oy" "Body.fatFrontAbs";
connectAttr "BodyFat.oz" "Body.fatWidthAbs";
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
connectAttr "FKBody_M.s" "FKXBody_M.is";
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
connectAttr "Body_M.pim" "Body_M_pointConstraint1.cpim";
connectAttr "Body_M.rp" "Body_M_pointConstraint1.crp";
connectAttr "Body_M.rpt" "Body_M_pointConstraint1.crt";
connectAttr "FKXBody_M.t" "Body_M_pointConstraint1.tg[0].tt";
connectAttr "FKXBody_M.rp" "Body_M_pointConstraint1.tg[0].trp";
connectAttr "FKXBody_M.rpt" "Body_M_pointConstraint1.tg[0].trt";
connectAttr "FKXBody_M.pm" "Body_M_pointConstraint1.tg[0].tpm";
connectAttr "Body_M_pointConstraint1.w0" "Body_M_pointConstraint1.tg[0].tw";
connectAttr "Body_M.ro" "Body_M_orientConstraint1.cro";
connectAttr "Body_M.pim" "Body_M_orientConstraint1.cpim";
connectAttr "Body_M.jo" "Body_M_orientConstraint1.cjo";
connectAttr "Body_M.is" "Body_M_orientConstraint1.is";
connectAttr "FKXBody_M.r" "Body_M_orientConstraint1.tg[0].tr";
connectAttr "FKXBody_M.ro" "Body_M_orientConstraint1.tg[0].tro";
connectAttr "FKXBody_M.pm" "Body_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXBody_M.jo" "Body_M_orientConstraint1.tg[0].tjo";
connectAttr "Body_M_orientConstraint1.w0" "Body_M_orientConstraint1.tg[0].tw";
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
connectAttr "Root_M.s" "Body_M.is";
connectAttr "Body_M_orientConstraint1.crx" "Body_M.rx";
connectAttr "Body_M_orientConstraint1.cry" "Body_M.ry";
connectAttr "Body_M_orientConstraint1.crz" "Body_M.rz";
connectAttr "Body_M_pointConstraint1.ctx" "Body_M.tx";
connectAttr "Body_M_pointConstraint1.cty" "Body_M.ty";
connectAttr "Body_M_pointConstraint1.ctz" "Body_M.tz";
connectAttr "FKBody_M.sx" "Body_M.sx";
connectAttr "FKBody_M.sy" "Body_M.sy";
connectAttr "FKBody_M.sz" "Body_M.sz";
connectAttr "skinCluster2.og[0]" "Jacob_Hat_GeoShape.i";
connectAttr "skinCluster3.og[0]" "Jacob_Body_GeoShape.i";
connectAttr "skinCluster1.og[0]" "Jacob_FacePanel_GeoShape.i";
connectAttr "skinCluster5.og[0]" "Jacob_RibbonPin_GeoShape.i";
connectAttr "skinCluster4.og[0]" "Jacob_Ribbon_GeoShape.i";
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
connectAttr "Body.fat" "BodyFat.i1y";
connectAttr "Body.fat" "BodyFat.i1z";
connectAttr "Body.fatFront" "BodyFat.i2y";
connectAttr "Body.fatWidth" "BodyFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraBody_M.iog" "ControlSet.dsm" -na;
connectAttr "FKBody_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "Root_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.iog" "AllSet.dsm" -na;
connectAttr "FKHSRoot_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Body_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Body_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXBody_M.iog" "AllSet.dsm" -na;
connectAttr "FKBody_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraBody_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetBody_M.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "Body_M.iog" "AllSet.dsm" -na;
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
connectAttr "FKBody_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootXformInverterRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotIM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotPM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM2_M.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrainedDM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "RootBM_M.msg" "AllSet.dnsm" -na;
connectAttr "BodyBM_M.msg" "AllSet.dnsm" -na;
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
connectAttr "FKXBody_M.wm" "BodyBM_M.imat";
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
connectAttr "Jacob_FacePanel_GeoShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "Jacob_FacePanel_GeoShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Body_M.wm" "skinCluster1.ma[0]";
connectAttr "Body_M.liw" "skinCluster1.lw[0]";
connectAttr "Body_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Root_M.msg" "bindPose1.m[2]";
connectAttr "Body_M.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "Root_M.bps" "bindPose1.wm[2]";
connectAttr "Body_M.bps" "bindPose1.wm[3]";
connectAttr "Jacob_Hat_GeoShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "Jacob_Hat_GeoShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "Body_M.wm" "skinCluster2.ma[0]";
connectAttr "Body_M.liw" "skinCluster2.lw[0]";
connectAttr "Body_M.obcc" "skinCluster2.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "Jacob_Body_GeoShapeOrig.w" "skinCluster3.ip[0].ig";
connectAttr "Jacob_Body_GeoShapeOrig.o" "skinCluster3.orggeom[0]";
connectAttr "Body_M.wm" "skinCluster3.ma[0]";
connectAttr "Body_M.liw" "skinCluster3.lw[0]";
connectAttr "Body_M.obcc" "skinCluster3.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "Jacob_Ribbon_GeoShapeOrig.w" "skinCluster4.ip[0].ig";
connectAttr "Jacob_Ribbon_GeoShapeOrig.o" "skinCluster4.orggeom[0]";
connectAttr "Body_M.wm" "skinCluster4.ma[0]";
connectAttr "Body_M.liw" "skinCluster4.lw[0]";
connectAttr "Body_M.obcc" "skinCluster4.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "Jacob_RibbonPin_GeoShapeOrig.w" "skinCluster5.ip[0].ig";
connectAttr "Jacob_RibbonPin_GeoShapeOrig.o" "skinCluster5.orggeom[0]";
connectAttr "Body_M.wm" "skinCluster5.ma[0]";
connectAttr "Body_M.liw" "skinCluster5.lw[0]";
connectAttr "Body_M.obcc" "skinCluster5.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Jacob_Body_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Jacob_FacePanel_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Jacob_RibbonPin_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Jacob_Ribbon_GeoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Jacob_Hat_GeoShape.iog" ":initialShadingGroup.dsm" -na;
// End of Jacob_Rig_v001.ma
