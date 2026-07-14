//Maya ASCII 2025ff03 scene
//Name: Ray_Rig_Hi_v001.ma
//Last modified: Mon, Nov 24, 2025 04:19:16 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "ngst2SkinLayerData" -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.4.0";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
requires -nodeType "quatToEuler" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26100)";
fileInfo "UUID" "F9AAAD5C-438D-7A74-2FD9-5BAAE5A5062D";
createNode transform -s -n "persp";
	rename -uid "4DCF041F-46A0-8C7C-4620-DA946D7E2A46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.9169044508687607 6.0192030700711268 3.6525724913058455 ;
	setAttr ".r" -type "double3" -48.338352893446896 -1392.9999999993022 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9FDAAE9C-45A8-1FBC-FF46-08A5F7907176";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.0569368794991547;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -5.7777898331617076e-34 1.3877787807814457e-17 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "AAE38EE9-4ECB-EDFB-C9EA-ADB4E1E2AE68";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 276.66719932842824 1406.9854159288629 7.1642529130201069 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7F88C4C2-4D16-4081-3931-AB8026BA5EDE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1413.2950612870115;
	setAttr ".ow" 979.25843461121133;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 2.120525977034049e-14 -6.3096453581486864 -263.69769287109375 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "78005792-4717-D7A1-60F2-5B9499CF1B8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3CD63F96-428C-BE70-EABA-70960E3BD676";
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
	rename -uid "96E19BCC-4A0D-2BA5-6446-90A43087FF61";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1009.9579140538164 12.957856178307843 -157.62193737721307 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8D183B28-4BE3-9473-0BD7-FBA42A2FF429";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1009.9579140538164;
	setAttr ".ow" 363.57924389549464;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 2.120525977034049e-14 24.262727352591035 -138.65892766551227 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "7DFAC4AF-4151-0A1B-559A-B485C4AF7721";
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
	rename -uid "1E992C8E-48E3-A0E4-7CC8-34B20240BAB6";
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
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k on ".visJointOrient" yes;
	setAttr -k on ".visJointAxis" yes;
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "E3D2386A-4C12-7FDB-8FB5-2488B7A7E8CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.023508348746736733 1.4394712022965421e-18 -0.02350834874673674
		2.035719696933274e-18 2.035719696933274e-18 -0.033245825626631628
		-0.023508348746736733 1.4394712022965413e-18 -0.02350834874673673
		-0.033245825626631642 1.0553206857018081e-34 -1.723469471257449e-18
		-0.023508348746736733 -1.4394712022965417e-18 0.023508348746736733
		-3.3302570908809676e-18 -2.0357196969332752e-18 0.033245825626631656
		0.023508348746736733 -1.4394712022965413e-18 0.02350834874673673
		0.033245825626631642 -2.7761037630330301e-34 4.5337215023398773e-18
		0.023508348746736733 1.4394712022965421e-18 -0.02350834874673674
		2.035719696933274e-18 2.035719696933274e-18 -0.033245825626631628
		-0.023508348746736733 1.4394712022965413e-18 -0.02350834874673673
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "FA073D65-4BD7-F593-2C23-D481BE756573";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 65.064364671708546 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "numMainExtras" -ln "numMainExtras" -min 0 -at "long";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.8308871277536729e-19 -0.052250862177634312 0.096485134504878445 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 88.381868740794644 -86.731039601815567 91.620767078988067 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0 -0.008945787623095296 -0.99995998564132671 0 0 0.99995998564132682 -0.008945787623095296 0
		 1 0 0 0 -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 1;
	setAttr ".typ" 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.65064364671708552;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
	setAttr -k on ".numMainExtras" 1;
createNode joint -n "WingBase" -p "Root";
	rename -uid "1B67FB0E-4F28-F493-9B19-2BA90C1927CE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.338362872601085 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.66781503762252603 -1.8041124150158794e-16 4.1199682554449168e-17 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 4.1779567511037174e-13 -4.1983321795318412e-13 -1.9033631921884763e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.015000157395497923 110.57917037433364 3.2816341797899091 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.93562018073722331 -2.8244605205975798e-07 -0.35300832482700167 0
		 -9.2868409586575884e-08 -0.99999999999944822 1.0462518423692141e-06 0 -0.35300832482710232 1.0116776595504168e-06 0.93562018073668085 0
		 -0.10770791797295581 -1.418516442977944 76.321354025206432 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.18338362872601086;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing1" -p "WingBase";
	rename -uid "33E05851-45ED-3D62-1F70-499CA522B472";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 0.73353451490404298 -2.3071822230491534e-16 5.440092820663267e-15 ;
	setAttr ".r" -type "double3" -4.5534361401005523e-12 3.1414771877270587e-14 7.3954108364876503e-15 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.016707681882248138 -11.962066199412851 1.175882646139212 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.98827640546114637 -0.020076024305248189 -0.15134959417484695 0
		 0.019156146370354246 -0.9997881212243126 0.0075335725254685754 0 -0.15146877059325894 0.0045459769966438492 0.98845158992644278 0
		 -68.738677459124361 -1.4185371613706987 50.426974994300572 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
	setAttr -k on ".global" 10;
createNode joint -n "Wing2" -p "Wing1";
	rename -uid "1D056F27-4375-DD9D-2F90-FDBAF41BA212";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 21.383249647324767 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.90134813631628918 1.5525775109992423e-16 -1.1102230246251565e-16 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -6.3338502388809462e-13 -2.0632839042604496e-14 -7.7696850934383492e-15 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.69394247489124361 1.527033962126547 0.26777084666120748 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.98378871589178918 -0.024860635707230627 -0.17759986282713391 0
		 0.021620106764656595 -0.9995630065561304 0.020158544291534599 0 -0.17802340707746614 0.015992020407105574 0.98389629627101938 0
		 -157.81678708190088 -3.2280858705883126 36.785107530128037 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.21383249647324767;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing3" -p "Wing2";
	rename -uid "052E909E-4770-0EB2-A272-E698C5FED98D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 16.471796322536711 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.85532998589299059 2.7755575615628914e-17 -4.4408920985006262e-16 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.894429000549045e-13 -1.6677334758577404e-14 -3.587209097157469e-14 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.33778011509879075 1.8618825165063799 -1.0477351600930791 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.97771602864252982 -0.0070951722240177144 -0.20981188209105567 0
		 0.0023900150079415212 -0.99974013088883351 0.022670653246861239 0 -0.20991821065296187 0.02166400751221096 0.97747890801529302 0
		 -241.96318593044154 -5.3544905894639463 21.594458713475071 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.16471796322536711;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing4" -p "Wing3";
	rename -uid "3A6A9C9B-427B-4981-0190-559FF37D8256";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.178939966812877 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.65887185290147654 -7.1470607210244452e-16 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 9.4929618008306406e-13 -2.8127535443780503e-13 -1.5457060910454666e-14 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.1086828442900027 2.8838790141012005 -0.84230420053346 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.96584598570141567 0.0065026404130382855 -0.25903522457789219 0
		 -0.011492103650509056 -0.99977637246949336 0.017752087354069739 0 -0.25886186172966108 0.020122641958731147 0.96570472496641269 0
		 -306.38214307075918 -5.8219715164532451 7.7705443620669623 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.18178939966812876;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing5" -p "Wing4";
	rename -uid "50496E95-4A19-1046-AFF3-26AFCD1E2B57";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 11.173267659415089 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.72715759867251073 -1.5265566588595902e-16 3.9968028886505635e-15 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 1.3903372372599134e-12 -1.1605646800998031e-13 2.5776780567836223e-14 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.31949717888811907 1.9912138087086844 0.85453381821086938 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.95633223292090996 -0.0091027321981001844 -0.29214003584417464 0
		 0.0012838810770439929 -0.99963610328234043 0.026944622169882384 0 -0.29227899672382524 0.025392937621066581 0.95599591358597702 0
		 -376.61436783577159 -5.3491270776756474 -11.065398825498091 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.11173267659415088;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing6" -p "Wing5";
	rename -uid "A8648DAD-4145-CBF8-A5E9-07A4A5ACB352";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 8.0059801522084939 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.44693070637660082 7.6327832942979512e-16 2.2204460492503131e-16 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.804598705274113 4.0263689763127797 -1.3846241946257862 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.93320171337351299 0.013234893676824674 -0.35910917524633446 0
		 -0.01051889731696343 -0.99989939351518453 -0.0095160730977159914 0 -0.35919899075021683 -0.0051029831793805401 0.93324704371709455 0
		 -419.35579187477714 -5.7559561308011169 -24.122034083570409 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.080059801522084945;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Wing7" -p "Wing6";
	rename -uid "6D293B23-4AB2-68F0-3AFD-C4BF8E644E7A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 8.0059801522084939 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.32023920608834278 1.3877787807814457e-17 2.6603117486700967e-09 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -93.320178999999996 1.323483 -35.910924000000001 0
		 -1.0518719999999999 -99.989940000000004 -0.95163399999999998 0 -35.919910000000002 -0.51032999999999995 93.324719999999999 0
		 -419.35577999999998 -5.7559699999999996 -24.121915999999999 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.080059801522084945;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "MouthBase" -p "Root";
	rename -uid "18992A73-4F7E-A120-B85D-349F40ED76A5";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 42.256724834453159 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.66779262638782555 -1.3169047325678473e-06 -7.2801683111654858e-08 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -8.9055531080978507e-14 -8.5874976399514962e-14 1.2722218725854138e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 90.470376616366892 34.279545500876843 4.110410090442012 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.56455962599035248 -0.012205311294486855 0.82530204112060546 0
		 0.82536351591059942 6.5965581595023304e-07 0.56460168845236236 0 -0.0068916837802450726 0.99992551241368444 0.010073446227760376 0
		 -0.10771158355696828 -1.4185127121277117 76.319109030232383 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.42256724834453158;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth1" -p "MouthBase";
	rename -uid "FE9E4B11-4888-DCDE-F961-518AECF6DE1E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 6.1480544473582057 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.6902689933781225 8.8817841970012523e-16 3.0080105073437835e-15 ;
	setAttr ".r" -type "double3" -9.5416640443906623e-15 5.5659706925611523e-14 -2.295962910681476e-13 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 15.005560887489853 9.5736636121253422 61.754538794318222 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0.45464910670719072 -0.17199826316565123 0.87390547957908626 0
		 0.87570629310705528 0.26542475611612887 -0.40334623718759732 0 -0.16258129653515985 0.94866553447919288 0.27129508972381622 0
		 -95.533474656021227 -3.4815386356873388 215.81735405801601 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.061480544473582061;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth2" -p "Mouth1";
	rename -uid "4D2834B0-4E00-63A9-CE3D-E2A8A0E6927E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.0655510988061323 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.24592217789432969 -8.8817841970012523e-16 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -9.0546416087920824e-14 -2.545437668508749e-13 2.8365826622799283e-12 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 2.7184761828909361 -3.1533950844952834 19.07140199090988 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0.70580072036261998 -0.023530819932248037 0.70801952208178764 0
		 0.66875461129200808 0.35183394006410496 -0.65496576131477491 0 -0.233693416705054 0.93576662642577912 0.26406099268243693 0
		 -84.352644806106923 -7.7113573828612747 237.3086279392038 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.050655510988061321;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth3" -p "Mouth2";
	rename -uid "18267B2D-4C5F-BFA9-9430-C3AE3DFDCB6E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.4014488502512918 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.20262204395224992 9.7699626167013776e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -5.0491305568232129e-14 -6.8352107951326899e-13 -2.0077251426738419e-13 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 11.498087586358729 7.2075144401920426 9.1101654089465658 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0.82576021953151613 -0.085187993382243726 0.55755095338701499 0
		 0.51141983119031287 0.52994444761546955 -0.6764677661994003 0 -0.23784410041986412 0.84374278558399618 0.48117387259744659 0
		 -70.051566347821861 -8.1881436659152591 251.6546642114337 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.05401448850251292;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth4" -p "Mouth3";
	rename -uid "F4A41B14-4A2E-DB69-E93E-A0A281BE2763";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.356491448210182 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.21605795401005257 -8.8817841970012523e-16 2.4424906541753444e-15 ;
	setAttr ".r" -type "double3" -6.0082665779522081e-14 1.7542746914946056e-14 -2.2003474855699794e-12 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 6.4837048010850413 8.9645466301992105 3.1861941457181162 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0.87955225437143125 -0.18639709697678905 0.43777157750219342 0
		 0.4502383891800486 0.62357933886006522 -0.63908857058736301 0 -0.15386105660201504 0.75921336288652685 0.63239374196448361 0
		 -52.210359994334823 -10.028698021553971 263.70099603594906 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.053564914482101822;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth5" -p "Mouth4";
	rename -uid "B322FA7E-4520-03BE-F17D-B1871439CFAA";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.8200318508301265 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.21425965792840629 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 7.1741386533761369e-13 -6.653819785955476e-13 9.8483825744629045e-14 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.96042315397783928 1.8829856576017332 -8.4825238594823489 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 0.80813883970134404 -0.3011381637006747 0.50618911696040181 0
		 0.57710820380044592 0.5766134616733295 -0.57832779366318088 0 -0.11771888919110987 0.75949504421035241 0.6397730386219207 0
		 -33.365103479156929 -14.022435845263868 273.08067488058941 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.058200318508301263;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Mouth6" -p "Mouth5";
	rename -uid "62478C2F-467E-8A8C-983A-4CB08E98B64A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.8200318508301265 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.23280127403320461 -2.2204460492503131e-16 2.4424906541753444e-15 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 80.813850000000002 -30.113924000000001 50.618960999999999 0
		 57.710911000000003 57.661327 -57.832723999999999 0 -11.771856 75.949477999999999 63.977328999999997 0
		 -33.365135000000002 -14.022501 273.08080699999999 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.058200318508301263;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "TailBase" -p "Root";
	rename -uid "FB56D8D2-46AC-3E60-13A3-34BD680AC701";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 65.064364671708546 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" -0.67206171495158773 -0.032341355066724212 -0.0010839298029636291 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.0044418188359542912 0.092302183233112609 -177.24490371729607 ;
	setAttr ".bps" -type "matrix" 0 -0.008945787623095296 -0.99995998564132671 0 0 0.99995998564132682 -0.008945787623095296 0
		 1 0 0 0 -5.8308871277536643e-17 -5.8269948722368863 -57.632825526393702 1;
	setAttr ".typ" 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.65064364671708552;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
	setAttr -k on ".global" 10;
createNode joint -n "Tail1" -p "TailBase";
	rename -uid "45B811C9-4AD6-FE72-A3F5-5D81EF99F353";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.16175911952310118 8.3266726846886741e-17 -3.3087223088488528e-26 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.4539893826841095e-17 -1.2750330637010335e-14 -5.4168821918675518e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 0.31042101677529133 ;
	setAttr ".bps" -type "matrix" 0 -0.0035280308159308374 -0.99999377647991472 0 0 0.99999377647991483 -0.0035280308159308382 0
		 1 0 0 0 -5.830887458625897e-17 -5.9717011451721325 -73.808090209961136 1;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "0Tail";
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Tail2" -p "Tail1";
	rename -uid "AF9FDEB4-4D83-30C4-78F2-329F288BA062";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.95788339334080241 9.7769015106052848e-15 2.1316282072803005e-16 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 1.615725802576999e-15 9.1593348195601976e-13 -1.9801934662124264e-12 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 0.20214169508940696 ;
	setAttr ".bps" -type "matrix" 0 0 -1 0 0 1 -1.3010426069826053e-18 0 1 0 0 0 2.1257973198216746e-14 -6.3096453581486305 -169.59583340338773 1;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "1";
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Tail3" -p "Tail2";
	rename -uid "65DA5115-47BD-5576-DC00-7D82F3852DB0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.95502555268487366 -1.3322676295501878e-15 -1.5267091001635152e-14 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 0 -1 0 0 1 -1.3010426069826053e-18 0 1 0 0 0 -1.5054511269652984e-12 -6.3096453581487628 -265.098388671875 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Tail4" -p "Tail3";
	rename -uid "8A52F5EF-4809-91D4-ED55-A38FA9F92E0C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.0069500732421863 -4.3021142204224816e-16 -1.6108748856309332e-14 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 0 -1 0 0 1 -1.3010426069826053e-18 0 1 0 0 0 -3.1163260125962317e-12 -6.3096453581488063 -365.79339599609364 1;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "2";
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Tail5" -p "Tail4";
	rename -uid "AFC94076-489E-458F-BF57-16870EED0C8C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.0170901489257815 -6.2450045135165055e-16 -1.6273111940541721e-14 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 0 -1 0 0 1 -1.3010426069826053e-18 0 1 0 0 0 -4.7436372066504035e-12 -6.3096453581488676 -467.50241088867176 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Tail6" -p "Tail5";
	rename -uid "C4CF5455-4643-013B-3D29-97964A229F1D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 22.533703407907247 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.53688629150390632 -4.8572257327350599e-16 -8.489364606797423e-15 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 0 -1 0 0 1 -1.3010426069826053e-18 0 1 0 0 0 -5.5925736673301459e-12 -6.3096453581489165 -521.19104003906239 1;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "3";
	setAttr ".fbxID" 5;
	setAttr -k on ".fat" 0.22533703407907246;
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "22718E24-4EB9-840F-BAAB-97B2A7DF5E3B";
	setAttr ".v" no;
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "CBAE0935-4F42-E68A-F432-E6A59C80E2CD";
createNode transform -n "MainExtra1" -p "MainSystem";
	rename -uid "13F07A45-4825-739F-96BC-C99106885F81";
	setAttr ".sech" no;
createNode transform -n "Main" -p "MainExtra1";
	rename -uid "FDD18485-4250-D549-C772-9E8775A917DB";
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
	setAttr -l on ".height" 21.032970662217455;
	setAttr -l on ".version" 6.63;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "CCA7E87D-4AA6-A60B-B39B-16A23B01CEAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		0 0 -392.05334042910835
		-121.17132853484469 0 -372.86586458659804
		-230.41094940291822 0 -317.15768892620031
		-317.15768892620031 0 -230.41094940291822
		-372.86586458659804 0 -121.17132853484469
		-392.05334042910835 0 0
		-372.86586458659804 0 121.17132853484469
		-317.15768892620031 0 230.41094940291822
		-230.41094940291822 0 317.15768892620031
		-121.17132853484469 0 372.86586458659804
		0 0 392.05334042910835
		121.17132853484469 0 372.86586458659804
		230.41094940291822 0 317.15768892620031
		317.15768892620031 0 230.41094940291822
		372.86586458659804 0 121.17132853484469
		392.05334042910835 0 0
		372.86586458659804 0 -121.17132853484469
		317.15768892620031 0 -230.41094940291822
		230.41094940291822 0 -317.15768892620031
		121.17132853484469 0 -372.86586458659804
		0 0 -392.05334042910835
		;
createNode nurbsCurve -n "MainExtra1Shape" -p "MainExtra1";
	rename -uid "22C4D2CA-446D-4596-316C-E0BF175EBBF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		421.27558389145997 0 -421.27558389145997
		-421.27558389145997 0 -421.27558389145997
		-421.27558389145997 0 421.27558389145997
		421.27558389145997 0 421.27558389145997
		421.27558389145997 0 -421.27558389145997
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "6D3B43DF-4904-326B-227A-988EEF7DEA68";
createNode transform -n "FKParentConstraintToRoot_M" -p "FKSystem";
	rename -uid "886CD4C2-41F7-EE0B-5D31-A69F04F4C5D9";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode parentConstraint -n "FKParentConstraintToRoot_M_parentConstraint1" -p "FKParentConstraintToRoot_M";
	rename -uid "D58EF7BF-42C4-980A-519B-DA95FF4AA2E8";
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
	setAttr ".lr" -type "double3" -90.000002504483135 89.487437788403724 -90.000002504483135 ;
	setAttr ".rst" -type "double3" -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 ;
	setAttr ".rsrr" -type "double3" -90 89.487437288135297 -90 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetWingBase_R" -p "FKParentConstraintToRoot_M";
	rename -uid "DD2961C3-4C33-AF5D-9822-F59A4C26DB76";
	setAttr ".t" -type "double3" -66.704225496609368 3.2099758029104111 -0.10770789189504754 ;
	setAttr ".r" -type "double3" -179.99998494284227 69.328571607622493 0.51251735192336978 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraWingBase_R" -p "FKOffsetWingBase_R";
	rename -uid "EF7A96A1-455A-D302-C089-6F88E42222EA";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWingBase_R" -p "FKExtraWingBase_R";
	rename -uid "811945D3-4ED9-38B7-0DEC-32B51505E268";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWingBase_RShape" -p "FKWingBase_R";
	rename -uid "FBE9FE3A-4E71-ABAC-C222-EA82D70725E2";
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
		148.30086789999999 -35.785698449999998 -135.51952080000001
		196.8619285 2.057058164e-06 -180.01935990000001
		148.30088219999999 35.785701549999999 -135.51951879999999
		61.076594460000003 50.608600180000003 0.21203055579999999
		93.904794820000006 35.785699379999997 110.27967769999999
		121.4788951 -9.0725239769999998e-07 155.43650769999999
		93.904795030000002 -35.78570062 110.2796771
		61.07659477 -50.608599820000002 0.21202972919999999
		148.30086789999999 -35.785698449999998 -135.51952080000001
		196.8619285 2.057058164e-06 -180.01935990000001
		148.30088219999999 35.785701549999999 -135.51951879999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWingBase_R" -p "FKWingBase_R";
	rename -uid "92ECAC86-4ACE-98B1-1282-608710670858";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing1_R" -p "FKXWingBase_R";
	rename -uid "EC90B927-4F0C-356E-48C6-26B0735515EB";
	setAttr ".r" -type "double3" 0.016707681578961037 -11.962066317053814 1.175882699466736 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "FKGlobalWing1_R" -p "FKOffsetWing1_R";
	rename -uid "802F21CC-4C37-7E07-4604-939541C323CB";
createNode transform -n "FKExtraWing1_R" -p "FKGlobalWing1_R";
	rename -uid "27166304-49E2-96A2-76C0-5AA1F5951736";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 5.5511151231257827e-17 7.1054273576010019e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing1_R" -p "FKExtraWing1_R";
	rename -uid "817C9B00-42B8-5CEB-E99A-8A8F741703CE";
	addAttr -ci true -k true -sn "Global" -ln "Global" -dv 10 -min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -k on ".Global";
createNode nurbsCurve -n "FKWing1_RShape" -p "FKWing1_R";
	rename -uid "41702C9C-4650-9364-02D8-A4B2AA3C3644";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		42.152198040000002 -30.533898709999999 -117.5272006
		42.152197870000002 1.7074642619999999e-06 -166.2086003
		42.152197960000002 30.533901289999999 -117.52719999999999
		42.152198259999999 43.181400269999997 7.1361967e-08
		42.152198570000003 30.533899330000001 107.9395
		42.152198720000001 -1.0498176490000001e-06 152.08199970000001
		42.152198640000002 -30.533900670000001 107.9394994
		42.152198370000001 -43.181399730000003 -6.767800897e-07
		42.152198040000002 -30.533898709999999 -117.5272006
		42.152197870000002 1.7074642619999999e-06 -166.2086003
		42.152197960000002 30.533901289999999 -117.52719999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing1_R" -p "FKWing1_R";
	rename -uid "47D5EBC1-48F4-5733-19F8-FB9CC4CA1C3E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing2_R" -p "FKXWing1_R";
	rename -uid "D159B0BB-4AED-86EF-DBC7-99A76F6C6195";
	setAttr ".r" -type "double3" 0.69394247055738589 1.5270339304762004 0.26777084294289971 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraWing2_R" -p "FKOffsetWing2_R";
	rename -uid "942FAD10-4D52-C3B8-671A-509F7D47610C";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing2_R" -p "FKExtraWing2_R";
	rename -uid "2E19384B-42B5-5E75-414B-62876934A006";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing2_RShape" -p "FKWing2_R";
	rename -uid "E6C1CF33-4B9E-C674-43C2-21B2945A4FF6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.92011413e-07 -30.533898659999998 -117.52720069999999
		-3.644049116e-07 1.756245236e-06 -166.20860039999999
		-2.7811373119999997e-07 30.53390134 -117.5272002
		1.6313634889999999e-08 43.181400320000002 -6.0234427220000009e-08
		3.2093197429999998e-07 30.533899389999998 107.93949979999999
		4.8126599950000001e-07 -9.9373892929999999e-07 152.08199959999999
		4.0703429250000002e-07 -30.53390061 107.93949929999999
		1.3808059410000001e-07 -43.181399679999998 -8.063963860999999e-07
		-1.92011413e-07 -30.533898659999998 -117.52720069999999
		-3.644049116e-07 1.756245236e-06 -166.20860039999999
		-2.7811373119999997e-07 30.53390134 -117.5272002
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing2_R" -p "FKWing2_R";
	rename -uid "F5174548-42E2-6787-DF65-6C9456960B47";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing3_R" -p "FKXWing2_R";
	rename -uid "A509A4E8-4D5F-30B5-BC66-6894127C8C35";
	setAttr ".r" -type "double3" 0.33778012185295858 1.8618824604322117 -1.0477351171458031 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKExtraWing3_R" -p "FKOffsetWing3_R";
	rename -uid "1A575F54-4E30-BD5B-B7C8-41889ACF0266";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing3_R" -p "FKExtraWing3_R";
	rename -uid "ECECD650-41AE-1D26-2615-C3A08725D45F";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing3_RShape" -p "FKWing3_R";
	rename -uid "2FB4B5D7-4A50-A7A4-D3A2-169F596A8D3B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2582901830000001e-07 -23.520598790000001 -90.532700860000006
		-2.7106074190000002e-07 1.531607562e-06 -128.03260069999999
		-2.044662324e-07 23.520601209999999 -90.532700460000001
		3.4944093839999998e-08 33.263200439999999 -3.7651943789999999e-07
		3.0692717699999999e-07 23.520599669999999 90.532699539999996
		4.5215892899999997e-07 -6.5505653080000002e-07 128.03259929999999
		3.8556436270000001e-07 -23.520600330000001 90.532699140000005
		1.461540649e-07 -33.263199559999997 -9.4462041029999996e-07
		-1.2582901830000001e-07 -23.520598790000001 -90.532700860000006
		-2.7106074190000002e-07 1.531607562e-06 -128.03260069999999
		-2.044662324e-07 23.520601209999999 -90.532700460000001
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing3_R" -p "FKWing3_R";
	rename -uid "72DB166B-4F32-D7D6-2E40-C6A96EB63C83";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing4_R" -p "FKXWing3_R";
	rename -uid "5EFDEB90-4021-570F-FC71-21887AE3B6C9";
	setAttr ".r" -type "double3" -0.10868284385721005 2.883878970186156 -0.84230421117040088 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKExtraWing4_R" -p "FKOffsetWing4_R";
	rename -uid "E9A0B7BB-49BC-51DA-8DD6-64A1DC6E352F";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing4_R" -p "FKExtraWing4_R";
	rename -uid "D791E9EB-4F58-1071-4BB1-21AE9A68DFF5";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing4_RShape" -p "FKWing4_R";
	rename -uid "B1492A7B-4D09-27AC-B017-1B9404B7E35B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.8126139520000003e-08 -25.958298800000001 -77.293901059999996
		-2.0434345060000001e-07 1.4906326080000001e-06 -111.79830080000001
		-1.5728824109999999e-07 25.958301200000001 -77.293900620000002
		4.8915580920000003e-08 36.710600550000002 0.38529946809999999
		2.9328242590000003e-07 25.958299920000002 75.669899380000004
		4.4717864970000003e-07 -3.677987745e-07 109.3862992
		4.0244452749999996e-07 -25.958300080000001 75.669898939999996
		2.0329429160000001e-07 -36.710599449999997 0.38529885120000001
		-4.8126139520000003e-08 -25.958298800000001 -77.293901059999996
		-2.0434345060000001e-07 1.4906326080000001e-06 -111.79830080000001
		-1.5728824109999999e-07 25.958301200000001 -77.293900620000002
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing4_R" -p "FKWing4_R";
	rename -uid "DCD93AFB-4DD5-9E8E-8BF8-7CB707E432C0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing5_R" -p "FKXWing4_R";
	rename -uid "2F20A5C2-4D8D-C9D5-FCEA-48A15924968C";
	setAttr ".r" -type "double3" 0.31949717286828999 1.9912137999137016 0.8545338249618718 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "FKExtraWing5_R" -p "FKOffsetWing5_R";
	rename -uid "66686892-4535-95D6-F4FC-5C92DD0133E6";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing5_R" -p "FKExtraWing5_R";
	rename -uid "10084F20-41AB-2C3C-9A77-37A861D26742";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing5_RShape" -p "FKWing5_R";
	rename -uid "04580DEC-4762-BF23-4167-35AA4C6011B4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5964148990000003e-08 -15.95469879 -61.417301190000003
		-7.4045033219999999e-08 1.4230335270000001e-06 -86.848001049999993
		-3.994989584e-08 15.95470121 -61.417300920000002
		1.073805151e-07 22.563300730000002 -3.8682008639999999
		2.8026232709999999e-07 15.954700259999999 51.600999080000001
		3.873674359e-07 6.0426430079999998e-08 76.006698950000001
		3.561763151e-07 -15.954699740000001 51.60099881
		2.1473891819999999e-07 -22.563299270000002 -3.868201242
		3.5964148990000003e-08 -15.95469879 -61.417301190000003
		-7.4045033219999999e-08 1.4230335270000001e-06 -86.848001049999993
		-3.994989584e-08 15.95470121 -61.417300920000002
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing5_R" -p "FKWing5_R";
	rename -uid "7A9BD182-4779-D288-EAE5-46931886D01A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing6_R" -p "FKXWing5_R";
	rename -uid "1DE93B87-451C-4C23-4208-0DBB1E64AF76";
	setAttr ".r" -type "double3" -1.8045987310803684 4.0263687680790099 -1.3846241661163321 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "FKExtraWing6_R" -p "FKOffsetWing6_R";
	rename -uid "A6D297F5-402B-1567-5457-ABB1299DFBD5";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing6_R" -p "FKExtraWing6_R";
	rename -uid "67C2F06E-448D-A21A-AAB9-6CA6F37B11CE";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing6_RShape" -p "FKWing6_R";
	rename -uid "9547AC33-4BE3-97DA-9545-09B570095C07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3330105729999999e-07 -11.431998780000001 -46.46140123
		4.9449056409999998e-08 1.354788118e-06 -63.123301140000002
		6.3570610109999995e-08 11.43200122 -46.461401049999999
		1.6243853909999998e-07 16.167300910000002 -7.9213010089999996
		2.9328316490000001e-07 11.432000589999999 31.670898950000002
		3.7982459840000001e-07 4.4361938299999998e-07 49.247598859999997
		3.6301361210000001e-07 -11.43199941 31.670898770000001
		2.610523779e-07 -16.16729909 -7.9213012709999999
		1.3330105729999999e-07 -11.431998780000001 -46.46140123
		4.9449056409999998e-08 1.354788118e-06 -63.123301140000002
		6.3570610109999995e-08 11.43200122 -46.461401049999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing6_R" -p "FKWing6_R";
	rename -uid "94873C70-4F80-BADC-8287-F6A946EC24D7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetWing6_R_pointConstraint1" -p "FKOffsetWing6_R";
	rename -uid "98F53B59-4682-A49F-EB40-32A732963BE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing6_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -5.6843418860808015e-14 8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 44.693070637660071 7.3718808835110394e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing6_R" -p "FKXWing5_R";
	rename -uid "6732CA88-46BC-3F13-E882-1CB8155E52B8";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing6_R" -p "FKPS1Wing6_R";
	rename -uid "7110C033-4C2A-453B-5D54-BD8EB6922F55";
	setAttr ".t" -type "double3" 44.693070637660128 7.460698725481052e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -1.8045987310803684 4.026368768079017 -1.3846241661163321 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1Wing6_R_scaleConstraint1" -p "FKPS1Wing6_R";
	rename -uid "7FD7EE79-4356-DEE7-6250-3694FB0A6161";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing5_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing5_R_pointConstraint1" -p "FKOffsetWing5_R";
	rename -uid "89CF841B-4C11-5FEB-1ACA-D99DC738100C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing5_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.7053025658242404e-13 5.3290705182007514e-15 4.2632564145606011e-14 ;
	setAttr ".rst" -type "double3" 72.715759867250938 -1.7763568394002505e-14 3.5527136788005009e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing5_R" -p "FKXWing4_R";
	rename -uid "24F70149-487A-461E-FC5C-3ABEFB7FB588";
	setAttr ".t" -type "double3" 5.6843418860808015e-14 -1.7763568394002505e-15 -1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing5_R" -p "FKPS1Wing5_R";
	rename -uid "AD0395E8-40E4-D7E7-8D50-BE97AE2AF176";
	setAttr ".t" -type "double3" 72.715759867250938 -1.9539925233402755e-14 3.2684965844964609e-13 ;
	setAttr ".r" -type "double3" 0.31949717286829055 1.991213799913703 0.8545338249618718 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode scaleConstraint -n "FKPS1Wing5_R_scaleConstraint1" -p "FKPS1Wing5_R";
	rename -uid "4B24DA6C-4894-216D-B633-2785FFF4FDD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing4_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing4_R_pointConstraint1" -p "FKOffsetWing4_R";
	rename -uid "68C97C2B-43C5-B544-B41D-15B25BCE3E73";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing4_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.4210854715202004e-13 6.2172489379008766e-15 -5.6843418860808015e-14 ;
	setAttr ".rst" -type "double3" 65.887185290147642 -3.5527136788005009e-14 -7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing4_R" -p "FKXWing3_R";
	rename -uid "B46EF94F-45D8-DF1F-774D-0690D6CD265A";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 2.8421709430404007e-14 ;
createNode transform -n "FKPS2Wing4_R" -p "FKPS1Wing4_R";
	rename -uid "EFFB6435-4F8F-2886-7BAB-CCB4CDF68CB9";
	setAttr ".t" -type "double3" 65.887185290147727 -3.907985046680551e-14 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -0.10868284385721023 2.8838789701861574 -0.84230421117040133 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1Wing4_R_scaleConstraint1" -p "FKPS1Wing4_R";
	rename -uid "86FFAA56-4167-826E-4AC5-80A3679B0B21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing3_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing3_R_pointConstraint1" -p "FKOffsetWing3_R";
	rename -uid "FD5D421D-4000-B671-5D0B-EB82B081DE01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing3_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 1.2212453270876722e-15 -5.6843418860808015e-14 ;
	setAttr ".rst" -type "double3" 85.532998589298927 -4.7739590058881731e-15 -8.5265128291212022e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing3_R" -p "FKXWing2_R";
	rename -uid "C5838CF6-4156-DB1F-ABBB-01BA2EF5E00F";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing3_R" -p "FKPS1Wing3_R";
	rename -uid "852B71EC-4F21-A395-BCEC-678CFE19549F";
	setAttr ".t" -type "double3" 85.532998589298927 -6.4392935428259079e-15 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0.33778012185295891 1.8618824604322117 -1.0477351171458031 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
createNode scaleConstraint -n "FKPS1Wing3_R_scaleConstraint1" -p "FKPS1Wing3_R";
	rename -uid "DDD4349F-4644-8CDA-9678-879641F2FF6A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing2_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing2_R_pointConstraint1" -p "FKOffsetWing2_R";
	rename -uid "559E1068-447F-2EBB-521F-EFB1430A164D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing2_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.4210854715202004e-14 0 -3.5527136788005009e-14 ;
	setAttr ".rst" -type "double3" 90.134813631628958 2.9753977059954195e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing2_R" -p "FKXWing1_R";
	rename -uid "6A0AB654-4E3D-45DC-0BB2-D4A21F2218D4";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 7.1054273576010019e-15 ;
createNode transform -n "FKPS2Wing2_R" -p "FKPS1Wing2_R";
	rename -uid "B0EFE934-4D82-7686-DB7B-9C9F0707413E";
	setAttr ".t" -type "double3" 90.134813631628973 3.0142555118573e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0.69394247055738589 1.5270339304762002 0.26777084294289982 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
createNode scaleConstraint -n "FKPS1Wing2_R_scaleConstraint1" -p "FKPS1Wing2_R";
	rename -uid "05A1BBD5-4806-4DB7-E343-B7ADA61A9B37";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing1_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing1_R_pointConstraint1" -p "FKOffsetWing1_R";
	rename -uid "E3F999E6-4EE2-380E-93B5-C9A7E593209E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing1_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.8421709430404007e-14 6.6613381477509392e-16 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" 73.353451490404268 -2.9753977059954195e-14 5.4001247917767614e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing1_R" -p "FKXWingBase_R";
	rename -uid "AE2A428D-42E6-66AA-AF76-7981A9C21E81";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing1_R" -p "FKPS1Wing1_R";
	rename -uid "A33C66DE-4E3A-D2F0-A049-C8ABF765FB14";
	setAttr ".t" -type "double3" 73.353451490404282 -3.0198066269804258e-14 5.5422333389287814e-13 ;
	setAttr ".r" -type "double3" 0.016707681578960985 -11.96206631705382 1.1758826994667362 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode scaleConstraint -n "FKPS1Wing1_R_scaleConstraint1" -p "FKPS1Wing1_R";
	rename -uid "D8393E4C-4E5B-9D7A-C0C2-E5A278866DD8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWingBase_RW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKOffsetMouthBase_R" -p "FKParentConstraintToRoot_M";
	rename -uid "1EEE6440-4564-7D60-A127-DD84C25DA0D9";
	setAttr ".t" -type "double3" -66.701980624842861 3.2099996168792084 -0.10771155747993785 ;
	setAttr ".r" -type "double3" 90.47840146212269 34.371716517590954 -178.640156866328 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
createNode transform -n "FKExtraMouthBase_R" -p "FKOffsetMouthBase_R";
	rename -uid "BD0B4E27-413F-33B7-FA36-EEACBDC208E3";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouthBase_R" -p "FKExtraMouthBase_R";
	rename -uid "57DD7F78-420E-4788-F955-8C9711E6A2A5";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouthBase_RShape" -p "FKMouthBase_R";
	rename -uid "761EE2C9-4959-9586-A05B-4491FD59346B";
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
		119.9422003 -109.6910999 -53.271799919999999
		86.479000369999994 -26.935899859999999 -49.25619957
		119.9422005 55.819300120000001 -53.271798740000001
		156.87480009999999 51.373599679999998 -0.038898501019999997
		119.9421998 55.819299350000001 53.19400126
		86.478999659999999 -26.935900570000001 49.178400430000003
		119.9421995 -109.6911006 53.194000080000002
		156.8747999 -105.2454003 -0.038899624020000002
		119.9422003 -109.6910999 -53.271799919999999
		86.479000369999994 -26.935899859999999 -49.25619957
		119.9422005 55.819300120000001 -53.271798740000001
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouthBase_R" -p "FKMouthBase_R";
	rename -uid "58CD3C15-482A-ACDD-9344-74A10CF3C121";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth1_R" -p "FKXMouthBase_R";
	rename -uid "1B4B7460-47C3-D56C-25AD-268E8E8D8570";
	setAttr ".r" -type "double3" 15.005559899562478 9.5736640337728538 61.754538908938564 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "FKExtraMouth1_R" -p "FKOffsetMouth1_R";
	rename -uid "79666980-4913-26E5-F9F0-B9B87C989314";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth1_R" -p "FKExtraMouth1_R";
	rename -uid "8E37F84E-4FC9-4D3A-6109-32BD603C4D25";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth1_RShape" -p "FKMouth1_R";
	rename -uid "6FA67E40-4FD8-0981-32F4-458EA080F650";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.4240128479999996e-07 -21.722999959999999 -21.72299877
		-1.6656571229999998e-07 1.1982564269999999e-08 -30.720898829999999
		-2.6897012619999998e-07 21.723000039999999 -21.72299889
		-4.8962891700000001e-07 30.720900090000001 1.089894184e-06
		-6.9928256610000006e-07 21.723000150000001 21.723001109999998
		-7.7511813859999996e-07 1.7544223850000001e-07 30.720901170000001
		-6.7271372469999994e-07 -21.722999850000001 21.723001230000001
		-4.5205496240000001e-07 -30.72089991 1.253353844e-06
		-2.4240128479999996e-07 -21.722999959999999 -21.72299877
		-1.6656571229999998e-07 1.1982564269999999e-08 -30.720898829999999
		-2.6897012619999998e-07 21.723000039999999 -21.72299889
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth1_R" -p "FKMouth1_R";
	rename -uid "B5D5C888-452D-2A50-5B7F-419E9187552C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth2_R" -p "FKXMouth1_R";
	rename -uid "7394309F-435B-C7FC-1766-9E821451FF6C";
	setAttr ".r" -type "double3" 2.718476121037368 -3.1533950331837119 19.071402757124044 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "FKExtraMouth2_R" -p "FKOffsetMouth2_R";
	rename -uid "4424E47E-4EC3-B0E3-C2E0-6DB21FDCD19C";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth2_R" -p "FKExtraMouth2_R";
	rename -uid "E6D14BED-4DAA-27DE-CB45-C2992E4F82EF";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth2_RShape" -p "FKMouth2_R";
	rename -uid "A8402482-4367-980E-2CC2-B696C1C2888C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5539666260000001e-07 -17.979199779999998 -17.979198480000001
		-1.1644451090000001e-07 1.792854221e-07 -25.426398580000001
		-2.0317287409999998e-07 17.979200219999999 -17.97919868
		-3.6477787549999998e-07 25.426400319999999 1.2766514890000001e-06
		-5.0659343740000005e-07 17.979200429999999 17.979201320000001
		-5.4554557490000008e-07 4.6956827760000001e-07 25.426401420000001
		-4.588172544e-07 -17.979199569999999 17.97920152
		-2.972122104e-07 -25.426399679999999 1.5669343440000001e-06
		-1.5539666260000001e-07 -17.979199779999998 -17.979198480000001
		-1.1644451090000001e-07 1.792854221e-07 -25.426398580000001
		-2.0317287409999998e-07 17.979200219999999 -17.97919868
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth2_R" -p "FKMouth2_R";
	rename -uid "FFD2FD94-457F-D227-5F68-21AAD26FFAD8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth3_R" -p "FKXMouth2_R";
	rename -uid "26854804-4A84-7D68-875F-2BA5FD2AB71A";
	setAttr ".r" -type "double3" 11.498087297866617 7.2075144329736398 9.1101652253445895 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraMouth3_R" -p "FKOffsetMouth3_R";
	rename -uid "E13BF882-4620-871B-F413-FFA7C7E4A860";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth3_R" -p "FKExtraMouth3_R";
	rename -uid "73A1A562-4CFF-458D-460C-5DB41BED1BF2";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth3_RShape" -p "FKMouth3_R";
	rename -uid "9C34A10D-4119-1079-7A4F-30A03033F6FE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.2926581640000003e-07 -15.332999409999999 -15.332998460000001
		-3.1296336540000003e-07 5.4590501009999997e-07 -21.684098559999999
		-3.8799478829999998e-07 15.333000589999999 -15.33299867
		-5.1040824189999998e-07 21.684100699999998 1.2819203619999999e-06
		-6.0849554020000004e-07 15.33300081 15.33300133
		-6.2479797689999993e-07 8.5312214540000009e-07 21.684101439999999
		-5.4976659669999996e-07 -15.332999190000001 15.33300154
		-4.2735308630000006e-07 -21.6840993 1.589137469e-06
		-3.2926581640000003e-07 -15.332999409999999 -15.332998460000001
		-3.1296336540000003e-07 5.4590501009999997e-07 -21.684098559999999
		-3.8799478829999998e-07 15.333000589999999 -15.33299867
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth3_R" -p "FKMouth3_R";
	rename -uid "A3E0C32A-4D6E-885A-99F3-9C8A8BCFB52E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth4_R" -p "FKXMouth3_R";
	rename -uid "E303A164-4A30-2A20-AA83-B994A2B5D405";
	setAttr ".r" -type "double3" 6.4837047724754493 8.964546446013582 3.1861942419083529 ;
createNode transform -n "FKExtraMouth4_R" -p "FKOffsetMouth4_R";
	rename -uid "EADEF893-49DD-4730-DF76-D5B71276E4A4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth4_R" -p "FKExtraMouth4_R";
	rename -uid "7161A5C7-44A4-1D61-3CBC-EC94232B32EE";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth4_RShape" -p "FKMouth4_R";
	rename -uid "87F5AC51-42DE-5AA7-C645-F8B95DE979D1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.5235963709999998e-07 -14.394299180000001 -14.39429848
		-5.3408213320000003e-07 7.7451090870000002e-07 -20.356598590000001
		-5.9522271559999998e-07 14.39430082 -14.3942987
		-6.9996632129999999e-07 20.356600929999999 1.2524827469999999e-06
		-7.8695548209999999e-07 14.39430104 14.3943013
		-8.0523300030000001e-07 1.0871787879999999e-06 20.35660141
		-7.4409238949999997e-07 -14.39429896 14.394301520000001
		-6.3934881209999996e-07 -20.356599070000001 1.565150598e-06
		-5.5235963709999998e-07 -14.394299180000001 -14.39429848
		-5.3408213320000003e-07 7.7451090870000002e-07 -20.356598590000001
		-5.9522271559999998e-07 14.39430082 -14.3942987
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth4_R" -p "FKMouth4_R";
	rename -uid "C58164F0-48C6-D57B-57BE-EF90DB927C60";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth5_R" -p "FKXMouth4_R";
	rename -uid "07500324-405C-99F4-2824-418EAB524184";
	setAttr ".r" -type "double3" -0.96042310143825294 1.8829856105334162 -8.4825237745865127 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "FKExtraMouth5_R" -p "FKOffsetMouth5_R";
	rename -uid "5208C148-4AE0-D9BD-98DC-A4A397C2FFE3";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth5_R" -p "FKExtraMouth5_R";
	rename -uid "5A1F6D80-4220-CE89-245E-99BE61D7C5BC";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth5_RShape" -p "FKMouth5_R";
	rename -uid "EC685F11-4141-2941-7FBF-D1B83DAA8AB1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.2704877139999996e-07 -14.394299269999999 -14.39429837
		-6.9732615769999999e-07 6.9221690070000001e-07 -20.356598460000001
		-7.5990244850000006e-07 14.394300729999999 -14.394298559999999
		-8.7812155410000002e-07 20.356600830000001 1.402789309e-06
		-9.8273223160000008e-07 14.394300919999999 14.39430144
		-1.01245486e-06 9.633140223e-07 20.35660154
		-9.4987855450000008e-07 -14.39429908 14.394301629999999
		-8.3165944890000002e-07 -20.356599169999999 1.6738863740000001e-06
		-7.2704877139999996e-07 -14.394299269999999 -14.39429837
		-6.9732615769999999e-07 6.9221690070000001e-07 -20.356598460000001
		-7.5990244850000006e-07 14.394300729999999 -14.394298559999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth5_R" -p "FKMouth5_R";
	rename -uid "D339293B-4444-65C8-7092-A7B18F24A277";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetMouth5_R_pointConstraint1" -p "FKOffsetMouth5_R";
	rename -uid "224B7CC7-4359-9C5C-4D64-468880954DD8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth5_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 4.2632564145606011e-14 2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" 21.425965792840657 -8.2422957348171622e-13 8.5265128291212022e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth5_R" -p "FKXMouth4_R";
	rename -uid "DE0EA32E-45AA-4304-62AF-7B9C69F19001";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 0 ;
createNode transform -n "FKPS2Mouth5_R" -p "FKPS1Mouth5_R";
	rename -uid "4ABA3E4A-4820-A403-74D9-BD9FC4BDD29D";
	setAttr ".t" -type "double3" 21.425965792840643 -8.2422957348171622e-13 1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" -0.96042310143825294 1.8829856105334069 -8.4825237745865127 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode scaleConstraint -n "FKPS1Mouth5_R_scaleConstraint1" -p "FKPS1Mouth5_R";
	rename -uid "8236B7E3-40E5-EA31-D935-E9BB9385DC11";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth4_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth4_R_pointConstraint1" -p "FKOffsetMouth4_R";
	rename -uid "18A5E454-478A-171F-75A0-C48537084D9D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth4_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" 21.605795401005253 -5.6843418860808015e-14 2.8421709430404007e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth4_R" -p "FKXMouth3_R";
	rename -uid "DD84A9BF-4F17-992C-C8E3-C3AC54ECB795";
createNode transform -n "FKPS2Mouth4_R" -p "FKPS1Mouth4_R";
	rename -uid "A9AA9282-46FB-330D-001C-CAAF816E8F4D";
	setAttr ".t" -type "double3" 21.605795401005267 -8.5265128291212022e-14 3.1263880373444408e-13 ;
	setAttr ".r" -type "double3" 6.483704772475444 8.9645464460135766 3.1861942419083467 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode scaleConstraint -n "FKPS1Mouth4_R_scaleConstraint1" -p "FKPS1Mouth4_R";
	rename -uid "CEEC16B9-4580-F6E2-0A6E-43916B7F0FB1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth3_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth3_R_pointConstraint1" -p "FKOffsetMouth3_R";
	rename -uid "A4360FE1-451C-7BAC-3D9C-DBAAEF03EA90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth3_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 5.6843418860808015e-14 7.1054273576010019e-14 ;
	setAttr ".rst" -type "double3" 20.262204395224913 1.0231815394945443e-12 5.6843418860808015e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth3_R" -p "FKXMouth2_R";
	rename -uid "453C7C85-4B7F-D385-4C8A-A39D1A366F8D";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 -1.4210854715202004e-14 ;
createNode transform -n "FKPS2Mouth3_R" -p "FKPS1Mouth3_R";
	rename -uid "2A01A44A-4A5E-BBE5-5F8F-D3B7F6D93146";
	setAttr ".t" -type "double3" 20.262204395224913 9.9475983006414026e-13 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 11.498087297866622 7.2075144329736398 9.1101652253445948 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode scaleConstraint -n "FKPS1Mouth3_R_scaleConstraint1" -p "FKPS1Mouth3_R";
	rename -uid "81FF06C5-41A9-0B65-0B48-C79EE0511C3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth2_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth2_R_pointConstraint1" -p "FKOffsetMouth2_R";
	rename -uid "6AFA0A8B-428B-6A5F-C6FE-B79BB8A77277";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth2_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 24.592217789432965 -5.6843418860808015e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth2_R" -p "FKXMouth1_R";
	rename -uid "3D74244C-4349-5222-FD89-65B4F5778123";
createNode transform -n "FKPS2Mouth2_R" -p "FKPS1Mouth2_R";
	rename -uid "7CFC84CC-4686-FC31-4987-8A9E042ED405";
	setAttr ".t" -type "double3" 24.592217789432965 -5.6843418860808015e-14 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 2.7184761210373729 -3.1533950331837133 19.071402757124051 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode scaleConstraint -n "FKPS1Mouth2_R_scaleConstraint1" -p "FKPS1Mouth2_R";
	rename -uid "1125CF7D-439C-2EBC-5F0D-F0B4EF36BE26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth1_RW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth1_R_pointConstraint1" -p "FKOffsetMouth1_R";
	rename -uid "6A6249D1-40EC-419A-F805-50B55D248C9B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth1_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 1.4210854715202004e-14 -1.4432899320127035e-15 ;
	setAttr ".rst" -type "double3" 169.02689933781227 1.5631940186722204e-13 3.4805491821998658e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth1_R" -p "FKXMouthBase_R";
	rename -uid "FF324365-4F00-CCE6-4028-4A9B08CCECA0";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 7.1054273576010019e-15 0 ;
createNode transform -n "FKPS2Mouth1_R" -p "FKPS1Mouth1_R";
	rename -uid "60143C12-4641-9C23-821D-77B871C971B3";
	setAttr ".t" -type "double3" 169.02689933781227 1.4210854715202004e-13 3.4861002973229915e-13 ;
	setAttr ".r" -type "double3" 15.005559899562481 9.5736640337728556 61.754538908938557 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode scaleConstraint -n "FKPS1Mouth1_R_scaleConstraint1" -p "FKPS1Mouth1_R";
	rename -uid "18D9FDDB-41EC-D50F-957F-F288580B6022";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouthBase_RW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKOffsetWingBase_L" -p "FKParentConstraintToRoot_M";
	rename -uid "09AD48AC-41F4-5C8B-A671-AD999118BDF7";
	setAttr ".t" -type "double3" -66.704225496525126 3.2099758029107872 0.10770794405086398 ;
	setAttr ".r" -type "double3" 1.5072923562602272e-05 110.67142851074661 0.51251686858186951 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "FKExtraWingBase_L" -p "FKOffsetWingBase_L";
	rename -uid "2120EB16-4447-A6BD-47AB-83A10B44C311";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWingBase_L" -p "FKExtraWingBase_L";
	rename -uid "BC991D97-4768-E57B-6D06-7E83B4F6FFFC";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWingBase_LShape" -p "FKWingBase_L";
	rename -uid "A66D3AD9-478D-1D7C-97C5-AE957B5F7DF9";
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
		-148.3008681 35.785699999999999 135.51952019999999
		-196.86192890000001 -2.5885134339999998e-13 180.01935929999999
		-148.30088259999999 -35.785699999999999 135.51951869999999
		-61.07659452 -50.608600000000003 -0.21203027969999999
		-93.904794519999996 -35.785699999999999 -110.2796776
		-121.4788945 -1.1257728469999999e-13 -155.436508
		-93.904794519999996 35.785699999999999 -110.2796776
		-61.07659452 50.608600000000003 -0.21203027969999999
		-148.3008681 35.785699999999999 135.51952019999999
		-196.86192890000001 -2.5885134339999998e-13 180.01935929999999
		-148.30088259999999 -35.785699999999999 135.51951869999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWingBase_L" -p "FKWingBase_L";
	rename -uid "F1F0A7E1-4372-674F-8BD7-DC81B327EC0B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing1_L" -p "FKXWingBase_L";
	rename -uid "CF32A99A-44D0-EFD9-68FD-C8A7D51BF4CA";
	setAttr ".r" -type "double3" 0.016707681578929792 -11.962066317053798 1.1758826994667613 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "FKGlobalWing1_L" -p "FKOffsetWing1_L";
	rename -uid "1CCFF0AD-41DF-0D2D-877D-F6A2A1E786AA";
createNode transform -n "FKExtraWing1_L" -p "FKGlobalWing1_L";
	rename -uid "F49CAB39-412B-11D2-E092-3C8E02A24CA5";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 1.6653345369377348e-16 7.1054273576010019e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing1_L" -p "FKExtraWing1_L";
	rename -uid "55537DAA-42DF-EE2D-E280-5B8834998A1C";
	addAttr -ci true -k true -sn "Global" -ln "Global" -dv 10 -min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -k on ".Global";
createNode nurbsCurve -n "FKWing1_LShape" -p "FKWing1_L";
	rename -uid "03BFD0FF-4B7F-1C0C-71D1-DC90EB9AEE3B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-42.152198249999998 30.533899999999999 117.52719999999999
		-42.152198249999998 -1.623701174e-15 166.20859999999999
		-42.152198249999998 -30.533899999999999 117.52719999999999
		-42.152198249999998 -43.181399999999996 3.5527136789999999e-15
		-42.152198249999998 -30.533899999999999 -107.9395
		-42.152198249999998 -1.623701174e-15 -152.08199999999999
		-42.152198249999998 30.533899999999999 -107.9395
		-42.152198249999998 43.181399999999996 3.5527136789999999e-15
		-42.152198249999998 30.533899999999999 117.52719999999999
		-42.152198249999998 -1.623701174e-15 166.20859999999999
		-42.152198249999998 -30.533899999999999 117.52719999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing1_L" -p "FKWing1_L";
	rename -uid "67CE0F9E-4EAC-844C-9549-74B3F19DD46C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing2_L" -p "FKXWing1_L";
	rename -uid "9C827ED6-46D4-D347-65A3-DCBC6089B068";
	setAttr ".r" -type "double3" 0.69394247055741987 1.5270339304762166 0.26777084294287978 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "FKExtraWing2_L" -p "FKOffsetWing2_L";
	rename -uid "001971F2-4975-D6B1-65C2-B486C26621F2";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing2_L" -p "FKExtraWing2_L";
	rename -uid "3D95673D-4947-B483-2C9D-04BFB5D5C937";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing2_LShape" -p "FKWing2_L";
	rename -uid "E93EE6DF-4ECA-89B9-173A-70B26BF196E2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 30.533899999999999 117.52719999999999
		0 0 166.20859999999999
		0 -30.533899999999999 117.52719999999999
		0 -43.181399999999996 0
		0 -30.533899999999999 -107.9395
		0 0 -152.08199999999999
		0 30.533899999999999 -107.9395
		0 43.181399999999996 0
		0 30.533899999999999 117.52719999999999
		0 0 166.20859999999999
		0 -30.533899999999999 117.52719999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing2_L" -p "FKWing2_L";
	rename -uid "0327FD07-4D6A-A809-C13C-FABAAB8F6217";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing3_L" -p "FKXWing2_L";
	rename -uid "CE2BDB09-44AB-EE74-F17E-599B6A492643";
	setAttr ".r" -type "double3" 0.3377801218529573 1.8618824604322031 -1.0477351171457818 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "FKExtraWing3_L" -p "FKOffsetWing3_L";
	rename -uid "79DE2038-4461-EBAF-92CE-5F8A5415FAD3";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing3_L" -p "FKExtraWing3_L";
	rename -uid "EC839822-4D2F-B51B-CAA1-02908643C1EF";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing3_LShape" -p "FKWing3_L";
	rename -uid "606B5E5E-4CF0-22DF-6271-BEA74A6B9557";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 23.520600000000002 90.532700000000006
		0 0 128.0326
		0 -23.520600000000002 90.532700000000006
		0 -33.263199999999998 0
		0 -23.520600000000002 -90.532700000000006
		0 0 -128.0326
		0 23.520600000000002 -90.532700000000006
		0 33.263199999999998 0
		0 23.520600000000002 90.532700000000006
		0 0 128.0326
		0 -23.520600000000002 90.532700000000006
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing3_L" -p "FKWing3_L";
	rename -uid "BAB62970-4BC8-AC46-0379-8EB135DA0FEF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing4_L" -p "FKXWing3_L";
	rename -uid "1CA80B65-4063-9028-EDA4-EBAA7B535E55";
	setAttr ".r" -type "double3" -0.10868284385722657 2.8838789701861409 -0.84230421117040111 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "FKExtraWing4_L" -p "FKOffsetWing4_L";
	rename -uid "95E7EDD9-4DEC-8FAB-DF30-138600971EF4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing4_L" -p "FKExtraWing4_L";
	rename -uid "16DCC51B-4C02-680A-8168-86B19E3F9D22";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing4_LShape" -p "FKWing4_L";
	rename -uid "7B258610-414A-C06A-40D1-89AFCDC95DA2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 25.958300000000001 77.293899999999994
		0 0 111.7983
		0 -25.958300000000001 77.293899999999994
		0 -36.710599999999999 -0.38529999999999998
		0 -25.958300000000001 -75.669899999999998
		0 0 -109.38630000000001
		0 25.958300000000001 -75.669899999999998
		0 36.710599999999999 -0.38529999999999998
		0 25.958300000000001 77.293899999999994
		0 0 111.7983
		0 -25.958300000000001 77.293899999999994
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing4_L" -p "FKWing4_L";
	rename -uid "F8D80899-42B3-B60E-A26A-13B0E635BC32";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing5_L" -p "FKXWing4_L";
	rename -uid "2ED44D2B-48B5-7349-AC34-33AD8AA2BDD1";
	setAttr ".r" -type "double3" 0.31949717286830287 1.9912137999137096 0.85453382496182506 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "FKExtraWing5_L" -p "FKOffsetWing5_L";
	rename -uid "147B9EDF-4804-4FAE-C86C-E9A23EF0B8F3";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing5_L" -p "FKExtraWing5_L";
	rename -uid "167FE6D7-4B0C-6406-12EB-1AB5FA16C9FC";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing5_LShape" -p "FKWing5_L";
	rename -uid "31474DE1-403E-7345-EE11-9090D69FF928";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 15.954700000000001 61.417299999999997
		0 0 86.847999999999999
		0 -15.954700000000001 61.417299999999997
		0 -22.563300000000002 3.8681999999999999
		0 -15.954700000000001 -51.600999999999999
		0 0 -76.006699999999995
		0 15.954700000000001 -51.600999999999999
		0 22.563300000000002 3.8681999999999999
		0 15.954700000000001 61.417299999999997
		0 0 86.847999999999999
		0 -15.954700000000001 61.417299999999997
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing5_L" -p "FKWing5_L";
	rename -uid "13A71ACF-42EA-9AA1-91B6-878AC2932F60";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetWing6_L" -p "FKXWing5_L";
	rename -uid "337F04DD-4B1B-6C51-DA0E-BAA8E5C637FD";
	setAttr ".r" -type "double3" -1.8045987310803646 4.0263687680789939 -1.3846241661162593 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "FKExtraWing6_L" -p "FKOffsetWing6_L";
	rename -uid "A10E7CDB-49F1-1D3E-367F-B0BCAA31C6FE";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWing6_L" -p "FKExtraWing6_L";
	rename -uid "6A25869B-4697-C41A-EF6F-BF879DBE041A";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWing6_LShape" -p "FKWing6_L";
	rename -uid "32997B74-4A9A-D7F9-1C19-B9A8CCEE8AA0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 11.432 46.461399999999998
		0 0 63.1233
		0 -11.432 46.461399999999998
		0 -16.167300000000001 7.9212999999999996
		0 -11.432 -31.6709
		0 0 -49.247599999999998
		0 11.432 -31.6709
		0 16.167300000000001 7.9212999999999996
		0 11.432 46.461399999999998
		0 0 63.1233
		0 -11.432 46.461399999999998
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXWing6_L" -p "FKWing6_L";
	rename -uid "D37E3412-43CD-0710-448A-67AE9BA9E95F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetWing6_L_pointConstraint1" -p "FKOffsetWing6_L";
	rename -uid "3C063013-41C0-4EF5-A39C-F6A87ACF415C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing6_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.2737367544323206e-13 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr ".rst" -type "double3" -44.693070637660128 -1.2079226507921703e-13 1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing6_L" -p "FKXWing5_L";
	rename -uid "3011B907-414A-0486-F545-87869A955AD6";
	setAttr ".t" -type "double3" 1.1368683772161603e-13 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing6_L" -p "FKPS1Wing6_L";
	rename -uid "3F6CCD0A-419A-54F9-6A65-7290027AA501";
	setAttr ".t" -type "double3" -44.693070637660128 -1.2079226507921703e-13 0 ;
	setAttr ".r" -type "double3" -1.8045987310803651 4.0263687680789912 -1.3846241661162595 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode scaleConstraint -n "FKPS1Wing6_L_scaleConstraint1" -p "FKPS1Wing6_L";
	rename -uid "D6640CF8-4AFE-FEEE-EB17-08A136418916";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing5_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing5_L_pointConstraint1" -p "FKOffsetWing5_L";
	rename -uid "8CD5747E-4D2D-781E-0A03-2CB259BFA16C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing5_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.2737367544323206e-13 1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" -72.715759867250881 4.2632564145606011e-14 -3.4106051316484809e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing5_L" -p "FKXWing4_L";
	rename -uid "147F556B-4AC9-EE8E-D656-19A05CD34392";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "FKPS2Wing5_L" -p "FKPS1Wing5_L";
	rename -uid "18FAB20A-484A-9F03-81B7-9C96794F3F72";
	setAttr ".t" -type "double3" -72.715759867250711 4.4408920985006262e-14 -3.5527136788005009e-13 ;
	setAttr ".r" -type "double3" 0.31949717286830309 1.9912137999137072 0.85453382496182528 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode scaleConstraint -n "FKPS1Wing5_L_scaleConstraint1" -p "FKPS1Wing5_L";
	rename -uid "6FFD13FE-4768-5CC4-522F-41A81DA03252";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing4_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing4_L_pointConstraint1" -p "FKOffsetWing4_L";
	rename -uid "1FA4BDDD-46E0-924F-105D-A893BCCA6C72";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing4_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.1368683772161603e-13 0 0 ;
	setAttr ".rst" -type "double3" -65.887185290147642 4.7073456244106637e-14 5.6843418860808015e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing4_L" -p "FKXWing3_L";
	rename -uid "06F6C02C-4BD5-DE4D-3D29-42B031F42E0B";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 8.8817841970012523e-16 0 ;
createNode transform -n "FKPS2Wing4_L" -p "FKPS1Wing4_L";
	rename -uid "51E27050-41E2-1C41-EDA0-30BB4448A02A";
	setAttr ".t" -type "double3" -65.887185290147698 4.5297099404706387e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -0.10868284385722657 2.8838789701861396 -0.84230421117040133 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode scaleConstraint -n "FKPS1Wing4_L_scaleConstraint1" -p "FKPS1Wing4_L";
	rename -uid "FF9FC25F-4168-45C1-6BD5-E88743DF7AE9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing3_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing3_L_pointConstraint1" -p "FKOffsetWing3_L";
	rename -uid "4EA918AB-47BA-0DC4-4DED-819B2301002C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing3_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 8.5265128291212022e-14 -4.4408920985006262e-16 -1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" -85.532998589299012 -4.9960036108132044e-14 4.2632564145606011e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing3_L" -p "FKXWing2_L";
	rename -uid "15E37061-4F31-6AAD-0B5F-A5927A0E104A";
	setAttr ".t" -type "double3" 0 -1.1102230246251565e-16 0 ;
createNode transform -n "FKPS2Wing3_L" -p "FKPS1Wing3_L";
	rename -uid "8AEC8E09-48AA-020E-3346-8B8827B5CAB2";
	setAttr ".t" -type "double3" -85.532998589299069 -4.8738790781044372e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0.33778012185295747 1.8618824604322026 -1.0477351171457818 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
createNode scaleConstraint -n "FKPS1Wing3_L_scaleConstraint1" -p "FKPS1Wing3_L";
	rename -uid "415DCD44-47E2-4DAD-DFE6-57A9378C8A07";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing2_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing2_L_pointConstraint1" -p "FKOffsetWing2_L";
	rename -uid "CB92D881-42BC-68BF-4DC7-21B4739F1C8F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing2_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 7.1054273576010019e-14 -5.5511151231257827e-16 0 ;
	setAttr ".rst" -type "double3" -90.134813631628944 -5.4067861299245124e-14 2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing2_L" -p "FKXWing1_L";
	rename -uid "5424548D-49F2-B414-DDF0-9B833BA279D2";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 2.2204460492503131e-16 0 ;
createNode transform -n "FKPS2Wing2_L" -p "FKPS1Wing2_L";
	rename -uid "46C5E909-4390-D4CD-F41C-8FB510BBCA67";
	setAttr ".t" -type "double3" -90.134813631628987 -5.3568260938163803e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0.69394247055741942 1.5270339304762151 0.26777084294287995 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode scaleConstraint -n "FKPS1Wing2_L_scaleConstraint1" -p "FKPS1Wing2_L";
	rename -uid "B1154E4E-4E48-A8E5-2C0F-458CE614DBCE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWing1_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetWing1_L_pointConstraint1" -p "FKOffsetWing1_L";
	rename -uid "B03646F4-4805-21EF-2926-44BAB759037E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Wing1_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.8421709430404007e-14 -2.2204460492503131e-16 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" -73.35345149040424 -1.5099033134902129e-14 -5.1159076974727213e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Wing1_L" -p "FKXWingBase_L";
	rename -uid "51476BF7-4BA5-A32A-2083-F4BD292A7F8A";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 1.4210854715202004e-14 ;
createNode transform -n "FKPS2Wing1_L" -p "FKPS1Wing1_L";
	rename -uid "94BEAD96-4ABD-DD22-DE91-CCBC5FBBA40B";
	setAttr ".t" -type "double3" -73.35345149040424 -1.4876988529977098e-14 -4.9737991503207013e-13 ;
	setAttr ".r" -type "double3" 0.016707681578929743 -11.962066317053802 1.1758826994667615 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
createNode scaleConstraint -n "FKPS1Wing1_L_scaleConstraint1" -p "FKPS1Wing1_L";
	rename -uid "384D57A4-43D4-7D0F-80A3-D6B1416F008B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWingBase_LW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKOffsetMouthBase_L" -p "FKParentConstraintToRoot_M";
	rename -uid "3E45B038-44CF-54F0-DED9-03963DAAD679";
	setAttr ".t" -type "double3" -66.70198062475859 3.2099996168795846 0.1077116096339986 ;
	setAttr ".r" -type "double3" 90.478401590139924 34.371716562392109 1.3598426339939167 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "FKExtraMouthBase_L" -p "FKOffsetMouthBase_L";
	rename -uid "967C3D7F-482C-F128-C3C1-A98F294FBEBB";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouthBase_L" -p "FKExtraMouthBase_L";
	rename -uid "FDDDDB5E-4086-D851-5230-C89448E264A2";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouthBase_LShape" -p "FKMouthBase_L";
	rename -uid "A0CDB7C8-4941-B186-23AF-BCB889902FD1";
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
		-119.9422 109.69110000000001 53.271799999999999
		-86.478999999999999 26.9359 49.2562
		-119.9422 -55.819299999999998 53.271799999999999
		-156.87479999999999 -51.373600000000003 0.038899999999999997
		-119.9422 -55.819299999999998 -53.194000000000003
		-86.478999999999999 26.9359 -49.178400000000003
		-119.9422 109.69110000000001 -53.194000000000003
		-156.87479999999999 105.2454 0.038899999999999997
		-119.9422 109.69110000000001 53.271799999999999
		-86.478999999999999 26.9359 49.2562
		-119.9422 -55.819299999999998 53.271799999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouthBase_L" -p "FKMouthBase_L";
	rename -uid "1E14F891-423B-0611-65A9-22A1E9725724";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth1_L" -p "FKXMouthBase_L";
	rename -uid "AFC883AE-4B6D-0C6E-2A52-72A965DFFCF3";
	setAttr ".r" -type "double3" 15.005559899562497 9.573664033772781 61.754538908938542 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "FKExtraMouth1_L" -p "FKOffsetMouth1_L";
	rename -uid "574C98CC-4806-A572-C5B6-B7A7D4D7687E";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth1_L" -p "FKExtraMouth1_L";
	rename -uid "93DA561D-46D0-9B26-A080-5A930437EED4";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth1_LShape" -p "FKMouth1_L";
	rename -uid "5D81959D-4814-131F-BD1C-0194D197A90E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 21.722999999999999 21.722999999999999
		0 0 30.7209
		0 -21.722999999999999 21.722999999999999
		0 -30.7209 0
		0 -21.722999999999999 -21.722999999999999
		0 0 -30.7209
		0 21.722999999999999 -21.722999999999999
		0 30.7209 0
		0 21.722999999999999 21.722999999999999
		0 0 30.7209
		0 -21.722999999999999 21.722999999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth1_L" -p "FKMouth1_L";
	rename -uid "66577AC0-497C-4700-511D-9BAB60E21351";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth2_L" -p "FKXMouth1_L";
	rename -uid "EB2637F7-4C2C-D3C8-F415-5D87B794E5B0";
	setAttr ".r" -type "double3" 2.7184761210373507 -3.1533950331836884 19.071402757124034 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "FKExtraMouth2_L" -p "FKOffsetMouth2_L";
	rename -uid "337C87C3-41B8-FCC8-ED3C-DAB99852F4DE";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth2_L" -p "FKExtraMouth2_L";
	rename -uid "A6A20B44-4278-6E2B-E6DC-E89155336FF9";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth2_LShape" -p "FKMouth2_L";
	rename -uid "E6B1781B-4446-8881-90CF-E29782DA2F19";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 17.979199999999999 17.979199999999999
		0 0 25.426400000000001
		0 -17.979199999999999 17.979199999999999
		0 -25.426400000000001 0
		0 -17.979199999999999 -17.979199999999999
		0 0 -25.426400000000001
		0 17.979199999999999 -17.979199999999999
		0 25.426400000000001 0
		0 17.979199999999999 17.979199999999999
		0 0 25.426400000000001
		0 -17.979199999999999 17.979199999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth2_L" -p "FKMouth2_L";
	rename -uid "2A68B145-4A62-192D-993A-8389381008BC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth3_L" -p "FKXMouth2_L";
	rename -uid "F412DF6F-448A-C107-E001-008039BE6101";
	setAttr ".r" -type "double3" 11.498087297866675 7.2075144329736478 9.1101652253446073 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraMouth3_L" -p "FKOffsetMouth3_L";
	rename -uid "695B0E18-4CE5-CEDD-039A-51A4B10FF36A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth3_L" -p "FKExtraMouth3_L";
	rename -uid "69EA9BCA-4970-DD23-3A41-F0BCA6667919";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth3_LShape" -p "FKMouth3_L";
	rename -uid "2197227E-4FA0-BF39-4822-CA8A626E284B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 15.333 15.333
		0 0 21.684100000000001
		0 -15.333 15.333
		0 -21.684100000000001 0
		0 -15.333 -15.333
		0 0 -21.684100000000001
		0 15.333 -15.333
		0 21.684100000000001 0
		0 15.333 15.333
		0 0 21.684100000000001
		0 -15.333 15.333
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth3_L" -p "FKMouth3_L";
	rename -uid "71BA7CBC-4E60-C213-71A6-C48648372773";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth4_L" -p "FKXMouth3_L";
	rename -uid "F659B542-4335-D1AF-0454-C08F09A4BD6A";
	setAttr ".r" -type "double3" 6.4837047724754218 8.9645464460135695 3.1861942419083431 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999944 ;
createNode transform -n "FKExtraMouth4_L" -p "FKOffsetMouth4_L";
	rename -uid "18620BBD-4F65-4690-B25A-97A3263D2EA5";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth4_L" -p "FKExtraMouth4_L";
	rename -uid "4009736A-411B-6BC1-67E9-0BB55AD8B4DB";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth4_LShape" -p "FKMouth4_L";
	rename -uid "5B09A1FC-4FB2-3E25-BC6C-A0B27E7630C7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 14.394299999999999 14.394299999999999
		0 0 20.3566
		0 -14.394299999999999 14.394299999999999
		0 -20.3566 0
		0 -14.394299999999999 -14.394299999999999
		0 0 -20.3566
		0 14.394299999999999 -14.394299999999999
		0 20.3566 0
		0 14.394299999999999 14.394299999999999
		0 0 20.3566
		0 -14.394299999999999 14.394299999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth4_L" -p "FKMouth4_L";
	rename -uid "89870980-4A25-57CA-6C7E-85A36C9AF7B5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetMouth5_L" -p "FKXMouth4_L";
	rename -uid "41F75657-4F0D-17A3-7028-E5B05EFD165A";
	setAttr ".r" -type "double3" -0.96042310143822052 1.8829856105334162 -8.4825237745865039 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "FKExtraMouth5_L" -p "FKOffsetMouth5_L";
	rename -uid "4BC2EB44-45A7-32F5-8864-02866910D6D0";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMouth5_L" -p "FKExtraMouth5_L";
	rename -uid "94E45D0F-487F-5558-B215-668E6CB221F5";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMouth5_LShape" -p "FKMouth5_L";
	rename -uid "8FBEEE1C-4CD2-DDF9-31B8-529FF77AB415";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 14.394299999999999 14.394299999999999
		0 0 20.3566
		0 -14.394299999999999 14.394299999999999
		0 -20.3566 0
		0 -14.394299999999999 -14.394299999999999
		0 0 -20.3566
		0 14.394299999999999 -14.394299999999999
		0 20.3566 0
		0 14.394299999999999 14.394299999999999
		0 0 20.3566
		0 -14.394299999999999 14.394299999999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXMouth5_L" -p "FKMouth5_L";
	rename -uid "749740C0-4957-30D3-255B-2F9671FD5E5D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetMouth5_L_pointConstraint1" -p "FKOffsetMouth5_L";
	rename -uid "5D3845EB-47A0-7CE7-D9BD-BCB476A07B54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth5_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -4.2632564145606011e-14 2.2737367544323206e-13 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" -21.425965792840671 7.673861546209082e-13 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth5_L" -p "FKXMouth4_L";
	rename -uid "902D8F37-477E-BC71-D6F5-0B841B069A99";
	setAttr ".t" -type "double3" 0 -5.6843418860808015e-14 0 ;
createNode transform -n "FKPS2Mouth5_L" -p "FKPS1Mouth5_L";
	rename -uid "B61832D3-4CFC-9A18-875C-D3B0EF3A0DD5";
	setAttr ".t" -type "double3" -21.425965792840643 6.5369931689929217e-13 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -0.96042310143822052 1.8829856105334164 -8.4825237745864932 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
createNode scaleConstraint -n "FKPS1Mouth5_L_scaleConstraint1" -p "FKPS1Mouth5_L";
	rename -uid "3D87B52A-4603-BD4C-ABD6-B8B799F5CD49";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth4_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth4_L_pointConstraint1" -p "FKOffsetMouth4_L";
	rename -uid "3BC37E32-4D48-5C0D-EA6F-9BA831883533";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth4_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.4210854715202004e-14 1.4210854715202004e-13 -2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" -21.605795401005267 0 -2.8421709430404007e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth4_L" -p "FKXMouth3_L";
	rename -uid "CAAD0005-45B1-9A08-80AC-28BC1AD2621E";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
createNode transform -n "FKPS2Mouth4_L" -p "FKPS1Mouth4_L";
	rename -uid "B2037F40-4BBE-26EC-AE32-43ACB9E6AF91";
	setAttr ".t" -type "double3" -21.605795401005281 -8.5265128291212022e-14 -2.8421709430404007e-13 ;
	setAttr ".r" -type "double3" 6.4837047724754209 8.9645464460135678 3.1861942419083435 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999933 ;
createNode scaleConstraint -n "FKPS1Mouth4_L_scaleConstraint1" -p "FKPS1Mouth4_L";
	rename -uid "8C31FF6B-48E8-E48D-EC08-0B905A3354FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth3_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth3_L_pointConstraint1" -p "FKOffsetMouth3_L";
	rename -uid "5D0DE14F-4D60-EDAC-74DB-CF9A2992F90B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth3_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 8.5265128291212022e-14 1.4210854715202004e-13 -1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" -20.262204395224913 -1.0231815394945443e-12 -9.9475983006414026e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth3_L" -p "FKXMouth2_L";
	rename -uid "CA08A3B5-479C-7802-8843-77A69FF663DE";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 0 ;
createNode transform -n "FKPS2Mouth3_L" -p "FKPS1Mouth3_L";
	rename -uid "B6FFECC7-4356-83AA-680A-029FD5DC5A37";
	setAttr ".t" -type "double3" -20.262204395224941 -1.1084466677857563e-12 -8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 11.498087297866675 7.2075144329736496 9.1101652253446126 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode scaleConstraint -n "FKPS1Mouth3_L_scaleConstraint1" -p "FKPS1Mouth3_L";
	rename -uid "984206FF-4AEB-9C3C-E1C1-18BB5BB32BD5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth2_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth2_L_pointConstraint1" -p "FKOffsetMouth2_L";
	rename -uid "DD8A7A33-4595-190C-F0A1-98A03611BA66";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth2_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.8421709430404007e-14 -5.6843418860808015e-14 1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" -24.592217789433022 8.5265128291212022e-14 5.6843418860808015e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth2_L" -p "FKXMouth1_L";
	rename -uid "0B5B643A-4FF9-DCD6-9EFF-4BAA14ED8EA1";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 2.8421709430404007e-14 -1.4210854715202004e-14 ;
createNode transform -n "FKPS2Mouth2_L" -p "FKPS1Mouth2_L";
	rename -uid "36890606-4974-18C8-CB0D-408C4C6C48DB";
	setAttr ".t" -type "double3" -24.592217789433022 8.5265128291212022e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 2.7184761210373529 -3.1533950331836862 19.071402757124019 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode scaleConstraint -n "FKPS1Mouth2_L_scaleConstraint1" -p "FKPS1Mouth2_L";
	rename -uid "422947E4-465C-AE92-3785-D39E655EAAD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouth1_LW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetMouth1_L_pointConstraint1" -p "FKOffsetMouth1_L";
	rename -uid "8E91F412-45A0-87CC-9847-D4B5351A3893";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Mouth1_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 -2.8421709430404007e-14 1.1102230246251565e-16 ;
	setAttr ".rst" -type "double3" -169.02689933781227 -9.2370555648813024e-14 -3.8569147875477938e-13 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Mouth1_L" -p "FKXMouthBase_L";
	rename -uid "5E803D8F-4DFA-46F5-8E60-B3AA399B75AC";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 3.3306690738754696e-16 ;
createNode transform -n "FKPS2Mouth1_L" -p "FKPS1Mouth1_L";
	rename -uid "6E1177F3-4F9B-49A1-6E28-A0884B6604B3";
	setAttr ".t" -type "double3" -169.02689933781227 -6.3948846218409017e-14 -3.8624659026709196e-13 ;
	setAttr ".r" -type "double3" 15.005559899562501 9.5736640337727881 61.754538908938557 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode scaleConstraint -n "FKPS1Mouth1_L_scaleConstraint1" -p "FKPS1Mouth1_L";
	rename -uid "A3691480-427D-FFFB-756A-76AA0355E418";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKMouthBase_LW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "9454D365-4FAE-08E0-5B8E-D9BFB0078557";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "8CA33A72-454B-6F0A-6C2E-B3A2E847C9EE";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "D6DAF353-4D56-76B9-E359-50BAD01DC60A";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "DCC87984-4198-09BD-D8D3-21B5449D0C17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		21
		95.963093967085044 0.80539966440734423 -198.21381695509004
		90.748920884379729 18.110527469698333 -188.51303792273831
		75.999229931732344 33.6336167925027 -160.34817106815271
		49.57533746065409 45.846239859295942 -116.4908675448533
		20.190421748295055 53.592725267972654 -61.261642381555966
		6.8024196656793618 56.235473723392566 2.660072445588383e-09
		20.190421748295055 53.592725267972654 61.261642397346897
		49.57533746065409 45.846239859295942 116.49086758362597
		75.999229931732344 33.6336167925027 160.34817112759174
		90.748920884379729 18.110527469698333 188.5130379937126
		95.963093967085044 0.80539966440734423 198.21381703014256
		90.748920884379501 -16.580680509437364 188.5130379937126
		75.999229931731918 -32.33276537940003 160.34817112759174
		49.57533746065355 -44.955631191881608 116.49086758362597
		20.190421748294316 -53.15833055604768 61.261642397346897
		6.8024196656785945 -56.008933730058459 2.660072445588383e-09
		20.190421748294316 -53.15833055604768 -61.261642381555966
		49.57533746065355 -44.955631191881608 -116.4908675448533
		75.999229931731918 -32.33276537940003 -160.34817106815271
		90.748920884379501 -16.580680509437364 -188.51303792273831
		95.963093967085044 0.80539966440734423 -198.21381695509004
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "3A1D9670-4AE6-1219-26A5-BC96DDE5FFE8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetTailBase_M" -p "FKXRoot_M";
	rename -uid "B7A971BF-4F1A-687B-A6D2-B2A1681CF277";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "FKGlobalTailBase_M" -p "FKOffsetTailBase_M";
	rename -uid "03DAD50E-46C7-0823-3B01-C89FAD9BA19B";
createNode transform -n "FKExtraTailBase_M" -p "FKGlobalTailBase_M";
	rename -uid "23D82C01-4885-8403-5AA3-C1A62238B66F";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.1359030627651384e-24 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTailBase_M" -p "FKExtraTailBase_M";
	rename -uid "4183E415-489B-B400-4B37-CB866B40D11B";
	addAttr -ci true -k true -sn "Global" -ln "Global" -dv 10 -min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -k on ".Global";
createNode nurbsCurve -n "FKTailBase_MShape" -p "FKTailBase_M";
	rename -uid "7A58E3A6-49EA-8FAB-FD10-FE8E8338709F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.312215460000001 -37.900824309999997 -120.0016337
		77.199788999999996 0.27236424399999998 -152.04091679999999
		16.355580199999999 37.977149019999999 -119.9602553
		0.33073505399999997 53.65430637 1.3683335230000001e-10
		16.355580199999999 37.977149019999999 119.9602553
		77.199788999999996 0.27236424399999998 152.04091690000001
		16.312215460000001 -37.900824309999997 120.0016337
		0.32570192879999998 -53.653190619999997 1.3491094910000001e-10
		16.312215460000001 -37.900824309999997 -120.0016337
		77.199788999999996 0.27236424399999998 -152.04091679999999
		16.355580199999999 37.977149019999999 -119.9602553
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTailBase_M" -p "FKTailBase_M";
	rename -uid "82FCFC44-4D42-43BE-2E91-9F8F38625A7A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetTail1_M" -p "FKXTailBase_M";
	rename -uid "3275D28B-4396-695E-856C-2A89EFC93392";
	setAttr ".r" -type "double3" 0 0 0.31042102540010541 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "FKExtraTail1_M" -p "FKOffsetTail1_M";
	rename -uid "9E63C182-40A4-F5D9-9592-F0B3FEF3A1C0";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTail1_M" -p "FKExtraTail1_M";
	rename -uid "32EAD7E5-4D46-AD17-9913-2B8547B03143";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKTail1_MShape" -p "FKTail1_M";
	rename -uid "FB2219E4-4E4C-1ECA-D353-F9876D913B87";
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
		16.312215460000001 -37.900824309999997 -120.0016337
		77.199788999999996 0.27236424399999998 -152.04091679999999
		16.355580199999999 37.977149019999999 -119.9602553
		0.33073505399999997 53.65430637 1.3683335230000001e-10
		16.355580199999999 37.977149019999999 119.9602553
		77.199788999999996 0.27236424399999998 152.04091690000001
		16.312215460000001 -37.900824309999997 120.0016337
		0.32570192879999998 -53.653190619999997 1.3491094910000001e-10
		16.312215460000001 -37.900824309999997 -120.0016337
		77.199788999999996 0.27236424399999998 -152.04091679999999
		16.355580199999999 37.977149019999999 -119.9602553
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTail1_M" -p "FKTail1_M";
	rename -uid "D5AEC8AA-456C-9D1A-4474-B5965769F091";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "AlignIKToTail1_M" -p "FKXTail1_M";
	rename -uid "81D87F55-4AC1-7C6E-FA43-008223B446A3";
	setAttr ".t" -type "double3" 0 0 9.9261673506363321e-24 ;
	setAttr ".r" -type "double3" 0.20214118619616822 -89.999999977595238 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FKOffsetTail2_M" -p "FKXTail1_M";
	rename -uid "4B4E01DB-477A-061E-00B6-B48A995BB86C";
	setAttr ".r" -type "double3" 0 0 0.20214118619616822 ;
createNode transform -n "FKExtraTail2_M" -p "FKOffsetTail2_M";
	rename -uid "5F0E3D33-4528-F9A2-7103-38979833E60A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTail2_M" -p "FKExtraTail2_M";
	rename -uid "6FD70913-47BB-DDA8-7DD9-A191311F3C4E";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKTail2_MShape" -p "FKTail2_M";
	rename -uid "811A48E3-4738-1495-D760-A0A74D0BBF1D";
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
		-1.961396387e-24 -37.938923780000003 -75.995710450000004
		-2.7738335620000001e-24 7.7776103349999997e-15 -107.4741717
		-1.961396387e-24 37.938923780000003 -75.995710450000004
		-2.150078814e-14 53.653744209999999 -3.5395249949999998e-14
		1.961396387e-24 37.938923780000003 75.995710450000004
		2.7738335620000001e-24 1.9723278769999998e-14 107.4741717
		1.961396387e-24 -37.938923780000003 75.995710450000004
		2.150078814e-14 -53.653744209999999 5.5827523489999997e-14
		-1.961396387e-24 -37.938923780000003 -75.995710450000004
		-2.7738335620000001e-24 7.7776103349999997e-15 -107.4741717
		-1.961396387e-24 37.938923780000003 -75.995710450000004
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTail2_M" -p "FKTail2_M";
	rename -uid "6F39ED81-44FA-EF7C-5B32-7BAE8D61F917";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetTail3_M" -p "FKXTail2_M";
	rename -uid "AE487424-49D2-B1BD-0944-C2B0A674B0E4";
createNode transform -n "FKExtraTail3_M" -p "FKOffsetTail3_M";
	rename -uid "EAE99E9A-47D1-7DE6-7B46-E289FB76E756";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTail3_M" -p "FKExtraTail3_M";
	rename -uid "441BD448-4EFF-B0A0-CAF7-02BC59F1445D";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKTail3_MShape" -p "FKTail3_M";
	rename -uid "FB2DE1C5-4641-2745-04B3-05B369DA28A3";
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
		-1.961396387e-24 -26.691088730000001 -26.691089269999999
		-2.7738335620000001e-24 2.63635242e-07 -37.746902910000003
		-1.961396387e-24 26.691089259999998 -26.691089269999999
		-2.150078814e-14 37.746902900000002 -2.756290501e-07
		1.961396387e-24 26.691089259999998 26.69108872
		2.7738335620000001e-24 2.636352504e-07 37.74690236
		1.961396387e-24 -26.691088730000001 26.69108872
		2.150078814e-14 -37.746902370000001 -2.7562901809999999e-07
		-1.961396387e-24 -26.691088730000001 -26.691089269999999
		-2.7738335620000001e-24 2.63635242e-07 -37.746902910000003
		-1.961396387e-24 26.691089259999998 -26.691089269999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTail3_M" -p "FKTail3_M";
	rename -uid "8DD8208F-4D2F-636C-A27A-DCB12F77FBF6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetTail4_M" -p "FKXTail3_M";
	rename -uid "B7A4EF3A-41A2-3397-4DF4-C48A72067BA3";
createNode transform -n "FKExtraTail4_M" -p "FKOffsetTail4_M";
	rename -uid "2D02B591-44A3-9C50-1C08-6DAF67FE5770";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTail4_M" -p "FKExtraTail4_M";
	rename -uid "B1FAE690-447F-4205-543F-90905C47B9A8";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKTail4_MShape" -p "FKTail4_M";
	rename -uid "8858D091-4013-B01D-8C2F-9BB1526582B1";
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
		-1.961396387e-24 -26.691089000000002 -26.691089000000002
		-2.7738335620000001e-24 1.3207678679999999e-09 -37.746902630000001
		-1.961396387e-24 26.691089000000002 -26.691089000000002
		-2.150078814e-14 37.746902630000001 -1.3808627630000001e-09
		1.961396387e-24 26.691089000000002 26.691089000000002
		2.7738335620000001e-24 1.3207762720000001e-09 37.746902630000001
		1.961396387e-24 -26.691089000000002 26.691089000000002
		2.150078814e-14 -37.746902630000001 -1.380830724e-09
		-1.961396387e-24 -26.691089000000002 -26.691089000000002
		-2.7738335620000001e-24 1.3207678679999999e-09 -37.746902630000001
		-1.961396387e-24 26.691089000000002 -26.691089000000002
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTail4_M" -p "FKTail4_M";
	rename -uid "6DCBD8B8-4A8A-F650-AA10-6C9C09F8F0B8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetTail5_M" -p "FKXTail4_M";
	rename -uid "96618360-4186-E463-517D-E7A6592A4DBF";
createNode transform -n "FKExtraTail5_M" -p "FKOffsetTail5_M";
	rename -uid "8BE48618-4E1F-87F8-2CBF-FCB0E9487638";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKTail5_M" -p "FKExtraTail5_M";
	rename -uid "6468FBE9-4B58-0C4E-AE4A-4AB2715BDEE0";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKTail5_MShape" -p "FKTail5_M";
	rename -uid "1CF0620D-4B71-664C-BAF3-E691F00BF104";
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
		-1.961396387e-24 -26.691089259999998 -26.69108872
		-2.7738335620000001e-24 -2.6363523130000002e-07 -37.74690236
		-1.961396387e-24 26.691088730000001 -26.69108872
		-2.150078814e-14 37.746902370000001 2.7562902800000001e-07
		1.961396387e-24 26.691088730000001 26.691089269999999
		2.7738335620000001e-24 -2.6363522290000001e-07 37.746902910000003
		1.961396387e-24 -26.691089259999998 26.691089269999999
		2.150078814e-14 -37.746902900000002 2.7562905999999997e-07
		-1.961396387e-24 -26.691089259999998 -26.69108872
		-2.7738335620000001e-24 -2.6363523130000002e-07 -37.74690236
		-1.961396387e-24 26.691088730000001 -26.69108872
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXTail5_M" -p "FKTail5_M";
	rename -uid "16EF1408-4BD9-8102-EEE7-968873B0DF77";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "AlignIKToTail6_M" -p "FKXTail5_M";
	rename -uid "FD30E02D-4BE3-CAC7-DA57-94972D0A4784";
	setAttr ".t" -type "double3" 53.688629150390625 4.7175084638695353e-07 -4.9321265687126482e-07 ;
	setAttr ".r" -type "double3" 0 -89.999999496055537 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "FKXTail6_M" -p "FKXTail5_M";
	rename -uid "8F6832B2-4B56-FCF4-6CB5-AC957D4F054D";
	setAttr ".t" -type "double3" 53.688629150390625 4.7175084638695353e-07 -4.9321265687126482e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetTail5_M_pointConstraint1" -p "FKOffsetTail5_M";
	rename -uid "C4D596F3-4DA7-9E69-1B9A-C880298F7CFF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Tail5_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -5.6843418860808015e-14 -3.5527136788005009e-15 2.1175823681357508e-22 ;
	setAttr ".rst" -type "double3" 101.70901489257812 8.936960451677578e-07 -9.343537967048013e-07 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Tail5_M" -p "FKXTail4_M";
	rename -uid "74E7C406-4695-7F36-EA81-C28485426064";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "FKPS2Tail5_M" -p "FKPS1Tail5_M";
	rename -uid "CA41A3F7-4068-5544-340E-CBB7DF8BE299";
	setAttr ".t" -type "double3" 101.70901489257812 8.9369604694411464e-07 -9.3435379670480109e-07 ;
createNode scaleConstraint -n "FKPS1Tail5_M_scaleConstraint1" -p "FKPS1Tail5_M";
	rename -uid "495C713A-4776-79A4-16B0-B7B43A410F7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKTail4_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetTail4_M_pointConstraint1" -p "FKOffsetTail4_M";
	rename -uid "8F226900-4E26-91F0-C921-688552C59D60";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Tail4_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.1368683772161603e-13 -1.7763568394002505e-15 1.0587911840678754e-22 ;
	setAttr ".rst" -type "double3" 100.69500732421864 8.8478618742726667e-07 -9.2503857677076123e-07 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Tail4_M" -p "FKXTail3_M";
	rename -uid "DC28AC9A-4725-E7BB-85DD-A39D057C4572";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "FKPS2Tail4_M" -p "FKPS1Tail4_M";
	rename -uid "25603392-4715-03E6-05E2-1FA4D6F67D49";
	setAttr ".t" -type "double3" 100.69500732421869 8.8478618831544509e-07 -9.2503857677076134e-07 ;
createNode scaleConstraint -n "FKPS1Tail4_M_scaleConstraint1" -p "FKPS1Tail4_M";
	rename -uid "F0C5CDC1-4BE4-9D34-B2BA-538AE3C5F42F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKTail3_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetTail3_M_pointConstraint1" -p "FKOffsetTail3_M";
	rename -uid "FDF46D82-46E3-B62D-24BA-E8BC1BF76326";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Tail3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 -2.1175823681357508e-22 ;
	setAttr ".rst" -type "double3" 95.502555268487299 8.3916109439030606e-07 -8.7733791416687983e-07 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Tail3_M" -p "FKXTail2_M";
	rename -uid "19C9517E-42C4-6089-98B1-5F8478E5D784";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 8.2718061255302767e-25 ;
createNode transform -n "FKPS2Tail3_M" -p "FKPS1Tail3_M";
	rename -uid "98549B10-49B6-2122-E3F2-5E8232F957F0";
	setAttr ".t" -type "double3" 95.502555268487271 8.391610961666629e-07 -8.7733791416687983e-07 ;
createNode scaleConstraint -n "FKPS1Tail3_M_scaleConstraint1" -p "FKPS1Tail3_M";
	rename -uid "F65B7892-4097-1D86-354A-9985D849186D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKTail2_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetTail2_M_pointConstraint1" -p "FKOffsetTail2_M";
	rename -uid "B5AEFF02-424B-B32B-8448-6E8495BC7F29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Tail2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -7.1054273576010019e-14 1.7763568394002505e-15 -4.0531850015098356e-23 ;
	setAttr ".rst" -type "double3" 95.788339334080263 9.7877261850953801e-13 2.4913385826767181e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Tail2_M" -p "FKXTail1_M";
	rename -uid "E5AAD1CB-43D2-2030-AB1F-24A27AED604D";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.4446255129772491e-24 ;
createNode transform -n "FKPS2Tail2_M" -p "FKPS1Tail2_M";
	rename -uid "B6F4FB18-40B6-A678-E9D8-7689483C7D1E";
	setAttr ".t" -type "double3" 95.788339334080277 9.7877261850953801e-13 2.4913385840829251e-14 ;
	setAttr ".r" -type "double3" 0 0 0.20214118619616822 ;
createNode scaleConstraint -n "FKPS1Tail2_M_scaleConstraint1" -p "FKPS1Tail2_M";
	rename -uid "01BCF6CF-476D-0AD5-1990-29A650D8834E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKTail1_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetTail1_M_pointConstraint1" -p "FKOffsetTail1_M";
	rename -uid "11541FC1-4D7A-9F55-854A-B9A1A9798A99";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Tail1_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 7.1054273576010019e-15 2.6645352591003757e-15 6.6174449004242214e-24 ;
	setAttr ".rst" -type "double3" 16.175911952310152 8.8817841970012523e-15 1.0775321932616589e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Tail1_M" -p "FKXTailBase_M";
	rename -uid "0B8A3DE1-427C-0665-A4EB-D48767C0C7E2";
	setAttr ".t" -type "double3" 0 0 -4.1359030627651384e-24 ;
createNode transform -n "FKPS2Tail1_M" -p "FKPS1Tail1_M";
	rename -uid "21D0BA56-46AA-7DFB-B732-E084ADE12502";
	setAttr ".t" -type "double3" 16.175911952310145 7.1054273576010019e-15 1.0775321932616589e-14 ;
	setAttr ".r" -type "double3" 0 0 0.31042102540010547 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode scaleConstraint -n "FKPS1Tail1_M_scaleConstraint1" -p "FKPS1Tail1_M";
	rename -uid "9226D6CD-4C28-A273-7EFF-87A5A9ED47D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKTailBase_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetTailBase_M_pointConstraint1" -p "FKOffsetTailBase_M";
	rename -uid "70DA7E25-4D4A-2941-F37A-E7A2CC5FFA71";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2TailBase_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -4.2632564145606011e-14 2.6645352591003757e-15 6.6174449004242214e-24 ;
	setAttr ".rst" -type "double3" 67.284031304243172 8.8817841970012523e-16 4.4820168435373798e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1TailBase_M" -p "FKXRoot_M";
	rename -uid "E32745D4-4D16-0E59-CA08-5DA60EF5BEE0";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.2718061255302767e-25 ;
createNode transform -n "FKPS2TailBase_M" -p "FKPS1TailBase_M";
	rename -uid "886D657E-46F7-D483-C54F-7793975BA51E";
	setAttr ".t" -type "double3" 67.284031304243172 0 4.4820168428756353e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode scaleConstraint -n "FKPS1TailBase_M_scaleConstraint1" -p "FKPS1TailBase_M";
	rename -uid "317C8C9C-4E42-D84A-4C10-61853142933E";
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
	rename -uid "63F77201-4CB6-BA85-A6CA-78B995BA871C";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "AAB22BBE-4372-29BE-A8B2-9A9A181C6EFC";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "61949A2E-4D93-B227-B307-32AD5D012B1C";
createNode transform -n "IKParentConstraintTail1_M" -p "IKJoints";
	rename -uid "20BED3A5-4847-F07D-1A1A-BD9E0C8D0DA7";
	setAttr ".t" -type "double3" -2.6310245699226463e-08 -5.826994284781235 -57.632825531649218 ;
	setAttr ".r" -type "double3" -90.000002504481714 89.487437788403724 -90.000002504481714 ;
createNode transform -n "IKXOffsetTail1_M" -p "IKParentConstraintTail1_M";
	rename -uid "D66102EE-4B66-C0A4-92B3-C69AF4924C59";
	setAttr ".t" -type "double3" 16.175911952310152 9.7699626167013776e-15 1.0775321929307867e-14 ;
	setAttr ".r" -type "double3" 0 0 0.31042102540010547 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "IKXTail1_M" -p "IKXOffsetTail1_M";
	rename -uid "684363A2-4CCE-3EB3-EAB0-F7A3CF97F5D7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail1_M" -p "IKXTail1_M";
	rename -uid "0B67DB77-46DA-B7FB-3494-6697CEDFAE43";
	setAttr ".rp" -type "double3" 0 0 -3.3087224502121107e-24 ;
	setAttr ".sp" -type "double3" 0 0 -3.3087224502121107e-24 ;
createNode joint -n "IKXTail2_M" -p "IKXTail1_M";
	rename -uid "D5ACB57F-4035-F7A5-E551-00B2F547C215";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail2_M" -p "IKXTail2_M";
	rename -uid "6F95A62D-4C0A-C61F-7DF5-73B00E55E983";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -1.1580528575742387e-23 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -1.1580528575742387e-23 ;
createNode joint -n "IKXTail3_M" -p "IKXTail2_M";
	rename -uid "1F7EE02E-4AB6-2DE8-9070-7A887BB7E5B1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail3_M" -p "IKXTail3_M";
	rename -uid "0B76D30A-4AD1-C3B1-0503-26A203AB3B0B";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 0 2.6469779601696886e-23 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 0 2.6469779601696886e-23 ;
createNode joint -n "IKXTail4_M" -p "IKXTail3_M";
	rename -uid "D7F19330-4C29-0EF7-5800-2696CD14DA58";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail4_M" -p "IKXTail4_M";
	rename -uid "F7B15A7E-4DA7-C4AC-9294-019B6273E66B";
	setAttr ".rp" -type "double3" -5.6843418860808015e-14 0 3.9704669402545328e-22 ;
	setAttr ".sp" -type "double3" -5.6843418860808015e-14 0 3.9704669402545328e-22 ;
createNode joint -n "IKXTail5_M" -p "IKXTail4_M";
	rename -uid "4A09AFF2-42C5-83E6-0823-019E5D5B0463";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail5_M" -p "IKXTail5_M";
	rename -uid "6BD108C1-45EF-A588-E7FC-E5A9EFD96DFC";
	setAttr ".rp" -type "double3" -5.6843418860808015e-14 0 -8.4703294725430034e-22 ;
	setAttr ".sp" -type "double3" -5.6843418860808015e-14 0 -8.4703294725430034e-22 ;
createNode joint -n "IKXTail6_M" -p "IKXTail5_M";
	rename -uid "45AC0039-4864-EEA5-BFF9-F1916515DC22";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Tail6_M" -p "IKXTail6_M";
	rename -uid "44B01A9F-4FB0-9756-976B-F880C43B82B3";
	setAttr ".rp" -type "double3" 1.1368683772161603e-13 -8.8817841970012523e-16 -1.0587911840678754e-22 ;
	setAttr ".sp" -type "double3" 1.1368683772161603e-13 -8.8817841970012523e-16 -1.0587911840678754e-22 ;
createNode joint -n "IKfake0SplineTail_M" -p "IKParentConstraintTail1_M";
	rename -uid "B52DB9D7-462D-DB7A-B659-F8A60D62EB61";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 16.175911952310123 -7.2871639300586821e-07 3.263556434861807e-08 ;
	setAttr ".r" -type "double3" 1.2074133411913368e-06 -1.3377841966027282e-08 0.042216384153584426 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.2353941116302264e-13 2.1510902026712061e-15 0.31042102540010985 ;
createNode joint -n "IKSpTail2_M" -p "IKfake0SplineTail_M";
	rename -uid "B6FEC810-4573-B064-59A6-07804AE69571";
	setAttr ".t" -type "double3" 95.788337707519531 9.7077901273223688e-13 8.5124997972832354e-14 ;
	setAttr ".r" -type "double3" 1.2074060703212837e-06 -7.3087190796046592e-08 -0.084559905466345647 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.2354311966592317e-13 -4.8783904297413497e-17 0.20214118619616375 ;
createNode joint -n "IKSpTail3_M" -p "IKSpTail2_M";
	rename -uid "3789E214-4F17-C7F2-9350-E9B59C0A991E";
	setAttr ".t" -type "double3" 95.502555847167969 8.3916109350212764e-07 -7.469093428024219e-08 ;
	setAttr ".r" -type "double3" 1.2074254356300798e-06 -7.0228924632708044e-08 0.04234301784462486 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2354311966588197e-13 4.8783907259535894e-17 -8.5883581794310997e-29 ;
createNode joint -n "IKSpTail4_M" -p "IKSpTail3_M";
	rename -uid "95899D52-4324-53BB-4E6B-09913487D8E8";
	setAttr ".t" -type "double3" 100.69500732421875 8.8478618831544509e-07 -7.8751864428565888e-08 ;
	setAttr ".r" -type "double3" -1.7075472925031877e-06 -1.500386546681035e-14 1.3354442233110818e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2354311966588197e-13 4.8783907259535894e-17 -8.5883581794310997e-29 ;
createNode joint -n "IKSpTail5_M" -p "IKSpTail4_M";
	rename -uid "5BF381FF-4CAE-6ECF-8266-AAB41780D0F0";
	setAttr ".t" -type "double3" 101.70900726318359 8.9369604605593622e-07 -7.9544902835232406e-08 ;
	setAttr ".r" -type "double3" 1.2074182697257333e-06 1.0609333901404717e-14 -9.4430109915116001e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2354311966588197e-13 4.8783907259535894e-17 -8.5883581794310997e-29 ;
createNode joint -n "IKSpTail6_M" -p "IKSpTail5_M";
	rename -uid "DB095BF5-46DF-2801-5CD6-9E9644427820";
	setAttr ".t" -type "double3" 53.688629150390625 4.7175084905148879e-07 -4.1988960074180796e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2354311966588197e-13 4.8783907259535894e-17 -8.5883581794310997e-29 ;
createNode joint -n "IKfake1SplineTail_M" -p "IKSpTail5_M";
	rename -uid "6B41D8F4-4358-691C-3CD5-C2B2D85A1F80";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 53.688629150390625 4.7175084905148879e-07 -4.1988960074180823e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.563094389512912e-27 0 0 ;
createNode ikEffector -n "IKSplineTailEffector_M" -p "IKSpTail5_M";
	rename -uid "487AD5B7-43BA-16C2-950D-5693FAB5CBD0";
	setAttr -l on ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IKFixedOrientTail1_M" -p "IKfake0SplineTail_M";
	rename -uid "0C6FFCF1-404C-13D1-EB3A-B7911AED25BE";
createNode transform -n "IKSpSplineTailOffset_M" -p "IKJoints";
	rename -uid "83CC1CE6-4EEF-5E63-D18B-7EB4888E13EC";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480153 ;
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode joint -n "IKSpTail1_M" -p "IKSpSplineTailOffset_M";
	rename -uid "12FED5AF-4DCF-0601-1300-4B9AF3918B1F";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 0 2.3161057151484775e-23 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2353941116299961e-13 -2.1510901997090846e-15 -4.52235118770594e-15 ;
createNode transform -n "IKSpTail1FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "0257F21C-4F8A-6456-66A6-39AA521A0A96";
createNode transform -n "IKSpTail2FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "96635B6E-4434-74C6-6649-9D80AE23BF1C";
createNode transform -n "IKSpTail3FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "BF136A67-4959-DB65-4D53-6CB9589CD82E";
createNode transform -n "IKSpTail4FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "7BA86CCF-4265-F0E1-ADAC-9E96AC845FCF";
createNode transform -n "IKSpTail5FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "B464027B-45A2-D8E7-0869-95A17C76DA84";
createNode transform -n "IKSpTail6FollowOffset_M" -p "IKSpSplineTailOffset_M";
	rename -uid "69A8DA22-40C7-7522-4830-EB826ADDFD9C";
createNode transform -n "IKAcSplineTailOffset_M" -p "IKJoints";
	rename -uid "545D1733-4755-B162-6804-B7A8A4F9BB52";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -3.2635553631605015e-08 -5.9717004164848895 -73.808090216480153 ;
	setAttr ".r" -type "double3" -90.000006350446398 89.797858813803828 -90.000006350507689 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "IKAcTail1_M" -p "IKAcSplineTailOffset_M";
	rename -uid "72ECEDB5-404C-9E78-C9EE-0ABD6CC12AB7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "IKAcTail2_M" -p "IKAcSplineTailOffset_M";
	rename -uid "8AC572B6-4C73-85D6-0FC1-878BECCAD37D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "IKAcTail3_M" -p "IKAcSplineTailOffset_M";
	rename -uid "2EA8CA83-446E-D0A0-A8DB-C990085DEFFD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "IKAcTail4_M" -p "IKAcSplineTailOffset_M";
	rename -uid "E91027BE-487A-6031-2C40-C8906B8F83EC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "IKAcTail5_M" -p "IKAcSplineTailOffset_M";
	rename -uid "0F281F16-406D-DAB2-F730-3FBB0C806649";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "IKAcTail6_M" -p "IKAcSplineTailOffset_M";
	rename -uid "F8A38455-4C7D-B8E7-6A51-9EBA78CD9310";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "IKAcSplineTailOffset3_M" -p "IKJoints";
	rename -uid "73FB2311-48AE-D836-5C98-D9A525CD5633";
	setAttr ".it" no;
createNode transform -n "IKAcPociXformTail1_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "CB60F696-4A29-D6D8-BC3B-548F7B6F9A90";
createNode transform -n "IKAcPociXformTail2_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "E39BF612-4EB1-AD51-66DD-068E48DF1302";
createNode transform -n "IKAcPociXformTail3_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "EFA6C64C-47FB-73BD-7DD0-1789E6CD0D15";
createNode transform -n "IKAcPociXformTail4_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "1B80AAC1-45DE-DEF8-0517-65995E3E8C36";
createNode transform -n "IKAcPociXformTail5_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "59AA20C5-4BCA-D8F7-6E9A-F5B7B9C17BA9";
createNode transform -n "IKAcPociXformTail6_M" -p "IKAcSplineTailOffset3_M";
	rename -uid "58EAD3A0-492D-C347-4A81-B59EDBDB67D2";
createNode transform -n "IKAcSplineTailOffset2_M" -p "IKJoints";
	rename -uid "7EB6C29D-4FD3-3FA1-9921-978A64AD9C76";
	setAttr ".t" -type "double3" -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480153 ;
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999956 ;
createNode transform -n "IKAcTail1FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "DBCF781B-4174-D246-153C-B8A382FCF145";
createNode transform -n "IKAcTail2FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "4149E1C7-4880-A880-6191-68970A6138EF";
createNode transform -n "IKAcTail3FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "F667EBD0-44C4-3E3D-5D08-7DA64AD85FFE";
createNode transform -n "IKAcTail4FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "B4ABCD58-4183-FEC7-2EFC-86AE1E0B98C4";
createNode transform -n "IKAcTail5FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "432DA156-49FD-8A82-321E-8988CABC9F02";
createNode transform -n "IKAcTail6FollowOffset_M" -p "IKAcSplineTailOffset2_M";
	rename -uid "22305666-4291-80CB-2026-6BACFF7CA2AE";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "94C81E18-419E-EEEB-A0B7-79AB328439A4";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "DD21A360-4731-C653-26A5-9CBD2FADE3E4";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "70554563-4AAD-7290-6065-BEBD47DEAB3F";
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
	rename -uid "B6FDEC89-4938-9387-471B-A19F10EE83FC";
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
createNode transform -n "IKFollowEndSplineTail_M" -p "IKHandleFollowMain";
	rename -uid "9802F9D3-460B-4C4D-E405-0790AE4961C7";
createNode transform -n "IKFollowEndSplineTail1_M" -p "IKFollowEndSplineTail_M";
	rename -uid "6282F60B-40E3-FE80-8332-D3B026765455";
createNode parentConstraint -n "IKFollowEndSplineTail1_M_parentConstraint1" -p "IKFollowEndSplineTail1_M";
	rename -uid "886AB543-46D8-54F0-40A8-EBA46B042818";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail1X_MW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" -3.2635553631605008e-08 -5.9717004164848895 -73.808090216480153 ;
	setAttr -k on ".w0";
createNode transform -n "IKFollowEndSplineTail4_M" -p "IKFollowEndSplineTail_M";
	rename -uid "5CA3E4AB-4D24-5095-8DAC-E5849122D500";
createNode parentConstraint -n "IKFollowEndSplineTail4_M_parentConstraint1" -p "IKFollowEndSplineTail4_M";
	rename -uid "BE14CD63-4BDB-2A3D-244A-1581AB63834D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail4X_MW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" -3.4375210810574575e-06 -6.3096406892936443 -521.19104004858275 ;
	setAttr -k on ".w0";
createNode transform -n "IKFollowEndSplineTail1_M1" -p "IKFollowEndSplineTail_M";
	rename -uid "A6823374-48D5-20D1-7AB8-6BBE02A45929";
createNode transform -n "IKFollowEndSplineTail4_M1" -p "IKFollowEndSplineTail_M";
	rename -uid "8A61BA2B-48BD-31E7-74EF-E48BFBA1A2B8";
createNode transform -n "IKOffsetSplineTail2_M" -p "IKHandleFollowMain";
	rename -uid "5C136223-471D-6C88-494E-068C7B264904";
createNode transform -n "IKExtraSplineTail2_M" -p "IKOffsetSplineTail2_M";
	rename -uid "8C965C55-4E65-E95D-3289-7EB2478C1999";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSplineTail2_M" -p "IKExtraSplineTail2_M";
	rename -uid "544B9A6D-4E81-1558-F607-AB89E583E365";
	addAttr -ci true -k true -sn "followEnd" -ln "followEnd" -dv 3.333333333333333 
		-min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -k on ".followEnd";
createNode transform -n "IKSplineTail2X_M" -p "IKSplineTail2_M";
	rename -uid "061E0F99-4301-DB4C-A0EB-6F88EC642FEA";
createNode parentConstraint -n "IKSplineTail2X_M_parentConstraint1" -p "IKSplineTail2X_M";
	rename -uid "0C50F933-46C6-00C3-806D-8290D7FB7076";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail2_MW0" -dv 1 -min 0 -at "double";
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
createNode nurbsCurve -n "IKSplineTail2_MShape" -p "IKSplineTail2_M";
	rename -uid "709C5925-4FFE-BA35-073F-8CBAA62B0DC7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.7838095 -31.783805300000001 0.016324699500000001
		-1.9426179099999999e-11 -44.949088519999997 0.023086611430000001
		-31.7838095 -31.783805300000001 0.016324699500000001
		-44.949094449999997 1.942691175e-11 5.9609109409999995e-13
		-31.7838095 31.783805300000001 -0.016324699500000001
		1.9424428860000001e-11 44.949088519999997 -0.023086611430000001
		31.7838095 31.783805300000001 -0.016324699500000001
		44.949094449999997 -1.9423112229999998e-11 -5.9609304560000002e-13
		31.7838095 -31.783805300000001 0.016324699500000001
		-1.9426179099999999e-11 -44.949088519999997 0.023086611430000001
		-31.7838095 -31.783805300000001 0.016324699500000001
		;
createNode transform -n "IKSplineTail2LocalOrient0_M" -p "IKSplineTail2_M";
	rename -uid "39A8F8B5-435D-84E1-0948-5DB6716E19F1";
	setAttr ".r" -type "double3" -90.0000000014862 89.970571922025329 -90.000000001510969 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "IKSplineTail2LocalOrient1_M" -p "IKSplineTail2_M";
	rename -uid "52935EC6-4B8B-00A6-79C0-84B85755911B";
	setAttr ".t" -type "double3" -5.1066689818428737e-24 -8.8817841970012523e-16 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "IKSplineTail2LocalOrient2_M" -p "IKSplineTail2LocalOrient1_M";
	rename -uid "D07D3DA2-4A88-B67E-E90F-4EBD6E15976C";
createNode parentConstraint -n "IKOffsetSplineTail2_M_parentConstraint1" -p "IKOffsetSplineTail2_M";
	rename -uid "95C38C64-436E-32CA-1032-5384DA3A92F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFollowEndSplineTail1_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKFollowEndSplineTail4_MW1" -dv 1 
		-min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.2634692086247279e-08 -0.33140703852505027 
		-149.12743539727165 ;
	setAttr ".tg[1].tot" -type "double3" 3.4375202195121003e-06 0.0065332342837081114 
		298.25551443483096 ;
	setAttr ".rst" -type "double3" -8.6154535743145468e-13 -6.303107455009938 -222.93552561375179 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKFollowEndSplineTail_M1" -p "IKHandleFollowMain";
	rename -uid "CB053755-4901-2985-777B-D79DC1DE2346";
createNode transform -n "IKOffsetSplineTail3_M" -p "IKHandleFollowMain";
	rename -uid "D44C2765-4B59-4BF8-22E7-EC82D410DDE9";
createNode transform -n "IKExtraSplineTail3_M" -p "IKOffsetSplineTail3_M";
	rename -uid "AE76DC3F-4C28-C750-0608-CDA6AF4E2270";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSplineTail3_M" -p "IKExtraSplineTail3_M";
	rename -uid "27C311ED-48D7-C95C-7CF8-A8B4D7CFB213";
	addAttr -ci true -k true -sn "followEnd" -ln "followEnd" -dv 6.6666666666666661 
		-min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -k on ".followEnd";
createNode transform -n "IKSplineTail3X_M" -p "IKSplineTail3_M";
	rename -uid "F316C1A4-4839-6926-5A23-7D98651B098D";
createNode parentConstraint -n "IKSplineTail3X_M_parentConstraint1" -p "IKSplineTail3X_M";
	rename -uid "F9E98677-4670-26B4-70AA-C6AB1C05C084";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail3_MW0" -dv 1 -min 0 -at "double";
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
createNode nurbsCurve -n "IKSplineTail3_MShape" -p "IKSplineTail3_M";
	rename -uid "D24562C7-4698-6897-96C4-CFA4C3B9BCFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.7838095 -31.7838095 5.1713810689999995e-13
		2.7523382320000002e-15 -44.949094449999997 4.478188756e-29
		-31.7838095 -31.7838095 -5.1713810689999995e-13
		-44.949094449999997 -2.330168994e-15 -7.3134372440000004e-13
		-31.7838095 31.7838095 -5.1713810689999995e-13
		-4.5025815329999998e-15 44.949094449999997 -7.325920106000001e-29
		31.7838095 31.7838095 5.1713810689999995e-13
		44.949094449999997 6.12969214e-15 7.3134372440000004e-13
		31.7838095 -31.7838095 5.1713810689999995e-13
		2.7523382320000002e-15 -44.949094449999997 4.478188756e-29
		-31.7838095 -31.7838095 -5.1713810689999995e-13
		;
createNode transform -n "IKSplineTail3LocalOrient0_M" -p "IKSplineTail3_M";
	rename -uid "41EC8962-4880-708A-C6E2-7E85064C282F";
	setAttr ".r" -type "double3" 0 89.999999999999091 0 ;
createNode transform -n "IKSplineTail3LocalOrient1_M" -p "IKSplineTail3_M";
	rename -uid "88D97EC5-4446-060F-D933-3CA60D51A10A";
	setAttr ".t" -type "double3" 1.5264067241017589e-23 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "IKSplineTail3LocalOrient2_M" -p "IKSplineTail3LocalOrient1_M";
	rename -uid "070E9109-417B-4526-06E4-799125BFE6CE";
createNode parentConstraint -n "IKOffsetSplineTail3_M_parentConstraint1" -p "IKOffsetSplineTail3_M";
	rename -uid "FEB1FBCC-40EF-53AF-B48B-5FA4A6C1840A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFollowEndSplineTail1_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKFollowEndSplineTail4_MW1" -dv 1 
		-min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.2632336952592819e-08 -0.33794494166392841 
		-298.25515436084675 ;
	setAttr ".tg[1].tot" -type "double3" 3.4375178643784456e-06 -4.6688551682549928e-06 
		149.12779547125587 ;
	setAttr ".rst" -type "double3" -3.2166790120502301e-12 -6.3096453581488152 -372.06324457732688 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode ikHandle -n "IKSplineTailHandle_M" -p "IKHandle";
	rename -uid "0D4D932D-4EF4-B00E-F7F0-1ABB8272FA30";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -4.4991881666807917e-07 -6.3096453582560352 -521.19123591472919 ;
	setAttr ".r" -type "double3" 7.0739662795616027e-07 89.999999496033624 0 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtvt" 2;
	setAttr ".dtrm" 3.333;
	setAttr ".dtce" yes;
createNode transform -n "IKcvOffsetSplineTail1_M" -p "IKHandle";
	rename -uid "63976E91-429C-7B88-3CA2-39B316603AE4";
createNode transform -n "IKcvExtraSplineTail1_M" -p "IKcvOffsetSplineTail1_M";
	rename -uid "4F3CAB28-43DD-C547-B2E8-D684B1C072A4";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSplineTail1_M" -p "IKcvExtraSplineTail1_M";
	rename -uid "57CB171A-4C84-0D2B-4B01-B68C5A4D4E57";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKcvSplineTail1_MShape" -p "IKcvSplineTail1_M";
	rename -uid "9BE8F079-43B5-261F-43C4-71BB23D055DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-36.499719310000003 -36.499644920000001 0.073688645570000003
		-33.443437449999998 1.1041474209999999e-11 2.004925379e-13
		-36.499719310000003 36.499644920000001 -0.073688645570000003
		1.1026806870000001e-11 33.44336929 -0.067518371519999995
		36.499719310000003 36.499644920000001 -0.073688645570000003
		33.443437449999998 -1.1026397139999999e-11 -2.0052297680000001e-13
		36.499719310000003 -36.499644920000001 0.073688645570000003
		-1.1019268330000001e-11 -33.44336929 0.067518371519999995
		-36.499719310000003 -36.499644920000001 0.073688645570000003
		-33.443437449999998 1.1041474209999999e-11 2.004925379e-13
		-36.499719310000003 36.499644920000001 -0.073688645570000003
		;
createNode transform -n "IKSplineTailLocator1_M" -p "IKcvSplineTail1_M";
	rename -uid "6090C81D-43B2-2626-1EF0-3AA415F0BD49";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineTailLocator1_MShape" -p "IKSplineTailLocator1_M";
	rename -uid "18D457EB-4595-CB00-C14D-E48C0493490C";
	setAttr -k off ".v";
createNode transform -n "IKcvOffsetSplineTail2_M" -p "IKHandle";
	rename -uid "6C137F74-40BC-19AA-6C2F-42B48A8464E3";
createNode transform -n "IKcvExtraSplineTail2_M" -p "IKcvOffsetSplineTail2_M";
	rename -uid "1842EBBF-4984-F49A-9893-718D758F7ECB";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSplineTail2_M" -p "IKcvExtraSplineTail2_M";
	rename -uid "FF43D451-4EDF-AD3A-A270-2CB147C7048D";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKcvSplineTail2_MShape" -p "IKcvSplineTail2_M";
	rename -uid "DF8F9C28-44C7-7492-F81D-72B2EA0ED582";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-36.499719310000003 -36.499719300000002 0.00054279329059999997
		-33.443437449999998 3.8195298369999998e-15 5.3466725290000002e-13
		-36.499719310000003 36.499719300000002 -0.00054279328940000002
		-1.042788426e-14 33.443437449999998 -0.00049734282309999995
		36.499719310000003 36.499719300000002 -0.00054279329059999997
		33.443437449999998 1.125756912e-14 -5.3466747709999997e-13
		36.499719310000003 -36.499719300000002 0.00054279328940000002
		1.796643374e-14 -33.443437449999998 0.00049734282309999995
		-36.499719310000003 -36.499719300000002 0.00054279329059999997
		-33.443437449999998 3.8195298369999998e-15 5.3466725290000002e-13
		-36.499719310000003 36.499719300000002 -0.00054279328940000002
		;
createNode transform -n "IKSplineTailLocator2_M" -p "IKcvSplineTail2_M";
	rename -uid "71276AD6-4F19-2362-025C-028612B1D6EA";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineTailLocator2_MShape" -p "IKSplineTailLocator2_M";
	rename -uid "3F372B90-4D1B-C2B9-B0E0-C88D88E5F430";
	setAttr -k off ".v";
createNode transform -n "IKcvOffsetSplineTail3_M" -p "IKHandle";
	rename -uid "5C7700D6-4147-14E7-DF84-D696BC5FD854";
createNode transform -n "IKcvExtraSplineTail3_M" -p "IKcvOffsetSplineTail3_M";
	rename -uid "DB4B55FC-44CC-13C3-3CA6-3AAAC71D01A7";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSplineTail3_M" -p "IKcvExtraSplineTail3_M";
	rename -uid "BEF81FA7-4C3B-9944-A91E-9FBE95FED57F";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKcvSplineTail3_MShape" -p "IKcvSplineTail3_M";
	rename -uid "E9C54CEA-44B7-EB7D-3388-1AB8A189008A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-36.499719310000003 -36.499719310000003 -5.9163329999999996e-13
		-33.443437449999998 3.8155639600000001e-15 -5.420932445e-13
		-36.499719310000003 36.499719310000003 -5.9163329999999996e-13
		-1.0423918389999999e-14 33.443437449999998 1.340186574e-16
		36.499719310000003 36.499719310000003 5.9163329999999996e-13
		33.443437449999998 1.1261534989999999e-14 5.420932445e-13
		36.499719310000003 -36.499719310000003 5.9163329999999996e-13
		1.7962467860000001e-14 -33.443437449999998 -1.340186574e-16
		-36.499719310000003 -36.499719310000003 -5.9163329999999996e-13
		-33.443437449999998 3.8155639600000001e-15 -5.420932445e-13
		-36.499719310000003 36.499719310000003 -5.9163329999999996e-13
		;
createNode transform -n "IKSplineTailLocator3_M" -p "IKcvSplineTail3_M";
	rename -uid "D68BBEDF-4559-E426-7BF3-79BB4CC30C2F";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineTailLocator3_MShape" -p "IKSplineTailLocator3_M";
	rename -uid "6B2CA7EC-4E4F-DE8B-ECBF-CDA5B950ADCB";
	setAttr -k off ".v";
createNode transform -n "IKcvOffsetSplineTail4_M" -p "IKHandle";
	rename -uid "E289FF44-4684-2827-6552-EA86C671F929";
createNode transform -n "IKcvExtraSplineTail4_M" -p "IKcvOffsetSplineTail4_M";
	rename -uid "5675EB4B-408C-33B2-D069-5CBF648265FC";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSplineTail4_M" -p "IKcvExtraSplineTail4_M";
	rename -uid "CEC0A0F3-42A1-D9A8-7075-269033856922";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKcvSplineTail4_MShape" -p "IKcvSplineTail4_M";
	rename -uid "4EFDDDB6-47E9-9FBF-4AA7-DF8E6BC4C04D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-36.499719310000003 -36.499719310000003 -5.9163329999999996e-13
		-33.443437449999998 3.8155639600000001e-15 -5.420932445e-13
		-36.499719310000003 36.499719310000003 -5.9163329999999996e-13
		-1.0423918389999999e-14 33.443437449999998 1.340186574e-16
		36.499719310000003 36.499719310000003 5.9163329999999996e-13
		33.443437449999998 1.1261534989999999e-14 5.420932445e-13
		36.499719310000003 -36.499719310000003 5.9163329999999996e-13
		1.7962467860000001e-14 -33.443437449999998 -1.340186574e-16
		-36.499719310000003 -36.499719310000003 -5.9163329999999996e-13
		-33.443437449999998 3.8155639600000001e-15 -5.420932445e-13
		-36.499719310000003 36.499719310000003 -5.9163329999999996e-13
		;
createNode transform -n "IKSplineTailLocator4_M" -p "IKcvSplineTail4_M";
	rename -uid "76F5DEE8-4241-A966-7511-ABB0BB6121F0";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineTailLocator4_MShape" -p "IKSplineTailLocator4_M";
	rename -uid "40D4A0DA-4A60-7A05-279F-F0B85E79F3AD";
	setAttr -k off ".v";
createNode transform -n "IKhybridFollowSplineTail1_M" -p "IKHandle";
	rename -uid "0F0CF68B-4D95-BCD9-392F-B6AB1326DF4D";
createNode transform -n "IKhybridExtraSplineTail1_M" -p "IKhybridFollowSplineTail1_M";
	rename -uid "763599A8-4E46-4A13-F714-B484C54BA925";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSplineTail1_M" -p "IKhybridExtraSplineTail1_M";
	rename -uid "9D14D9DE-414C-CCF0-AB7E-56A5B2512299";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSplineTail1_MShape" -p "IKhybridSplineTail1_M";
	rename -uid "0A1C37A7-449A-48FE-CCA7-BFBD41181AF8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		14.912780359999999 39.272281649999996 -16.267110819999999
		14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		14.912780359999999 39.272281649999996 16.267110819999999
		14.912780359999999 16.366069790000001 16.366069790000001
		14.912780359999999 16.267110819999999 39.272281649999996
		14.912780359999999 -2.2065277100000001e-16 23.145116810000001
		14.912780359999999 -16.267110819999999 39.272281649999996
		14.912780359999999 -16.366069790000001 16.366069790000001
		14.912780359999999 -39.272281649999996 16.267110819999999
		14.912780359999999 -23.145116810000001 -1.7490689319999999e-15
		14.912780359999999 -39.272281649999996 -16.267110819999999
		14.912780359999999 -16.366069790000001 -16.366069790000001
		14.912780359999999 -16.267110819999999 -39.272281649999996
		14.912780359999999 4.8231911019999998e-15 -23.145116810000001
		14.912780359999999 16.267110819999999 -39.272281649999996
		14.912780359999999 16.366069790000001 -16.366069790000001
		14.912780359999999 39.272281649999996 -16.267110819999999
		14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		14.912780359999999 39.272281649999996 16.267110819999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKhybridOffsetSplineTail2_M" -p "IKhybridSplineTail1_M";
	rename -uid "D1126B8B-4AD9-DF80-BD87-3FB1E06962F6";
	setAttr ".t" -type "double3" 149.12767651392676 0.19472121157562228 3.2634692086247305e-08 ;
	setAttr ".r" -type "double3" 0 0 0.17271361711473338 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "IKhybridExtraSplineTail2_M" -p "IKhybridOffsetSplineTail2_M";
	rename -uid "CA40BB4F-44BF-5F5C-961F-E8ABD2CCA922";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSplineTail2_M" -p "IKhybridExtraSplineTail2_M";
	rename -uid "0B78FDC9-4154-C6DA-31DC-4FB03F681DE5";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSplineTail2_MShape" -p "IKhybridSplineTail2_M";
	rename -uid "BD5D6727-4B3F-CB2F-23F4-6B9CF35A7A91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		-14.912780359999999 16.366069790000001 16.366069790000001
		-14.912780359999999 16.267110819999999 39.272281649999996
		-14.912780359999999 -2.2065277100000001e-16 23.145116810000001
		-14.912780359999999 -16.267110819999999 39.272281649999996
		-14.912780359999999 -16.366069790000001 16.366069790000001
		-14.912780359999999 -39.272281649999996 16.267110819999999
		-14.912780359999999 -23.145116810000001 -1.7490689319999999e-15
		-14.912780359999999 -39.272281649999996 -16.267110819999999
		-14.912780359999999 -16.366069790000001 -16.366069790000001
		-14.912780359999999 -16.267110819999999 -39.272281649999996
		-14.912780359999999 4.8231911019999998e-15 -23.145116810000001
		-14.912780359999999 16.267110819999999 -39.272281649999996
		-14.912780359999999 16.366069790000001 -16.366069790000001
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKhybridOffsetSplineTail3_M" -p "IKhybridSplineTail2_M";
	rename -uid "9D4CBE53-477E-542C-E2A4-2B8614F432C7";
	setAttr ".t" -type "double3" 149.12770265143706 0.070056604093569952 -3.655220202532396e-13 ;
	setAttr ".r" -type "double3" 0 0 0.029428077974673044 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "IKhybridExtraSplineTail3_M" -p "IKhybridOffsetSplineTail3_M";
	rename -uid "1CD48255-43E9-0939-0855-0ABBD9F35810";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSplineTail3_M" -p "IKhybridExtraSplineTail3_M";
	rename -uid "034CF458-42AE-80FA-245B-0ABE288D9AC0";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSplineTail3_MShape" -p "IKhybridSplineTail3_M";
	rename -uid "EE442F28-4E5A-2E54-EBA5-D2979F6561C7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		-14.912780359999999 16.366069790000001 16.366069790000001
		-14.912780359999999 16.267110819999999 39.272281649999996
		-14.912780359999999 -2.2065277100000001e-16 23.145116810000001
		-14.912780359999999 -16.267110819999999 39.272281649999996
		-14.912780359999999 -16.366069790000001 16.366069790000001
		-14.912780359999999 -39.272281649999996 16.267110819999999
		-14.912780359999999 -23.145116810000001 -1.7490689319999999e-15
		-14.912780359999999 -39.272281649999996 -16.267110819999999
		-14.912780359999999 -16.366069790000001 -16.366069790000001
		-14.912780359999999 -16.267110819999999 -39.272281649999996
		-14.912780359999999 4.8231911019999998e-15 -23.145116810000001
		-14.912780359999999 16.267110819999999 -39.272281649999996
		-14.912780359999999 16.366069790000001 -16.366069790000001
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKhybridOffsetSplineTail4_M" -p "IKhybridSplineTail3_M";
	rename -uid "A0C276A5-4048-208F-923E-85B7EA5A96AE";
	setAttr ".t" -type "double3" 149.12779547125592 4.668855166478636e-06 -3.4375198539900808e-06 ;
createNode transform -n "IKhybridExtraSplineTail4_M" -p "IKhybridOffsetSplineTail4_M";
	rename -uid "08B11A55-4E07-BD09-90BB-1892D51903ED";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSplineTail4_M" -p "IKhybridExtraSplineTail4_M";
	rename -uid "699CE8BB-4BBC-DA8E-66E6-E6B861612C79";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSplineTail4_MShape" -p "IKhybridSplineTail4_M";
	rename -uid "ECA9769D-4611-A60A-32DD-208CE463C25C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		-14.912780359999999 16.366069790000001 16.366069790000001
		-14.912780359999999 16.267110819999999 39.272281649999996
		-14.912780359999999 -2.2065277100000001e-16 23.145116810000001
		-14.912780359999999 -16.267110819999999 39.272281649999996
		-14.912780359999999 -16.366069790000001 16.366069790000001
		-14.912780359999999 -39.272281649999996 16.267110819999999
		-14.912780359999999 -23.145116810000001 -1.7490689319999999e-15
		-14.912780359999999 -39.272281649999996 -16.267110819999999
		-14.912780359999999 -16.366069790000001 -16.366069790000001
		-14.912780359999999 -16.267110819999999 -39.272281649999996
		-14.912780359999999 4.8231911019999998e-15 -23.145116810000001
		-14.912780359999999 16.267110819999999 -39.272281649999996
		-14.912780359999999 16.366069790000001 -16.366069790000001
		-14.912780359999999 39.272281649999996 -16.267110819999999
		-14.912780359999999 23.145116810000001 -5.4869184960000002e-15
		-14.912780359999999 39.272281649999996 16.267110819999999
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKOffsetSplineTail4_M" -p "IKhybridSplineTail4_M";
	rename -uid "7B9CBEB8-4C45-D7A8-A391-B7A9B96AA7E6";
	setAttr ".r" -type "double3" 0 -89.999999977595451 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "IKExtraSplineTail4_M" -p "IKOffsetSplineTail4_M";
	rename -uid "CF08136D-4D62-5876-2743-0E8B4B47A4B8";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSplineTail4_M" -p "IKExtraSplineTail4_M";
	rename -uid "424BA3DA-429C-6C6B-2400-2892A13D8BF9";
	addAttr -ci true -sn "ikCvVis" -ln "ikCvVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikHybridVis" -ln "ikHybridVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "stiff" -ln "stiff" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "flipAxis" -ln "flipAxis" -min 0 -max 1 -en "bend:side" -at "enum";
	addAttr -ci true -k true -sn "followMain" -ln "followMain" -dv 10 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "followRoot" -ln "followRoot" -dv 10 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "followTailBase" -ln "followTailBase" -dv 10 -min 0 
		-max 10 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -cb on ".ikCvVis";
	setAttr -cb on ".ikHybridVis";
	setAttr -k on ".stiff";
	setAttr -k on ".stretchy";
	setAttr ".flipAxis" 1;
	setAttr -k on ".followMain";
	setAttr -k on ".followRoot";
	setAttr -k on ".followTailBase";
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKSplineTail4_MShape" -p "IKSplineTail4_M";
	rename -uid "47DDB54D-4B54-3F37-0628-5DB166B0BB5C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		33.800555109999998 -33.800555109999998 3.3800555239999999
		33.800555109999998 -33.800555109999998 -3.3800554979999999
		33.800555109999998 33.800555109999998 -3.3800554979999999
		-33.800555109999998 33.800555109999998 -3.3800555239999999
		-33.800555109999998 -33.800555109999998 -3.3800555239999999
		-33.800555109999998 -33.800555109999998 3.3800554979999999
		-33.800555109999998 33.800555109999998 3.3800554979999999
		33.800555109999998 33.800555109999998 3.3800555239999999
		33.800555109999998 -33.800555109999998 3.3800555239999999
		-33.800555109999998 -33.800555109999998 3.3800554979999999
		-33.800555109999998 33.800555109999998 3.3800554979999999
		-33.800555109999998 33.800555109999998 -3.3800555239999999
		-33.660930870000001 -33.800555109999998 -3.3660931000000001
		33.660930870000001 -33.800555109999998 -3.3660930740000001
		33.800555109999998 33.800555109999998 -3.3800554979999999
		33.800555109999998 33.800555109999998 3.3800555239999999
		;
createNode transform -n "IKSplineTail4X_M" -p "IKSplineTail4_M";
	rename -uid "0FC49553-489F-281E-BB80-F8A0EB59FB2C";
createNode parentConstraint -n "IKSplineTail4X_M_parentConstraint1" -p "IKSplineTail4X_M";
	rename -uid "02E0312E-4C2D-D911-6094-018CA84BEB4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail4_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "IKSplineTail4LocalOrient0_M" -p "IKSplineTail4_M";
	rename -uid "85625720-4B72-1587-FA79-2ABC16618A02";
	setAttr ".r" -type "double3" 0 89.999999977595451 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1 ;
createNode transform -n "IKSplineTailLocator5_M" -p "IKSplineTail4_M";
	rename -uid "27AE278C-43D0-98CB-0ACA-19969A5E649A";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 3.4375150608447876e-06 -4.6688552703955111e-06 9.5204768513212912e-09 ;
createNode locator -n "IKSplineTailLocator5_MShape" -p "IKSplineTailLocator5_M";
	rename -uid "AC0AD422-4FEF-8D68-75C0-1CBA45BED3C5";
	setAttr -k off ".v";
createNode transform -n "IKSplineTail4LocalOrient1_M" -p "IKSplineTail4_M";
	rename -uid "97782930-4E5A-8263-E5E6-EABEBBE44257";
	setAttr ".t" -type "double3" 4.2351647362715017e-22 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 0 89.999999977595451 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "IKSplineTail4LocalOrient2_M" -p "IKSplineTail4LocalOrient1_M";
	rename -uid "88AE8B70-4A0D-B22D-7F01-19BCF7F1269F";
createNode transform -n "IKSplineTail4LocalStartOrient_M" -p "IKSplineTail4_M";
	rename -uid "3F88BC87-47DA-8451-D48E-0BB73381592E";
	setAttr ".r" -type "double3" -89.999999999992781 89.797858813803828 -90.000000000093763 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "IKOffsetConstrainedSplineTail1_M" -p "IKHandle";
	rename -uid "FB6E3B5E-4717-9BE3-5317-408D3F8E71B4";
createNode parentConstraint -n "IKOffsetConstrainedSplineTail1_M_parentConstraint1" 
		-p "IKOffsetConstrainedSplineTail1_M";
	rename -uid "2AF77CA9-4428-561D-A2C0-23BB2812A453";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "TailBase_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr ".rst" -type "double3" -2.6310245699226486e-08 -5.8269942847812359 -57.63282553164926 ;
	setAttr ".rsrr" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "IKOffsetConstrainedSplineTail1_M_scaleConstraint1" 
		-p "IKOffsetConstrainedSplineTail1_M";
	rename -uid "F76B7EC4-49FB-640F-393A-118E73B35DB2";
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
createNode transform -n "IKhybridOffsetSplineTail1_M" -p "IKOffsetConstrainedSplineTail1_M";
	rename -uid "2B228DF6-4237-1A49-AAE2-0FACF4B65A46";
	setAttr ".t" -type "double3" 16.175911952310152 9.7699626167013776e-15 7.1835479539748186e-15 ;
	setAttr ".r" -type "double3" 0 0 0.31042051650686714 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "IKOffsetSplineTail1_M" -p "IKhybridOffsetSplineTail1_M";
	rename -uid "7F4D29A4-4D9E-A8F6-F762-17B16A7302AF";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 6.6174449004242214e-24 ;
	setAttr ".r" -type "double3" 0.20214169508940644 -90 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "IKExtraSplineTail1_M" -p "IKOffsetSplineTail1_M";
	rename -uid "9CB34695-464F-EFFD-28E7-6BA555A0E2C1";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSplineTail1_M" -p "IKExtraSplineTail1_M";
	rename -uid "91F7882C-4981-8C65-3699-808CCCDA4866";
	addAttr -ci true -k true -sn "stiff" -ln "stiff" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "firstJointFixed" -ln "firstJointFixed" -dv 10 -min 0 -max 
		10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr -k on ".stiff";
	setAttr ".firstJointFixed" 0;
createNode nurbsCurve -n "IKSplineTail1_MShape" -p "IKSplineTail1_M";
	rename -uid "61FA6E1C-408C-9EF1-1A12-AE9DBEDA6164";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		33.800555109999998 -33.788419840000003 3.499283562
		33.800555109999998 -33.812269659999998 -3.260785389
		33.800555109999998 33.788419840000003 -3.4992835879999999
		-33.800555109999998 33.788419840000003 -3.499283562
		-33.800555109999998 -33.812269659999998 -3.260785362
		-33.800555109999998 -33.788419840000003 3.4992835879999999
		-33.800555109999998 33.812269659999998 3.260785389
		33.800555109999998 33.812269659999998 3.260785362
		33.800555109999998 -33.788419840000003 3.499283562
		-33.800555109999998 -33.788419840000003 3.4992835879999999
		-33.800555109999998 33.812269659999998 3.260785389
		-33.800555109999998 33.788419840000003 -3.499283562
		-33.660930870000001 -33.812220400000001 -3.2468230249999999
		33.660930870000001 -33.812220400000001 -3.2468230519999999
		33.800555109999998 33.788419840000003 -3.4992835879999999
		33.800555109999998 33.812269659999998 3.260785362
		;
createNode transform -n "IKSplineTail1X_M" -p "IKSplineTail1_M";
	rename -uid "9B12F4EE-4C83-C51A-A3B0-65882ADD23E6";
createNode parentConstraint -n "IKSplineTail1X_M_parentConstraint1" -p "IKSplineTail1X_M";
	rename -uid "11AE8598-4960-42E7-533F-B6B977D449FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSplineTail1_MW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "IKSplineTail1LocalOrient0_M" -p "IKSplineTail1_M";
	rename -uid "A9A38312-4517-7F1C-D968-8A959FE78F4B";
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1 ;
createNode transform -n "IKSplineTailLocator0_M" -p "IKSplineTail1_M";
	rename -uid "D299A8C7-4809-E103-27F6-EDAF42F326B2";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 3.263555357329614e-08 -7.2868724299013365e-07 6.5189880160687608e-09 ;
createNode locator -n "IKSplineTailLocator0_MShape" -p "IKSplineTailLocator0_M";
	rename -uid "59489432-4636-9B48-C258-DE9171E47182";
	setAttr -k off ".v";
createNode transform -n "IKSplineTail1LocalOrient1_M" -p "IKSplineTail1_M";
	rename -uid "8F9D52FA-4BBF-A78C-75B9-088DD9EF8B65";
	setAttr ".t" -type "double3" 6.6174449004242214e-24 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" -90.000006350457213 89.797858813803828 -90.000006350518518 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "IKSplineTail1LocalOrient2_M" -p "IKSplineTail1LocalOrient1_M";
	rename -uid "91F3E56E-4D9E-0896-3C0C-E3B9A834A035";
createNode transform -n "IKSplineTail1LocalOrient3_M" -p "IKSplineTail1LocalOrient2_M";
	rename -uid "8F393516-4E0A-E9CB-D358-CE98B89EB71E";
	setAttr ".t" -type "double3" -3.9481307112509967e-09 -7.2870570555494396e-07 3.2635553572029468e-08 ;
createNode transform -n "IKPoleVector" -p "IKSystem";
	rename -uid "AA2657A3-4BB3-4B9D-A015-10B7BA8F0302";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "8F74448A-4001-B755-0EEC-77B8DBE90CE0";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "93296DFE-4EF9-174B-EC9F-F2A6AF94CA6E";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "A78C548A-4979-7328-CED3-44887184991B";
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
	rename -uid "953D4911-41B0-C50C-E3BC-FD9CFFAB7B1C";
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
	rename -uid "0990A9E4-40B6-234A-CBF1-EA83CF31548A";
	setAttr -l on ".it" no;
createNode transform -n "IKSplineTailCurve_M" -p "IKCurve";
	rename -uid "FF195501-435A-1C24-21D7-A9A295FC910B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode nurbsCurve -n "IKSplineTailCurve_MShape" -p "IKSplineTailCurve_M";
	rename -uid "B20DA9A7-4949-EC1B-6AF3-48BA0BBAD3D8";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 6 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 3 0 no 3
		8 0 0 0 1 2 3 3 3
		6
		-5.7034262054208868e-17 -5.9717011451721325 -73.808090209961165
		-2.5427072384136456e-08 -6.3096453581486305 -169.59583340338764
		-1.5054511267754768e-12 -6.3096453581487637 -265.098388671875
		-3.1163260124149963e-12 -6.3096453581488081 -365.79339599609364
		-4.7436372066909337e-12 -6.3096453581488676 -467.5024108886717
		-6.0202089475961502e-12 -6.3096453581489147 -521.19104003906227
		;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "40B93EE7-4156-E07C-1C85-DEA0F962AA0E";
createNode transform -n "IKParentConstraintToTailBase_M" -p "IKSystem";
	rename -uid "F8CAC82C-48EB-3F25-4909-33A3A992859C";
createNode transform -n "IKScaler" -p "IKSystem";
	rename -uid "3EE778B9-4849-2656-0F3C-1E84F6A2063C";
createNode transform -n "IKScalerTail1_M" -p "IKScaler";
	rename -uid "D6505484-4036-F2F6-89F5-CB8C22A77120";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.2857142857142857 
		-at "double";
	setAttr -k on ".scalerWeight";
createNode transform -n "IKScalerTail2_M" -p "IKScaler";
	rename -uid "A3DA18E8-4429-17E4-8570-B0BA61DF5B6E";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.5714285714285714 
		-at "double";
	setAttr -k on ".scalerWeight";
createNode transform -n "IKScalerTail3_M" -p "IKScaler";
	rename -uid "8A84FD89-41C9-8178-5827-118FB17DCB52";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.8571428571428571 
		-at "double";
	setAttr -k on ".scalerWeight";
createNode transform -n "IKScalerTail4_M" -p "IKScaler";
	rename -uid "0241AB67-4A46-9D6A-1DA3-428CCFC29F18";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.85714285714285721 
		-at "double";
	setAttr -k on ".scalerWeight";
createNode transform -n "IKScalerTail5_M" -p "IKScaler";
	rename -uid "550877E6-4AA7-E582-354B-53B5C7CCC88A";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.57142857142857162 
		-at "double";
	setAttr -k on ".scalerWeight";
createNode transform -n "IKScalerTail6_M" -p "IKScaler";
	rename -uid "2C0185A8-4195-BBDB-B58D-FD87931C290E";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.28571428571428581 
		-at "double";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "D94D4444-4AAE-7725-466F-FA90F664658A";
createNode transform -n "FKIKParentConstraintSplineTail_M" -p "FKIKSystem";
	rename -uid "80F22887-448C-9495-3188-64AF4F23DCB9";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode parentConstraint -n "FKIKParentConstraintSplineTail_M_parentConstraint1" 
		-p "FKIKParentConstraintSplineTail_M";
	rename -uid "F8731F80-4DE3-127B-A04C-31BE050058B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "TailBase_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr ".rst" -type "double3" -2.6310245699226486e-08 -5.8269942847812359 -57.63282553164926 ;
	setAttr ".rsrr" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKSplineTail_M" -p "FKIKParentConstraintSplineTail_M";
	rename -uid "FF33700E-4ECF-1F96-EE87-199D2346D0AA";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 66.553663944822148 0.27294272942303976 32.609401683565572 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0.51256221159627358 -89.99999997759528 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend";
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Tail1";
	setAttr -l on ".middleJoint" -type "string" "Tail3";
	setAttr -l on ".endJoint" -type "string" "Tail6";
createNode nurbsCurve -n "FKIKSplineTail_MShape" -p "FKIKSplineTail_M";
	rename -uid "E5669243-4408-CE3A-35FA-0EB6E55B1FA7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-10.075698279999999 1.4392702159999999 3.1958218649999999e-16
		-1.4392702159999999 1.4392702159999999 3.1958218649999999e-16
		-1.4392702159999999 10.075698279999999 2.2374335799999999e-15
		1.4392702159999999 10.075698279999999 2.2374335799999999e-15
		1.4392702159999999 1.4392702159999999 3.1958218649999999e-16
		10.075698279999999 1.4392702159999999 3.1958218649999999e-16
		10.075698279999999 -1.4392702159999999 -3.1958218649999999e-16
		1.4392702159999999 -1.4392702159999999 -3.1958218649999999e-16
		1.4392702159999999 -10.075698279999999 -2.2374335799999999e-15
		-1.4392702159999999 -10.075698279999999 -2.2374335799999999e-15
		-1.4392702159999999 -1.4392702159999999 -3.1958218649999999e-16
		-10.075698279999999 -1.4392702159999999 -3.1958218649999999e-16
		-10.075698279999999 1.4392702159999999 3.1958218649999999e-16
		;
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "A84F1745-4D3D-E3E3-77B8-638C59988140";
	setAttr -l on ".it" no;
createNode transform -n "BendCurve" -p "BendSystem";
	rename -uid "CBC6B70F-4D70-3977-030F-2BA2940ACC77";
createNode transform -n "BendJoints" -p "BendSystem";
	rename -uid "2CDFFAAF-4508-D686-1667-269E87726D57";
createNode transform -n "BendMPX" -p "BendSystem";
	rename -uid "327CA18A-4326-FF8E-05F7-A79B0C9F2F71";
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "F00124BB-487B-BEA8-A622-A29F434E6F8F";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "8ECD1E95-4093-C313-EC5D-CBAD5B10C3FC";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "88227221-48AE-EF64-794A-36B5503DABB7";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "962BD63F-4DEE-60AA-25FD-42BCDBE29AEF";
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
	rename -uid "B481774F-41F6-A0E1-E5B3-55B853C18566";
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
	rename -uid "86C148D2-4831-1AFD-E05E-F4BA3E1578A5";
	setAttr ".t" -type "double3" -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 ;
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "841EE312-4FB4-8C0A-E37F-78B0FCDBAE8F";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "33577B87-47AF-78F6-DEB7-D4B86F691070";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "027859CE-4751-A408-2CD3-2CA0CEF8B0BE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		310.6516720759542 0 -224.02747225394475
		-310.6516720759542 0 -224.02747225394469
		-4.2539006086665449e-14 8.8817841970012523e-16 416.77197228888855
		310.6516720759542 0 -224.02747225394475
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "E094479B-41F1-7D0D-536E-9C8DDBE9799A";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "B409B226-4AFA-925E-85BD-0EBF958EF4CB";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "1B763D40-4C50-DF23-43F3-E09394E270C9";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "25919373-421B-EAC8-9A4A-9EB5E9F78A6E";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "BF3471A6-4215-6D0A-FA55-309FE6BAA593";
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
	rename -uid "C9918D49-4D45-398B-60A5-2B9DAB795E39";
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
	rename -uid "EC9481C8-4428-8BAA-16B4-3AA8533B09A6";
	setAttr -l on ".v" no;
createNode pointConstraint -n "Wing6_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "CDB53EAB-4137-F4C9-DD06-D9B25C1E201C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing6_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -419.35579227095218 -5.7559563062986587 -24.122032251324562 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.58421017229212857 21.045496937383128 179.18747172626797 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 44.693070637659957 8.8817841970012523e-14 -7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing6_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "174CFD23-49DA-9E36-B93A-BB8C471C6975";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing6_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -419.35579227095218 -5.7559563062986587 -24.122032251324562 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.58421017229212857 21.045496937383128 179.18747172626797 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.4559516165257408e-09 -2.1485106535735423e-08 -1.7680082771643243e-07 ;
	setAttr ".rsrr" -type "double3" -1.223768109859986e-14 -4.8981784498710604e-15 -1.5033090486604899e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing5_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "CA8C56C9-4DF5-D741-8ED8-7FA8F8CE025B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing5_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -376.61436815174761 -5.3491272952267801 -11.065397254477151 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.6144462881749038 16.986120018354658 -179.45465360851162 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 72.715759867250824 -3.5527136788005009e-15 3.694822225952521e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing5_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "0832C4D2-4880-2D18-3729-4C9032EA4E3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing5_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -376.61436815174761 -5.3491272952267801 -11.065397254477151 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.6144462881749038 16.986120018354658 -179.45465360851162 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.1558403421914012e-08 -2.6770603061652601e-08 -1.7570429688373895e-07 ;
	setAttr ".rsrr" -type "double3" -1.1625797043669867e-14 -2.2953417085952529e-15 
		1.4939910173671405e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing4_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "AE77132D-49A9-6CE6-D8B8-E1B3C8973562";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -306.38214327242588 -5.8219717900818209 7.7705455054634918 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.0531217727751154 15.012823144149811 179.61425706448168 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 65.887185290147613 -3.1974423109204508e-14 -7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing4_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "824709AC-44A0-1FD6-EB22-A2B6B1043FA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -306.38214327242588 -5.8219717900818209 7.7705455054634918 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.0531217727751154 15.012823144149811 179.61425706448168 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.7274982641951128e-08 -2.6050957910611176e-08 -1.7534304468378165e-07 ;
	setAttr ".rsrr" -type "double3" -1.3520463406651064e-14 -8.849217843903467e-15 5.3202076171990446e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing3_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "4BCCE540-4312-8BC6-E7CB-0EB44141138E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing3_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -241.96318605998476 -5.3544908728997065 21.594459521110146 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.3286214571205863 12.111327987575573 -179.58421845758329 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 85.532998589298955 1.0658141036401503e-14 -7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing3_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "175D8F3F-4DCE-7376-68AA-E798313B0151";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing3_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -241.96318605998476 -5.3544908728997065 21.594459521110146 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.3286214571205863 12.111327987575573 -179.58421845758329 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.6457480962106894e-08 -2.5997382694268633e-08 -1.7420218498991832e-07 ;
	setAttr ".rsrr" -type "double3" -1.2197302962995343e-14 -6.4775847540939102e-15 
		-1.3720801079458086e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing2_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "E9028976-4C85-F39F-90B4-22AA5BA4A492";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing2_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -157.81678714831827 -3.2280862058891104 36.785107995346692 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.1737389929338029 10.22998947281843 -178.55242659756485 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 90.134813631628958 1.8374191057546341e-14 -2.1316282072803006e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing2_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "676279C5-4EB1-E997-1094-10B90A2CA73B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing2_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -157.81678714831827 -3.2280862058891104 36.785107995346692 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.1737389929338029 10.22998947281843 -178.55242659756485 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.2559487345553563e-08 -2.4378665983888496e-08 -1.734007538629666e-07 ;
	setAttr ".rsrr" -type "double3" -1.3437377627618689e-14 -1.3049320449381043e-14 
		6.609590197416371e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing1_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "66270826-4E83-0B4B-5F00-F1A29EE29515";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -68.738677476416896 -1.4185375251906827 50.426975142528946 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.43667598463266866 8.7051454084900524 -178.83624333211313 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 73.353451490404311 -2.3980817331903381e-14 5.8264504332328215e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing1_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "F762DDDE-4031-FBC7-BC4C-93ADEA6E24B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -68.738677476416896 -1.4185375251906827 50.426975142528946 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.43667598463266866 8.7051454084900524 -178.83624333211313 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.7071826378847073e-08 -2.245025785029933e-08 -1.7275396008144794e-07 ;
	setAttr ".rsrr" -type "double3" -1.1454966469958449e-14 -7.8533532494266716e-15 
		-7.2370043045019462e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "WingBase_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "9B92B9F7-4D7D-1791-2329-78B7DA44BE9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWingBase_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.10770789189504762 -1.4185170251204058 76.321354058485042 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3538306645792865e-05 20.671428392370732 -179.99998288575091 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -66.704225468539875 3.2099763853272805 -0.10770791797295576 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "WingBase_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "C4281945-409B-C433-CC61-4E82B914ABC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWingBase_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.10770789189504762 -1.4185170251204058 76.321354058485042 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3538306645792865e-05 20.671428392370732 -179.99998288575091 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 5.9374260366036102e-06 -2.2404587715341061e-08 -1.7669265605052705e-07 ;
	setAttr ".rsrr" -type "double3" 6.4054519058838808e-06 -1.9083328361017422e-14 4.8702232892689743e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth5_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "723B9B46-42D5-5C68-8F81-4BB3DB976D86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth5_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -33.365102887688565 -14.022439182441097 273.08067398412464 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -42.112249505663648 -30.410319583694669 -20.436990110924341 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 21.425965792840785 -7.9580786405131221e-13 1.4210854715202004e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth5_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "63104C17-4F41-56F1-255D-6ABFFB8385D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth5_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -33.365102887688565 -14.022439182441097 273.08067398412464 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -42.112249505663648 -30.410319583694669 -20.436990110924341 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.4213906071793105e-08 2.5457910156019854e-07 -8.6951396575513614e-08 ;
	setAttr ".rsrr" -type "double3" -6.6443775142448754e-14 -8.883189832993772e-15 5.9282868093509176e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth4_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "EF71DB62-4583-ED98-DBAD-E3AF19C4AFA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -52.210359474807269 -10.028701001507445 263.70099543612577 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -45.30168103557552 -25.961784350154332 -11.965249357802893 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 21.605795401005366 -5.6843418860808015e-14 2.8421709430404007e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth4_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "5B467C04-41D7-AC71-DDCF-39B9E859C724";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth4_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -52.210359474807269 -10.028701001507445 263.70099543612577 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -45.30168103557552 -25.961784350154332 -11.965249357802893 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.0317209416971145e-08 2.5285495017743768e-07 -9.0690064503170996e-08 ;
	setAttr ".rsrr" -type "double3" -3.5160038080241206e-14 2.2885084856467985e-14 8.3390168054621568e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth3_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "1E6DE2D2-4261-50C3-D307-5C9E412EC3E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth3_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -70.05156597939046 -8.1881462268893674 251.65466389940678 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -54.57562527164346 -33.886597565783759 -5.8899761929753254 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 20.262204395225012 9.9475983006414026e-13 8.5265128291212022e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth3_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "DD8DDF88-44A5-0F9B-A010-589887551206";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth3_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -70.05156597939046 -8.1881462268893674 251.65466389940678 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -54.57562527164346 -33.886597565783759 -5.8899761929753254 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.0724865233831398e-09 2.6165659206093084e-07 -6.3971457043873237e-08 ;
	setAttr ".rsrr" -type "double3" -6.3312916627883137e-14 -1.5902773407317195e-15 
		7.0369772327380303e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth2_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "94576993-4F11-FD99-B586-C2987458ED2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth2_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -84.352644693781045 -7.7113595955744962 237.3086278940541 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -68.04230275227215 -45.074004743407315 -1.9094886266735676 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 24.59221778943305 -2.8421709430404007e-14 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth2_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "6E802701-4B66-F97C-2C2D-CE9436431F46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth2_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -84.352644693781045 -7.7113595955744962 237.3086278940541 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -68.04230275227215 -45.074004743407315 -1.9094886266735676 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.7910383368644756e-08 2.649131503684975e-07 -9.9360873750950709e-09 ;
	setAttr ".rsrr" -type "double3" -3.8961794847928088e-14 -1.2424041724466831e-14 
		8.4172882683262982e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth1_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "D15A11DB-4E6D-4E69-06F9-60B51A24DF4B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -95.533474575399339 -3.4815404356485602 215.81735411059634 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -56.074790997249941 -60.915702517983178 -20.722129001829039 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 169.0268993378123 1.4921397450962104e-13 3.8913317013111737e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth1_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "452428FC-4518-BDCB-AE3C-4A9B34D85C29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth1_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -95.533474575399339 -3.4815404356485602 215.81735411059634 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -56.074790997249941 -60.915702517983178 -20.722129001829039 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.319652886915845e-07 2.3485799103998487e-07 -1.8773498171868766e-06 ;
	setAttr ".rsrr" -type "double3" -3.8166656028402204e-14 -9.5416646410305202e-15 
		-1.7913517027582019e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "MouthBase_R_pointConstraint1" -p "ConstraintSystem";
	rename -uid "F3F1F21A-4547-8558-87B5-74AEEFAA69E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouthBase_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.10771155747993792 -1.4185132942505732 76.319109063510922 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 88.977854109402926 -55.619125629742761 -178.76150492185326 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -66.701980596773154 3.2100001992764775 -0.10771158355696821 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "MouthBase_R_orientConstraint1" -p "ConstraintSystem";
	rename -uid "15B24A90-4018-16E4-2B15-9B965FFA53A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouthBase_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.10771155747993792 -1.4185132942505732 76.319109063510922 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 88.977854109402926 -55.619125629742761 -178.76150492185326 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.8278745291454388e-07 -1.2582149349490956e-06 1.5475747046141314e-06 ;
	setAttr ".rsrr" -type "double3" 4.7680690680777098e-14 -1.6710616739747483e-06 1.5286205103015206e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Tail6_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "3EB24ED4-4716-2083-2413-7FA578B791CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail6_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail6_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.4375206534184546e-06 -6.3096406892936452 -521.19104004858286 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 53.688629150390682 -4.7073456244106637e-14 -3.2299384740411364e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail6_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "17155CBA-4C96-64E4-4D78-F1A69F5D45F7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail6_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail6_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.4375206534184546e-06 -6.3096406892936452 -521.19104004858286 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Tail5_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "2624ED61-4498-4B8B-E171-DDBBBAE62FBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail5_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail5_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.9233139597753934e-06 -6.3096411610444916 -467.50241089819247 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 101.70901489257835 -6.0396132539608516e-14 -2.7367274087170192e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail5_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "7BB3F03D-427D-DA14-DB74-879D439FF76A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail5_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail5_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.9233139597753934e-06 -6.3096411610444916 -467.50241089819247 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Tail4_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "AC2C7B5A-43DD-40BF-26C7-3294CD47FAE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail4_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail4_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.9491885609181747e-06 -6.3096420547405367 -365.79339600561428 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 100.69500732421881 -4.3520742565306136e-14 -1.8023751551348437e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail4_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "31B1A59A-43DB-34B7-21EA-CD98E77B1AB7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail4_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail4_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.9491885609181747e-06 -6.3096420547405367 -365.79339600561428 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Tail3_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "9F9ECC67-4B19-DCBE-6A28-D2AC43ABA2AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail3_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail3_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -9.8477489262515908e-07 -6.3096429395267224 -265.09838868139553 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 95.502555268487384 -1.3233858453531866e-13 -8.7733803799639193e-07 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail3_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "2009E2F6-4BFE-BD7C-6CD6-C691B5251D52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail3_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail3_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -9.8477489262515908e-07 -6.3096429395267224 -265.09838868139553 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Tail2_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "0B1F6B52-4DAE-628F-D595-D2A4F5DE5E04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.0092308109351459e-08 -6.3096437786878168 -169.59583341290823 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 95.78833933408032 9.7966079692923813e-13 -3.8895330085669876e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail2_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "B49C2B29-45C4-86A0-C8EE-80BE2ADFB216";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.0092308109351459e-08 -6.3096437786878168 -169.59583341290823 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 89.999999496055537 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -5.0344618016087785e-07 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.0344618016087785e-07 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Tail1_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "7860B699-453B-AFA9-9504-EF8E4451F0B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.2635553631605015e-08 -5.9717004164848895 -73.808090216480153 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000006350446398 89.797858813803828 -90.000006350507689 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 16.175911952310187 8.8817841970012523e-15 -5.7902642878711937e-24 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Tail1_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "57E43D74-4BD3-BBA2-1B03-4FADC000B6C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTail1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXTail1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.2635553631605015e-08 -5.9717004164848895 -73.808090216480153 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000006350446398 89.797858813803828 -90.000006350507689 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 3.975693351829396e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 3.975693351829396e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "TailBase_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "0EFC1703-4476-B36C-5114-20A9A8F328CA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTailBase_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.6310245699226486e-08 -5.8269942847812359 -57.63282553164926 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 67.284031304243229 0 -5.7902642878711937e-24 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "TailBase_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "134A3438-4DAC-9006-A97D-D29F92DB7716";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXTailBase_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.6310245699226486e-08 -5.8269942847812359 -57.63282553164926 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "50698EAC-458F-DC19-5801-14BD0B18D75E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "A7F1F3FF-43EE-3D2F-AF72-61A3E0683C2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504480292 89.487437788403724 -90.000002504480292 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.987846675914698e-16 3.1805546814635168e-14 -5.5173828725626983e-32 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-16 3.1805546814635168e-14 -5.5173828725626983e-32 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing6_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "EBF778F5-43A8-C42A-9149-DA80B63CDC96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing6_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 419.35579211602061 -5.7559571387656021 -24.122033079839518 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 179.41579035954763 -21.045497062803687 -179.18747191169118 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -44.693070637660242 -1.021405182655144e-13 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing6_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "1DEE81E8-494E-29D7-5DFF-95AD6B19216D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing6_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 419.35579211602061 -5.7559571387656021 -24.122033079839518 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 179.41579035954763 -21.045497062803687 -179.18747191169118 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.6718387560320076e-07 1.7139050711433069e-08 -1.7948801979492604e-07 ;
	setAttr ".rsrr" -type "double3" -1.2492373953951438e-14 -2.5320197034463467e-14 
		3.4402171535048744e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing5_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "F7519069-4042-816F-CE10-A886304B33C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing5_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 376.61436802375039 -5.3491280183394334 -11.065397998227942 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.3855531898582 -16.986120131977593 179.45465346158957 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -72.715759867250881 1.4210854715202004e-14 -4.2632564145606011e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing5_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "123456B2-418B-F1E3-5E51-9AAB733E0686";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing5_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 376.61436802375039 -5.3491280183394334 -11.065397998227942 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.3855531898582 -16.986120131977593 179.45465346158957 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.7824816607108899e-07 2.304138285275306e-08 -1.4669109945237538e-07 ;
	setAttr ".rsrr" -type "double3" -1.1427012376078396e-14 -1.0343402986922558e-14 
		-3.6060781105265067e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing4_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "1706E726-4DD5-340B-EF31-4DB5417BEE62";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing4_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 306.38214318338834 -5.8219723562689447 7.7705449109182378 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.0531222876324089 195.0128232658696 0.38574280771749347 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -65.887185290147698 3.1086244689504383e-14 1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing4_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "EBCD6854-420A-F015-E0EF-81AECEE8E6D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing4_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 306.38214318338834 -5.8219723562689447 7.7705449109182378 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.0531222876324089 195.0128232658696 0.38574280771749347 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.8335392619460545e-07 1.6652160702528502e-08 -1.2985445902778884e-07 ;
	setAttr ".rsrr" -type "double3" -2.7724249108147809e-14 -2.6055933255334233e-14 
		1.5488509266067396e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing3_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "732425B7-46D4-9A90-9655-BCB60E453E7B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 241.96318599946105 -5.354491325167948 21.594459055586022 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.67137803258294 -12.111328102327073 179.58421835608237 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -85.532998589299098 -4.2965631052993558e-14 1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing3_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "71482655-4465-3D34-4C63-73BB4B81683E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 241.96318599946105 -5.354491325167948 21.594459055586022 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.67137803258294 -12.111328102327073 179.58421835608237 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.8898252934496967e-07 2.3596648398009856e-08 -1.054028572060476e-07 ;
	setAttr ".rsrr" -type "double3" -9.0819745005852767e-15 -4.8282932151709347e-15 
		8.0197189331433601e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing2_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "5F1FA4D0-4916-CDB3-1498-6DB0D72FD947";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing2_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 157.81678711897075 -3.2280865342731349 36.7851076851776 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.82626049805063 -10.229989578566853 178.55242651272911 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -90.134813631629001 -5.5011550870176507e-14 2.1316282072803006e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing2_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "81290BCD-4DDC-16B4-4346-47BD5F9234C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing2_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 157.81678711897075 -3.2280865342731349 36.7851076851776 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -178.82626049805063 -10.229989578566853 178.55242651272911 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.9161924700546942e-07 3.3212637251937067e-08 -8.9319185627082608e-08 ;
	setAttr ".rsrr" -type "double3" -8.7849622531097381e-15 -7.7650260777921464e-18 
		-4.6900757509862393e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Wing1_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "BBB8A93F-45DB-E056-5553-C89833B50B5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing1_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 68.73867747507667 -1.4185377436336248 50.426975000658032 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -179.56332350914212 -8.7051455167185026 178.8362432610615 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -73.353451490404268 -1.3322676295501878e-15 -5.4001247917767614e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wing1_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "DF2F62F6-42FE-E669-1070-FE95EFDE25CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWing1_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 68.73867747507667 -1.4185377436336248 50.426975000658032 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -179.56332350914212 -8.7051455167185026 178.8362432610615 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.939688943412992e-07 3.1983763991954962e-08 -7.5777832385469598e-08 ;
	setAttr ".rsrr" -type "double3" -4.0949641523842781e-14 -5.9464569703729495e-15 
		1.8791363108256146e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "WingBase_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "362EA143-4DF7-AF09-14A2-FAB5AF9108DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWingBase_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.10770794405086392 -1.4185170251207833 76.3213540584008 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -179.99993592932736 -20.671428510739691 179.99998270338668 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -66.704225468539875 3.2099763853272796 0.10770791797295581 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "WingBase_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "8F974633-49E0-0BE7-4373-7E958FC5783E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWingBase_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.10770794405086392 -1.4185170251207833 76.3213540584008 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -179.99993592932736 -20.671428510739691 179.99998270338668 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.6809662685114885e-07 2.2404496647438679e-08 -1.7650518861559956e-07 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976374e-14 -1.2722412851506015e-14 
		-8.9950062085140062e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth5_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "10A963B4-40F9-C642-F1C4-03AC7E6B047B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth5_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 33.365103075949101 -14.022437279223384 273.08067408294909 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 137.88774989165773 30.410319826847783 20.436989700864537 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -21.425965792840657 6.5369931689929217e-13 2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth5_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "9FA82E41-4433-115D-F2CE-159D505E5E82";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth5_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 33.365103075949101 -14.022437279223384 273.08067408294909 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 137.88774989165773 30.410319826847783 20.436989700864537 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.8239334058333594e-07 3.061200984250149e-07 1.7817451669361875e-08 ;
	setAttr ".rsrr" -type "double3" 4.2689007365268134e-14 -8.535316664708739e-15 1.8129782886428259e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth4_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "47512082-4248-F3FC-67F3-DAA12B9DACA9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth4_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 52.210359662796861 -10.028699226454322 263.70099547983511 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 134.69831835278794 25.961784514081916 11.96524898505538 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -21.605795401005224 -5.6843418860808015e-14 -2.5579538487363607e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth4_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "8291D4A6-43D2-47C0-8C7F-D3A0ACBD8C21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth4_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 52.210359662796861 -10.028699226454322 263.70099547983511 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 134.69831835278794 25.961784514081916 11.96524898505538 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.2361106465281376e-07 2.465872916320346e-07 1.121612839476747e-10 ;
	setAttr ".rsrr" -type "double3" 3.7296973256849512e-14 8.2992598719438549e-15 2.5643222119299598e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth3_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "21B5D75D-4CD3-F2C2-7F3B-809CD29808D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 70.051566161005923 -8.1881446047807849 251.65466391030736 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 125.42437404874478 33.886597670590547 5.889975709066694 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -20.262204395224828 -1.0800249583553523e-12 -7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth3_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "CF1D09BF-4110-252A-6541-2DA04739F416";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth3_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 70.051566161005923 -8.1881446047807849 251.65466391030736 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 125.42437404874478 33.886597670590547 5.889975709066694 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.0852211255307561e-07 2.6811796179066048e-07 -3.8393725953580568e-08 ;
	setAttr ".rsrr" -type "double3" 3.0115877140107673e-14 1.3914926731402868e-15 6.5598940305185035e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth2_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "BC9115C0-4B4F-57C0-CFA1-A9856479D5C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth2_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 84.352644864662665 -7.7113581428800551 237.30862788862402 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 111.9576964404566 45.074004808798108 1.9094879501193363 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -24.592217789432937 8.5265128291212022e-14 7.1054273576010019e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth2_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "531B8359-4334-EEE2-FAF8-349879B4DB95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth2_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 84.352644864662665 -7.7113581428800551 237.30862788862402 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 111.9576964404566 45.074004808798108 1.9094879501193363 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.5932978113588333e-07 3.3146546125996578e-07 -3.5557428463755868e-08 ;
	setAttr ".rsrr" -type "double3" -2.2164490436448879e-14 -1.3716142063811415e-14 
		-8.6098609150555308e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Mouth1_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "5C8486FB-424A-3D01-F3CF-08BD9A79096A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth1_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 95.533474736642887 -3.4815392179774443 215.81735405389583 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 123.92520793599124 60.915702763719985 20.722127964592236 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -169.0268993378123 -7.815970093361102e-14 -3.8746783559417963e-13 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Mouth1_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "4DC12DBC-4476-8A01-FDAC-A2BE49A54071";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouth1_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 95.533474736642887 -3.4815392179774443 215.81735405389583 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 123.92520793599124 60.915702763719985 20.722127964592236 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.3138770431621248e-07 4.3210103704137662e-07 -1.8939132789189455e-06 ;
	setAttr ".rsrr" -type "double3" -3.1805543707135207e-15 -1.9878466808866978e-14 
		-1.79135176358631e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "MouthBase_L_pointConstraint1" -p "ConstraintSystem";
	rename -uid "9E844984-47ED-CF35-228D-A095D412B8C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouthBase_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.10771160963399856 -1.4185132942509511 76.319109063426652 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -91.022144876202816 55.619125595757062 178.76150565404447 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -66.701980596773126 3.2100001992764766 0.1077115835569683 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "MouthBase_L_orientConstraint1" -p "ConstraintSystem";
	rename -uid "F655AB79-460D-8229-7AFE-058984A2FC58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMouthBase_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.10771160963399856 -1.4185132942509511 76.319109063426652 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -91.022144876202816 55.619125595757062 178.76150565404447 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.8207522315203932e-07 4.1295987065351278e-07 -2.5849567981898821e-08 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585818e-14 3.1805546814635152e-15 -3.9725156682451397e-31 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "2F3348BE-4D3B-8DAB-36E3-CC976994843F";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "0020BC77-4DC7-EED5-930F-4AB9EE2BE955";
createNode transform -n "buildPose" -p "MotionSystem";
	rename -uid "EC961736-492E-21B7-2AC0-D4A013BEAFEC";
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
		"xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing5_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing5_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraTail3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTail3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTail2_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraTail2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing6_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing6_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraTail1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTail1_M;xform -os -t 0 0 -0 -ro 0 0 0 FKExtraTailBase_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTailBase_M;setAttr FKTailBase_M.Global 10;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth3_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth2_R;setAttr FKIKSplineTail_M.FKIKBlend 0;setAttr FKIKSplineTail_M.FKVis 1;setAttr FKIKSplineTail_M.IKVis 1;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSplineTail1_M;xform -os -t 0 0 0 IKcvSplineTail2_M;xform -os -t 0 0 0 IKcvSplineTail1_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSplineTail2_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSplineTail3_M;xform -os -t 0 0 0 IKcvSplineTail3_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSplineTail4_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSplineTail1_M;xform -os -t 0 0 0 IKcvSplineTail4_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSplineTail1_M;setAttr IKSplineTail1_M.stiff 5;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSplineTail2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSplineTail2_M;setAttr IKSplineTail2_M.followEnd 3.333333333;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSplineTail3_M;setAttr IKSplineTail3_M.followEnd 6.666666667;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSplineTail3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSplineTail4_M;setAttr IKSplineTail4_M.stiff 5;setAttr IKSplineTail4_M.stretchy 10;setAttr IKSplineTail4_M.followMain 10;setAttr IKSplineTail4_M.followRoot 10;setAttr IKSplineTail4_M.followTailBase 10;setAttr IKSplineTail4_M.volume 10;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSplineTail4_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSplineTail1_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSplineTail1_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing1_R;setAttr FKWing1_R.Global 10;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWingBase_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWingBase_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth5_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth5_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth4_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth4_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MainExtra1;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing6_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing6_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing5_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing5_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing4_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing4_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouthBase_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouthBase_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTail5_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraTail5_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraTail4_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKTail4_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing4_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing4_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWing1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWing1_L;setAttr FKWing1_L.Global 10;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWingBase_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWingBase_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth5_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth5_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth4_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth4_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouth1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouth1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMouthBase_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMouthBase_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSplineTail2_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSplineTail2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSplineTail3_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSplineTail3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSplineTail4_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSplineTail4_M;");
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "18D293F7-46DF-F88C-8B78-57937A0E1AA1";
	setAttr ".v" no;
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "DA1C1D1A-412B-9C89-441E-50AB545379D2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 65.064364671708546 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000002504478161 89.487437788403724 -90.000002504478161 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -3.9103253968164609e-10 -0.0089457788921135199 -0.99995998571943534 0
		 -1.7490800474639911e-12 0.99995998571943534 -0.0089457788921135199 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 1;
createNode joint -n "WingBase_R" -p "Root_M";
	rename -uid "0DABACD3-40BB-D21E-21CC-36951B7562E0";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.338362872601085 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999134857799 69.328571585217972 0.51251685138939396 ;
	setAttr ".bps" -type "matrix" -0.93562018132847613 -2.7946974389390608e-07 -0.35300832325993547 0
		 -8.988593975063077e-08 -0.99999999999946576 1.0299157815513529e-06 0 -0.35300832326003473 9.9534047516180404e-07 0.93562018132795122 0
		 -0.107707865817095 -1.4185176072628685 76.321354091763638 1;
createNode joint -n "Wing1_R" -p "WingBase_R";
	rename -uid "30047CD4-41B2-0C89-9BC8-CF89B331FF04";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.016707681578955906 -11.962066317053818 1.1758826994667506 ;
	setAttr ".bps" -type "matrix" -0.98827640594827082 -0.020076025681897959 -0.15134959081143334 0
		 0.019156150236837571 -0.99978812127110428 0.0075335564841322537 0 -0.15146876692596492 0.0045459606262788039 0.98845159056370191 0
		 -68.738677460464459 -1.418537881120707 50.426975202644321 1;
createNode joint -n "Wing2_R" -p "Wing1_R";
	rename -uid "941AD470-475E-0864-FE9D-8FB0BA1CB64A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 21.383249647324767 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.69394247055738822 1.5270339304762133 0.26777084294288567 ;
	setAttr ".bps" -type "matrix" -0.98378871655813127 -0.024860636580348122 -0.17759985901380826 0
		 0.021620110633261105 -0.99956300679775345 0.020158528161555979 0 -0.17802340292531854 0.015992003947427991 0.98389629728982886 0
		 -157.81678713770344 -3.2280864425516707 36.785108074494801 1;
createNode joint -n "Wing3_R" -p "Wing2_R";
	rename -uid "1CF11D1B-4F76-1535-AEC1-1CA364EF5B8D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 16.471796322536711 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.33778012185295769 1.8618824604322075 -1.0477351171457945 ;
	setAttr ".bps" -type "matrix" -0.97771602971672233 -0.0070951732909634649 -0.20981187704927529 0
		 0.002390019606448275 -0.99974013123614502 0.022670637446192628 0 -0.20991820559744184 0.021663991135225227 0.97747890946395521 0
		 -241.96318605531371 -5.354490976780502 21.594459614595955 1;
createNode joint -n "Wing4_R" -p "Wing3_R";
	rename -uid "9DD3D9DE-468F-B696-F744-85B0E62F4FCC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.178939966812877 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.10868284385720899 2.8838789701861609 -0.84230421117040866 ;
	setAttr ".bps" -type "matrix" -0.96584598729216831 0.0065026403788584651 -0.25903521864742585 0
		 -0.011492099262626301 -0.99977637279976916 0.017752071593914748 0 -0.25886185598916361 0.020122625560318168 0.9657047268468788 0
		 -306.3821432731612 -5.8219717731487775 7.7705456200575007 1;
createNode joint -n "Wing5_R" -p "Wing4_R";
	rename -uid "607355D3-4070-6B2B-9BA7-33AB12DD4B02";
	addAttr -ci true -sn "fat" -ln "fat" -dv 11.173267659415089 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.31949717286828805 1.9912137999136914 0.85453382496187513 ;
	setAttr ".bps" -type "matrix" -0.95633223468910533 -0.0091027317820810399 -0.29214003006887845 0
		 0.0012838856651259834 -0.99963610370515088 0.02694460626515776 0 -0.29227899091816484 0.025392921125561484 0.95599591579910548 0
		 -376.61436815984746 -5.3491271137080458 -11.065397108291457 1;
createNode joint -n "Wing6_R" -p "Wing5_R";
	rename -uid "96C024E1-4148-A7C7-8A4D-D2BE2CA050B2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 8.0059801522084939 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8045987310803684 4.0263687680790134 -1.3846241661163301 ;
	setAttr ".bps" -type "matrix" -0.93320171696951115 0.013234894859890496 -0.35910916585796532 0
		 -0.010518892422922138 -0.99989939341295342 -0.0095160892494506912 0 -0.35919898155110502 -0.0051030001426772623 0.93324704716500062 0
		 -419.35579228415838 -5.7559560107033585 -24.122032091977633 1;
createNode joint -n "Wing7_R" -p "Wing6_R";
	rename -uid "CDFA1E12-4DB7-6827-7EAE-EFA809683C5B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 8.0059801522084939 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 32.023920608834146 1.7763568394002505e-15 2.6603126457303006e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "MouthBase_R" -p "Root_M";
	rename -uid "92749A11-44F8-9967-02B1-CA91FDDFC28C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 42.256724834453159 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.478402614324196 34.371718054606077 -178.64015532634181 ;
	setAttr ".bps" -type "matrix" -0.56455962534495419 -0.012205325704482642 0.82530204134899143 0
		 0.82536351633341332 6.525127767705992e-07 0.56460168783427978 0 -0.0068916860134445894 0.99992551223779758 0.010073462159077716 0
		 -0.10771153140286316 -1.4185138763734337 76.319109096789532 1;
createNode joint -n "Mouth1_R" -p "MouthBase_R";
	rename -uid "DF0D918B-4D26-652C-F90C-F6B902DFD82A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 6.1480544473582057 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.005560191397418 9.5736635699689572 61.754540663644988 ;
	setAttr ".bps" -type "matrix" 0.45464910767137451 -0.17199828369202713 0.87390547503755811 0
		 0.87570629575002656 0.26542474757150003 -0.40334623707228529 0 -0.16258127960312485 0.94866553314832858 0.27129510452458971 0
		 -95.533474494777437 -3.4815422356098873 215.81735416317665 1;
createNode joint -n "Mouth2_R" -p "Mouth1_R";
	rename -uid "5BF14EB9-423C-95D6-4A75-6DAEAB2CF714";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.0655510988061323 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.7184761210373702 -3.1533950331836906 19.071402757124051 ;
	setAttr ".bps" -type "matrix" 0.70580073231447626 -0.023530838915511602 0.70801950953648274 0
		 0.66875460496622863 0.35183393868282914 -0.65496576851572219 0 -0.23369339871038758 0.93576662646776387 0.2640610084588943 0
		 -84.352644604762745 -7.7113615832027715 237.30862790533038 1;
createNode joint -n "Mouth3_R" -p "Mouth2_R";
	rename -uid "A660D952-4F2F-2FCF-CA49-BC87097AEA82";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.4014488502512918 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.49808729786662 7.2075144329736425 9.1101652253445984 ;
	setAttr ".bps" -type "matrix" 0.82576022622753076 -0.085188013198969265 0.55755094044209963 0
		 0.51141983069773145 0.52994444458602452 -0.67646776894506466 0 -0.23784407823143427 0.84374278548596915 0.48117388373707182 0
		 -70.051565884763178 -8.1881483398025985 251.6546639009278 1;
createNode joint -n "Mouth4_R" -p "Mouth3_R";
	rename -uid "773FA78C-45E0-694A-6E33-7BA6CD676366";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.356491448210182 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.4837047724754058 8.9645464460135731 3.1861942419083267 ;
	setAttr ".bps" -type "matrix" 0.8795522579335826 -0.18639711313557483 0.43777156346507962 0
		 0.45023838926221071 0.62357933638407148 -0.63908857294538668 0 -0.15386103599841711 0.7592133609529832 0.63239374929862258 0
		 -52.210359375472713 -10.028703219632352 263.70099541459973 1;
createNode joint -n "Mouth5_R" -p "Mouth4_R";
	rename -uid "CF6E9270-4CBB-827F-65F7-74B0590222E8";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.8200318508301265 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.96042310143822907 1.8829856105334313 -8.482523774586495 ;
	setAttr ".bps" -type "matrix" 0.80813884328047725 -0.30113817775696206 0.50618910288399965 0
		 0.57710820277226738 0.57661345798376817 -0.57832779836781512 0 -0.11771886966096451 0.7594950414382029 0.6397730455063948 0
		 -33.365102784693178 -14.022441482496001 273.08067392035883 1;
createNode joint -n "Mouth6_R" -p "Mouth5_R";
	rename -uid "1C80E7EA-4A4D-A0EF-C959-95879BDC4B4D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.8200318508301265 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" 23.280127403320506 -2.8421709430404007e-14 2.8421709430404007e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "TailBase_M" -p "Root_M";
	rename -uid "4DACC03D-4171-4314-4E5C-2DBAAA4EB5CE";
	addAttr -ci true -sn "fat" -ln "fat" -dv 65.064364671708546 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.9392333795734899e-16 ;
createNode joint -n "Tail1_M" -p "TailBase_M";
	rename -uid "3B3FFCF5-438A-597B-DC1B-F8BF08FA131D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.31042102540010469 ;
	setAttr ".bps" -type "matrix" -3.9103627688730307e-10 -0.0035280219341235677 -0.99999377651125021 0
		 3.6949831800157303e-13 0.99999377651125021 -0.0035280219341235677 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -3.2635553631605015e-08 -5.9717004164848895 -73.808090216480153 1;
createNode joint -n "Tail2_M" -p "Tail1_M";
	rename -uid "B046997A-413C-5282-D6CB-C9B0D35041D0";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.20214168964234877 ;
	setAttr ".bps" -type "matrix" -3.9103253966389376e-10 8.7867934456253849e-09 -0.99999999999999989 0
		 1.7490840162515266e-12 0.99999999999999989 8.7867934456253849e-09 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -7.0092308109351459e-08 -6.3096437786878168 -169.59583341290823 1;
createNode joint -n "Tail3_M" -p "Tail2_M";
	rename -uid "8AE5EEB7-406B-915E-D28B-C39BA8CD4921";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -3.9103253966389376e-10 8.7867934456253849e-09 -0.99999999999999989 0
		 1.7490840162515266e-12 0.99999999999999989 8.7867934456253849e-09 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -9.8477489262515908e-07 -6.3096429395267224 -265.09838868139553 1;
createNode joint -n "Tail4_M" -p "Tail3_M";
	rename -uid "C79FEAB3-4F2F-BDC3-5A12-19A474BD99C8";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -3.9103253966389376e-10 8.7867934456253849e-09 -0.99999999999999989 0
		 1.7490840162515266e-12 0.99999999999999989 8.7867934456253849e-09 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -1.9491885609181747e-06 -6.3096420547405367 -365.79339600561428 1;
createNode joint -n "Tail5_M" -p "Tail4_M";
	rename -uid "294E45B9-448F-B747-4938-9593326F868C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -3.9103253966389376e-10 8.7867934456253849e-09 -0.99999999999999989 0
		 1.7490840162515266e-12 0.99999999999999989 8.7867934456253849e-09 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -2.9233139597753934e-06 -6.3096411610444916 -467.50241089819247 1;
createNode joint -n "Tail6_M" -p "Tail5_M";
	rename -uid "DFB2E0F3-40CD-F0ED-7886-C1B097DCA5A7";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -3.9103253966389376e-10 8.7867934456253849e-09 -0.99999999999999989 0
		 1.7490840162515266e-12 0.99999999999999989 8.7867934456253849e-09 0 0.99999999999999989 -1.7490800474639911e-12 -3.9103253968164609e-10 0
		 -3.437520653418455e-06 -6.3096406892936452 -521.19104004858286 1;
createNode joint -n "WingBase_L" -p "Root_M";
	rename -uid "303F3B24-486C-2C62-DA3D-C1B530C84791";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.338362872601085 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5073207395302046e-05 110.6714284883421 0.51251636857897964 ;
	setAttr ".bps" -type "matrix" -0.9356201805991855 2.824476888292511e-07 0.35300832519285946 0
		 -9.286665695300564e-08 0.99999999999944844 -1.0462518326652855e-06 0 -0.35300832519296022 -1.0116770316658291e-06 -0.93562018059864316 0
		 0.10770797012881654 -1.4185176072636216 76.321354091595111 1;
createNode joint -n "Wing1_L" -p "WingBase_L";
	rename -uid "60763470-442F-D85F-E8C9-739C9F19C098";
	addAttr -ci true -sn "fat" -ln "fat" -dv 22.533703407907247 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.016707681578947448 -11.962066317053807 1.1758826994667528 ;
	setAttr ".bps" -type "matrix" -0.98827640569543362 0.020076025208582319 0.1513495925251834 0
		 0.019156147241190281 0.99978812120513449 -0.0075335728562974805 0 -0.15146876895448952 -0.0045459772251597889 -0.98845159017651418 0
		 68.738677491029051 -1.4185380998041068 50.426975007015123 1;
createNode joint -n "Wing2_L" -p "Wing1_L";
	rename -uid "4EC99BD4-4FC7-28F5-3EA2-77BD09098AB2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 21.383249647324767 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.69394247055738822 1.5270339304762133 0.26777084294288567 ;
	setAttr ".bps" -type "matrix" -0.98378871626532427 0.024860636549234729 0.1775998606401254 0
		 0.021620107612202469 0.99956300653288577 -0.020158544535134097 0 -0.17802340491031482 -0.015992020551045271 -0.98389629666079792 0
		 157.81678712958546 -3.2280867714877601 36.785107640902453 1;
createNode joint -n "Wing3_L" -p "Wing2_L";
	rename -uid "7B5D2593-487A-7A5A-7414-DBA9BF6FCA6C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 16.471796322536711 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.33778012185295769 1.8618824604322075 -1.0477351171457945 ;
	setAttr ".bps" -type "matrix" -0.9777160293044137 0.0070951738041681997 0.20981187895326414 0
		 0.0023900165796718366 0.99974013087291991 -0.022670653782936177 0 -0.20991820755227364 -0.021664007729077044 -0.97747890867637399 0
		 241.96318600413201 -5.3544914298951678 21.594458959840495 1;
createNode joint -n "Wing4_L" -p "Wing3_L";
	rename -uid "C8163B66-478C-1A93-9B5F-C389AD3EA3C2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.178939966812877 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.10868284385720899 2.8838789701861609 -0.84230421117040866 ;
	setAttr ".bps" -type "matrix" -0.96584598673763633 -0.0065026390261574852 0.25903522074902652 0
		 -0.011492102279349336 0.99977637247551532 -0.017752087902570809 0 -0.25886185792426508 -0.020122642107713407 -0.9657047259833631 0
		 306.38214318265284 -5.8219723404076671 7.7705447859010093 1;
createNode joint -n "Wing5_L" -p "Wing4_L";
	rename -uid "B83A49FC-4BE5-3501-7821-BFBF9DAA01A6";
	addAttr -ci true -sn "fat" -ln "fat" -dv 11.173267659415089 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.31949717286828805 1.9912137999136914 0.85453382496187513 ;
	setAttr ".bps" -type "matrix" -0.95633223411269608 0.0091027337039416914 0.29214003189589416 0
		 0.0012838826298298884 0.99963610326880892 -0.026944622597916711 0 -0.29227899281749931 -0.02539293761396004 -0.95599591478045631 0
		 376.61436801565037 -5.3491278381381342 -11.065398146579764 1;
createNode joint -n "Wing6_L" -p "Wing5_L";
	rename -uid "E2E8E803-4C0A-149D-9757-159591965FD1";
	addAttr -ci true -sn "fat" -ln "fat" -dv 8.0059801522084939 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8045987310803684 4.0263687680790134 -1.3846241661163301 ;
	setAttr ".bps" -type "matrix" -0.93320171618816605 -0.013234891775073129 0.35910916800210346 0
		 -0.010518895383677666 0.99989939353705448 0.0095160729367743703 0 -0.35919898349434148 0.0051029838264359598 -0.9332470465062821 0
		 419.35579210281423 -5.7559568446372609 -24.122033248456795 1;
createNode joint -n "Wing7_L" -p "Wing6_L";
	rename -uid "8DCFBBF3-4D33-B019-E9B8-6C990AC5B3F9";
	addAttr -ci true -sn "fat" -ln "fat" -dv 8.0059801522084939 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" -32.023920608834146 -1.7763568394002505e-15 -2.6603123615132063e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "MouthBase_L" -p "Root_M";
	rename -uid "4907319F-4E3C-2933-61E8-5D853E60E6F5";
	addAttr -ci true -sn "fat" -ln "fat" -dv 42.256724834453159 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.478401589617178 34.371716539991532 1.359842133430351 ;
	setAttr ".bps" -type "matrix" -0.56455962631305079 0.012205311295474797 -0.8253020408998446 0
		 0.8253635156898218 -6.5965725981214565e-07 -0.56460168877510608 0 -0.006891683785933733 -0.99992551241367222 -0.010073446225065626 0
		 0.10771163571107333 -1.4185138763741878 76.319109096620991 1;
createNode joint -n "Mouth1_L" -p "MouthBase_L";
	rename -uid "721C1257-4B3B-6953-0416-0FBE88E619D4";
	addAttr -ci true -sn "fat" -ln "fat" -dv 6.1480544473582057 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.005560191397393 9.5736635699689696 61.75454066364501 ;
	setAttr ".bps" -type "matrix" 0.45464910603691744 0.1719982708677987 -0.87390547841189259 0
		 0.87570629693556523 -0.26542473913669645 0.40334624004893865 0 -0.16258127778816092 -0.94866553783338392 -0.27129508922954138 0
		 95.533474817264803 -3.4815410182729609 215.81735403176262 1;
createNode joint -n "Mouth2_L" -p "Mouth1_L";
	rename -uid "25808F69-4CC3-7E85-98F4-26B93C8DAD87";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.0655510988061323 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.7184761210373702 -3.1533950331836906 19.071402757124051 ;
	setAttr ".bps" -type "matrix" 0.70580073125869369 0.02353082930767534 -0.70801951090827009 0
		 0.6687546067078568 -0.35183392673185016 0.65496577315724425 0 -0.23369339691508789 -0.93576663120274806 -0.26406099326812166 0
		 84.352644953680951 -7.7113601308034356 237.30862783393098 1;
createNode joint -n "Mouth3_L" -p "Mouth2_L";
	rename -uid "2F9E659B-4A6D-8F94-3AE2-ACA9EB6B16F2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.4014488502512918 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.49808729786662 7.2075144329736425 9.1101652253445984 ;
	setAttr ".bps" -type "matrix" 0.82576022524163761 0.085188006258642174 -0.55755094296266505 0
		 0.51141983288255377 -0.52994443265822377 0.6764677766375381 0 -0.23784407695643883 -0.84374279367839977 -0.48117387000179945 0
		 70.05156625563319 -8.1881467179391585 251.65466385704357 1;
createNode joint -n "Mouth4_L" -p "Mouth3_L";
	rename -uid "1A2F4B93-4F0E-9F5A-28E7-56B81A20FF9C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.356491448210182 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.4837047724754058 8.9645464460135731 3.1861942419083267 ;
	setAttr ".bps" -type "matrix" 0.8795522568825147 0.18639710822205302 -0.43777156766895048 0
		 0.45023839161118034 -0.62357932519165848 0.63908858221133402 0 -0.15386103513317415 -0.7592133713521988 -0.63239373702447121 0
		 52.210359762131418 -10.028701444762017 263.70099541747737 1;
createNode joint -n "Mouth5_L" -p "Mouth4_L";
	rename -uid "2357B648-41C7-0B97-EE2E-0FBD5FB3C192";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.8200318508301265 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.96042310143822907 1.8829856105334313 -8.482523774586495 ;
	setAttr ".bps" -type "matrix" 0.8081388418667339 0.3011381715914393 -0.50618910880900847 0
		 0.57710820492646431 -0.5766134474622252 0.57832780670851502 0 -0.11771886880550421 -0.75949505187084143 -0.6397730332788808 0
		 33.365103178944423 -14.02243957939524 273.08067399308987 1;
createNode joint -n "Mouth6_L" -p "Mouth5_L";
	rename -uid "9F70FAF7-4EAE-7998-9AB4-598837E1756C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 5.8200318508301265 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	setAttr ".t" -type "double3" -23.280127403320506 5.6843418860808015e-14 -2.5579538487363607e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "Geometry" -p "Group";
	rename -uid "F362F71E-429A-9D55-62E2-888A012E2F72";
	setAttr -l on ".it" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "74189071-4652-1ECF-A318-BB9E9FC03049";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0EC6CC3E-444A-5627-0C76-6F9892F99879";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC2F3E2A-445A-B302-E95F-BE948B600CC9";
createNode displayLayerManager -n "layerManager";
	rename -uid "1D3469E5-4C6E-A2C5-5138-C1A87DA3CE20";
createNode displayLayer -n "defaultLayer";
	rename -uid "02596AA9-49E4-E861-96B9-B98BD72CC5B8";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FB078649-4D5D-4C59-551B-3F98B8CC978D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9A501437-42C2-2365-351E-41A6F7B0D128";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A7EB1A20-4809-AF02-2BFF-BFA693CE84B7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 877\n            -height 684\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 435\n            -height 318\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 435\n            -height 318\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 435\n            -height 319\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 877\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 877\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7C256BA1-4066-74EC-59E6-DBBBC3A0FD43";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode phong -n "MantaRay";
	rename -uid "F43EE367-43EC-F2EC-F291-1E986B43A361";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".cp" 2.0000007152557373;
createNode shadingEngine -n "MantaRayBirostris_Body_GeoSG";
	rename -uid "0F34F161-41CE-AB15-4E9D-D0B974CBE1C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7CC221C2-4A98-7A09-9E2E-C29BBFE85980";
createNode bump2d -n "bump2d1";
	rename -uid "1350C2D2-4571-7802-BE81-0AADC4A2EAE6";
	setAttr ".bd" 0.30000001192092896;
	setAttr ".bi" 1;
createNode file -n "normalmap_texture";
	rename -uid "ED30A32F-43AF-A9A5-6715-AA86A181F25D";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:\\My Drive\\Projects\\KafkaProj\\.share\\.Wip\\Animal\\Ray\\source\\MantaRayBirostris_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "AF49BED1-45DF-B040-68C2-B1AE906F4250";
createNode phong -n "MantaRay1";
	rename -uid "6C1F861A-4272-837D-28C8-F1845AB79AF7";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".cp" 2.0000007152557373;
createNode shadingEngine -n "MantaRayBirostrisSG";
	rename -uid "6AE98695-4C15-68A1-5145-6398F09BDB5D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "25629E39-4B1A-F6B0-936F-EABF122FC93D";
createNode bump2d -n "bump2d2";
	rename -uid "99220884-4058-1F51-034B-A591AF358938";
	setAttr ".bd" 0.30000001192092896;
	setAttr ".bi" 1;
createNode file -n "normalmap_texture1";
	rename -uid "ADBB8F63-4F77-EC3D-BE0E-7C8B4D79F023";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:\\My Drive\\Projects\\KafkaProj\\.share\\.Wip\\Animal\\Ray\\source\\MantaRayBirostris_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "0CA0956F-4318-3C43-29A2-BA8C7B8FCC05";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4EE87081-4415-A417-4344-218932C21836";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5A52935F-4451-F652-E3DA-9FBD28690129";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "BA02777C-4BCE-4D18-2A9D-ADA510EB9129";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "458ED0C8-4150-F9B2-3A6A-05A7B5D3A779";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "0C97DFC2-4F60-6E95-E1D8-C78536CDE3AE";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "5152A014-4F4F-E9E2-6C17-658DDF5E9EC1";
createNode multiplyDivide -n "Tail0Fat";
	rename -uid "B9FE9234-40E4-33D3-ABC5-C6A4C9FFADE0";
createNode multiplyDivide -n "Spine1Fat";
	rename -uid "51E4801B-443F-CC01-A762-0BA07877CF19";
createNode multiplyDivide -n "Test1Fat";
	rename -uid "69058B44-487A-16AE-9174-4C9A6679CC18";
createNode multiplyDivide -n "Test2Fat";
	rename -uid "A408DEEF-4A9A-1ED3-E81F-5AAEB9035B49";
createNode ngst2SkinLayerData -n "ngSkinToolsData_skinCluster1";
	rename -uid "D560638D-4C34-C641-1320-69B9A55514FA";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 16 29861 {
"nKgNXCADAAABAAAADAAAAEJhc2Ugd2VpZ2h0cwEUCQEE8D8JCAQAAAEsACIRDf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAJoBABif907mRuZSIsQKvgEAOFkM11IHu78/5TKYxDnSYRVIuCTUzsXA+b4/JpG+rUBNtz8BAACAQJ/PP4fKOgWiyM0/XkC24QVkmz/IsvEsZGV1FTjwPmKLKe3UDM0/eCzpZ2nAwj+/Z6iY7LnTP96OjcqJis4/i0orDQ6P0T+C7tMHuk/PP8wdPliAmbw/i9rdveT1thVI/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAXgEAFP1y7RjbxCZwCjjREZIu7m3RP4miGtt1ldP+wAn+wAn+wAn+wAn+wAn+wAmiwAkY9l5CgL2XYIKwARimV4P01Wt0gigA/gEA/gEAXgEAuBg3hulJer4/8xZqmbN7wj94lYnvKhPPPxhV2NBVT84/gCn5quoAtz+YPX/hJkG8Feg4FNSFWOSptj+aKIN3i1nPARhsgGWGzT8BEibZ9lG/P3tVPXOjxJo/+k8z5z/NzAEgBAAAIkwYIPA/E4KfT1LGoA0YGQFYsjKzWBRPnT/mTO0fyPHtP13kjVezy+8NKB6MGFzwP/KHBzjg4e8/njjr/dXp7z/QFO8VZOcRKP4BABloOAAAAKAqYdk/nnuf0qTUyAEQBcgmIBn+AQDGAQAYbowGkxBeiQ2MIAAAn9I7pbjpqxUQGJUAN/bCQMAVEBj4J1zCP+GiFRARARiOSy6+hGfDQhgAPgEAWJWa4tBS8NA/kdjFj2QKrD/xp4+zLKqWgjgA/gEAPgEAGKrOY1XMIHP+eADCeAD+AQD+AQCeAQAYnir3xKQvhTUgGE9vNdeBcbcVEBjmorKIkEe/FRAYT408o/FCoRUQEQEYSWs49SWGzUIYABEBOPXEAKPYVdc/223N+LMp0GIoAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAJ4BADh1SuC5E8aFP16GDwQloFeCkAMYqlPtGrvhtIIoABEBGJ0zhLLJOWSiMAD+AQCeAQAY4fyyyCkzWsKYABjUdIZK2Q==",
"HWoVOBiPy7q3dOtxFRD+AQD+AQA+AQAYDSZ7lgOIsQGgDOCnVNYBCAUBOHe4k325UrA/x0/phIqb2BUYGA7lUbYiyV8VEH4BABj+sOtSQTrJFTC48uhaK9kf4z9lLhbJXCziPzVQcGmg4MI/Fgp+lj72dj/8gWkiAarjPxzzm8/uz+QVOD4BADhIvlVr+zneP2EJDvIm/uBiKAD+AQD+AQD+AQD+AQD+AQD+AQB+AQCYDydakq3o3j8p/pXGm4vpP97D7PaNauo/H3EKo7A3sD+lds4rLQRkQuABWOqFkqFeKNk/nK3zqgui5z/8P0kEwLbrFSgU8Ouaql4jJsgKXgEANJoSFttJ9F8/nkGyevaF/ogE/ogERogEngEAGA8pZek1DYg1ABEBNHGlSKPyJ7E/3g254d2QJsgLFA7Mi8WWBCbIC3heo9YeypWiP53EPbgvGcM/TDButZwM4z+IVENCpBriFVgUp/m5ueOohqALFA4Y7eJM7xbACSgmN9Y/DhIHnpoy3gFIiKCjUNo/en2zBXRgtz+kxG85ZhGsP1TeIDssRYY/i43mWujBJmgK/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAXgEAGEyHBQ9fB4Rh0AUBOJepKJepKLc/+ImvUI3grxUYGMezBEo/0r4VEBEBFATGgQiMA0YgDlhHVJSOqCjNP/iz8PmPwOQ/eF7Gfhia4xVAFNQI/DkguqZgChjWmairM1HXAUBsoDCE2D8no6fEaxrQP1JZE3iQHtQ/rr5w4rs83wEg/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEABQEY0LE308XIkf6QAv6QAv6QAu6QAkWQVEwE5qjKj1c/Y73a+AYOcz99RPIUDS7GkA1+AQBYmoZWYjNdXz9ostCqXMFpP4KqYinW4WP+gAH+gAGigAEUsVYF3X68/mAO/mAOZmAOPgEA2N8gSX9NB8k/eFNm4N2U6T8qaLfu/GjqP+wVi7Z2anY/ky9EbdC7wj+2tQvJ5bfrPyplsNL2qefukAEpkDBgmQwPn98/fkjwHnj7/jAOpjAONFWd/Kkq9a8/7pvKIVqTRqALOCU8PC5Vb2M/k165RPz5XhXoFERhj3Xx7EaIAjiI80LZ783ePw5L+/GUBNkVMD4BALjsm/zxXNrmP8oKtD8am+s/QLZVyN4G7D8QmvBEI6zmP9GYlQC/cbA/odENOVQmekJIAHQCDnj4xx9uP/NhxxQCKmY/7zDrEOqbaD+1QWFpg8ImEAz+AQABASQFquA/UyzUbpDF+egAAv5ZAAFZ2gEAWK54KJNLi4k/SnBOZFRDtj8DYQVkBQ==",
"ctVCJAF+AQDwPmecB14mBJU/oOjSh5atxT/0u7dcIELKP1cxvzx1Bto/fdAYpd1M1z+WGaobyE7iP4f6WCkvnuA/l4Ajapl24sJwAL4BAHhWd4y/HYzcP4gulCwTEug/rBgFcCbP3D+mW3vH6UDn/oAAgoAA/gEA/gEAvgEAWLfNBWUYboU/Z+FYb7oVtj+gICNZ/kzSwigBuLXstTI+CJo/Q6lhp35Cyj/nlCkU087ZP2rwxqXBG9c/NJoZeBER4D+hVxuXfvjjwmAA3gEAmC9/WS0Foqw/PZtjvzwpwT/Ob7/+SG3HP/Hd1aRiftc/G8CEe/8P1v6QAKKQAP4BAP4BAP4BAP4BAP4BAP4BAP4BAGoBAEwgHvW+PxHFyLvr3MA/l6wFOPYEwYJYAhjwZK39B31RgigAFGhP9rH1PoasGBgGmTnescFTglAAONu8edm1Muc/SEC3Q42e5QEwDGCVJdwBCAUB9CQCUAXqlmDA0z8riRHEnmPSP7Vv4c1KruM/KmKbUIDp3j9eA1eH7xjaP/fyC/jyC9g/u/6H3WJV2j8cdN735QbWPxcXpsMLgOE/IkuwCIl+0j8KEIsKd8bSP0va2dNQZNM/knGN2hKq0T9Mk7z/LNvQPxBY23OuqdE/vswJ4cuc0D/RmFMXIRrPP20/qEYSY9A/5MoWcAVJzj84ZxZP9qXQP1RbKCuLANE/8RuTEzCR0D/8vcfVRuTYP7Lw/DC7tdg/gPDkBw9g1z8Pag0aV03RPz40ucCHJtc//gldSVEz3D/JWDEYNibUPwkvb8KuOt4/9dgu84th3j9A/Lgf8MDRP2s5ImvMXNc/TBbLUcNk1T+0zduRtTLhPxbFRXeXcNY/eq+nFrQb4T98GNx7scDeP56BTD9LH94/D5EvPuO44D/cXaOo/K3YP6B/yin4Htc/Lf1lxs1f3j8qkeIcLoLaP6XSdQkAUdQ/PuDBzxzi1j8yVnzXU3TQP/cLlgpxxNQ/6wCcsUbU2D+0S3q6PbjbPx0Biv6VUuA/w/tAUh3Z0z9Xq9FAXsjVP4D4YTQKjcU/lmJj4VPr1z/+J/Y49xBvPzNtqy95E74/AAAA4IxU1j/nmWFweEpuP/S8eryot7c/ZVJIQ4yF1z8AAAAAAAAAAIRh4xf8UuE/QUh0U0q6wD/G21SQ0xG5P2TKVjdrUsE/xka6LvTZ0j89aE2aG0LUPwAAAAAARSo2AQAYhp/IDD+RuVVIPgEAGBt63M6i0LNiIAA4BGGyCliG3D8KsOHb0j3aYigA/gEA/gEA/gEA/gEA/gEA/gEAvgEAFKbaUY+SxyacF54BABQ0nhXMYepmMAL+AQD+AQD+AQB+AQCY1AZ1CdQ1iA==",
"P/5dcYRui7U/mL+4ZoA1bD+39KHle229PwG+UgHgK9WCKAMYyhjCl5tJlBUo8D7siCljR0y5PySX2bfRTMA/t6dYPq9v4j9J1tUzjPPZP3u4vubh+to/vPT0Agk81z+giND9o0/XP3+AMY+JP+IBSCig9TbWPynq8r9ofcU4iIA1keE/9I8MC4Cf4j9zzhgvnajgP0RlqlrDYug/4h2P+vc2/oAL/oALhoALFKVBrQ9FhSZUGvBG+YKeBKhWuD84Wo5+XBrHP7/sAFhszsA/E6yOTApKxT/Qn54B/enJP4Ja/KAhp9M/my08jbVN0j9gs95UyBPWPwh5EbsOadchMP4BAPIBAPA+fI/bg3Ak3D8T6WzFvYPcP+6DXwZvi9w/Wu/ggb5B5z+YHm6XHm7nPzY1o2zlq9w/qN8DxT+t6D+9oRRJwhLo/sAA7sAABcD+AQD+AQD+AQD+AQD+AQCeAQCYzBswDyVAhD//3rr64161PzLBDjLBDtI/mFYe7Nomtz+0MHSMAXxrwhACNAb1oAzqQZk/TwCF2JmdudDwPmSImTlzntI/bQ/8XDS84z+5DznkPuTAPxC3tlUbvNk/ajGmbEQh1z+RK0q6UdfWP0Xnq9Tnqdo/pCEDSEMG4AGITEAHbNc/3fzHJfX/4z9VJsq4ccLj/gQZ4gQZWECwVmu36sk/Rbqe4OYpxT+Q7fOE7jrUAaj+AQD+AQD+AQD+AQD+AQD+AQD+AQCyAQDYvlwpc3A23z9lkLZqq8/cP0yJNovG69w/Ema/62UWwT+PjAH+Nue/P2t9jWCtr8E/bFkoYstCwf4oAuIoAjSA2CZ9sXFTP3tm1rjPtSaQMX4BABR+oqMC3LSGmA50cmcD4IGJWD+xr8YKjKXlPzSfMnVXztw//9IpMfB6EkAIcgEA9I4B0x9b1x4D2j8H7pJUjvXXP7Y84JKGP9o/uD7JIuaZ2D8d8ReF4EjXP7WY9g7cx9g/7pdJeahJ4T+ph0XnCVHhP6cyxTwtm+E/S69JnhH31T9ta6n7eFvVP01aAECtYdY/ZDvJUClS0j98axC6p/3TP1gBuBPypNI/CW+1tJ+F0T9ajFvl9JrUPxnJhmutQdM/ITPG1sDy0D8p7EKO9LHQP6yNrb1UwNE/nCu+S3RQzz8RESWlT3rOP5pOH2Q6fdA/ksFk642S0D9kCEjpDoDQP0mQ03z+7NA/fvbqO9Nq0T8GIf0zekLXP+F44iV6h94/aK8avWg94T8wlDJ8XmvePyVPhCNZrd4/r49ALndr1z/OH631ddvRPyRovtjeuNs/NhjxsF2y4D9fFdJ1uAXePy+15egpitg/f6lBhBf11j89Qa5yHEjeP0vdg9gqYA==",
"2j/3eohkBMLWP+jS9EvRRNA/3iHUiUWv2D9vJIlytE/gPyGzxyLup9M/Cnq/PAuZ1T+n70IZcLvXP6EtF5TbDtSCqAIUebPhV52+RvALFKCli2+d3tkA7gEABQEaBBkUcHpc/lg4/jAO/jAO/jAOpjAOOAQRd2yWssA/3sA4ZFFlsIKQAX4BABSnW/ZMt+xmfBk+AQA4LiJydVHDwj/wwlMKpBdcooAAAAM+SQD+AQD+AQDqAQB0GypsR7cJVj8oLJu9niajPzC8WnweKt0/hnvjZqJ9JoAhOM/3e4y4MdY/uF4fSWaMuqIsAd4BAB4EGSB+5l/6smq/P7EaBBkYiWzGl8aUwv6AAIKAAP4BAP4BAP4BAP4BAFQgOo7NjqyjPyuLAlflc90/0gvnRy+cWRAUO1Bt9Az9hsgp/gEAXgEAVDaxXPjDj6I/xz5xHKfA3j8YA7z8oRP+QB6mQB7+AQD+AQD+AQD+AQD+AQD+AQD+AQBqAQBI4Gf72T+artiYRZ3cPzpbcVEsDln4/gEA/gEAPgEAOOjtnjl5rsY/hIHOpE73y6EYMgQZ9LYBr0tNH8acwj9JKO35CTjFP5i86rRKoag/1phZm1Cm1T9koSFIWuncPzzANj7ANt4/QmFQPZ2m3D9x2l+X213HPz8vj1w58MI/QSrze+3vrz8beW58imO7PxAKEtF077k/Ub1RchJ7tz+D4r9fXwfgPzGHn4r1F98/8/T3IU9/3z8bN9jNnnXiP0NTSgcI8uE/jKz16WK/4j8G2IZwhDziPz5J58t7I+I/nN0PMoOV4j8iajy5VNfcP2LXDdRnK90/F2hzINmX3j8gPxe6vDDhPzXmz6DG/Nk/ICk7qUjN2z9BFxqddaO0P+DZU2IuldU/f/cNc3yvzj/bUL0/yavgP6VGHkpVO9U/3ftxLffwyz+lQyZOfrXFPwBzk9hUssc/v60MYS/1yD+EHDyfHJTBP5vG+xi++L4/oNeSju11wj95aLaKs2O5P4EJDiHsYbQ/GrI7lqQTwD9+T+R6sHO6P05/fc+2c8Q/g19AwI0JvT+G4/UeuPGmP62/rHcBrrM/bC9NAhgguD9rileasmbMP5mtq5SWp8U/1e21bHq5qj8d7ASDT42vPy1G+XNCT1Y/yYvKeinJryHI0gEAFFcGz43fG0bYKREBOMxZOtLtVIc/ocqJFxMWnuJoAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAF4BAJgpfEMVR4a5P1LNTnLBNd0/SpxYJ3Fi3T9R+AlZOSvfPw7DCX3fl9+C+AN4CVEU3PDtzz/mKwWUXBfWP6b1DpzBBMI/9QK0+oyZxg==",
"gkAA/gEA/gEAXgEAFB7G6B6ecybgLrijjJRK+u9RPz7YIOGDDaI/hQlrQo8Gwj+sDpdV3JjEP/qjQ8+zJeA/Nz6d4y7N3v74AO74AAX4XgQZOBGekJCiisI/8PgE8PgEwCIEGTS41Fwk4z24P59ncBMMWCYIPv4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAD4BADjQu8G4OhKFP3CzxL8gV6d1KHg5ieM4c3/dP6bYWbE7ut8/Uu8yuEI03z9e35RPxcvdFSgRATQpYDfH6/aIPxVaxbbgxibIMv4BAL4BAFQ6+h2oqY2iP4pXiCDOLVI/b0iz1NHWhjhD/gEA/gEA/gEA/gEA/gEA/gEA/gEAPgEAGLDFfYBuNdUiBBkASxoEGXSDhCMzktbbP3wxUz7ozNo/PFaBgMcq4D+IIapDDFFG2AL+AQD+AQD+AQA+AQAYAmi3pLrTyyIEGRgYk+WyGm3bQtADPgEA9I4BJXG+0sH23D/FyCQp+0PeP0X8pXEHtNw/UepIXdw73T+DLLTGXaXePxF7ICwH6Nw/Vb8Awd8BvT/Mg8VodePEP0yWGXrcLsI/Da5WvyW6xj+KZnZ680LLP1BdC98IDcc/mlUGjXhqrj+BEF0MVsGzP7T4ISzfX7o/4QqfhpmMtj8BfP9AxtKyPxtp143b9Lg/hUGiqjy63z9HteGekSvfP3eEclOxxd4/J3jeZkBR4j9eZrDW3Z3iP2mvc6S9zuE/wyKN7KZB4j/8r3ZqHJriPy1dmLy5KOI/h/QBfLkI4T/Duwg2w6PZP5sRELd/IdU/JV3026UVyD9Qdj98TQTOPyKVOKny/sA/d88sUObh1D/74HIWZoXgPy50x1hKvcs/FN53LffdwT8KJRU47du9P6MS587OY7g/DYJFvRF+sz9hH/KXtQa/P7oIRuSfbLk/1MYzEl76uz/ciu2v5bClP77azPntJ7c/yAphQhYMxT8W8I9xR1OpP1MmchoaAa4/KlXhH4I3rj+xbFFPjBicgrAB/gEA/gEA/gEA/gEA/gEA/gEA/gEAfgEAFLEpio5gCsbgEgAE/hkC/hkC/hkCihkCGPglJ0Qb/IL+JAP+JAP+JAP+JAP+JAP+JAP+JAPuJANlJBEBGMFT+AVP4Yf+EAL+EAJiEAIUi1jem+lW/jQL5jQL/gEA/gEA/gEA/gEA/gEA/gEA/gEAEQFUAQAAYPyJ2T8ikIx6v83VP+vXK9eq1YZQNRhntaq9QJHhgiADFBf/OZELnoZIKxRMPtk9KfKGKAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQ==",
"AP4BAP4BAP4BAJ4BADhplQrf7l2aPyTuWX2+QHyCqAb+AQD+AQD+AQD+AQARARhUarj5VDV7/jAB/jAB/jAB/jABojAB/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAXgEANAR55KnOFoI/EU+wu8M+JoQc/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA3gEAdBvYeg8jhNY/HK56Ph5V2D/u4oegXfzQP/i/mML/xf4wNOYwNDTx4iFdjJPjP+ALhhn76qYUKhg+DNvimqbpgugGGOxbmWBx/OiCKAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCeAQA0gJrgVe3+0T/a1WNsJmuGAAQRAQAFEQn+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQAdART40TUc4ogSDDwI4HVVJjhRPgEANOqQql+IU9A/NWEylj2bZigANL0LMB1nTc8/5FLUN1pXpswK/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAEQEUhXY19hKVRuANNDRO1JdjV+A/tKWUs6WURiAAGLUWorQWouTiZBg0jg1qvIR62D/Uk5QUstQSkDIIoPx0RmgAPgEAFENYtOL0Sh70eGYBABS4AmQjMyAScED+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQAyAQAU6Ah1LNtUJhh0fgEAAAZ+IQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD2AQAIQBRVEpBRCIAtpmacajSWPZvThMnYP/YQ6vUQ6hLIY1IBADQ4WleQS1HfPyWNd7blEIbMCv4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAA==",
"/gEA/gEAEQHwPvYSlRPa1dg/RYiBihAD5T+U8TqU8TrkP5hjV9A4Ud8/mbTWmLTW2D92VLsUV4nmPyY7cUt24uY/l9K7ltK71uIEGUoBAAjABhYSkA7+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQAIgBRYZpASvgEAAAe+MQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQDaAQAopbPaPzs7CsXE9epi1Ao4Fd4rFN4r1D8o2ZpOsjXtYigAFLblEJM03hLMCgiAo+P+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEv+JEsmJEv+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQB+AQA0de/86t751T/YHIrXHIoSAJkyAQA0FVeJ1lHt0j+1iR1pEzuGdFn+AQARATSHBeXx9DXsP4aTpAwnSWYERzSgpSKrubHtPx2w5+JPGGagDv4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAH4BAA7MrgTXTzKwZwggX/7mSBIACP7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA/7xA37xA/4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAB0BOBUT1+vsKMQ/MwiB9hhj7mLkGDTGNimLbVK2P5c0zCJWrXbotSi5ONA/EmbhRpiF62JQAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAD4BAHiNKXGJjmLvP2izWGUOdu4/yNPXcFhQvj/osW3NY9vKIkgOdBlfpjC98u8/LMQPfdNX7z//0uqmMnKyPxd/wuiAPSZswf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAN4BABhydJM5LrLpDuDHCMBBAxYcu84BAAAJzjUA/gEA/g==",
"AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQAFATI8zhIszgEGJvzOZgEAGNF875dwzqkNMGYBABQE2vJMd6qG3H8YuWd65J7pwYJQAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAPYBAH5wDl4gAEYBADhaztrRLq6TP43JdKoZn6hiOA44vsxBs56FWj93egdekAWVYigA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA3gEAFDsushlHN6b4Y14BAAALXhkA/gEA/gEA7gEADQE4ziZRfMl2nT8NNGPEpA6ktQQYqUVNDwo0mxUQ/gEAfgEAdEYKm4xeeqM/q51SIhCZqj+Z8boQUIebPy0M6nIvXib4u/4BAP4BAP4BAP4BAP4BAH4BADj3asT2XySdP+ER9oRH2KNVABi/o/AxxpJvFRD+AQDeAQA0uB4ug97smD9IcJ38JapGeOX+AQD+AQD+AQD+AQD+AQD+AQD+AQDeAQAAAOYBAFBApaCfP9mvtJtALaE/VZkl0qeNnT9+TwAYlsnW/OTMV4IoABiErn9hDo9fgigAFOve5l17WoZQADjxERX7MXyhP6AXJ0PPV6IFWAh7wKAFCG4BAJht7KaO0GOAPxnCIucjX5k/GOPoF+Polz830JRdqMyZP0M0KZZnp1qCSAARAfB5mNKjH1oLhz/jL79vF6SHPxiWaIFhiYY/iQlADGJVkD8L7NdmbNiQP+Rigel95JE/ZxircQB/kz+n38hsPHuTP80D7e76w5Y/H+p6jwuxkT802y1MELeRP08l6Ai1ZJY/0XkttvqSjD/fMaXAO6aEP5TsLCprpY4/AAAJgvA+XIG6/RMbgD9qZSu51jBwP3jmix9iBo0/ZOn4bHg4ez/MR9Yz5VBiP5p2EtGRJ1I/GPZrvJ1nWz8TxfjheKdZougA3gEAOOTRo1rO52o/GQTf+TLSW/5wAIJwAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BABEBmLONr7ffSrY/glKpJndWtT/Goltb0kV/P45PDKF1ouQ/U2WfYVGvzGXQ8ML/U+k/h7VWS2OM6z8iOdCG5EDrPzgUqw==",
"kNep3j89rm0LvkHtP0DUcS+STu0/2+GOBs2F6z8pIP7kjRXqPyIQOyECseM/2qhnr7/N7z/8DJ1O2v7rP7tVLrtVLus/WC8Ufgq93j8SfjI1Z5fqP7yGlPsFhNg/tPSuoqV31T83mgmSy+zrP+4xYoKBVNM/NNXdkp8EvD967qbnuZuuP2pvK3hA3a8/wW6xnWKbuD/ozV/9PyPFPwAAAGDkkdM/Jw8YiPI/tQHI8FvA/neUP5VusAnz1KM/fNKQ2GMbqz+YhSfbwSamPw5qmNmQU6s/lZqT1srY0j/6bhf8SbrSP0UQAokgBNI/SzEtOScy0j+W+I/gEv/RPxOAdO1/i9I/AAAAAFP+0AFgDAAREtsBCLBAZfHiP16dUP5S8to/XpzNCE776z/MUNNjhpruP1fa8Fba8OY/Soc00x4Lsz9e0ATwcWtfqA2QqME/8PMlaQ6cYD9W0CysoFnYP+YrBa+rR+4/yPIfatyW6j+gL2z/KvXsPxDdbf4uIuk/0MT/6WTM6z+1CrdvhaTqP4hKhoGoZOg/XhDnXsuq4T+HJfwj7rLhP+JW7novfbw/TV0Mc2V5wD8AAF6KAP4BAJYBAPD1tzp4ScWHtj9STq3EwfGrP1dtf0LY87E/25Jz/Rk8sz8yDk4yDk6yP3M69sztr6o/18zSOTM3sT+ZYAD24NOyP8Ev0PtAv9A/U4kauNqVzz/XNNCNuT/IP6S+qNwKuso/JpGuRxLuzT/sThDB7gTRPy9flW83tMs/R44drdQWxj8YjwaW0zBxP1wWvS+BKm4/khlVKKgLoz8bHwa4DDukP/OaH1ezP8k/58Vhy6J9yz8j/d6ofmm7P/I/U6FTCMQ/kKvUoz1upD860p6hAttyPy/5vFokEKw/NJRu7bl9tT+w1OHRG1eBP5v1jc4dRHw/AAAAAAAAhlwB8Ebgl6+gHnnsPwWTAPbZ/uM/7aCyRVpj7j93+WVAIhfMP1/il0t2o9E/wR9z/0Ws1z+ExTp39MjsP0dVZP+VTew/1iaF1SaF5UWY8EyJgOY//KrVAo5x4z/pGWSkZ5DhP9WuMqpdZeQ/iM3/tLz/2z+uHclsns/iP4kEVrdSb+Q/eCXsfqg94T8gY1uI7RjgP1gNI64aRtw/AIa7ADIBAFjRbYV9kdSzPxVAYceylbU/pzCKR1NOfgWY9I4BHkTkPxhj+Ru9Zcw/PCDiOyDi6z+Kc20mzrXpP4fARvJ+cus/3vSQIQtv3j+CkP5Va1PtPyCkqIAjVO0/NIoTNIoT5D99Xxium+3qP5BXeCwrhes/h2m/Frgl7D8H56HEjNjvP1+7gSsGU+s/9wrA7BWA2T9oSbbKSGLMP8sXqeuJ5No/Rg==",
"4/WLxuvnP/tX/ZV5l9E/4Fqk/lG61T/fNFB4fVzmP4JIkB8rbtA/ErzxRvDG6z8Er3e3N9C7P78gWE2iZrg/kg4vuMVDrz+2f+GOJzquP8RFooiLRME/AAAAIMgP0D8WWvIHwn27Pzli5aTgyJ0/xejpodZ+iD8AAAAAcG/MP727Dq8Fl8Y/EJGRJ9guxD8KdgPZJ/LLP0F5QdJ70cs/NTyEk4f3yD/94onjF0/MP+WlVslLrdI/IrfxhtzG2z/dAs/dAs/NP7Cc+benT8U/heHhCcPD4z8g3NxyAWzsP37Pwa5yp+4/TXSoindc6D9DDchgb6zqPxw3WUjU7OA/AAAAAAAAAAAAAAAyuAGeAQDwhpIehm52a7k/5a4yVtBdvz/bqSMlVty6P/tCtlUXK1w/TacrepNPkD9BaV/6WoKWP0R8PRqWF24/YUXjeupyxD9WfsnO1ee5P4VCsvZ6m9I/NVunlkmx0j+WpFgsCbGQP7+gpiJNiF4/48MRWlH3cD/ygma76OSkP/LXE0uzj30/vyeBWOv8s0FQvgEA8IZg3+zkP+EJ3onCvew/190oeFB47D9Fn/iKPvHlP2TxbzaLcOI/dUn26ZLs4z+FAa31/KXkP8xfFjWrGd0/b0iG9vWL4z+jxA8ukrPcP7CNpgK+9uA//NFu4EjU3D9pDXVOr1XJPxc7zXP5Zto/wV8Wd05q3D/r+Fp8azS5Pxo/dFAF3YA/AABWtwBYoW2F/ZLU0z/vt5L1ZEqQP6rJ+rgu+lwV6BiHazW/fLLGFRCeAQDYHKa5cbghxj+LbyRMUpGpP+bMdJEaPKQ/bAYQbmZ0pD8uoJEe/eWmP3Qh+4AuZK8/sCwXg2W5qMJoAP4BABEBONhsbryrXGg/kECX+Qi+YKKIABjxH4CC5HV2gjAA9DYCnV0ayNS8bj9ub6wu7KuxP85Tbtl1hLE/IXrAcVQfvD83mLxAGKbIPxYn5nzzhsc/EmiL7Zd0wj9KIkrbdtfCP//AeJEyx70/PV31ARyTwD8Wbx3RIcW9P1LreWoRIMI/FLbLwxtawT/gYlVzh2zCP8hJyunZDNY/wQHVx7am0j81Chadc4rTP892Jgphkd4/t8kiGpXe3D8L6CB1kfzdP/T8ys5D8OQ/MihsYQGJ4z89wJ8Qi2HjPx9n0fSca+Q/U0oyxSxY4z9QroHYjUDjP6tEPWeMM80/WW83f+Lazj+9vEQxEXjNPxvOAkjQXMU/+/BbmbjOxD8pLWultKzFP3twV23pZ8M/sqD9yeTCwT95p2t8LRfDP8wPjlp4O8c/uN/WuGrnzD9zOk+nBKzHPw+kIL3zGdE/2M21PZFR0j9JZt+HLdPYP4FXZbF8RQ==",
"0z+QGuhxr2DIPw6+b+2uMtY/iuBhB0ms1T9doSg8TIPaPxRDsDFxruA//3o2BrIV4j/qNlUnNvbZP4egai6tRN8/qkl1C7If4T/evQb/iILmP7lT3Htfw+A/5ge7fMa+1D9uJ4N31JbkP5Yg+b9oU+M/23Jg0c8+4j/K3XnTzRflPwAAAMAyUdM/VWzXqdiu0z8hjbcapF/FP5CwRAAkLKE/eq8Ctbt1pj/lA7J4jlDBP5Re7WyhEsM/37ykD1HAoz9I43vxa86ZPxjWohfWosc/mQX12Oc3wz/PEBmC3OjFPzwGTEK8yMVBWPD9QBYp0z8kXvdIvO7BP9976fDpl70/CHK9eLanvT8EA7Np31d4P56kFx62ha4/GtPIGdPI2T+adXJmio3JP6MAF0f/d7w/T8TJcHnYvT/YYEeKKfa8P8xFbKGwNrI/0dPJjm6Mrz/JG0n7GiyuP/R1GKKvw7A/AVNRO/9S1D8PIiZvde7aP0IRt2SxJdk/2R3Um4ivwD/zhlIJ49StP84Qc34jJbY/tQqmaBVMwT8USV3XbUXBP9oG3mqaHrc/LUFfO5EWtz8WcPzHtd29P7XWSDkeXrc/A83DrWZa0j8AAACA217TPzRJQVyxHpE//gA60HuTlj+x8avExq/SPwBa4QM4OpGR5HpyVz8jZMEq1OpRISjyAQAYxPrviPXfcaJIADhRPmlTWGGmP7Q1xgyj62iiOAAADPKmAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BADYBAFgWmShhkYmyP/JFuZ5aT7s/VDw86RVroCIMDJiSA7Iex+PsP4mU9t2dqew/1kiPvD0t5z/jYOe9FLvWP6smmKcr1OgFMIgEsMo/4iml0nLOwT95G7/kbfzCP+R1qjcUq+A/QJBuzFzTrwUoAQE4l5Up5PV3wT8lkozkScRnFRgYh5MrTCggeRUQ/gEA/gEA/gEAvgEAmDjzysKZV6Y/UkseUkse0j/fomBsojTtP4C7OzJfLK0/QQzi+853kDUgWHgPSfU/hes/oPzZKe3i4T/Vl+mpL9PjFSAY4TSAV46kxRUQ/gEA/gEA/gEA/gEA/gEA/gEA/gEAngEAGC/x1aRbyqli+AE4I9zmdlvcXT/EZZhfOdZSYigA/gEAEQE4uxKXJ7dkuj9+Id4e6B2yFXAUVN9AziNKmXDwT11fYxwF5ew//pjs3nn/7D+jEQ==",
"J35pHOc/AQAAgMN31z86pwG5kOboPxB/dxB/d8A/2zFKZscoyT/l/eQ2BDbCP5GFN296yOA/msdEzLRbsD8+wAA4NYhurA/Adz/+0OxHY33BFYgYfnwMr525cxUQ/gEA/gEA/gEA3gEAGCUI4xPViKX+CAH+CAH+CAHuCAElCH4BABSbnyubiYnutBMWtBP+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQDeAQAADf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bf65Bd65Bf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAO4BAA0B8Eb9j60+ACeVP7w1B8Fbc5A/dkPHYTd07D8ngwU/H5PrP64bh26/0+k/sk4iXEwQcT8/rgKWOreEP+skiKZncpU/yf9zPW0o0f4kE/4kE/4kE/4kE4IkE/4BABEBuOMNM05ufoo/e5nzkfW47D8aQuuZ91LoP/DGX6dKFFY/pa3YTAecYD/YunmP7Rjc/pgB/pgB/pgBYpgBGCtJ9S5G0IX+4AD+4AD+4ABi4AD+AQD+AQD+AQBeAQDwRkMlw8sl6ZQ/r0aSydm26z/UhTe+oofsP4P0zm2YK5A/RCyWljLQ6T+4zq0CKyVxPzJdfn0WDZQ/7r/PCfJzgz/4s5O2803R/vgB/vgB/vgB/vgB/vgB/vgBwvgB/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAfgEAAA7+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4Qb+4QZ+4Qb+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBqAQC4gZMK/sdW7z9SxvchZXzvP3OWOiFnqaM/rEE10lYvoD8zgpTLPJbEP7YA27jQiO/+fBT+fBT+fBT+fBT+fBT+fBQifBRYzayKrkdEpz8Stta4J6XMPw1/YCr0Ee/+oAHCoAFYCBmv0YR/uj/MOHKuJx23Pxyna9InurXCiAAUyDtXeisoZuRLEQE0+0PsuErfsj/bKkTnvqj+8ADG8A==",
"AP4BAP4BAP4BAP4BAP4BALjV5qHRtljvP0ffWi/qkZ8/wl/L3gNKoz9biJE8o37vPxwXF7KsrMQ/0TntZNiH78JIAv4BAP4BAP4BAP4BAP4BAL4BAFQxnB99HgO3P9CZ3ch0cLo/FRAbwsW9xgAE/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAAA/+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+wQb+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCKAQAUHqsum6tD/ngv/ngv/ngv/ngv/ngv/ngvZngvGAwiegk2YJz+NBbCNBZ4k5c2CoSD5j/utdivvFrpP/lY43E+lOY/XINax6xmwgWQ8FKkdKw/8pyeJxeynz9hoffTKAvAP4X1lu3QKKg/PzgwqkAruz/GbGphZk3oP0cxl49iLr8/oJX1rHgdfD8CKivugUpRP0bj13Q5ULY/3GbOte0u6wVY/gEA/gEA/gEA/gEA/gEA/gEA/gEAbgEAFLOkWkNRd/5wBP5wBP5wBP5wBP5wBP5wBGZwBBEB8D6aW9M8I2XpP11RPkw1lOY/HxrkAO2f5j/kAdkDV92/P7OEfEOZT8I/P6LSqyfnuj/DsakqTV+oPxHBEG/19Jb+yAP+yAP+yAP+yAP+yAP+yAP+yAOCyAP+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQARATS1L9hvgxR0Pz52LuFj5xYodv4BAC4BAAAQ/k0ALk0A/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAugEAeC8VTm4tssg/xRfI0vIMvj+PyDxP8tHKPylfKc5UZusO5BTwUsC1OO4/GAvDRm8C7z+oFwLLNf3rP6eQJvFyfe4/+Pi56pea7D8Eryq9UDbFP9cZDa4zGuw/1RSmDsXH7z9r6gi/WvfvP5gDZdH4Ne0/J4WgmEephjAy/gEA/g==",
"AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCeAQDwPg2HRZzH070/o+2XavB2yD96D2IbaaHKP8PfhB9VBOw/1N4grxls6z+4q4UKG6PsP+RkVS0Leu4/+HmHVFhI74Eg/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAkgEAOKBPIPnW1+8/nBjtwYnR7v54BkJ4BgASysYGmAISqd7fbrU/cdGVGjdjtj/FyjRvoJx/P0AipqTAwcw/WD+hUIG93gGs8NegwqfkP4pPViY+Wek/x6k3cqyQ6z/7yboENkXrPxHj6xWEOu0/9jF2c5U37T9VkqnDYYjjP3AMptBrzu8/2z9yQs/v6z96UBOevyPrP6CZ0wPNnN4/AAAAgAcA2z/2m5EWyNzSPzkwhJ39feo/w49ngpWJ6j9AXvj8DT3oPycAhLz+37s/NFFYBSpvuD+AZJLvOeTEP68dJG/f6qo/pCw4zhAF0z/xGlA6lL/GP9r0jJaFzNA/cRiLxhEIzD8AAADgleniP0+U+ki68+s/CGIsvO+c7j8AAACyNgHwPizATr3i4bE/albVjyu4sj9CQVK263KxP6RDI9sMILM/QAriMk8kpD8cD6Mg1uCrP8izgZAy83A/3nrbW47oeyFIBQE4TWby3e724z+2/7fwSnLsARgoYIp85T+FYV5UC0cFEKgg5GfjP1d89Q6hxeI/AQAAAGHs2z9ErE/p6YbhP3lO8xjGMtw/EJkQ8sAOJhiGFHl8T/zG3SZ4gxTGc+ZsFcMFULIBALjNl/MxZa21Pz1GmmWk67M/FZ2VVCWjfj/1dNkVFk3kP3NgSMcNeMw/IkmRedu66QHA8KqAMebrP4qs3Saydus/2Kq+UKqC3j8zJt7Gb03tP9TjFLJIPe0/x8GHmFDr4z9UovIKHtnvP6Or6e4NF+w/WxLlHb5I6z/lacLENGLZP+l4RTWhXMw/Eyltk9vS2j/INRyRNM7nPw2yTmmXNOg/8GSeVQasuz+p+w2m7je4P0YNmNkIEME/aVzSkwNZuz+1l16V0ELFP/KbfjiQBc4/dwCYpmJeyT8AAABAbpgSEIyIoGS84z/uTBwkEGXsP259wK7Lqe4/V4r2Vor25j+JxcIqXyFG5A3YUX7IZiW4wT9YY2NYY2PYPw1oKq3fNe4/MRkn0LC16z/5WMqAsfvoP7gCDK1QZMA/l2NC+gFDvCEg/gEAUgEA8D7E3j5n2rmkP50WiKD8P5A/a0byz+BVlj9m4L53KdJbP8Uhi+zkpW0/RS/piV7Ssz9aHQ==",
"Zq9JxHA/qGgBGwE2faKYAPA+OS3fAlW37D9VWo1VS+XkP8jjvGpfotw/qMGZlPtl7j/HnRy2/3HsPxVu9Crc6OU/9ZTx6Snj4z83gVmEsGfiAWjwZcDUd+Y/Nc0tappb5D97Sle7xYLjP+YyQhtUZuQ/+9P5DXsz4T/8btVTT+3gP+j5ozEMuNw/MtWhxuf93D+NWJqJZBLRP3/p2Muo9KI/zrBWgj3vbT8vo/4ns1G1P2JObwbRKIE/ADpmAThyg8A58v24P3oGNoXhrIABiDIBADjPo5KK5aGQP4vm6RuDLF4VIPA+blTJknAMyT+T4FHc5qfGP5ZaRj01O5A/7VkVAHGhXD81OaGWjb3SPzoftD0Qr88/2L6KwvZVpD9tEUA1GZhyFUj+AQARAVgBAAAgTxqmPwpG/tnnBqg/1+fs8ZkGroJoABjNhR+9PallgigAGGF0/eY8yWyCKAAYv0RXHnJ3coIoADglVluYBi2rP9EwBWOQkrEBMPTTAYAXc7Y/9fxH6fmP0j9sqrcsnnjhP1nxex8ugOE/GHTkRtJW0D86mysfIdrFP3C8VMgPn70/MH19MH19wD/8Szl91Zy9P3d129SEL94/yzEHN1hf0z/Lp+ijvMHkP9ioLCtTMOM/mNHw++gP4z+ND29ElDvkPzYSjd9yu8w/gE4OjHYCzT8+8+XhM1/OP5SJw2+3BMU/mjaryK1WxT+PVuIq33zEP2xugpEhUsM/awh57JIBwz86sbyyE6/BP4JSCHCnUsI/c7Rk7NcGwj8pSjIOmUPBP8ZXJTgv2cY//HfjgP9uzD8FyjYpHsC7P7QQREB2WOM/GkaedpRexz+1fWV48gXSP68FoJ+U/sc/SpwLafz60j83PxRNH37cP2Yjz3ByedI/dBW0ftaa3T86ZmnWquzQP0LZhTRAddg/u4x0OoUi2j8Scle8QlPVPwOEVzqLfOA/Af/4Zkbk4T/HKXzuX5bZP/ZaZMTl4N4/2rZlR5K64D/xAxfgv+3gP652UpK6VuY/D2K/Swco4z+dWeim2ZHgP3OnpFuZ3tU/9UechTZr1D9BIxSw2WfkP5PbZuf7IuM/PYWt0ZWR6j/5paF3ww3iP/Vbw/k9h+s/0tLnUUb16SHY9AgDQMtW0z8lkc5xqIbrP5QgBRz8z+o/qLucb9K9zz92HlOu75rqP34pD8pGs9U/8O0ia23R6z+HZPWNxd3sP2dNKjJlq+s/N/NZMbI15j+N/RyaQe7kP7Qt8+88RMU/3ARswvy30z9l2nGO9lPYP1V7oar2QtU/dQR96Qj6wj8TpNS4kFDBP4vqtQWGjNU/QvsQrflr0T/y43ivt6O9P5WvrClfWdM/VUOZqQ==",
"hjLTP8+C3yey/rQ/oOkRAPourj/fb9QrwOTaP2rnuow0+dA/crbPg2wK0j92omrDtzjSP7OC4ge9BdI/l1sk0ki32z8bl25nXLrNP3FfW5XUecw/CAnnP5ZbzD/EMjKRvt3LP+FD5YUPldc/sUhEUyuP0T8Egyjz+a7ZP7QJ+uj0T9o/uk2HrHdS3D8F3rH1Q5zkPyx/rZ0GlNI/pGU3ck00yT/U3RGKT9rKP2a3wPS5/sM/SjkZT8loxD9HpmETauu6P8LEqVFgKsY/t5iaDnLVyz/KuooFn1W5P+ljzgMZXMg/Xp5jtcpguz/XQaMlXxGuPzUOhahgQ8s/LciqTa/TvT9wAMrrYbS5P854vjunKLI/aG+eQ3vzvD+PBl/qx3WvPwAAAEAHb7w//Z0PW0Su0z/lD8M24HnSP93n9ZgKM9Q/9vj5OtDK2j9upXKX0gLZP6mKhHOcpMA/310or8i5sD8mGMdMMI7JP1qVlN0SPMM/GC9c0KFHvz+XmtSGtyLEP5iF6XQH4ss/Go5s/hWzyD8a0hSat6zHP9FHiukPk8c/Bh+F8rTTxT9gD728BvTFP6a0B04dtL0/FBJxdg70wT8cuZMbcem9PxaKDKqy7JA/3rVfhB73oD+LV+xT1jimPwscleXqxa0/YSmmbeAjtz8AAABgC2HSP99fQBizZtM//4Fm4R9olj+ijktpQH6ZPzSJdsx2iaM/OQo/32e30j8MJVcJ5iO2P7bUj/d22cI/Do2/QWZJwT+C09mtxHfCP9n8U2TzT8E/DdGV0+oatz+ngWx+j2O3PwAAAAD+7AWx7P4BAP4BAP4BAG4BAHiRcT5Sp1idP2prnqetea4/et1XOLW5rz9Vhx8eBwWkgVBeAQCQQBdXlD8dU87JYLqjPwdFkrj8HJs/+Rcu+7YIpj+nCOx7QWahP149AP4BAP4BAP4BAD4BADhQarzPdqWgP6ChsXz60JhuOAH+AQCSAQDwPtGSVi9tqaA/fCCE5GHSqz9v5ggVX2GjP21sx6RZQas/Mgs3Mgs3sj8sctZou5GqPzdhsXnrILE/vVPUWwF8qv7AAO7AAAXA/gEA/gEA/gEA/gEA/gEA/gEA/gEAvgEAdHA/fTg4Bp0/tk/WygbRoz9Cyzf40iCvPx1LGE9vGEZYC1hAzAjJB0FvP/eQPWVwnJ0/z2vmwTBSiP64Av64Av64Av64Av64Av64Av64Av64Av64AsK4AhEB2JRQgW+aaIA/I4pyCPdzqT9wxYbRGSOkP158/81XXKQ/8En8/mA7oD9w2/TgbZueP5hhMMIMg6H+sALisAI0tN4oXIA3Wj/pwadZ65ImoBJ+AQAUnj8X41rDhrCidJdUhw==",
"1UCAYD/oVRcO/kOiP+0avDW4X5s/jCNxTT6+JqijXgEAuK3sgxgrRZk/W6nZFIjOlz/EsyZzmLKZP/UUDqtMo5E/YXXgJD1Llj+DrOOzkJ2RNUgUR6KL5/v3JoR/VFLfguR3elo/bstLfBY8Yj9l/g5Z2zyGwAA+AQDwcZggHV+JJ4c/ctz0ZxKhhj+G77HHKr6HP3ItKYbObZA/6yPrNQP8kT8BwDsEAO+QP7UKVE34YpM/w3S8zF2klj8dGl68dF+TP9kRQ9mzv4w/r2vWMafBhD9bCbvseSCAP4EzuTvfdVk/wbP4/WE6cD8AAAmCWA5WUgt0SXs/XB4ij8QsjT+/2w+3huZqFfD+AQAUGNYpAn3FxhAB/gEA3gEAGHn9nEmaIHj+AAE1AP4BAP4BAJ4BADQr3QZFOA5XP6kArDoOllng3gEAFERB2IiCsKYYljR7F3iz8kamPyHT92xTq6YYlgATLqEAECQjNlSkJuiFGPv1b/v1b7s1zLj9yJxSXYugP3B4Nf54qOw/MkpMou3h7D9RfKyzyjPnP3B31taPz+g/VGCvVz+h4AE4kMB6sNY/2sGmZgebyj/lWCE3Tr3BPxTYFO0n68I/sw22l2edrz8ugwABARRlyPmsF8r+RAL+RAJGRAIYeN85PQQxpgHY/gEA/gEAMgEAFP7NmaPSZ8YQiDgiOFrJY6CQPwqKExzS7+EV2Bh1x49smkVdFRARAVTFGRyJMziyP3SsT0Z3hLo/B/BtKTpqJgiIuLAOAnin/ew/WhwgCPPj7D8OhosPAyPnPxYWTdTTZdc/4+ctjvzh6D9627oZkhTJEqQZaDpnwD/ZTYlkNyXCP5SqoNeqvuA/YC/PI8pAsEKAABQf1q6G+nD+8If+8Icm8Id4JSn4E0VjpT9S6xJS6xLSP4rPbBA4M+0/roivWeVarRXANJ2rh0rAges/VE7OU07OJuiL/gEA/gEA/gEA3gEANHzlY7ZGoKk/LkJQTX4g7iwFqSz+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQB+AQA0ircOPMRmwT9sxlpTFUomOJI4BDUEVzRswT9eX4hczlt3tTAUKIazRkGU/gCR/gCR/gCR/gCR/gCR/gCR/gCRxgCR/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/g==",
"AQD+AQD+AQD+AQD+AQDeAQDwTBQAAAAktYy0sqeQP1wLyeFnc+w/wfOm+jBklT/cUZHbUZHrP/f9dnxsZ3E/oVkSHWzX6T/0qay+YDWVP1boPpjeaoQ/NDTqFvgZ0T8A/sUO/sUO/sUO/sUO/sUO/sUOusUONMygsU06WOg/80zgOaD+Eui8MgEA8EY6oWiX1SWVPx454jpJX5A/p2xDTtmG7D9fjCiFHLXrPx2kfLzl0+k/D96uIJt8cT+9ld9v+CqDP8Zbk2UN05M/b52WS20/0SLcEv4BAP4BAP4BAH4BAHRy8bWOAieKP76oIdnAuOw/6vMpane5Vj8izzTGWzamyCD+AQBeAQAY6VfnT3oghv6QAf6QAf6QAaKQAf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAJ4BAMgVAAAAV5pbasJ67z8+Ail32YCjP2LIKnjeVO8/UPYKUPYKoD99/Zf55InvPz5nDzd4f8T+RBX+RBX+RBXuRBUSRBVYz9HK1yXjtT+nUlZNpay6P////3+pQbf+GAH+GAHCGAEYzjUOUAqLzBW4FF+cPKdLTCbMSbj3ukRT0VbvPzfuKLYFfe8/BQKRCQQioz9Qwq9BkkqfP4vzsYPalcQ/VVk74e6I7xVI/gEA/gEA/gEA/gEAOHLrNRQNGac/7ubmbQUV7+IYAQ7MTERrnbo//82uqHontz9MKEOdvebGuIc0lDqgXSv+sj+gYsAWfqfmkAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBeAQ==",
"AAAWitkUGLEhxVsL04TizBX+AQD+AQD+AQA+AQA4OwyFtzSd5j92QUXrgormIRhoIFNc6T+xvwVlZRKgP1woL+hZiMI/fLRs46NlJkxM/gEA/gEAfgEAGHuwH0mBVOgB0LIBABjGO9Ig+gWFwjgA/gEA/gEA/gEAfgEAGAyDgMy685vuGAHwTIAnm+Y/yISGabdm6T9Q5Sp91ajmPwqe+1eRUpc/B7j0cCYhuz8f8Wwf8Wy/P4I2v1jiy3w/gs9UdmegdD+fi5JXNnm2P1E4mnw9Lus//nAB/nAB/nABfnAB/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAvgEA8ENRgMqLzCrAPxxWyLNOxqw/eZ/xPARzqD+adfybKQ7AP25PdcYrccI/z12Xo0knoz+HHqvzwqmoPzbeV7HCFVI/AAAAAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAP4DAAEDABf+RQ3+RQ3+RQ3+RQ3KRQ04LWYGNpqZyj/W0D+soX/IDowObIC9270/BaSvqdn+7j/pNfSF6V3rP3BpkoNLk+wBIP4BAP4BAJIBABjj7+IH1QfF/rAA/rAAorAA/gEA/gEA/gEAigEA8EyArETIP8QLHQvKor0/mNayPEtpyj8QI0B1a0XvP/9o4THbm+w/3GES3GES7D+SgU47aMbvP2JWEzG/1u8/jK4NNdkw7T/oAo696I+zP/4wAf4wAf4wAYowAf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BALIBAPA+7F8N3Uz16z+eesMUmzPuPwjmMLzPeO4/muIAmXX86z8krGIOtWPrPyOKxmWLze4/GE7F0GN17j8SVKce9fbv/qgJ/qgJ/qgJ/qgJ/qgJ/qgJLqgJ/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/g==",
"AQD+AQD+AQD+AQD+AQDyAQAAGP6+C/6+C4q+CzgWvrKHAXHDP2Hh4AMLB98O/A0sQPx/4j8GMrf0m5HmARDyAQBYAQ6t+sdL1T8v/mVWyhHhPyORn1+v/9YBWCxA1CzaP8OuFdwWMcABEP4BAPIBAHhnMxtEIhLYP1QCQHqobbw/AQAAQOsG1T+ijH4SBn69AaAswDcw2T9NiL/UcwnaARBsgFCK3D9TIk6vT8/cP8nO7tjERNw/ynH4QSwy3gEgUgEAGLQiGi8+crliIAD+AQD+AQARAXiVtmuIB93CPzkCa4O2OuI/xqGustfo6D9G0FA3zIbiwsAAWKXYBbZO9NM/udMqG7FU4z/i/1lWZ6jpAUgIoPcpJVAswDaH2D+NmB3ffte8ARj+AQD+AQD+AQD+AQByAQBUN5YG6VdFuj9WS+VUaTXWP91NSkt6G1l4eMPQ5VWAK7w/1SMXqkcu1D8W1hwsrDnYP/lfaCYXHdshYPBDgFYQ0z+WZaQry0jXP21ZWDG01Ng/NZp7yVcz1z92VeVV3/LaP5/5IethCN0/VzWSUZXb3D8O6GqmrTzdPxyF8WlereEBSP4BAJIBADjfm8vTz2TaP0YiPJ1OY9dCeAA4ZmOvNDmh5j96zANPDQTgQiAA/gEA/gEA/gEA/gEAXgEAFIYBXAsDuO7oBano/gEA/gEA/gEA/gEA/gEA/gEA/gEAfgEAWFNISG9gYOQ/kv3JngEk5j9/O4WtccWWdWhY1qpEq1WJ5j/n2p1U733rP+2LuKu9+6gVIFSC4xAKiUvsPzaoKWtQU+Y/Vl4zq7xmRngC9A4BE/Ff6BOA3z9jpTkuh/fiP98RND48oeU/z4YWpHnN5T9kFq0J6h3mP7gjQ5C4ed8/M+E1x4TX3D/r9PeORvXjP2uNN5i2huU/JlITExpU6D95VWLlVYnVPw+VSAosndc/hwCu8f6j3D83EFMLEqHXP+MoEnBnK9c/9kOcFHjH1j+o2SS8MtnOP4iK2BRpZcQ/cHLgKjEBzT8wHFVV6vbCPycmbw8HAcQ/cs01uEmewD87ANr4ry/PPwizh4zhJs8/PAe8pkXJvj9zjvyjj4PJP3xDBXUE6Jo/4ui3A9rUkz8YyAzmGVyjP0JmJkEPSKI/NVnX7VfwnT8melq51FucP3hTSMKbQqI/T0yrMUvYlA6ICPC2wGbooD9fo9vn0/ysPwSlzfe1ZLA/Td4mqEMqyD8ZOiZ6HzTPP+aidX1pbM8/kusVknCNwj9J+wrUxR2WP/Y5zuxznOk/qdqaSPsw6z/E9wh3EO7BP15Gtef6btM/AKlgVeGA3D/+tPFcx8npP3rLehnSFOo/DG6dBTwb6j8+uF7DEg==",
"i+o/KLzQUP6C6j9rCT9WfEnsP3u7Y2L8gus/3IiN3NFC7D85TU9uxRnYP7WeQkcxKbw/AACJEjiXhYskcz3oPziaZ6/XHepBEPBlYFTP3T/eOiLl+7TdP/jWHYFv3eE/5JzNjOiNxT8yc5TNjGuCPxYwLKotwt4/kWQwatsm6D/z1sf1q2zhPwW57PwDC+Q/2uXzzYea4j8pBfakFNjjPxz3l3V4eek/OAL8gUsg6j8ACX/+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCCAQAYTa1xIFNrrA7YC1IBADjINxGRMAiCP0w9Hc4EzK9iKAD+AQD+AQD+AQD+AQBeAQB0NjmEJzcvwD+JWbIs6n9gP9AhGL9rq50/wOlPTj/K/jgX7jgXFjgXHQEsoLrlpD89Ft5RyNK3NegAGR0h/gEA/gEA/gEA3gEAWMKSe/m0Edo/YhOaM4gKxj88JvdC7W3ZNST+AQD+AQC+AQAYpsBfVYPSeg6cEGwAOiW+P3yRQgk/bmE/8Yp3ONQhvj9SwWWeHQWb/uAA/uAA4uAAfgEAGPhgNvH9i1/C4AA4JwtTselZ3T9S1XO4qjC+LkAADCCaPdMuEAD+AQD+AQD+AQD+AQDSAQAYbznjJ5kItYJIARjemJ3k0IdTQigAGFrNiPwr4GIVGJidFDhxVDGlP5iGMtP2z5E/BkMn83mxuT/+Cs1LqhW3PzybmWow2MIVMP4BAH4BADhBBVOssW7QP3FQIlpA6NRieAAY17B3OVYqy2IgAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAH4BAPB5PXwur69stj+im6Mtei/CP4MuQf7XmKU/cH9Co6dioT9BCDVM7uabP8UCYnb6O7M/QdMSBU1L1D/jzMQuEbHDP5eCdb4eE7s/LiUEFMmOlj8D6N0GoHfLP0Eic6Ko09Y/5fhSNg5awz9hrqttpvLEP+uGfZKBpsM/AACJGvBPHO9yHYdotD9qgL2wT+erP1zKZEnGDJk/VvBZEqpDqD+foy+SUq6wP59kGFcp/5I/qItHtSK0ij/AQXcz/Q2UP9Ay6yWfDps/zohpJAU9nD8JVv4BAEYBAHSjPNLxIQGlPz9VZ1w5LqM/uLXNsp8OpD+A/96qACxmlAxY5gteM+hDqT/O1Oda76zdPzSUKvAajtX+MAX+MAX+MAX+MAX+MAX+MA==",
"Bf4wBf4wBf4wBf4wBf4wBf4wBf4wBf4wBeIwBf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAH4BAAAa/qEK/qEK/qEK7qEKGqEKWBFHvbrjCrU/oyjQFg1VoD9/xjuip+WY/nQP/nQP/nQP/nQP/nQP/nQP/nQPwnQPOGRB3zd9QbA/Aapw+lc9pv4AAv4AAv4AAv4AAv4AAv4AAu4AAkUAGOt8rmkzNqH+yAGiyAE0Umn5bIxMwT8COvE0+8BmAB8YIPgTM5FZpP6YAKKYAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAH4BABiRyiVFKpe0QhAEOC536KYuraw/cC8+0QB3pRUg8NA4WOM8PuXYP9NM0XWJnuI/+kwARs0A4D/0ksYUUPTjP98N4w8RdeM/h3AVV3YF4z9cCcmW45fcP8zqK+0hIN4/pn56ZB555D8Bl7qi+XbhP2ngns7htsI/az2445zWsz8Ok9zGCfXFP+amIVsY2bU/xe9DB2jozT9TYTR6HLqoP1iSOsKS1LE/NwhzDPRvvD8AAABgKei4P/ZdL4T+UMo/5X0MNwTn0T9nYbxUrxfdP1f/ZdxYNdM/aNJ4syTF1D8zex0RsdjjP9Ti28/ff8E/ADqhBDgFmQf2zfDjPx5e4ufnSrMV+P4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAF4BAAAb/lkO/lkO/lkO/lkO/lkO7lkOGlkONNp8EPpRzds/8ehTDfiY/iRH/iRH/iRH/iRHpiRH/gEA/gEA/gEA/gEA3gEAWFLnsnn9yOA/HIj1QK8J0D9TtnkT7GzRQmwSFPULGekXMsZUTP4BAP4BAD4BABQTBdRPO1Mm2DUURo1bZiP0ZmgDGBmTkpuzteFCEAERARSeie3F0MdGMAE+AQAY/ugfYYjn0GJIABiUJ5WjPKncYiAA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAfgEA8IYXjQ==",
"b6/2SX4/H4p/p8X+oz8YJMvxhkGZPzh0OY0hrIY/upDgtkJ2wz8kXyu5zJW/P8bZW5CjBqk/FnxqZoBUvT8ZAvaiQPOiP/6pAxLuDuc/1ynUJN/A6T8uy8bFI3ziP7kL1BbmZeg/NwlHAddf5D+6oaz5Tf3qP5BaIIPUAuk/AJPbLirv6IHASICTRug/nD7d5aGJ2z/2CD0U7oVGDFARAThedN8suoCpP7ye/hUZRegBQDIBABhEE6Z32bOwQhgA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAXgEAABz+WQ7+WQ7+WQ7+WQ7+WQ7uWQ4aWQ6Y76DJDxLX4D87zEMh9VHbP1U86aloKug/z8gwnN+p6T8iFVITstOn/hQQ/hQQ/hQQ/hQQ/hQQ/hQQ/hQQ/hQQ/hQQIhQQ8FiDVbK/ydbbPz37gHooeec/pJLD79qW5j85DD2RbzLkP3dFjdBAiuc/RpxTizin1j9/8K1nwsTnP+NM7QZZceg/OecOURewiD9kn0eO1gx4PxJ6IN8Ze3c/AP5MBP5MBFpMBHjfbljLFyfiP6daz8HuKuc/qDxJaUzD2D8YanvpGknpQlgDNPG4ajocVdY/1pPMRwz1RqQTWBKmtHAIl+Y/4WZVzatS5T94chFsJJxwQkgAOKzYhSViCuc/CFePTjjN5EIgAHhIwAxCAmbgPxFaGLI6Deg/krOpPcAOlz/PmG45PHl0QjAAEQE4B+geQJAiij8LkjBWz1KDYigA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAvgEAFHaxzcMHSWagNhSbUV1bLMeZcBi+JVjsDpec4oAEGByfoDD2WJLiQAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQARAQAd/kkO/kkO/kkO/kkO/kkO/kkOSkkOWA8B18PDzs4/7wBeHD15yD+u3srexA==",
"gu7+LBD+LBD+LBD+LBD+LBD+LBD+LBD+LBD+LBCCLBA0rSgOtE5/1z/OXgyVMrAmwDCYjYbmCWoz0D8uwXLb61DNP2TEu6I/ne8/wXDjUubP7z8Mv0HMCdHvTaAA8DoIAP4BAP4BABkBFFCdXAFEbibAMRi8YqtJB8nJOrAAEcAcAAA/UHrIACEeuGMRGBEIQAAAV0g54ns81T8c3Se3x97vDUhGAQAUljzh8e1IEmSBUgEAVDCX9G1UNs8/Y7IS/olH7z/OIo2HDdcRUBFwGQg0YIT/vnWX7z+4PafCtLJmKABSbQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBKAQAAHv4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE/4UE8oUExT5pnHnnt9mlH1eAQA4iFqlMesdsD9yd5SNiGuC/mQe/mQe/mQe/mQewmQeNBSpRhOpRsM/PPwQPjzwJiCeFMyK8ZgJLCbAmf4BAL4BALi2MraUmpPmP4NI9AHbouY/VffOqu6d5T9n+tOXucrlPxnesCDDG+Y/979FCUC65iH4CGDZ8BIkVAyA93biDnyISIA1Hdo/rE9vQ2N/3z+LjsncxxJmEGz+AQD+AQD+AQD+AQD+AQARAfA+wci9+9wI4T9SeAK4HvbfPybb7Mzbbsk/Qcdi/MXpzD/zylEQkEzjP3pKGqGnpOE/jG94Mf8Ozz+nZn0yCyTPIchyAQB0+/TRGDZsxD+rwFNxVJCjP5qsMUl/B5s/6EzkgmoCJqSC/gEAPgEAOP5Ag/oKN7w/99n+E0wC2BWouGCQHsZGAdc/nKd/LSir1z9BH1iiXZHVP3M4TtjqQLk/MfReH/dHvT9VsvVUsvXUATjwTIDt/tI/CapU+uMc2T/ifC+H873cP1eimqtENdc/uIJr9ViP3D94cqcxTfnZP+72U5FaIdc/FllRnm7q2j+A/rezIQ==",
"Jt4/98wk7plJ3D/+6AA+6AD+AQB+AQB0gxL5Ueezwj8l3hdJvC/iP6ZtUs1t5+g/YLAEKCF+ZcAyAQAUfkF3HuiLJiie/gEAagEA8GWAS+7jP+Xefs7WVtc/c6FNh6550z+aId+YeYPcP/Mz9k+YUug/9wrVEupV2j8ACbACSIDlP5f5GS3zM9o/k+jeR6J73z99ydt8ydvcPwnffZYb/tM/9zw87Hl42D8CHxlp9J+8PwD+wQBqwQABAVR8JLpKP/G+P1UwYFpl/8E/UaBir1+dhvgEeBkq/ZpXC8Q/VvLQ3R5Gnj+E3br3RIqwPzgPf5DhAc9BuP4BAH4BAPB1QEEm1j/6sA+x6xG6P8piTBhW97s/dcEO6oId1D9TzelgkwzbPxZtEyzaJtg/9vylFAa01j/0fQx1BTTdP3Q3ilxPxNg/OAUtDV4e3j9fcIfEaPzcP7jmbcB309w/prxiLJSq6T8W5r1x3afXP2uI1tJsL9c/AJrWABhZrVc8lUKtYggBGPz3Nv0/P9ViIAD+AQD+AQD+AQD+AQD+AQARAXQ5Y0SCF83pPzp2xiBDHuo/Ex1U7eKr4j8pJqBbZ39mLFv+AQD+AQD+AQD+AQD+AQDqAQBooGZX5j/WSRSrkyjmP4DUf5lDZuQ/XiJwgJcIJsip8D7baGZ0B3/rP3ecc4ljjOY/XjoRcS0Igj/hhONT94fFP3pKF3pKF+o/mr7CCQYy6z/Mu3nfyIXqP3L+bO/QjepheGjgdGvmP3cowu1QhOs/hNDiwQJN7D+/UegwCUtGDMXw0B1EoxxEo9w/mmJjZp2c6T/VZR8xsAChP7VXVuqbYKI/ysM78vpaoj8B5TsiQJicP+Ol2immBZU/pxjfnMgFlD/lDckib0iWP5bJSxbySMg/SxSeMetRzz+MqupFOI7PPxGqWLtXncI/2Eaa5xVU6D+67U9BITroP/UX9Okv6OM/dZjyFc8a5D+53RYIoCjqP3jTQf6Lhek//XEAR0lE7D9Gm1C8EivqP7GeepbT+N0/AAAAwPHd3T9kc69ap0vYP8Wf5oz08uE/Uma6R5np3j8AOuECdJZ2oXzANcA/xWOybOF/YD96PPd+Z6udP6pH1xJR24YQBv4BAKoBACxgoHClP+6PQZJqV7ghyAUBAB8FBv4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAA==",
"/gEANgEAVIYIAAsRAKY/Os9WuSzDoT9ts+TgbZYy9E0MgPQ/wiJEDREBGNhLAPkmObZCGAD+AQD+AQD+AQD+AQD+AQBeAQDwPsF0b/osQsY/ii8n2UFjyz/xqXZqHbecP0iizrztipk/AsUrhw2Pvj+o2TCBmg3DP24Liouig5Q/McxKUIBwi4KoARShbSCWiRVGLB0U/FdbmlOV/iwXkiwXMgEAVKivZqPVa9k/BXbohmGx1j8R/006L2oeqDyGAQAYAaYnBJieYBX4OAG/Ulapw70/GIuUMX3deRUYVM7fsh4D0qQ/CLQTuTOAmj/HluCOLcESfL3+AQD+AQD+AQAFARQdcodNxDPGOKT+AQARAfBYAQAAAGLXwz8Mjzvw6wXVP9WwH4vXqd0/YSOfenKD1T9hty1vFyGXP9QQulfei9A/BfJrI5Bfuz+GYI8JwR7TPzGBvcQE9rI/FLU8FLU81D8nXgIhcFfdPwD+oQARoZoBAFio7AWtSpqbP5RmAFhRmKk/E7Kj7E1ck1VIXgEAFLF6zTsVykbwaxQlM721mYVGHIb+AQC+AQAYGOJPNjJWUkLIAJj/iHRXPcm2PxrXmzRb4mE/lNgMEz+4tD8HRLdis2GRPywdjXz9YLkVODSMGKkPduHEP/lm5s+5kf40HSY0HRTVaP6DYy0SrL/+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCSAQAUk9Enk9En7gAEiQB0wtrTP5AlpT8sdNNqBz+jP77UxqNuJKQ/anLgWDZ+RqgI/gEA/gEA/gEA/gEAngEAACD+KQH+KQH+KQH+KQGeKQH+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBKAQDwPuEi5Ht0b6A/AVrl+pdqpD8qXNxy2oThP6X4/d06EOA/OYLRzZpgpj9eehXhpVehPwwtBTEXQt4/13wQ8XO93CKsFF4BAHiWGnb5TZniPyQKXs9HLcY/ekEKEF3qwj/WAnwBte3jgkAA/gEAPgEAFK0zfGQndSawpBTaBTcEEzX+NBbuNBYWNBb+AQD+AQD+AQD+AQA+AQAAAJoBADxhaHzTdK/AP8eUJ2c3FLM/PjcAGDSMXZfnRMFCGAA+AQAY6NELsoEKsIIoAP4BAD4BAFj/ve3RpXfkP66oxTnk7Q==",
"4z+TsOhsTxfjgogAeCkUJFuvb+M/TkkGnOdCzj/ULQFXpP3RP2bQqTNfrNiCQAD+AQD+AQCeAQA4cJQClXADrD+8Iv9wPuukotgAGJGjsHzjespiMAAYrKW/fHjotGIgAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAH4BAPBVfnPPSQ5cuT9Jt4csm0a2P9LtV5JtNbI/Oo76YelTqT9X14utD+a8PxOr1hy5O7Q/1bM3op69wT/bTI6x1ePcP0ZlsAq0ANM/3r7ao6SO1D/xuwo7ENWGeAX+AQD+AQD+AQD+AQBeAQAAIf4ZAf4ZAf4ZAf4ZAV4ZAf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAMoBADh6qAqydJyiPwQNi92Xp6NCJBQ4AlfarZqgqD9FyX5yYCa/QiAA2B/eNGtpndk/gj5eAXgZ3D/7Sb2ViC99P/LPOhJAXOI/mAKY7Pz/5j+Ojgx6x8iYP/0gbkUF9twVSDjrltwc27zgP1c/rIqYE+EVGP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAF4BAFjHURAMif+8P7p333oaaLA/M1LUzK0rw1X4OKR3qHFUMNA/6SaVW2Sr0RUYWIAoiPpd34U/T7Y2aBpA5D9G2F10T0TXFSAUXNSLNYbtGTARARg6aM9daOrgFSgYd0AiGVRP4hUQ/gEA/gEAfgEAFOuSDLRJ0oYYBDTsSpecqEXbPyl5X84bDkYIAf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BANgfO9FKczXoPxJrsK0TVug/7llIbd306D9w9BpCn/LqPzjZqovx4+g/tiH728G46T8N/gZj8DfoYugEGNquwJlE/ahiIAD+AQD+AQD+AQD+AQB+AQAAIv4hAf4hAf4hAf4hAX4hAf4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAP4BAA==",
"/gEA/gEAagEAdNMlDX82POg/lKtwc6tM5z9XP+DHkADiP85+0DOTryZsFV4BAPBYyaQLgxk+4D8jxxICUyDoPwUz7zpFBNs/RtxLb2B52D9Shi76amPpP1LnHNC5vek/lhUoUg+0lz8GEmJUQw+LP36UHFxiGoQ/Pg3Jh1FPqD/9gRCjPMBQPwBecQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCaAQB4GNqROAVY5D/0ZlorWWXnP0FxYvo6duY/Est6m9Cd54KsE/BPrVDXm7SD5j9s7Slm4HblPwm6e5/a4uc/Ll/0LJKO2z8N3mc4h43oPyM1m/ccYtY/YQNeYXMieT8sQWExBX6JPzf9QYywlHg/2TzPutR7cT/+NwP+NwNxNzjxG9C4UQ7WP6005UgMEOmCCAFYrK0j8Z725j/nH5TuGfLkP4/vpr1xd3WCOAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQDeAQB4XLJ+oYQigz/hLQeNDMubP2Lm57xwzaM/Hbo34tC9kf74A/74A/74A/74A/74A2L4AwAj/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF/jEF3jEF/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA7gEADQE0PDQbZ5+Fzj+tLr8WVCrmcC0Y5uyn4tvnzkKkENhuySda4lzJPw3zF9H3Jsg/U79uhV9C7z+4d67ywpPvP66Nj3aWr+8/LG+D5wp77j/Ad67hn/fvQkgA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAvgEAFI2VhnfKMybYMREBGOPu1ZwviNCi4AI4h36J5rbz1D++iUD32uzPFTgYDukHhGXdzBUQePlDPRm7ze8/+3o66wea7z8GfOee1s7vP4ZhilYI3e8NKADwOggA/gEA5gEAFFvpY4f+sR7sSj6YABEQGQE0aMUe9NH+1T8hsoQcEdUR0BEBETCeCAD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBSAQAAAWoWBQSamQEBBLk/ASREeAwAAABjbG9zZXN0UG9pbnQkHTkBIQEECAIAAAUECAMAAAUECAQAAAUECAUAAAUECAYAAAUECAcAAAUECAgAAA==",
"BQQICQAABQQICgAABQQICwAABQQBdAEECA0AAAUECA4AAAUECA8AAAUECBAAAAUECBEAAAUECBIAAAUECBMAAAUECBQAAAUECBUAAAUECBYAAAUECBcAAAUECBgAAAUECBkAAAUECBoAAAUECBsAAAUECBwAAAUECB0AAAUECB4AAAUECB8AAAUECCAAAAUEDlRMAQQOWDMsIgAAACMAAAAjAAAA"};
	setAttr ".imo" -type "string" "{}";
createNode ngst2SkinLayerData -n "ngSkinToolsData_skinCluster2";
	rename -uid "D89F43DD-4A03-4F76-F450-3C83F62E3986";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 16 50362 {
"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"};
	setAttr ".imo" -type "string" "{\"_InfluenceMappingConfig__mirror_axis\": 0, \"dg_destination_attribute\": \"oppositeInfluence\", \"globs\": [[\"L_*\", \"R_*\"], [\"l_*\", \"r_*\"], [\"lf_*\", \"rt_*\"], [\"*_lf\", \"*_rt\"], [\"*_L\", \"*_R\"]]}";
createNode ngst2SkinLayerData -n "ngSkinToolsData_skinCluster3";
	rename -uid "DB8E8881-410C-AC7A-CC0A-2AACDBEF3DCC";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 16 31435 {
"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"};
	setAttr ".imo" -type "string" "{\"_InfluenceMappingConfig__mirror_axis\": 0, \"dg_destination_attribute\": \"oppositeInfluence\", \"globs\": [[\"L_*\", \"R_*\"], [\"l_*\", \"r_*\"], [\"lf_*\", \"rt_*\"], [\"*_lf\", \"*_rt\"], [\"*_L\", \"*_R\"]]}";
createNode dagPose -n "bindPose7";
	rename -uid "FFCFE346-4BA8-8559-CB09-06AD7A609EB7";
	setAttr -s 36 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 38 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.4694469519536142e-18 5.5511151231257827e-16
		 -9.6296497219361793e-34 0 -5.8308871277536729e-17 -5.2250862177634314 9.6485134504878438 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0031628420986755112 0.70709970769713593 -0.0031628420986755112 0.70709970742063144 1
		 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 67.284031304243172 8.8817841970012523e-16
		 -5.7902642878711937e-24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 6.9388939039072284e-18 0 16.175911952310145
		 9.7699626167013776e-15 8.2718061255302767e-25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0027089311671515399 0.99999633083923445 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 -8.7867934503958744e-09 0 95.788339334080291
		 9.7966079692923813e-13 -3.8895330085669876e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0017640181050336784 0.99999844411885219 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 95.502555268487328 -1.3233858453531866e-13
		 -8.773379777847799e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 100.69500732421875 -4.4408920985006262e-14
		 -9.250386438475521e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 101.70901489257818 -6.0396132539608516e-14
		 -9.3435386445706135e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 53.688629150390454 -4.7961634663806763e-14
		 -4.9321269263531164e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -8.1698273586339293e-09 3.910323447755267e-10
		 -3.0805966890631863e-09 0 -66.70422549652514 3.2099758029107863 0.10770794405090842 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0036785788400816319 0.82249050479094798 0.0025437213893501243 0.5687612566516308 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -8.6213836095590197e-09 5.5822212762846175e-10
		 -1.322572682089728e-09 0 -73.353451490404268 2.2597238502619632e-07 2.8683089681180718e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0012142236942047769 -0.10419226209500861 0.010220665683086303 0.9945039146093595 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -8.5803745208167446e-09 5.7967003288427794e-10
		 -1.5589138778620353e-09 0 -90.13481363162893 1.1920978842949737e-07 5.0315271948875306e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0060240616135133086 0.013339359282637658 0.0022557933151880665 0.99989033577294095 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -8.534355119576898e-09 4.1183933885358284e-10
		 -1.8396268996073279e-09 0 -85.532998589299041 1.3333852955099701e-07 4.95809331368946e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0030957206835905749 0.016219577649068489 -0.0091897296045762179 0.99982142939833496 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -8.4361174687659194e-09 2.9063517058618959e-10
		 -2.266387860152162e-09 0 -65.887185290147585 1.2120788372982361e-07 2.7135001801070757e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00076314511594909615 0.025170213228789252 -0.0073242280466486107 0.99965605768137578 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -8.3470051395651375e-09 4.0214809905618435e-10
		 -2.5602426777861745e-09 0 -72.715759867250995 1.6480216480374565e-07 2.1133402583473071e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0026580638165042349 0.017395981728254267 0.0074075459324365184 0.99981770477408349 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -8.1538968391182182e-09 2.9913294884751049e-10
		 -3.1326569083188872e-09 0 -44.693070637660242 1.1442498326630357e-07 1.7973277977034741e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015312164411050723 0.035312702631769013 -0.011520717139904308 0.99919258590647653 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 1.0362763343063563e-07 -3.9103382318457557e-10
		 -3.0838686130429388e-09 0 -66.704225496609411 3.2099758029104093 -0.10770789189500315 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.82249050426778925 -0.0036786141776109435 0.56876125696274571 -0.0025437698809843354 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -6.470254317732916e-10 -3.9183091739248687e-10
		 -3.0151253990632774e-09 0 73.353451490404254 -2.2621243456200091e-07 2.8684226549557934e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0012142236942048492 -0.1041922620950087 0.010220665683086291 0.99450391460935939 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -5.6827025688035197e-10 -4.2548798868990218e-10
		 -3.0264140846858521e-09 0 90.134813631628958 -2.7176773498283069e-07 3.5317562208092568e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0060240616135133086 0.013339359282637658 0.0022557933151880665 0.99989033577294095 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -4.6177015798771921e-10 -4.5373992496341587e-10
		 -3.0404016957659765e-09 0 85.532998589298955 -2.5885827736882305e-07 3.639317469605885e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0030957206835905749 0.016219577649068489 -0.0091897296045762179 0.99982142939833496 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -3.0150532516428555e-10 -4.5467498883354546e-10
		 -3.0603134554144762e-09 0 65.887185290147556 -2.0032354175469891e-07 2.9895545594627038e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00076314511594909615 0.025170213228789252 -0.0073242280466486107 0.99965605768137578 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -2.0173219582354848e-10 -4.6723516619064119e-10
		 -3.0666184991964745e-09 0 72.715759867250767 -2.2253303377794964e-07 3.3062363513636228e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0026580638165042349 0.017395981728254267 0.0074075459324365184 0.99981770477408349 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 2.5411149783368714e-11 -3.7498584908191563e-10
		 -3.0857565708418872e-09 0 44.693070637660128 -1.3705652346374109e-07 2.0882197304672445e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015312164411050723 0.035312702631769013 -0.011520717139904308 0.99919258590647653 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -4.9355721366872258e-09 -2.195999331262799e-08
		 2.7010274016095273e-08 0 -66.701980624842889 3.2099996168792071 -0.10771155747989346 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21609143485659277 -0.67583307183804486 -0.67515151390949524 -0.20180333014419627 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -2.3032288970352926e-09 4.0990453015338033e-09
		 -3.2765935087943758e-08 0 169.02689933781238 8.5265128291212022e-14 3.4794389591752406e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069217582945955564 0.13778541857993098 0.49768044284897245 0.85354453981237766 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -8.361939660332444e-10 4.6236066866791514e-09
		 -1.7341777209447634e-10 0 24.592217789432965 -5.6843418860808015e-14 -1.0080461265715712e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027941260673973817 -0.023199090667326418 0.16619648239237633 0.98542367405322617 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -7.1078371434519189e-11 4.5667690028469816e-09
		 -1.1165127227166074e-09 0 20.26220439522487 -3.5127527553413529e-09 -9.368437758894288e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.094690850920873773 0.070281909245213894 0.072585278357939126 0.9903663329043596 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 3.5460216835200191e-10 4.4131514890587446e-09
		 -1.5828403441222891e-09 0 21.605795401005238 -2.4123153252730845e-08 -9.8668408554658527e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.054186858453803867 0.079562805723958879 0.02325405080503213 0.99508431473790004 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -2.4807944490949206e-10 4.4432434611234413e-09
		 -1.5175882707975978e-09 0 21.425965792840714 -3.3914659525180468e-08 -9.4555872465207358e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0071419288556366055 0.017005594321178454 -0.073806480830173715 0.99710200380977565 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -4.9231413823008239e-09 7.2075094215137053e-09
		 -4.5116007150224041e-10 0 -66.70198062475859 3.2099996168795837 0.10771160963404305 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67583307346927213 0.21609141282151986 -0.20180333418029422 0.67515151812285346 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 4.0384772889490013e-09 7.5415858809207261e-09
		 -3.3055022363763349e-08 0 -169.02689933781238 7.6258054093614192e-08 1.2182625852563689e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069217582945955286 0.13778541857993098 0.49768044284897267 0.85354453981237755 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 6.2714877622098148e-09 5.7851636053211348e-09
		 -6.2059436503361955e-10 0 -24.592217789432993 8.5265128291212022e-14 1.8546437274835625e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027941260673973817 -0.023199090667326418 0.16619648239237633 0.98542367405322617 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 7.1300558375789587e-09 4.6795412013708663e-09
		 -6.7009718847217868e-10 0 -20.262204395224927 1.2573622143463581e-08 1.1722006831860199e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.094690850920873773 0.070281909245213894 0.072585278357939126 0.9903663329043596 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 7.3934078226007222e-09 4.303760096992634e-09
		 1.9574501244433975e-12 0 -21.605795401005324 1.4477990362138371e-08 1.0110491643899877e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.054186858453803867 0.079562805723958879 0.02325405080503213 0.99508431473790004 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 6.6740227857764546e-09 5.3428036292497894e-09
		 3.1097294535909756e-10 0 -21.425965792840728 -4.1126213545794599e-11 9.2212189883866813e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0071419288556366055 0.017005594321178454 -0.073806480830173715 0.99710200380977565 1
		 1 1 yes;
	setAttr -s 35 ".m";
	setAttr -s 37 ".p";
	setAttr -s 38 ".g[0:37]" yes no yes yes no yes no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode multiplyDivide -n "RootFat";
	rename -uid "8CD6F29A-4974-9030-EE2F-26B60937D438";
createNode multiplyDivide -n "TailBaseFat";
	rename -uid "B0FD4A3F-4012-2652-4592-91B2E172A49E";
createNode multiplyDivide -n "Tail1Fat";
	rename -uid "5ACFB7A6-4EEF-582D-F730-63BEA2FE809E";
createNode multiplyDivide -n "Tail2Fat";
	rename -uid "518AD8F6-49ED-6F5E-F83A-25A7FFAA7638";
createNode multiplyDivide -n "Tail3Fat";
	rename -uid "B10F0ABE-436E-88FB-B3BB-8E9004B7CDE7";
createNode multiplyDivide -n "Tail4Fat";
	rename -uid "6C6B5A96-4FF6-927D-EB41-5A84A9C2AAAD";
createNode multiplyDivide -n "Tail5Fat";
	rename -uid "BEC45851-4B82-A24C-07EF-189336E36151";
createNode multiplyDivide -n "Tail6Fat";
	rename -uid "A7CACACD-4433-27E3-087D-32B25DD346A6";
createNode multiplyDivide -n "MouthBaseFat";
	rename -uid "351F3E35-480C-0B17-C570-4F862BDB9E37";
createNode multiplyDivide -n "Mouth1Fat";
	rename -uid "9017D4CF-47B1-2E93-87E8-EBAA6C1626A4";
createNode multiplyDivide -n "Mouth2Fat";
	rename -uid "D4A020F2-4D76-5032-4592-119922B0555B";
createNode multiplyDivide -n "Mouth3Fat";
	rename -uid "85787660-4A76-2DAD-40D8-DE8F253F3E33";
createNode multiplyDivide -n "Mouth4Fat";
	rename -uid "B0E1EF60-4717-6C9C-E2B7-109727467127";
createNode multiplyDivide -n "Mouth5Fat";
	rename -uid "313082CD-4D39-666B-81B1-D6A053B37B3E";
createNode multiplyDivide -n "Mouth6Fat";
	rename -uid "A2CAA11B-455D-4D3A-2311-A3B0D0939F41";
createNode multiplyDivide -n "WingBaseFat";
	rename -uid "DA1F42E1-470A-4839-9650-DDBABF93CF54";
createNode multiplyDivide -n "Wing1Fat";
	rename -uid "B7C2DDAE-4BD5-D46C-F0A2-0EB7FC2B4F0C";
createNode multiplyDivide -n "Wing2Fat";
	rename -uid "BD3C20D7-48D5-D090-CD5C-C9B4C219E9F2";
createNode multiplyDivide -n "Wing3Fat";
	rename -uid "50CE044E-4FF5-DE68-AAA9-E9B75D4DBB57";
createNode multiplyDivide -n "Wing4Fat";
	rename -uid "2B46FD03-461E-BA37-4B06-C78D53FEA92B";
createNode multiplyDivide -n "Wing5Fat";
	rename -uid "2183EC5B-44C5-89B8-8EFC-FBA8FC626BD8";
createNode multiplyDivide -n "Wing6Fat";
	rename -uid "A976EE0F-41AC-2B7B-6EC6-5AAAA8105427";
createNode multiplyDivide -n "Wing7Fat";
	rename -uid "C0902CCA-4B0B-7303-02AD-21B55CAA6AC6";
createNode objectSet -n "ControlSet";
	rename -uid "4D121D8C-469F-29B9-9DDA-8FB86A0A2DAF";
	setAttr ".ihi" 0;
	setAttr -s 95 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "C0E649FB-4151-C6E2-4CFA-A59D54411A4D";
	setAttr ".ihi" 0;
	setAttr -s 33 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "06378DE5-424F-6B5C-FB77-D1B7E94006F3";
	setAttr ".ihi" 0;
	setAttr -s 601 ".dsm";
	setAttr -s 270 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "859A526B-41C3-EC96-91A2-BFB712EF9DCA";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "DE858C4F-4066-604D-273D-3A9AEEE96190";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "MainScaleMultiplyDivide1";
	rename -uid "63164154-4969-1B2F-6521-E38BD523BF16";
	setAttr ".ihi" 0;
createNode unitConversion -n "globalUnitConversionWing1_R";
	rename -uid "F73BDBAF-4165-1F4B-BD3A-61AC0936C9CE";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKGlobalWing1MM_R";
	rename -uid "9BF57D26-4F62-42B7-77D4-0AA08D7F8FE4";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -0.98827640600616129 -0.020076023988842086 -0.15134959065800074 0
		 0.019156147353867201 -0.99978812126876559 0.0075335641252130157 0 -0.15146876691285854 0.0045459686174903263 0.98845159052895804 0
		 -68.738677476416868 -1.4185375251906833 50.426975142528931 1;
createNode blendMatrix -n "FKGlobalWing1BMRot_R";
	rename -uid "69EB9F0E-4952-E7FB-2C39-58ADF716F2DE";
	setAttr ".ihi" 0;
createNode pickMatrix -n "FKGlobalWing1PMRot_R";
	rename -uid "A7BE4F14-4CB4-8866-8F35-9EAC5AB6974E";
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "FKGlobalWing1DM_R";
	rename -uid "727CCC37-4829-6228-58F4-34BCE86BEDD0";
	setAttr ".ihi" 0;
createNode unitConversion -n "globalUnitConversionTailBase_M";
	rename -uid "42547634-4A92-1CB1-ABA6-3D92B5C3B83D";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKGlobalTailBaseMM_M";
	rename -uid "90BF8F21-41B5-9D5A-95EB-DDAF5EF4833E";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -3.9103320581546086e-10 -0.0089457788921135217 -0.99995998571943556 0
		 -1.7490835169109435e-12 0.99995998571943534 -0.0089457788921135217 0 1 -1.7490835169109435e-12 -3.9103320581546086e-10 0
		 -2.6310245699226463e-08 -5.826994284781235 -57.632825531649218 1;
createNode blendMatrix -n "FKGlobalTailBaseBMRot_M";
	rename -uid "43284387-4588-CCFE-C70F-E4B94B208624";
	setAttr ".ihi" 0;
createNode pickMatrix -n "FKGlobalTailBasePMRot_M";
	rename -uid "AA359B65-4E90-92DD-1C94-279034021F11";
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "FKGlobalTailBaseDM_M";
	rename -uid "279925D3-4164-F87C-71F1-29929C94DD92";
	setAttr ".ihi" 0;
createNode unitConversion -n "LegLockRoot_MUnitConversion";
	rename -uid "78828CCD-479C-670F-23E6-00821D393BDD";
	setAttr ".cf" 0.1;
createNode unitConversion -n "globalUnitConversionWing1_L";
	rename -uid "B516EA2E-4D86-D4E2-7C2C-EEB7D7830477";
	setAttr ".cf" 0.1;
createNode multMatrix -n "FKGlobalWing1MM_L";
	rename -uid "43810D49-419B-8718-16D4-8888B346B36C";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -0.98827640569543362 0.020076025208582319 0.15134959252518343 0
		 0.019156147241190347 0.99978812120513449 -0.0075335728562970434 0 -0.15146876895448952 -0.0045459772251593474 -0.98845159017651429 0
		 68.73867747507667 -1.4185377436336268 50.426975000658018 1;
createNode blendMatrix -n "FKGlobalWing1BMRot_L";
	rename -uid "BBE62249-4C22-6C96-AA4F-3C963BF46765";
	setAttr ".ihi" 0;
createNode pickMatrix -n "FKGlobalWing1PMRot_L";
	rename -uid "4D8850EA-4D77-8D3A-E4C8-7E9179CF04E7";
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "FKGlobalWing1DM_L";
	rename -uid "A6BA290D-4DDF-EC6C-55FC-07B8F5045647";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKOffsetRootMM_M";
	rename -uid "E6B890D5-4E6E-48DE-4C9E-039422BC06E3";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -3.9103320581546096e-10 -0.0089457788921135234 -0.99995998571943578 0
		 -1.7490835169109433e-12 0.99995998571943523 -0.0089457788921135199 0 1 -1.7490835169109435e-12 -3.9103320581546086e-10 0
		 0 0 0 1;
createNode decomposeMatrix -n "FKOffsetRootDM_M";
	rename -uid "A552A398-4697-5419-A1EA-2ABF03015B2F";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Wing6BM_R";
	rename -uid "595839D8-44AB-43DE-CEBE-A9A4CFDCAB43";
createNode blendMatrix -n "Wing5BM_R";
	rename -uid "57DD0525-4493-66D1-D1BC-7AB5E50081D7";
createNode blendMatrix -n "Wing4BM_R";
	rename -uid "1A4F5F53-49C0-377C-6CAC-5FB79DA6092D";
createNode blendMatrix -n "Wing3BM_R";
	rename -uid "8B3D6BF7-4E0B-E3A6-A5AC-578693AB99C9";
createNode blendMatrix -n "Wing2BM_R";
	rename -uid "B67B0C2C-40AD-6668-0DBF-82B374329CC5";
createNode blendMatrix -n "Wing1BM_R";
	rename -uid "BF2C30D8-4790-7776-D38A-B4A8F0068A7B";
createNode blendMatrix -n "WingBaseBM_R";
	rename -uid "66675BA6-4F7B-5887-E94D-7A925CC9B862";
createNode blendMatrix -n "Mouth5BM_R";
	rename -uid "E305487C-4CB6-5C54-90F2-9D9741C82126";
createNode blendMatrix -n "Mouth4BM_R";
	rename -uid "90F9B31B-49C9-ABCE-4312-14B114D49C96";
createNode blendMatrix -n "Mouth3BM_R";
	rename -uid "BC63E99F-4684-AFBE-8A03-A2A12FACD9A4";
createNode blendMatrix -n "Mouth2BM_R";
	rename -uid "7A30BEED-405E-D186-716F-0099F9CEF092";
createNode blendMatrix -n "Mouth1BM_R";
	rename -uid "21A761E1-483E-4CAA-BEEE-1E976D01CAC9";
createNode blendMatrix -n "MouthBaseBM_R";
	rename -uid "58D660F6-4BFD-6ABA-9283-39BCA985F0E9";
createNode blendMatrix -n "Tail6BM_M";
	rename -uid "9E2B6BAA-4FB3-350C-2FCA-0EBFA5D4D06A";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Tail5BM_M";
	rename -uid "DC5D6629-4C98-068A-C00B-BB93A51C6558";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Tail4BM_M";
	rename -uid "73428CDD-47C7-1552-8E20-B59D9A383BC5";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Tail3BM_M";
	rename -uid "D3BB16FC-4AC8-18C9-FA89-29920D026E0C";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Tail2BM_M";
	rename -uid "BFAD3C62-46B1-3C36-3041-84AD796B9BD8";
	setAttr ".ihi" 0;
createNode blendMatrix -n "Tail1BM_M";
	rename -uid "9F62E340-4DA0-3E65-C2CF-459FCF948819";
	setAttr ".ihi" 0;
createNode blendMatrix -n "TailBaseBM_M";
	rename -uid "1899E45A-4A65-676E-1DCD-CEBB7B625011";
createNode blendMatrix -n "RootBM_M";
	rename -uid "41FDCCE2-486D-CA37-0FBB-3496C0D60FE6";
createNode blendMatrix -n "Wing6BM_L";
	rename -uid "AC359EA0-46E3-F1B9-68DB-D0983A82E793";
createNode blendMatrix -n "Wing5BM_L";
	rename -uid "AC028A01-44EB-14A8-F966-6CA57575A840";
createNode blendMatrix -n "Wing4BM_L";
	rename -uid "9AC7A40C-491D-0C51-D96E-A3A1037A380B";
createNode blendMatrix -n "Wing3BM_L";
	rename -uid "4E616F27-4197-2A1B-DD5D-CE88800971C7";
createNode blendMatrix -n "Wing2BM_L";
	rename -uid "8C7DFC86-4770-A908-E323-9881917E8D00";
createNode blendMatrix -n "Wing1BM_L";
	rename -uid "0A326630-4A80-FF13-6A47-4C9DA952C91B";
createNode blendMatrix -n "WingBaseBM_L";
	rename -uid "B8EC9B9A-4DD1-ED92-ACB2-5F9295BCE61A";
createNode blendMatrix -n "Mouth5BM_L";
	rename -uid "4699BBD0-4AC3-6EDC-B137-F8870824B90D";
createNode blendMatrix -n "Mouth4BM_L";
	rename -uid "7FF01980-4FCB-D3E4-1FFD-029E81A2D4F3";
createNode blendMatrix -n "Mouth3BM_L";
	rename -uid "3488D27A-4882-4D1D-35E2-DBA47EE681BD";
createNode blendMatrix -n "Mouth2BM_L";
	rename -uid "18195FDD-4C0B-73CF-BDFE-EAB6FC3E038D";
createNode blendMatrix -n "Mouth1BM_L";
	rename -uid "A314DFDE-4BE0-8DDC-CC14-6C8870AC390B";
createNode blendMatrix -n "MouthBaseBM_L";
	rename -uid "DB15E049-4189-17B6-EB76-66832F140782";
createNode multMatrix -n "IKcvOffsetSplineTail1MM1_M";
	rename -uid "94680D40-4930-F253-38E2-29B2D30990D6";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.2635574889578213e-08 -0.33794494166374012 -95.78774318690752 1;
createNode multMatrix -n "IKcvOffsetSplineTail1MM2_M";
	rename -uid "DC2CE889-46E5-06B6-8301-59960C9C79D7";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8280333092234978e-13 -0.0065379031386925135 53.339692210364149 1;
createNode blendMatrix -n "IKcvOffsetSplineTail1BM_M";
	rename -uid "B3B49F00-43DD-FFF4-E118-BD90BFA59624";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "IKcvOffsetSplineTail1DM_M";
	rename -uid "85D49BF3-437B-9953-CB07-A3B8DC8687D9";
	setAttr ".ihi" 0;
createNode setRange -n "IKStiffSplineTail1SetRange_M";
	rename -uid "88E474AD-4B36-7DE4-D137-4F86753EF101";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.35767716 0 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode multMatrix -n "IKcvOffsetSplineTail2MM1_M";
	rename -uid "E909EA3C-4BAD-0197-B29E-7784C9E5FCFD";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.4390576924116536e-13 -0.0065379031388257403 -42.162863058123179 1;
createNode multMatrix -n "IKcvOffsetSplineTail2MM2_M";
	rename -uid "8ACB4B48-413D-CE9D-8D11-8898E5423CA5";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.7112278852193097e-12 4.9737991503207013e-14 106.96485590545188 1;
createNode blendMatrix -n "IKcvOffsetSplineTail2BM_M";
	rename -uid "44873D21-459E-C160-6578-91A539745CF4";
	setAttr ".tgt[0].wgt" 0.71727011105157934;
createNode decomposeMatrix -n "IKcvOffsetSplineTail2DM_M";
	rename -uid "20A303EF-42B9-FE2C-51F0-FEA236511761";
createNode multMatrix -n "IKcvOffsetSplineTail3MM1_M";
	rename -uid "195BA10B-46E0-32CA-7704-BA8BF20B32A5";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0035299958837646e-13 6.2172489379008766e-15 6.2698485812332478 1;
createNode multMatrix -n "IKcvOffsetSplineTail3MM2_M";
	rename -uid "31A2D0B7-45F3-664F-14BC-0B8924AC95B9";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.2547806548720984e-12 -0.006537903138869261 -142.85787038234182 1;
createNode blendMatrix -n "IKcvOffsetSplineTail3BM_M";
	rename -uid "34138F54-4060-26EE-213F-CF9F7B660B39";
	setAttr ".tgt[0].wgt" 0.95795651795307879;
createNode decomposeMatrix -n "IKcvOffsetSplineTail3DM_M";
	rename -uid "0B5A490E-4D14-5671-9E64-55AED8AD65E3";
createNode multMatrix -n "IKcvOffsetSplineTail4MM1_M";
	rename -uid "09084FD9-4B4F-6CB5-C54B-CABCC926647B";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 3.4165222946833786e-06 -4.6688552224338764e-06 53.688629159911102 1;
createNode multMatrix -n "IKcvOffsetSplineTail4MM2_M";
	rename -uid "A354900E-4AF2-C5D7-8CDC-28B39E3DCC5A";
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5269581944657953e-12 -5.5067062021407764e-14 -95.439166311344877 1;
createNode blendMatrix -n "IKcvOffsetSplineTail4BM_M";
	rename -uid "5030768A-441C-4A46-0F9A-65AD42EEB1A4";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "IKcvOffsetSplineTail4DM_M";
	rename -uid "15D24A37-4488-F66C-18CB-B7B634150D0C";
	setAttr ".ihi" 0;
createNode setRange -n "IKStiffSplineTail4SetRange_M";
	rename -uid "0ECFF2E1-496F-61A1-E2BD-AEB378800F61";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.6399824 0 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode curveInfo -n "IKCurveInfoSplineTail_M";
	rename -uid "04E97F40-40EA-C269-190F-C4B4F2AAD0AF";
createNode unitConversion -n "SplineTailStretchyUnitConversion_M";
	rename -uid "A9DA0D86-49D5-AF85-7E5A-5BB8F56B7233";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKCurveInfoNormalizeSplineTail_M";
	rename -uid "F44CF77C-400C-8C20-1F51-FCA446AAFD9C";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 447.38339 1 1 ;
createNode multiplyDivide -n "IKCurveInfoAllMultiplySplineTail_M";
	rename -uid "0904540E-4724-E447-7ED1-19B2F71AAD57";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode multiplyDivide -n "SplineTailStretchyMultiplyDivide0_M";
	rename -uid "3CC1297F-4F49-808C-2AB6-DF8A4FA81CF1";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 53.688629 0 0 ;
createNode blendTwoAttr -n "SplineTailStretchyBlendTwo0_M";
	rename -uid "EF53B20C-4813-B5FF-83DF-D38C9BF4817A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  53.688629150390625 53.688629150390625;
createNode multiplyDivide -n "SplineTailStretchyMultiplyDivide1_M";
	rename -uid "E6B71099-4D13-C13F-C25E-4E9F74C28177";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 101.70901 0 0 ;
createNode blendTwoAttr -n "SplineTailStretchyBlendTwo1_M";
	rename -uid "E57052BD-41C6-B441-F4AC-8182CA11FF90";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  101.70901489257801 101.70900726318359;
createNode multiplyDivide -n "SplineTailStretchyMultiplyDivide2_M";
	rename -uid "D95B2D68-41D2-8DFC-BC47-7AB4A38BDEA2";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 100.69501 0 0 ;
createNode blendTwoAttr -n "SplineTailStretchyBlendTwo2_M";
	rename -uid "126E6B8E-4A3C-7308-D84F-A99F50F32315";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  100.69500732421869 100.69500732421875;
createNode multiplyDivide -n "SplineTailStretchyMultiplyDivide3_M";
	rename -uid "063522AE-4637-4066-AA02-1FACED4800C1";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 95.502556 0 0 ;
createNode blendTwoAttr -n "SplineTailStretchyBlendTwo3_M";
	rename -uid "846BE62A-4101-D736-35C6-42B6D2FCE382";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  95.502555268487271 95.502555847167969;
createNode multiplyDivide -n "SplineTailStretchyMultiplyDivide4_M";
	rename -uid "07DDF9B8-47B3-A03A-3359-92B16DBD8EA0";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 95.788338 0 0 ;
createNode blendTwoAttr -n "SplineTailStretchyBlendTwo4_M";
	rename -uid "0235889F-441D-F1A7-4CC1-6D8704165E05";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  95.788339334080234 95.788337707519531;
createNode ramp -n "IKSplineTailRamp_M";
	rename -uid "A519D072-4197-6444-BAD4-24B57A431086";
	setAttr -s 4 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.3333333432674408;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[2].ep" 0.66666668653488159;
	setAttr ".cel[2].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[4].ep" 1;
	setAttr ".cel[4].ec" -type "float3" 0 0 0 ;
createNode multMatrix -n "IKSplineTail2MM1_M";
	rename -uid "2EC67ABD-4673-4432-B198-879FB5E618E4";
	setAttr -s 2 ".i";
	setAttr ".i[1]" -type "matrix" -1.3544685381909127e-14 4.3224303920192448e-13 1.0000000000000004 0
		 -0.00051361683060945399 0.99999986809886698 -4.3224989985633042e-13 0 -0.99999986809886743 -0.00051361683060945388 -1.3322711834112245e-14 0
		 -222.93873359037752 6.188603185526933 -4.8330779738259648e-12 1;
createNode multMatrix -n "IKSplineTail2MM2_M";
	rename -uid "B38084EC-4E94-0AFD-5D45-1E92ECB7BDC6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKSplineTail2DMTwist_M";
	rename -uid "9BE917DC-4631-341D-9883-F9AB505FEE00";
createNode quatToEuler -n "IKSplineTail2QTETwist_M";
	rename -uid "6D79CE31-45B6-F8E5-4D25-38AEEE4F5C14";
createNode unitConversion -n "IKSplineTail2QTETwist_M_outputRotateXUC";
	rename -uid "B6F6BB2A-44DF-535F-C818-0EA76FB9F02A";
	setAttr ".cf" 57.295779513082323;
createNode multMatrix -n "IKSplineTail3MM1_M";
	rename -uid "F1DFD5D7-49E8-7C1A-6A91-A1BF367A4037";
	setAttr -s 2 ".i";
	setAttr ".i[1]" -type "matrix" 1.6209256159527285e-14 0 1 0 0 1 0 0 -1 0 1.6209256159527285e-14 0
		 -372.06324457732688 6.3096453581488117 9.2475474510833512e-12 1;
createNode multMatrix -n "IKSplineTail3MM2_M";
	rename -uid "821C03BF-4AAC-B9B5-3940-A182B444D04B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKSplineTail3DMTwist_M";
	rename -uid "344328AC-429C-B532-3520-5BA3932CE21A";
createNode quatToEuler -n "IKSplineTail3QTETwist_M";
	rename -uid "B8DC7AC1-429E-CF5D-164C-89B18F9C115E";
createNode unitConversion -n "IKSplineTail3QTETwist_M_outputRotateXUC";
	rename -uid "7A99798F-4FCA-4A1D-511C-61A3BE059090";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "IKSplineTailFlipUpAxisSetRange_M";
	rename -uid "06A45B6E-44BA-2D86-BC7A-D381FDA804A1";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 3 0 0 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode setRange -n "IKSplineTailFlipAxisSetRange_M";
	rename -uid "CA59B878-4D0C-A908-BD03-D5A1EC80257C";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 0 0 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "IKhybridFollowSplineTail1BM_M";
	rename -uid "1F885D0F-40B9-C254-E5DC-64AFDEEC0C16";
	setAttr ".ihi" 0;
	setAttr -s 3 ".tgt";
	setAttr ".imat" -type "matrix" 0 -0.003528030815930827 -0.99999377647991461 0 0 0.99999377647991472 -0.003528030815930827 0
		 0.99999999999999978 0 0 0 -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480167 1;
createNode multDoubleLinear -n "IKSplineTail4_MFollowMainMDL_M";
	rename -uid "DF639EEE-4698-CAE7-DE91-0EA91654FE8B";
	setAttr ".ihi" 0;
	setAttr ".i2" 0.1;
createNode multMatrix -n "IKhybridFollowSplineTail1MMMain_M";
	rename -uid "1A23B882-41A6-6C0D-932C-1DBF84422E5E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr ".i[0]" -type "matrix" 0 -0.003528030815930827 -0.99999377647991461 0 0 0.99999377647991472 -0.003528030815930827 0
		 0.99999999999999978 0 0 0 -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480167 1;
createNode multDoubleLinear -n "IKSplineTail4_MFollowRootMDL_M";
	rename -uid "9F408647-4137-9627-E00A-63B53C715DC9";
	setAttr ".ihi" 0;
	setAttr ".i2" 0.1;
createNode multMatrix -n "IKhybridFollowSplineTail1MMRoot_M";
	rename -uid "539E6424-4F5E-9ADB-1DE3-FFA3DC32FA38";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0 -0.003528030815930827 -0.99999377647991461 0 0 0.99999377647991472 -0.003528030815930827 0
		 0.99999999999999978 0 0 0 -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480167 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8308871277536729e-17 5.2250862177634314 -9.6485134504878438 1;
createNode multDoubleLinear -n "IKSplineTail4_MFollowTailBaseMDL_M";
	rename -uid "FD54D921-403B-19E3-AD4B-48BB5E1A1814";
	setAttr ".ihi" 0;
	setAttr ".i2" 0.1;
createNode multMatrix -n "IKhybridFollowSplineTail1MMTailBase_M";
	rename -uid "16408425-46C7-6AC7-DA62-73B043367248";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0 -0.003528030815930827 -0.99999377647991461 0 0 0.99999377647991472 -0.003528030815930827 0
		 0.99999999999999978 0 0 0 -3.2635553631605021e-08 -5.9717004164848886 -73.808090216480167 1;
	setAttr ".i[1]" -type "matrix" -3.9103253967926267e-10 -1.7490805803293706e-12 1 0
		 -0.0089457788921135199 0.99995998571943545 -1.7490805803293706e-12 0 -0.99995998571943545 -0.0089457788921135199 -3.9103253967926267e-10 0
		 -57.682646398075974 5.3111906076631872 3.7637436801486282e-09 1;
createNode decomposeMatrix -n "IKhybridFollowSplineTail1DM_M";
	rename -uid "90AFB5BA-452F-D655-E7F2-B1B8560146C2";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKFollowEndSplineTail2_MUnitConversion";
	rename -uid "EA8625DB-4EF7-AB5D-8B92-5494664C4D3E";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFollowEndSplineTail2_MReverse";
	rename -uid "77B79F6D-4451-7502-9B60-BFAED442CE05";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKFollowEndSplineTail3_MUnitConversion";
	rename -uid "D9A315B4-4A66-6D6B-DF86-688832AF42BA";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFollowEndSplineTail3_MReverse";
	rename -uid "9D1CD509-4F0C-86F3-CC79-8AB49788C5A7";
	setAttr ".ihi" 0;
createNode pointOnCurveInfo -n "IKAcPociTail1_M";
	rename -uid "5D1A3AD7-412F-6B8C-AC19-D98FBC1D7F86";
createNode multMatrix -n "IKAcTail1MM_M";
	rename -uid "82DD275B-43C4-2BE7-C64B-249042F45A17";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail1DM_M";
	rename -uid "FDFBF9A2-4F6A-C1D9-8BC0-A3A5B697E0C5";
createNode aimMatrix -n "IKAcTail1AM_M";
	rename -uid "89B23F67-43E7-634B-27EE-90B44036F8E5";
	setAttr ".sm" 2;
	setAttr ".smiv" -type "double3" 0 1 0 ;
createNode multMatrix -n "IKAcTail1MM2_M";
	rename -uid "49462A70-4966-FD52-8C87-ED97D6DCC239";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail1DM2_M";
	rename -uid "2423F406-4545-E18F-92CB-8EBAA40AA207";
createNode pointOnCurveInfo -n "IKAcPociTail2_M";
	rename -uid "2DBB2542-4A55-9F7E-A705-8883E476CE09";
	setAttr ".pr" 0.40669723157073967;
createNode multMatrix -n "IKAcTail2MM_M";
	rename -uid "B3FF6F52-4487-B76F-437E-5286C3A13DB8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail2DM_M";
	rename -uid "9EDED71B-49FC-4C61-DFCC-FAAC1D56E817";
createNode aimMatrix -n "IKAcTail2AM_M";
	rename -uid "F0E39E9A-4D5C-C26B-C868-3FBFF8E423BC";
	setAttr ".sm" 2;
	setAttr ".smiv" -type "double3" 0 1 0 ;
createNode multMatrix -n "IKAcTail2MM2_M";
	rename -uid "085D810D-41E5-B3B9-CFEF-8284721DC071";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail2DM2_M";
	rename -uid "756AC8A5-4619-8393-4912-82A1122AEE65";
createNode pointOnCurveInfo -n "IKAcPociTail3_M";
	rename -uid "ABD3B46C-4C26-C101-11F8-0CB819D44ED0";
	setAttr ".pr" 1.0587297674107992;
createNode multMatrix -n "IKAcTail3MM_M";
	rename -uid "00D7F21E-4E53-A8DE-E400-7CBE2099F092";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail3DM_M";
	rename -uid "252F208C-4CE9-F76B-F579-62B34B3E947C";
createNode aimMatrix -n "IKAcTail3AM_M";
	rename -uid "56427FC7-4540-2F6E-57A4-EEB44F2751E2";
	setAttr ".sm" 2;
	setAttr ".smiv" -type "double3" 0 1 0 ;
createNode multMatrix -n "IKAcTail3MM2_M";
	rename -uid "80349E62-4F41-8762-A85F-589A57556C2A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail3DM2_M";
	rename -uid "9678F6D8-4B91-603F-D8D8-BFA155F8BF7C";
createNode pointOnCurveInfo -n "IKAcPociTail4_M";
	rename -uid "605709EB-4DF0-908F-74FA-098C2ACF6105";
	setAttr ".pr" 1.9307935183401883;
createNode multMatrix -n "IKAcTail4MM_M";
	rename -uid "481D22DC-4D56-F9BF-56BA-1C8852178944";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail4DM_M";
	rename -uid "83072AA0-41B7-1F6E-E94D-A29680000919";
createNode aimMatrix -n "IKAcTail4AM_M";
	rename -uid "67D02D98-4876-46DD-6FBD-E797C62EDA74";
	setAttr ".sm" 2;
	setAttr ".smiv" -type "double3" 0 1 0 ;
createNode multMatrix -n "IKAcTail4MM2_M";
	rename -uid "B970FC9D-4B8B-F082-808A-A1A96584FD83";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail4DM2_M";
	rename -uid "03BC291C-48C7-C3EA-6011-61995D348804";
createNode pointOnCurveInfo -n "IKAcPociTail5_M";
	rename -uid "ABD9766D-4537-F765-0B7D-86AEF81134AB";
	setAttr ".pr" 2.6591041228176509;
createNode multMatrix -n "IKAcTail5MM_M";
	rename -uid "CF179F33-4679-7C7A-07C5-8F8036DF74CC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail5DM_M";
	rename -uid "83AFB39B-4D66-E0F6-A006-02972825EC47";
createNode aimMatrix -n "IKAcTail5AM_M";
	rename -uid "3C1A87C5-46DD-B506-73BC-898038911B5A";
	setAttr ".sm" 2;
	setAttr ".smiv" -type "double3" 0 1 0 ;
createNode multMatrix -n "IKAcTail5MM2_M";
	rename -uid "93D7E838-4459-900C-6CE7-6489FBF0BC39";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail5DM2_M";
	rename -uid "23E4367B-4E56-2A32-208A-BC8ED19F1DC0";
createNode pointOnCurveInfo -n "IKAcPociTail6_M";
	rename -uid "DD9F19B2-486A-7A7D-2B65-5FBB10CACD13";
	setAttr ".pr" 3;
createNode multMatrix -n "IKAcTail6MM_M";
	rename -uid "175A6D41-4F1C-39F0-5121-67A9BD50AFF2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail6DM_M";
	rename -uid "C5BA5D12-4E7F-A6DE-58D8-73932201DE07";
createNode multMatrix -n "IKAcTail6MM2_M";
	rename -uid "3F176D70-4693-7879-41E3-DDA18003B46C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKAcTail6DM2_M";
	rename -uid "060F9EF0-4081-ADF1-F85F-EA8FC57A2272";
createNode multMatrix -n "IKAcTail1FollowOffsetMM_M";
	rename -uid "5C6A19CB-4A47-FD23-9FF4-6887F3A88472";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999972855191777 -0.00073681482855935732 0 0 0.00073681482855935722 0.99999972855191754 0 0
		 0 0 1 0 4.4850878566649044e-09 7.2870260048318869e-07 -3.2635553573303922e-08 1;
createNode pickMatrix -n "IKAcTail1FollowOffsetPM_M";
	rename -uid "85E625B4-4F10-D0E2-5AC0-AC81ACF8AAF5";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail1FollowOffsetDM_M";
	rename -uid "4BD975D9-4F92-E0A0-DC12-B0BBFA2BB80D";
createNode multMatrix -n "IKAcTail2FollowOffsetMM_M";
	rename -uid "17CB4BEF-4134-A599-C24F-ECBD8FE85254";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999972691440697 0.00073903390378595151 0 0 -0.00073903390378595151 0.99999972691440697 0 0
		 0 0 0.99999999999999956 0 -0.00016850589685191153 -0.070577342932616638 -5.5000981663018581e-08 1;
createNode pickMatrix -n "IKAcTail2FollowOffsetPM_M";
	rename -uid "2B92E154-42B5-A1A6-E9B3-23B39EF4FA1B";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail2FollowOffsetDM_M";
	rename -uid "36519354-4D22-C0B5-3555-BF9AB5DC6F20";
createNode multMatrix -n "IKAcTail3FollowOffsetMM_M";
	rename -uid "22CE0D27-4C4C-1A4F-DB7A-978D44B00D00";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.00018309594815946184 2.4186220235478118e-06 -9.7947219122096668e-07 1;
createNode pickMatrix -n "IKAcTail3FollowOffsetPM_M";
	rename -uid "89C8209D-4C17-CAEB-66CF-A2837E520CBC";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail3FollowOffsetDM_M";
	rename -uid "5967AFFB-4CC0-1DBC-04B9-2AB7F705B2B2";
createNode multMatrix -n "IKAcTail4FollowOffsetMM_M";
	rename -uid "208370C4-421C-251E-0666-6E91AA8DB874";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.00018309594821630526 3.3034082749239246e-06 -1.9491834090874665e-06 1;
createNode pickMatrix -n "IKAcTail4FollowOffsetPM_M";
	rename -uid "DE2BB0A2-4A70-47F0-874B-879DCBD9BBDA";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail4FollowOffsetDM_M";
	rename -uid "AF39514C-404B-2514-0AE1-A8895367AFB7";
createNode multMatrix -n "IKAcTail5FollowOffsetMM_M";
	rename -uid "0879D81C-4062-0524-7217-6D80795BD472";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.00018309594815946184 4.1971043840405287e-06 -2.9233091681758888e-06 1;
createNode pickMatrix -n "IKAcTail5FollowOffsetPM_M";
	rename -uid "9E4286DE-4A71-E091-FAE7-58BA2AF47708";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail5FollowOffsetDM_M";
	rename -uid "D0B038DB-4CEB-792E-949E-1BB4907BB1A3";
createNode multMatrix -n "IKAcTail6FollowOffsetMM_M";
	rename -uid "390B149A-42D3-3391-F644-F08EA9E0C68F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.5205905381590128e-09 4.6688552721718679e-06 -3.4375146332140022e-06 1;
createNode pickMatrix -n "IKAcTail6FollowOffsetPM_M";
	rename -uid "7E6A5C10-4836-33D8-AB73-4D8CDECDBD64";
	setAttr ".sca" no;
	setAttr ".she" no;
createNode decomposeMatrix -n "IKAcTail6FollowOffsetDM_M";
	rename -uid "C2A3878A-4AE7-F0DF-0286-C0A7998378AB";
createNode multMatrix -n "IKSpTail1FollowOffsetMM_M";
	rename -uid "18B209C7-4F49-26CC-2C3C-24B9527C1962";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999972855191255 -0.00073681483509780549 0 0 0.00073681483509780549 0.99999972855191255 0 0
		 0 0 0.99999999999999967 0 4.4850452241007588e-09 7.2870259959501027e-07 -3.2635553573296127e-08 1;
createNode decomposeMatrix -n "IKSpTail1FollowOffsetDM_M";
	rename -uid "7F6906E6-45B9-E30E-DC0E-25B3EFE054F7";
createNode blendMatrix -n "Tail1IkBM_M";
	rename -uid "1860CAD5-4932-31EB-F977-96A0B81CCB74";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail1IkMM_M";
	rename -uid "96B3C719-41EC-45BE-CF3C-BE863DC75719";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail1DM_M";
	rename -uid "8A357439-4177-64A0-10D9-1D86C840AAAD";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKSpTail2FollowOffsetMM_M";
	rename -uid "94BD5A83-4E2D-D2BC-F67B-D286D9BBAA2F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999972690799277 0.0007390425833139762 0 0 -0.0007390425833139762 0.99999972690799277 0 0
		 0 0 0.99999999999999978 0 -0.0001692082147428664 -0.070577342118816944 -3.2635613784908296e-08 1;
createNode decomposeMatrix -n "IKSpTail2FollowOffsetDM_M";
	rename -uid "68E24BA4-4B75-04B2-9534-7FA72481AE5C";
createNode blendMatrix -n "Tail2IkBM_M";
	rename -uid "6B1902BA-4903-1B61-1B93-B5B22F633359";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail2IkMM_M";
	rename -uid "725E350A-4EB6-3125-758B-C0A24F1C75F8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail2DM_M";
	rename -uid "A0C1272A-479E-C98C-5702-BBB504529965";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKSpTail3FollowOffsetMM_M";
	rename -uid "F20EE546-415E-B0CA-3870-C9BF7F159035";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999978 -2.1073538441191277e-08 0
		 0 2.1073538441191274e-08 0.99999999999999956 0 -0.00019586614610034303 2.4186292906236417e-06 -8.3528264464064957e-07 1;
createNode decomposeMatrix -n "IKSpTail3FollowOffsetDM_M";
	rename -uid "8E698A84-47CF-E682-2B7C-608336631CA4";
createNode blendMatrix -n "Tail3IkBM_M";
	rename -uid "C2C3EA38-4E23-F07E-56B4-D28A80F0D6E2";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail3IkMM_M";
	rename -uid "F14F1780-4D0F-18B0-E089-4495BAD676C7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail3DM_M";
	rename -uid "89693CAA-41DD-3EC0-3BC1-91911F878EE6";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKSpTail4FollowOffsetMM_M";
	rename -uid "7EC9D4F1-46A1-1084-7D51-6BB652B8CEB0";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 0.99999999999999978 0
		 -0.00019586614615718645 3.3034541351284474e-06 -1.6815692958242253e-06 1;
createNode decomposeMatrix -n "IKSpTail4FollowOffsetDM_M";
	rename -uid "DB95122C-4FBD-9B4B-710A-4D8ED3271A91";
createNode blendMatrix -n "Tail4IkBM_M";
	rename -uid "19095FEB-4D94-BCC2-A0E0-089B51E25C9C";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail4IkMM_M";
	rename -uid "D101F080-4738-B063-68BE-2BA089ECAFAB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail4DM_M";
	rename -uid "07F2AA9A-4B8B-43C9-973E-0BAC63125900";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKSpTail5FollowOffsetMM_M";
	rename -uid "9A79744D-4028-AFBF-0532-669A4910CD64";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999978 0 0
		 0 0 0.99999999999999944 0 -0.00019586614604349961 4.1971891713288301e-06 -2.5363782625408616e-06 1;
createNode decomposeMatrix -n "IKSpTail5FollowOffsetDM_M";
	rename -uid "529B746B-463E-C4E5-BDC2-CAA382540223";
createNode blendMatrix -n "Tail5IkBM_M";
	rename -uid "69041B67-4657-8297-B097-67984AF5CFD9";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail5IkMM_M";
	rename -uid "22D38905-4BFA-8838-71F8-36A62CDCE211";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail5DM_M";
	rename -uid "09DC3FA0-4AF3-6712-AD3C-60A578D2A444";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKSpTail6FollowOffsetMM_M";
	rename -uid "98F2FCA2-4A7D-41D5-3AC4-ADBD0D3CDE20";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999978 0 0
		 0 0 0.99999999999999944 0 -0.00019586614632771671 4.6689606350014401e-06 -2.9876019709853997e-06 1;
createNode decomposeMatrix -n "IKSpTail6FollowOffsetDM_M";
	rename -uid "7DCBAD9B-443D-5532-EDDB-B0B8AD369A98";
createNode blendMatrix -n "Tail6IkBM_M";
	rename -uid "D5A00402-46B2-EE44-91C7-858548AA5052";
	setAttr ".ihi" 0;
createNode multMatrix -n "Tail6IkMM_M";
	rename -uid "31741B43-4610-2452-CDA5-B0B3CA2819EE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IKXTail6DM_M";
	rename -uid "FE26AD61-479F-35B9-EF4A-B49EDB7C7FEA";
	setAttr ".ihi" 0;
createNode pickMatrix -n "IKTail6nonStretchPos_M";
	rename -uid "1726EE4E-4560-C33E-03D5-74BCB80FFC4E";
	setAttr ".sca" no;
	setAttr ".she" no;
	setAttr ".rot" no;
createNode pickMatrix -n "IKTail6Rot_M";
	rename -uid "4529E27E-474D-1684-9FFB-E599DBC4C9B4";
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode multMatrix -n "IKTail6nonStretchMixer_M";
	rename -uid "3CA9AEE5-4534-BED3-1F1F-5084DF3E524E";
	setAttr -s 2 ".i";
createNode unitConversion -n "IKfirstJointFixedSplineTail1_MUnitConversion";
	rename -uid "8ABE23B9-4196-B9D1-7E0F-8B929B77EBB1";
	setAttr ".cf" 0.1;
createNode blendMatrix -n "Tail1IkFirstJointFixedBM_M";
	rename -uid "51ECC56E-40DA-99A6-050E-D28ADF9099B3";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKIKBlendSplineTail_MUnitConversion";
	rename -uid "D2BF6A5D-4F39-9B36-4C13-50B7D865DC16";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendSplineTail_MReverse";
	rename -uid "95F2F7AD-4935-B8A5-0BFE-C0BC891745C0";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKIKBlendSplineTailUnitConversion_M";
	rename -uid "3C980BD6-4D5E-FF43-332A-0B8179A0E98C";
	setAttr ".cf" 0.1;
createNode condition -n "FKIKBlendSplineTailCondition_M";
	rename -uid "4E846DC7-4AC9-E5A9-0CE4-2FBD29426FF4";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendSplineTailsetRange_M";
	rename -uid "0F809116-4FD4-A4B4-B7D6-7B8419010FB9";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode plusMinusAverage -n "FKIKBlendSplineTailHybridVisPMA_M";
	rename -uid "909A03B9-44C5-F3B6-2C44-4493880FCE08";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr -s 3 ".i1[2]"  -0.5;
	setAttr -s 2 ".i1";
createNode unitConversion -n "FKIKBlendSplineTailConditionUnitConversion_M";
	rename -uid "038E8183-4A85-F589-534C-DBA83C9530B6";
	setAttr ".cf" 0.1;
createNode blendColors -n "ScaleBlendTail6_M";
	rename -uid "475CCFC7-4C90-2AFB-B4A6-9CA3191E4FB9";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode composeMatrix -n "ScaleBlendCMTail6_M";
	rename -uid "A54C2F02-44D2-5C30-66E2-61892D9A7A9F";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendTail5_M";
	rename -uid "3E60D24C-46F1-4AEA-E73C-BB95DD174A31";
	setAttr ".ihi" 0;
createNode composeMatrix -n "ScaleBlendCMTail5_M";
	rename -uid "E17BD92F-4AED-D512-BC46-56B1940FDA0B";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendTail4_M";
	rename -uid "B9030457-4EE8-01D5-8858-74BE42BA0760";
	setAttr ".ihi" 0;
createNode composeMatrix -n "ScaleBlendCMTail4_M";
	rename -uid "AD97F322-4859-61DF-9F50-42B52EB79476";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendTail3_M";
	rename -uid "5189351F-4D04-7242-25D1-20A4AFF48A6F";
	setAttr ".ihi" 0;
createNode composeMatrix -n "ScaleBlendCMTail3_M";
	rename -uid "A2160DF9-4BC4-F05E-2250-2F92C3D88CD2";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendTail2_M";
	rename -uid "919B43BC-4016-32F6-E5DF-73B9C71DAE97";
	setAttr ".ihi" 0;
createNode composeMatrix -n "ScaleBlendCMTail2_M";
	rename -uid "9CA426EE-4E83-B80B-4BB8-D6BC3EC48BD0";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendTail1_M";
	rename -uid "D267189D-484C-4346-E04A-12A7C977CDF9";
	setAttr ".ihi" 0;
createNode composeMatrix -n "ScaleBlendCMTail1_M";
	rename -uid "EC93B592-443A-5526-CBF5-4A8C8D441E34";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleTail1MultiplyDivide_M";
	rename -uid "0DBBFB9E-4DB6-7665-38F2-988B914BFEE8";
	setAttr ".ihi" 0;
createNode blendMatrix -n "IKScalerTail1BM_M";
	rename -uid "3513D6F1-48D5-616A-4A1C-42912AA5801E";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "IKScalerTail1DM_M";
	rename -uid "0EF77BB7-4158-3F0E-4F05-93814E4C025B";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail1MM_M";
	rename -uid "13C7B1B7-4E05-1DDA-FB73-4F9784F35DAC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKScaleTail2MultiplyDivide_M";
	rename -uid "21B7EE91-4879-1761-6FF2-F7BBEB3B7EFF";
	setAttr ".ihi" 0;
createNode blendMatrix -n "IKScalerTail2BM_M";
	rename -uid "FFBEE47E-40B3-FB8B-5E19-DD82D6813B77";
	setAttr ".ihi" 0;
	setAttr -s 3 ".tgt";
	setAttr ".tgt[0].wgt" 0.64800000000000013;
	setAttr ".tgt[1].wgt" 0.82459259259259277;
	setAttr ".tgt[2].wgt" 0.012740740740740818;
createNode decomposeMatrix -n "IKScalerTail2DM_M";
	rename -uid "6A0C2271-4C6F-CE09-72E8-28B73FC73C03";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail2MM_M";
	rename -uid "2586FCA0-49ED-8F62-D1A9-E981B18E3955";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKScaleTail3MultiplyDivide_M";
	rename -uid "A134B599-4BE0-772E-C916-2A97912FF9A7";
	setAttr ".ihi" 0;
createNode blendMatrix -n "IKScalerTail3BM_M";
	rename -uid "9E4046EA-40EE-5E2C-29D7-A0A5984A1189";
	setAttr ".ihi" 0;
	setAttr -s 3 ".tgt";
	setAttr ".tgt[0].wgt" 0.10399999999999995;
	setAttr ".tgt[1].wgt" 0.95140740740740726;
	setAttr ".tgt[2].wgt" 0.45007407407407429;
createNode decomposeMatrix -n "IKScalerTail3DM_M";
	rename -uid "2251218A-4BA7-2017-42C7-319A95C8FCF5";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail3MM_M";
	rename -uid "531BE121-4F7F-5419-A526-1DBF3962F259";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKScaleTail4MultiplyDivide_M";
	rename -uid "8C9E6AA6-471F-F00A-D410-FBB2EB92127C";
	setAttr ".ihi" 0;
createNode blendMatrix -n "IKScalerTail4BM_M";
	rename -uid "BB4887A7-4F88-3637-27D2-3B8778286781";
	setAttr ".ihi" 0;
	setAttr -s 3 ".tgt";
	setAttr ".tgt[1].wgt" 0.45007407407407363;
	setAttr ".tgt[2].wgt" 0.9514074074074077;
	setAttr ".tgt[3].wgt" 0.10400000000000018;
createNode decomposeMatrix -n "IKScalerTail4DM_M";
	rename -uid "FF571E22-420B-3CEC-1804-FB954DC2604B";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail4MM_M";
	rename -uid "9DB45CDE-47BB-383A-61CA-87AD408FC357";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKScaleTail5MultiplyDivide_M";
	rename -uid "39F05303-4A7B-BC8C-0D21-B0A52A8C39D6";
	setAttr ".ihi" 0;
createNode blendMatrix -n "IKScalerTail5BM_M";
	rename -uid "1C8CC64E-4755-D722-A301-63B98611EDAE";
	setAttr ".ihi" 0;
	setAttr -s 3 ".tgt";
	setAttr ".tgt[1].wgt" 0.012740740740740653;
	setAttr ".tgt[2].wgt" 0.82459259259259254;
	setAttr ".tgt[3].wgt" 0.64800000000000013;
createNode decomposeMatrix -n "IKScalerTail5DM_M";
	rename -uid "1ABDD431-425E-1E84-3414-838209A2C3AE";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail5MM_M";
	rename -uid "5D4EDAB9-4661-A2FA-7F89-D1BA6807390A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKScaleTail6MultiplyDivide_M";
	rename -uid "9849E2CA-4E92-43AB-CBE9-54909C8B45D3";
createNode blendMatrix -n "IKScalerTail6BM_M";
	rename -uid "1D4CFBB3-4A02-BB85-CC86-808CD6109BE6";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "IKScalerTail6DM_M";
	rename -uid "5BA09823-45BA-942B-9A1E-DFB50253E31B";
	setAttr ".ihi" 0;
createNode multMatrix -n "IKScalerTail6MM_M";
	rename -uid "64E14C6D-4612-CEF5-15D9-1EBA4AD441C7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode multMatrix -n "FKRootRemoveInbtRotMM_M";
	rename -uid "36F7C367-41FF-5CE8-C064-DBA81B8A01A9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LegLockConstrainedDM2_M";
	rename -uid "44142C75-4DF6-E273-B42C-1C8AB07231CB";
	setAttr ".ihi" 0;
createNode unitConversion -n "volumeSplineTailUnitConversion_M";
	rename -uid "5EBF0D05-4F12-200F-3462-2D99A1F1ECEB";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchySplineTail_M";
	rename -uid "D7826173-4DC7-9F5C-1C65-C48BBC5EAB5C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverSplineTail_M";
	rename -uid "45F8C91E-41A5-3910-26C8-149DD4250AE9";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowSplineTail_M";
	rename -uid "8E095D2F-40C8-3BAD-D45F-AE955C32BD2E";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendSplineTailBlendTwo_M";
	rename -uid "0AB0D653-4424-DCD4-34A2-B7992154C39A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerATail5_M";
	rename -uid "24AC9964-42F5-14BB-420B-44BCF6602F7B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBTail5_M";
	rename -uid "1F717E7A-4DEC-FEFB-0437-E4A6F8E98527";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerTail5_M";
	rename -uid "E4D41F8B-454A-F9DD-34A3-5DADC866A9A3";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerATail4_M";
	rename -uid "42BF8342-4A1B-2F52-A02B-24AF0C6E2CAF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBTail4_M";
	rename -uid "B989923E-4D96-EF54-C840-CAB72E28BE0C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerTail4_M";
	rename -uid "D608AC57-4EEB-883C-884E-4289EAEFD4D2";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerATail3_M";
	rename -uid "C578C03F-4538-EF20-A31D-4AA2057D04D6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBTail3_M";
	rename -uid "7216D6A0-4162-758B-AE3C-05AC501F1393";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerTail3_M";
	rename -uid "2CEA15D7-45FF-E7F4-B17A-21B743CE2C2D";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerATail2_M";
	rename -uid "37216849-40D7-2CFB-BBB5-7B82760C40C7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBTail2_M";
	rename -uid "F4E68778-4915-7894-5720-14AC2227C1C5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerTail2_M";
	rename -uid "32BCFEE4-4F41-DDDF-FAFC-6594E06F6F97";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerATail1_M";
	rename -uid "CABEFC5D-4706-C89A-3960-3F909F8DA15D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBTail1_M";
	rename -uid "303C374A-4864-A320-26BA-4992C960B71B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerTail1_M";
	rename -uid "78808F86-42CF-811D-3B1E-8EBD9F4DF036";
	setAttr ".ihi" 0;
createNode multMatrix -n "FKRootRemoveInbtRotMM2_M";
	rename -uid "5B135209-437A-651D-30E2-F18DCEA6ED37";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FKRootRemoveInbtRotPM_M";
	rename -uid "4661A442-421C-3104-6070-8896E57BDAD3";
	setAttr ".ihi" 0;
	setAttr ".sca" no;
	setAttr ".tra" no;
	setAttr ".she" no;
createNode blendMatrix -n "FKRootRemoveInbtRotBM_M";
	rename -uid "32C3D22C-40BD-DF36-2480-E6941EA69B90";
	setAttr ".ihi" 0;
createNode inverseMatrix -n "FKRootRemoveInbtRotIM_M";
	rename -uid "E7BA3F42-4255-1DAA-B665-8D8254864C3C";
	setAttr ".ihi" 0;
createNode blendMatrix -n "FKRootRemoveInbtRotBM2_M";
	rename -uid "4BD91A90-489D-00BE-3007-FDBB7219C893";
	setAttr ".ihi" 0;
createNode multMatrix -n "RootXformInverterRemoveInbtRotMM_M";
	rename -uid "45EB1B51-407E-EBBE-AF87-94A842644908";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
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
select -ne :ikSystem;
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "Root.s" "WingBase.is";
connectAttr "WingBaseFat.oy" "WingBase.fatFrontAbs";
connectAttr "WingBaseFat.oz" "WingBase.fatWidthAbs";
connectAttr "WingBase.s" "Wing1.is";
connectAttr "Wing1Fat.oy" "Wing1.fatFrontAbs";
connectAttr "Wing1Fat.oz" "Wing1.fatWidthAbs";
connectAttr "Wing1.s" "Wing2.is";
connectAttr "Wing2Fat.oy" "Wing2.fatFrontAbs";
connectAttr "Wing2Fat.oz" "Wing2.fatWidthAbs";
connectAttr "Wing2.s" "Wing3.is";
connectAttr "Wing3Fat.oy" "Wing3.fatFrontAbs";
connectAttr "Wing3Fat.oz" "Wing3.fatWidthAbs";
connectAttr "Wing3.s" "Wing4.is";
connectAttr "Wing4Fat.oy" "Wing4.fatFrontAbs";
connectAttr "Wing4Fat.oz" "Wing4.fatWidthAbs";
connectAttr "Wing4.s" "Wing5.is";
connectAttr "Wing5Fat.oy" "Wing5.fatFrontAbs";
connectAttr "Wing5Fat.oz" "Wing5.fatWidthAbs";
connectAttr "Wing5.s" "Wing6.is";
connectAttr "Wing6Fat.oy" "Wing6.fatFrontAbs";
connectAttr "Wing6Fat.oz" "Wing6.fatWidthAbs";
connectAttr "Wing6.s" "Wing7.is";
connectAttr "Wing7Fat.oy" "Wing7.fatFrontAbs";
connectAttr "Wing7Fat.oz" "Wing7.fatWidthAbs";
connectAttr "Root.s" "MouthBase.is";
connectAttr "MouthBaseFat.oy" "MouthBase.fatFrontAbs";
connectAttr "MouthBaseFat.oz" "MouthBase.fatWidthAbs";
connectAttr "MouthBase.s" "Mouth1.is";
connectAttr "Mouth1Fat.oy" "Mouth1.fatFrontAbs";
connectAttr "Mouth1Fat.oz" "Mouth1.fatWidthAbs";
connectAttr "Mouth1.s" "Mouth2.is";
connectAttr "Mouth2Fat.oy" "Mouth2.fatFrontAbs";
connectAttr "Mouth2Fat.oz" "Mouth2.fatWidthAbs";
connectAttr "Mouth2.s" "Mouth3.is";
connectAttr "Mouth3Fat.oy" "Mouth3.fatFrontAbs";
connectAttr "Mouth3Fat.oz" "Mouth3.fatWidthAbs";
connectAttr "Mouth3.s" "Mouth4.is";
connectAttr "Mouth4Fat.oy" "Mouth4.fatFrontAbs";
connectAttr "Mouth4Fat.oz" "Mouth4.fatWidthAbs";
connectAttr "Mouth4.s" "Mouth5.is";
connectAttr "Mouth5Fat.oy" "Mouth5.fatFrontAbs";
connectAttr "Mouth5Fat.oz" "Mouth5.fatWidthAbs";
connectAttr "Mouth5.s" "Mouth6.is";
connectAttr "Mouth6Fat.oy" "Mouth6.fatFrontAbs";
connectAttr "Mouth6Fat.oz" "Mouth6.fatWidthAbs";
connectAttr "Root.s" "TailBase.is";
connectAttr "TailBaseFat.oy" "TailBase.fatFrontAbs";
connectAttr "TailBaseFat.oz" "TailBase.fatWidthAbs";
connectAttr "TailBase.s" "Tail1.is";
connectAttr "Tail1Fat.oy" "Tail1.fatFrontAbs";
connectAttr "Tail1Fat.oz" "Tail1.fatWidthAbs";
connectAttr "Tail1.s" "Tail2.is";
connectAttr "Tail2Fat.oy" "Tail2.fatFrontAbs";
connectAttr "Tail2Fat.oz" "Tail2.fatWidthAbs";
connectAttr "Tail2.s" "Tail3.is";
connectAttr "Tail3Fat.oy" "Tail3.fatFrontAbs";
connectAttr "Tail3Fat.oz" "Tail3.fatWidthAbs";
connectAttr "Tail3.s" "Tail4.is";
connectAttr "Tail4Fat.oy" "Tail4.fatFrontAbs";
connectAttr "Tail4Fat.oz" "Tail4.fatWidthAbs";
connectAttr "Tail4.s" "Tail5.is";
connectAttr "Tail5Fat.oy" "Tail5.fatFrontAbs";
connectAttr "Tail5Fat.oz" "Tail5.fatWidthAbs";
connectAttr "Tail5.s" "Tail6.is";
connectAttr "Tail6Fat.oy" "Tail6.fatFrontAbs";
connectAttr "Tail6Fat.oz" "Tail6.fatWidthAbs";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MotionSystem.v" "MainExtra1Shape.v";
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
connectAttr "FKWingBase_R.s" "FKXWingBase_R.is";
connectAttr "FKOffsetWing1_R_pointConstraint1.ctx" "FKOffsetWing1_R.tx";
connectAttr "FKOffsetWing1_R_pointConstraint1.cty" "FKOffsetWing1_R.ty";
connectAttr "FKOffsetWing1_R_pointConstraint1.ctz" "FKOffsetWing1_R.tz";
connectAttr "FKGlobalWing1DM_R.otx" "FKGlobalWing1_R.tx";
connectAttr "FKGlobalWing1DM_R.oty" "FKGlobalWing1_R.ty";
connectAttr "FKGlobalWing1DM_R.otz" "FKGlobalWing1_R.tz";
connectAttr "FKGlobalWing1DM_R.orx" "FKGlobalWing1_R.rx";
connectAttr "FKGlobalWing1DM_R.ory" "FKGlobalWing1_R.ry";
connectAttr "FKGlobalWing1DM_R.orz" "FKGlobalWing1_R.rz";
connectAttr "FKGlobalWing1DM_R.osx" "FKGlobalWing1_R.sx";
connectAttr "FKGlobalWing1DM_R.osy" "FKGlobalWing1_R.sy";
connectAttr "FKGlobalWing1DM_R.osz" "FKGlobalWing1_R.sz";
connectAttr "FKGlobalWing1DM_R.oshx" "FKGlobalWing1_R.shxy";
connectAttr "FKGlobalWing1DM_R.oshy" "FKGlobalWing1_R.shxz";
connectAttr "FKGlobalWing1DM_R.oshz" "FKGlobalWing1_R.shyz";
connectAttr "FKWing1_R.s" "FKXWing1_R.is";
connectAttr "FKOffsetWing2_R_pointConstraint1.ctx" "FKOffsetWing2_R.tx";
connectAttr "FKOffsetWing2_R_pointConstraint1.cty" "FKOffsetWing2_R.ty";
connectAttr "FKOffsetWing2_R_pointConstraint1.ctz" "FKOffsetWing2_R.tz";
connectAttr "FKWing2_R.s" "FKXWing2_R.is";
connectAttr "FKOffsetWing3_R_pointConstraint1.ctx" "FKOffsetWing3_R.tx";
connectAttr "FKOffsetWing3_R_pointConstraint1.cty" "FKOffsetWing3_R.ty";
connectAttr "FKOffsetWing3_R_pointConstraint1.ctz" "FKOffsetWing3_R.tz";
connectAttr "FKWing3_R.s" "FKXWing3_R.is";
connectAttr "FKOffsetWing4_R_pointConstraint1.ctx" "FKOffsetWing4_R.tx";
connectAttr "FKOffsetWing4_R_pointConstraint1.cty" "FKOffsetWing4_R.ty";
connectAttr "FKOffsetWing4_R_pointConstraint1.ctz" "FKOffsetWing4_R.tz";
connectAttr "FKWing4_R.s" "FKXWing4_R.is";
connectAttr "FKOffsetWing5_R_pointConstraint1.ctx" "FKOffsetWing5_R.tx";
connectAttr "FKOffsetWing5_R_pointConstraint1.cty" "FKOffsetWing5_R.ty";
connectAttr "FKOffsetWing5_R_pointConstraint1.ctz" "FKOffsetWing5_R.tz";
connectAttr "FKWing5_R.s" "FKXWing5_R.is";
connectAttr "FKOffsetWing6_R_pointConstraint1.ctx" "FKOffsetWing6_R.tx";
connectAttr "FKOffsetWing6_R_pointConstraint1.cty" "FKOffsetWing6_R.ty";
connectAttr "FKOffsetWing6_R_pointConstraint1.ctz" "FKOffsetWing6_R.tz";
connectAttr "FKWing6_R.s" "FKXWing6_R.is";
connectAttr "FKOffsetWing6_R.pim" "FKOffsetWing6_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing6_R.rp" "FKOffsetWing6_R_pointConstraint1.crp";
connectAttr "FKOffsetWing6_R.rpt" "FKOffsetWing6_R_pointConstraint1.crt";
connectAttr "FKPS2Wing6_R.t" "FKOffsetWing6_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing6_R.rp" "FKOffsetWing6_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing6_R.rpt" "FKOffsetWing6_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing6_R.pm" "FKOffsetWing6_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing6_R_pointConstraint1.w0" "FKOffsetWing6_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing6_R_scaleConstraint1.csx" "FKPS1Wing6_R.sx";
connectAttr "FKPS1Wing6_R_scaleConstraint1.csy" "FKPS1Wing6_R.sy";
connectAttr "FKPS1Wing6_R_scaleConstraint1.csz" "FKPS1Wing6_R.sz";
connectAttr "FKPS1Wing6_R.pim" "FKPS1Wing6_R_scaleConstraint1.cpim";
connectAttr "FKWing5_R.s" "FKPS1Wing6_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWing5_R.pm" "FKPS1Wing6_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing6_R_scaleConstraint1.w0" "FKPS1Wing6_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing5_R.pim" "FKOffsetWing5_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing5_R.rp" "FKOffsetWing5_R_pointConstraint1.crp";
connectAttr "FKOffsetWing5_R.rpt" "FKOffsetWing5_R_pointConstraint1.crt";
connectAttr "FKPS2Wing5_R.t" "FKOffsetWing5_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing5_R.rp" "FKOffsetWing5_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing5_R.rpt" "FKOffsetWing5_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing5_R.pm" "FKOffsetWing5_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing5_R_pointConstraint1.w0" "FKOffsetWing5_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing5_R_scaleConstraint1.csx" "FKPS1Wing5_R.sx";
connectAttr "FKPS1Wing5_R_scaleConstraint1.csy" "FKPS1Wing5_R.sy";
connectAttr "FKPS1Wing5_R_scaleConstraint1.csz" "FKPS1Wing5_R.sz";
connectAttr "FKPS1Wing5_R.pim" "FKPS1Wing5_R_scaleConstraint1.cpim";
connectAttr "FKWing4_R.s" "FKPS1Wing5_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWing4_R.pm" "FKPS1Wing5_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing5_R_scaleConstraint1.w0" "FKPS1Wing5_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing4_R.pim" "FKOffsetWing4_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing4_R.rp" "FKOffsetWing4_R_pointConstraint1.crp";
connectAttr "FKOffsetWing4_R.rpt" "FKOffsetWing4_R_pointConstraint1.crt";
connectAttr "FKPS2Wing4_R.t" "FKOffsetWing4_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing4_R.rp" "FKOffsetWing4_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing4_R.rpt" "FKOffsetWing4_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing4_R.pm" "FKOffsetWing4_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing4_R_pointConstraint1.w0" "FKOffsetWing4_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing4_R_scaleConstraint1.csx" "FKPS1Wing4_R.sx";
connectAttr "FKPS1Wing4_R_scaleConstraint1.csy" "FKPS1Wing4_R.sy";
connectAttr "FKPS1Wing4_R_scaleConstraint1.csz" "FKPS1Wing4_R.sz";
connectAttr "FKPS1Wing4_R.pim" "FKPS1Wing4_R_scaleConstraint1.cpim";
connectAttr "FKWing3_R.s" "FKPS1Wing4_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWing3_R.pm" "FKPS1Wing4_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing4_R_scaleConstraint1.w0" "FKPS1Wing4_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing3_R.pim" "FKOffsetWing3_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing3_R.rp" "FKOffsetWing3_R_pointConstraint1.crp";
connectAttr "FKOffsetWing3_R.rpt" "FKOffsetWing3_R_pointConstraint1.crt";
connectAttr "FKPS2Wing3_R.t" "FKOffsetWing3_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing3_R.rp" "FKOffsetWing3_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing3_R.rpt" "FKOffsetWing3_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing3_R.pm" "FKOffsetWing3_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing3_R_pointConstraint1.w0" "FKOffsetWing3_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing3_R_scaleConstraint1.csx" "FKPS1Wing3_R.sx";
connectAttr "FKPS1Wing3_R_scaleConstraint1.csy" "FKPS1Wing3_R.sy";
connectAttr "FKPS1Wing3_R_scaleConstraint1.csz" "FKPS1Wing3_R.sz";
connectAttr "FKPS1Wing3_R.pim" "FKPS1Wing3_R_scaleConstraint1.cpim";
connectAttr "FKWing2_R.s" "FKPS1Wing3_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWing2_R.pm" "FKPS1Wing3_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing3_R_scaleConstraint1.w0" "FKPS1Wing3_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing2_R.pim" "FKOffsetWing2_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing2_R.rp" "FKOffsetWing2_R_pointConstraint1.crp";
connectAttr "FKOffsetWing2_R.rpt" "FKOffsetWing2_R_pointConstraint1.crt";
connectAttr "FKPS2Wing2_R.t" "FKOffsetWing2_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing2_R.rp" "FKOffsetWing2_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing2_R.rpt" "FKOffsetWing2_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing2_R.pm" "FKOffsetWing2_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing2_R_pointConstraint1.w0" "FKOffsetWing2_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing2_R_scaleConstraint1.csx" "FKPS1Wing2_R.sx";
connectAttr "FKPS1Wing2_R_scaleConstraint1.csy" "FKPS1Wing2_R.sy";
connectAttr "FKPS1Wing2_R_scaleConstraint1.csz" "FKPS1Wing2_R.sz";
connectAttr "FKPS1Wing2_R.pim" "FKPS1Wing2_R_scaleConstraint1.cpim";
connectAttr "FKWing1_R.s" "FKPS1Wing2_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWing1_R.pm" "FKPS1Wing2_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing2_R_scaleConstraint1.w0" "FKPS1Wing2_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing1_R.pim" "FKOffsetWing1_R_pointConstraint1.cpim";
connectAttr "FKOffsetWing1_R.rp" "FKOffsetWing1_R_pointConstraint1.crp";
connectAttr "FKOffsetWing1_R.rpt" "FKOffsetWing1_R_pointConstraint1.crt";
connectAttr "FKPS2Wing1_R.t" "FKOffsetWing1_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing1_R.rp" "FKOffsetWing1_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing1_R.rpt" "FKOffsetWing1_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing1_R.pm" "FKOffsetWing1_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing1_R_pointConstraint1.w0" "FKOffsetWing1_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing1_R_scaleConstraint1.csx" "FKPS1Wing1_R.sx";
connectAttr "FKPS1Wing1_R_scaleConstraint1.csy" "FKPS1Wing1_R.sy";
connectAttr "FKPS1Wing1_R_scaleConstraint1.csz" "FKPS1Wing1_R.sz";
connectAttr "FKPS1Wing1_R.pim" "FKPS1Wing1_R_scaleConstraint1.cpim";
connectAttr "FKWingBase_R.s" "FKPS1Wing1_R_scaleConstraint1.tg[0].ts";
connectAttr "FKWingBase_R.pm" "FKPS1Wing1_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing1_R_scaleConstraint1.w0" "FKPS1Wing1_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKMouthBase_R.s" "FKXMouthBase_R.is";
connectAttr "FKOffsetMouth1_R_pointConstraint1.ctx" "FKOffsetMouth1_R.tx";
connectAttr "FKOffsetMouth1_R_pointConstraint1.cty" "FKOffsetMouth1_R.ty";
connectAttr "FKOffsetMouth1_R_pointConstraint1.ctz" "FKOffsetMouth1_R.tz";
connectAttr "FKMouth1_R.s" "FKXMouth1_R.is";
connectAttr "FKOffsetMouth2_R_pointConstraint1.ctx" "FKOffsetMouth2_R.tx";
connectAttr "FKOffsetMouth2_R_pointConstraint1.cty" "FKOffsetMouth2_R.ty";
connectAttr "FKOffsetMouth2_R_pointConstraint1.ctz" "FKOffsetMouth2_R.tz";
connectAttr "FKMouth2_R.s" "FKXMouth2_R.is";
connectAttr "FKOffsetMouth3_R_pointConstraint1.ctx" "FKOffsetMouth3_R.tx";
connectAttr "FKOffsetMouth3_R_pointConstraint1.cty" "FKOffsetMouth3_R.ty";
connectAttr "FKOffsetMouth3_R_pointConstraint1.ctz" "FKOffsetMouth3_R.tz";
connectAttr "FKMouth3_R.s" "FKXMouth3_R.is";
connectAttr "FKOffsetMouth4_R_pointConstraint1.ctx" "FKOffsetMouth4_R.tx";
connectAttr "FKOffsetMouth4_R_pointConstraint1.cty" "FKOffsetMouth4_R.ty";
connectAttr "FKOffsetMouth4_R_pointConstraint1.ctz" "FKOffsetMouth4_R.tz";
connectAttr "FKMouth4_R.s" "FKXMouth4_R.is";
connectAttr "FKOffsetMouth5_R_pointConstraint1.ctx" "FKOffsetMouth5_R.tx";
connectAttr "FKOffsetMouth5_R_pointConstraint1.cty" "FKOffsetMouth5_R.ty";
connectAttr "FKOffsetMouth5_R_pointConstraint1.ctz" "FKOffsetMouth5_R.tz";
connectAttr "FKMouth5_R.s" "FKXMouth5_R.is";
connectAttr "FKOffsetMouth5_R.pim" "FKOffsetMouth5_R_pointConstraint1.cpim";
connectAttr "FKOffsetMouth5_R.rp" "FKOffsetMouth5_R_pointConstraint1.crp";
connectAttr "FKOffsetMouth5_R.rpt" "FKOffsetMouth5_R_pointConstraint1.crt";
connectAttr "FKPS2Mouth5_R.t" "FKOffsetMouth5_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth5_R.rp" "FKOffsetMouth5_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth5_R.rpt" "FKOffsetMouth5_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth5_R.pm" "FKOffsetMouth5_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth5_R_pointConstraint1.w0" "FKOffsetMouth5_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth5_R_scaleConstraint1.csx" "FKPS1Mouth5_R.sx";
connectAttr "FKPS1Mouth5_R_scaleConstraint1.csy" "FKPS1Mouth5_R.sy";
connectAttr "FKPS1Mouth5_R_scaleConstraint1.csz" "FKPS1Mouth5_R.sz";
connectAttr "FKPS1Mouth5_R.pim" "FKPS1Mouth5_R_scaleConstraint1.cpim";
connectAttr "FKMouth4_R.s" "FKPS1Mouth5_R_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth4_R.pm" "FKPS1Mouth5_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth5_R_scaleConstraint1.w0" "FKPS1Mouth5_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth4_R.pim" "FKOffsetMouth4_R_pointConstraint1.cpim";
connectAttr "FKOffsetMouth4_R.rp" "FKOffsetMouth4_R_pointConstraint1.crp";
connectAttr "FKOffsetMouth4_R.rpt" "FKOffsetMouth4_R_pointConstraint1.crt";
connectAttr "FKPS2Mouth4_R.t" "FKOffsetMouth4_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth4_R.rp" "FKOffsetMouth4_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth4_R.rpt" "FKOffsetMouth4_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth4_R.pm" "FKOffsetMouth4_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth4_R_pointConstraint1.w0" "FKOffsetMouth4_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth4_R_scaleConstraint1.csx" "FKPS1Mouth4_R.sx";
connectAttr "FKPS1Mouth4_R_scaleConstraint1.csy" "FKPS1Mouth4_R.sy";
connectAttr "FKPS1Mouth4_R_scaleConstraint1.csz" "FKPS1Mouth4_R.sz";
connectAttr "FKPS1Mouth4_R.pim" "FKPS1Mouth4_R_scaleConstraint1.cpim";
connectAttr "FKMouth3_R.s" "FKPS1Mouth4_R_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth3_R.pm" "FKPS1Mouth4_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth4_R_scaleConstraint1.w0" "FKPS1Mouth4_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth3_R.pim" "FKOffsetMouth3_R_pointConstraint1.cpim";
connectAttr "FKOffsetMouth3_R.rp" "FKOffsetMouth3_R_pointConstraint1.crp";
connectAttr "FKOffsetMouth3_R.rpt" "FKOffsetMouth3_R_pointConstraint1.crt";
connectAttr "FKPS2Mouth3_R.t" "FKOffsetMouth3_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth3_R.rp" "FKOffsetMouth3_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth3_R.rpt" "FKOffsetMouth3_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth3_R.pm" "FKOffsetMouth3_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth3_R_pointConstraint1.w0" "FKOffsetMouth3_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth3_R_scaleConstraint1.csx" "FKPS1Mouth3_R.sx";
connectAttr "FKPS1Mouth3_R_scaleConstraint1.csy" "FKPS1Mouth3_R.sy";
connectAttr "FKPS1Mouth3_R_scaleConstraint1.csz" "FKPS1Mouth3_R.sz";
connectAttr "FKPS1Mouth3_R.pim" "FKPS1Mouth3_R_scaleConstraint1.cpim";
connectAttr "FKMouth2_R.s" "FKPS1Mouth3_R_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth2_R.pm" "FKPS1Mouth3_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth3_R_scaleConstraint1.w0" "FKPS1Mouth3_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth2_R.pim" "FKOffsetMouth2_R_pointConstraint1.cpim";
connectAttr "FKOffsetMouth2_R.rp" "FKOffsetMouth2_R_pointConstraint1.crp";
connectAttr "FKOffsetMouth2_R.rpt" "FKOffsetMouth2_R_pointConstraint1.crt";
connectAttr "FKPS2Mouth2_R.t" "FKOffsetMouth2_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth2_R.rp" "FKOffsetMouth2_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth2_R.rpt" "FKOffsetMouth2_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth2_R.pm" "FKOffsetMouth2_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth2_R_pointConstraint1.w0" "FKOffsetMouth2_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth2_R_scaleConstraint1.csx" "FKPS1Mouth2_R.sx";
connectAttr "FKPS1Mouth2_R_scaleConstraint1.csy" "FKPS1Mouth2_R.sy";
connectAttr "FKPS1Mouth2_R_scaleConstraint1.csz" "FKPS1Mouth2_R.sz";
connectAttr "FKPS1Mouth2_R.pim" "FKPS1Mouth2_R_scaleConstraint1.cpim";
connectAttr "FKMouth1_R.s" "FKPS1Mouth2_R_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth1_R.pm" "FKPS1Mouth2_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth2_R_scaleConstraint1.w0" "FKPS1Mouth2_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth1_R.pim" "FKOffsetMouth1_R_pointConstraint1.cpim";
connectAttr "FKOffsetMouth1_R.rp" "FKOffsetMouth1_R_pointConstraint1.crp";
connectAttr "FKOffsetMouth1_R.rpt" "FKOffsetMouth1_R_pointConstraint1.crt";
connectAttr "FKPS2Mouth1_R.t" "FKOffsetMouth1_R_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth1_R.rp" "FKOffsetMouth1_R_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth1_R.rpt" "FKOffsetMouth1_R_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth1_R.pm" "FKOffsetMouth1_R_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth1_R_pointConstraint1.w0" "FKOffsetMouth1_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth1_R_scaleConstraint1.csx" "FKPS1Mouth1_R.sx";
connectAttr "FKPS1Mouth1_R_scaleConstraint1.csy" "FKPS1Mouth1_R.sy";
connectAttr "FKPS1Mouth1_R_scaleConstraint1.csz" "FKPS1Mouth1_R.sz";
connectAttr "FKPS1Mouth1_R.pim" "FKPS1Mouth1_R_scaleConstraint1.cpim";
connectAttr "FKMouthBase_R.s" "FKPS1Mouth1_R_scaleConstraint1.tg[0].ts";
connectAttr "FKMouthBase_R.pm" "FKPS1Mouth1_R_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth1_R_scaleConstraint1.w0" "FKPS1Mouth1_R_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKWingBase_L.s" "FKXWingBase_L.is";
connectAttr "FKOffsetWing1_L_pointConstraint1.ctx" "FKOffsetWing1_L.tx";
connectAttr "FKOffsetWing1_L_pointConstraint1.cty" "FKOffsetWing1_L.ty";
connectAttr "FKOffsetWing1_L_pointConstraint1.ctz" "FKOffsetWing1_L.tz";
connectAttr "FKGlobalWing1DM_L.otx" "FKGlobalWing1_L.tx";
connectAttr "FKGlobalWing1DM_L.oty" "FKGlobalWing1_L.ty";
connectAttr "FKGlobalWing1DM_L.otz" "FKGlobalWing1_L.tz";
connectAttr "FKGlobalWing1DM_L.orx" "FKGlobalWing1_L.rx";
connectAttr "FKGlobalWing1DM_L.ory" "FKGlobalWing1_L.ry";
connectAttr "FKGlobalWing1DM_L.orz" "FKGlobalWing1_L.rz";
connectAttr "FKGlobalWing1DM_L.osx" "FKGlobalWing1_L.sx";
connectAttr "FKGlobalWing1DM_L.osy" "FKGlobalWing1_L.sy";
connectAttr "FKGlobalWing1DM_L.osz" "FKGlobalWing1_L.sz";
connectAttr "FKGlobalWing1DM_L.oshx" "FKGlobalWing1_L.shxy";
connectAttr "FKGlobalWing1DM_L.oshy" "FKGlobalWing1_L.shxz";
connectAttr "FKGlobalWing1DM_L.oshz" "FKGlobalWing1_L.shyz";
connectAttr "FKWing1_L.s" "FKXWing1_L.is";
connectAttr "FKOffsetWing2_L_pointConstraint1.ctx" "FKOffsetWing2_L.tx";
connectAttr "FKOffsetWing2_L_pointConstraint1.cty" "FKOffsetWing2_L.ty";
connectAttr "FKOffsetWing2_L_pointConstraint1.ctz" "FKOffsetWing2_L.tz";
connectAttr "FKWing2_L.s" "FKXWing2_L.is";
connectAttr "FKOffsetWing3_L_pointConstraint1.ctx" "FKOffsetWing3_L.tx";
connectAttr "FKOffsetWing3_L_pointConstraint1.cty" "FKOffsetWing3_L.ty";
connectAttr "FKOffsetWing3_L_pointConstraint1.ctz" "FKOffsetWing3_L.tz";
connectAttr "FKWing3_L.s" "FKXWing3_L.is";
connectAttr "FKOffsetWing4_L_pointConstraint1.ctx" "FKOffsetWing4_L.tx";
connectAttr "FKOffsetWing4_L_pointConstraint1.cty" "FKOffsetWing4_L.ty";
connectAttr "FKOffsetWing4_L_pointConstraint1.ctz" "FKOffsetWing4_L.tz";
connectAttr "FKWing4_L.s" "FKXWing4_L.is";
connectAttr "FKOffsetWing5_L_pointConstraint1.ctx" "FKOffsetWing5_L.tx";
connectAttr "FKOffsetWing5_L_pointConstraint1.cty" "FKOffsetWing5_L.ty";
connectAttr "FKOffsetWing5_L_pointConstraint1.ctz" "FKOffsetWing5_L.tz";
connectAttr "FKWing5_L.s" "FKXWing5_L.is";
connectAttr "FKOffsetWing6_L_pointConstraint1.ctx" "FKOffsetWing6_L.tx";
connectAttr "FKOffsetWing6_L_pointConstraint1.cty" "FKOffsetWing6_L.ty";
connectAttr "FKOffsetWing6_L_pointConstraint1.ctz" "FKOffsetWing6_L.tz";
connectAttr "FKWing6_L.s" "FKXWing6_L.is";
connectAttr "FKOffsetWing6_L.pim" "FKOffsetWing6_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing6_L.rp" "FKOffsetWing6_L_pointConstraint1.crp";
connectAttr "FKOffsetWing6_L.rpt" "FKOffsetWing6_L_pointConstraint1.crt";
connectAttr "FKPS2Wing6_L.t" "FKOffsetWing6_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing6_L.rp" "FKOffsetWing6_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing6_L.rpt" "FKOffsetWing6_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing6_L.pm" "FKOffsetWing6_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing6_L_pointConstraint1.w0" "FKOffsetWing6_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing6_L_scaleConstraint1.csx" "FKPS1Wing6_L.sx";
connectAttr "FKPS1Wing6_L_scaleConstraint1.csy" "FKPS1Wing6_L.sy";
connectAttr "FKPS1Wing6_L_scaleConstraint1.csz" "FKPS1Wing6_L.sz";
connectAttr "FKPS1Wing6_L.pim" "FKPS1Wing6_L_scaleConstraint1.cpim";
connectAttr "FKWing5_L.s" "FKPS1Wing6_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWing5_L.pm" "FKPS1Wing6_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing6_L_scaleConstraint1.w0" "FKPS1Wing6_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing5_L.pim" "FKOffsetWing5_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing5_L.rp" "FKOffsetWing5_L_pointConstraint1.crp";
connectAttr "FKOffsetWing5_L.rpt" "FKOffsetWing5_L_pointConstraint1.crt";
connectAttr "FKPS2Wing5_L.t" "FKOffsetWing5_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing5_L.rp" "FKOffsetWing5_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing5_L.rpt" "FKOffsetWing5_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing5_L.pm" "FKOffsetWing5_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing5_L_pointConstraint1.w0" "FKOffsetWing5_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing5_L_scaleConstraint1.csx" "FKPS1Wing5_L.sx";
connectAttr "FKPS1Wing5_L_scaleConstraint1.csy" "FKPS1Wing5_L.sy";
connectAttr "FKPS1Wing5_L_scaleConstraint1.csz" "FKPS1Wing5_L.sz";
connectAttr "FKPS1Wing5_L.pim" "FKPS1Wing5_L_scaleConstraint1.cpim";
connectAttr "FKWing4_L.s" "FKPS1Wing5_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWing4_L.pm" "FKPS1Wing5_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing5_L_scaleConstraint1.w0" "FKPS1Wing5_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing4_L.pim" "FKOffsetWing4_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing4_L.rp" "FKOffsetWing4_L_pointConstraint1.crp";
connectAttr "FKOffsetWing4_L.rpt" "FKOffsetWing4_L_pointConstraint1.crt";
connectAttr "FKPS2Wing4_L.t" "FKOffsetWing4_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing4_L.rp" "FKOffsetWing4_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing4_L.rpt" "FKOffsetWing4_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing4_L.pm" "FKOffsetWing4_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing4_L_pointConstraint1.w0" "FKOffsetWing4_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing4_L_scaleConstraint1.csx" "FKPS1Wing4_L.sx";
connectAttr "FKPS1Wing4_L_scaleConstraint1.csy" "FKPS1Wing4_L.sy";
connectAttr "FKPS1Wing4_L_scaleConstraint1.csz" "FKPS1Wing4_L.sz";
connectAttr "FKPS1Wing4_L.pim" "FKPS1Wing4_L_scaleConstraint1.cpim";
connectAttr "FKWing3_L.s" "FKPS1Wing4_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWing3_L.pm" "FKPS1Wing4_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing4_L_scaleConstraint1.w0" "FKPS1Wing4_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing3_L.pim" "FKOffsetWing3_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing3_L.rp" "FKOffsetWing3_L_pointConstraint1.crp";
connectAttr "FKOffsetWing3_L.rpt" "FKOffsetWing3_L_pointConstraint1.crt";
connectAttr "FKPS2Wing3_L.t" "FKOffsetWing3_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing3_L.rp" "FKOffsetWing3_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing3_L.rpt" "FKOffsetWing3_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing3_L.pm" "FKOffsetWing3_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing3_L_pointConstraint1.w0" "FKOffsetWing3_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing3_L_scaleConstraint1.csx" "FKPS1Wing3_L.sx";
connectAttr "FKPS1Wing3_L_scaleConstraint1.csy" "FKPS1Wing3_L.sy";
connectAttr "FKPS1Wing3_L_scaleConstraint1.csz" "FKPS1Wing3_L.sz";
connectAttr "FKPS1Wing3_L.pim" "FKPS1Wing3_L_scaleConstraint1.cpim";
connectAttr "FKWing2_L.s" "FKPS1Wing3_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWing2_L.pm" "FKPS1Wing3_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing3_L_scaleConstraint1.w0" "FKPS1Wing3_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing2_L.pim" "FKOffsetWing2_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing2_L.rp" "FKOffsetWing2_L_pointConstraint1.crp";
connectAttr "FKOffsetWing2_L.rpt" "FKOffsetWing2_L_pointConstraint1.crt";
connectAttr "FKPS2Wing2_L.t" "FKOffsetWing2_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing2_L.rp" "FKOffsetWing2_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing2_L.rpt" "FKOffsetWing2_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing2_L.pm" "FKOffsetWing2_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing2_L_pointConstraint1.w0" "FKOffsetWing2_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing2_L_scaleConstraint1.csx" "FKPS1Wing2_L.sx";
connectAttr "FKPS1Wing2_L_scaleConstraint1.csy" "FKPS1Wing2_L.sy";
connectAttr "FKPS1Wing2_L_scaleConstraint1.csz" "FKPS1Wing2_L.sz";
connectAttr "FKPS1Wing2_L.pim" "FKPS1Wing2_L_scaleConstraint1.cpim";
connectAttr "FKWing1_L.s" "FKPS1Wing2_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWing1_L.pm" "FKPS1Wing2_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing2_L_scaleConstraint1.w0" "FKPS1Wing2_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetWing1_L.pim" "FKOffsetWing1_L_pointConstraint1.cpim";
connectAttr "FKOffsetWing1_L.rp" "FKOffsetWing1_L_pointConstraint1.crp";
connectAttr "FKOffsetWing1_L.rpt" "FKOffsetWing1_L_pointConstraint1.crt";
connectAttr "FKPS2Wing1_L.t" "FKOffsetWing1_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Wing1_L.rp" "FKOffsetWing1_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Wing1_L.rpt" "FKOffsetWing1_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Wing1_L.pm" "FKOffsetWing1_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetWing1_L_pointConstraint1.w0" "FKOffsetWing1_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Wing1_L_scaleConstraint1.csx" "FKPS1Wing1_L.sx";
connectAttr "FKPS1Wing1_L_scaleConstraint1.csy" "FKPS1Wing1_L.sy";
connectAttr "FKPS1Wing1_L_scaleConstraint1.csz" "FKPS1Wing1_L.sz";
connectAttr "FKPS1Wing1_L.pim" "FKPS1Wing1_L_scaleConstraint1.cpim";
connectAttr "FKWingBase_L.s" "FKPS1Wing1_L_scaleConstraint1.tg[0].ts";
connectAttr "FKWingBase_L.pm" "FKPS1Wing1_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Wing1_L_scaleConstraint1.w0" "FKPS1Wing1_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKMouthBase_L.s" "FKXMouthBase_L.is";
connectAttr "FKOffsetMouth1_L_pointConstraint1.ctx" "FKOffsetMouth1_L.tx";
connectAttr "FKOffsetMouth1_L_pointConstraint1.cty" "FKOffsetMouth1_L.ty";
connectAttr "FKOffsetMouth1_L_pointConstraint1.ctz" "FKOffsetMouth1_L.tz";
connectAttr "FKMouth1_L.s" "FKXMouth1_L.is";
connectAttr "FKOffsetMouth2_L_pointConstraint1.ctx" "FKOffsetMouth2_L.tx";
connectAttr "FKOffsetMouth2_L_pointConstraint1.cty" "FKOffsetMouth2_L.ty";
connectAttr "FKOffsetMouth2_L_pointConstraint1.ctz" "FKOffsetMouth2_L.tz";
connectAttr "FKMouth2_L.s" "FKXMouth2_L.is";
connectAttr "FKOffsetMouth3_L_pointConstraint1.ctx" "FKOffsetMouth3_L.tx";
connectAttr "FKOffsetMouth3_L_pointConstraint1.cty" "FKOffsetMouth3_L.ty";
connectAttr "FKOffsetMouth3_L_pointConstraint1.ctz" "FKOffsetMouth3_L.tz";
connectAttr "FKMouth3_L.s" "FKXMouth3_L.is";
connectAttr "FKOffsetMouth4_L_pointConstraint1.ctx" "FKOffsetMouth4_L.tx";
connectAttr "FKOffsetMouth4_L_pointConstraint1.cty" "FKOffsetMouth4_L.ty";
connectAttr "FKOffsetMouth4_L_pointConstraint1.ctz" "FKOffsetMouth4_L.tz";
connectAttr "FKMouth4_L.s" "FKXMouth4_L.is";
connectAttr "FKOffsetMouth5_L_pointConstraint1.ctx" "FKOffsetMouth5_L.tx";
connectAttr "FKOffsetMouth5_L_pointConstraint1.cty" "FKOffsetMouth5_L.ty";
connectAttr "FKOffsetMouth5_L_pointConstraint1.ctz" "FKOffsetMouth5_L.tz";
connectAttr "FKMouth5_L.s" "FKXMouth5_L.is";
connectAttr "FKOffsetMouth5_L.pim" "FKOffsetMouth5_L_pointConstraint1.cpim";
connectAttr "FKOffsetMouth5_L.rp" "FKOffsetMouth5_L_pointConstraint1.crp";
connectAttr "FKOffsetMouth5_L.rpt" "FKOffsetMouth5_L_pointConstraint1.crt";
connectAttr "FKPS2Mouth5_L.t" "FKOffsetMouth5_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth5_L.rp" "FKOffsetMouth5_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth5_L.rpt" "FKOffsetMouth5_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth5_L.pm" "FKOffsetMouth5_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth5_L_pointConstraint1.w0" "FKOffsetMouth5_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth5_L_scaleConstraint1.csx" "FKPS1Mouth5_L.sx";
connectAttr "FKPS1Mouth5_L_scaleConstraint1.csy" "FKPS1Mouth5_L.sy";
connectAttr "FKPS1Mouth5_L_scaleConstraint1.csz" "FKPS1Mouth5_L.sz";
connectAttr "FKPS1Mouth5_L.pim" "FKPS1Mouth5_L_scaleConstraint1.cpim";
connectAttr "FKMouth4_L.s" "FKPS1Mouth5_L_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth4_L.pm" "FKPS1Mouth5_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth5_L_scaleConstraint1.w0" "FKPS1Mouth5_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth4_L.pim" "FKOffsetMouth4_L_pointConstraint1.cpim";
connectAttr "FKOffsetMouth4_L.rp" "FKOffsetMouth4_L_pointConstraint1.crp";
connectAttr "FKOffsetMouth4_L.rpt" "FKOffsetMouth4_L_pointConstraint1.crt";
connectAttr "FKPS2Mouth4_L.t" "FKOffsetMouth4_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth4_L.rp" "FKOffsetMouth4_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth4_L.rpt" "FKOffsetMouth4_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth4_L.pm" "FKOffsetMouth4_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth4_L_pointConstraint1.w0" "FKOffsetMouth4_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth4_L_scaleConstraint1.csx" "FKPS1Mouth4_L.sx";
connectAttr "FKPS1Mouth4_L_scaleConstraint1.csy" "FKPS1Mouth4_L.sy";
connectAttr "FKPS1Mouth4_L_scaleConstraint1.csz" "FKPS1Mouth4_L.sz";
connectAttr "FKPS1Mouth4_L.pim" "FKPS1Mouth4_L_scaleConstraint1.cpim";
connectAttr "FKMouth3_L.s" "FKPS1Mouth4_L_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth3_L.pm" "FKPS1Mouth4_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth4_L_scaleConstraint1.w0" "FKPS1Mouth4_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth3_L.pim" "FKOffsetMouth3_L_pointConstraint1.cpim";
connectAttr "FKOffsetMouth3_L.rp" "FKOffsetMouth3_L_pointConstraint1.crp";
connectAttr "FKOffsetMouth3_L.rpt" "FKOffsetMouth3_L_pointConstraint1.crt";
connectAttr "FKPS2Mouth3_L.t" "FKOffsetMouth3_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth3_L.rp" "FKOffsetMouth3_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth3_L.rpt" "FKOffsetMouth3_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth3_L.pm" "FKOffsetMouth3_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth3_L_pointConstraint1.w0" "FKOffsetMouth3_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth3_L_scaleConstraint1.csx" "FKPS1Mouth3_L.sx";
connectAttr "FKPS1Mouth3_L_scaleConstraint1.csy" "FKPS1Mouth3_L.sy";
connectAttr "FKPS1Mouth3_L_scaleConstraint1.csz" "FKPS1Mouth3_L.sz";
connectAttr "FKPS1Mouth3_L.pim" "FKPS1Mouth3_L_scaleConstraint1.cpim";
connectAttr "FKMouth2_L.s" "FKPS1Mouth3_L_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth2_L.pm" "FKPS1Mouth3_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth3_L_scaleConstraint1.w0" "FKPS1Mouth3_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth2_L.pim" "FKOffsetMouth2_L_pointConstraint1.cpim";
connectAttr "FKOffsetMouth2_L.rp" "FKOffsetMouth2_L_pointConstraint1.crp";
connectAttr "FKOffsetMouth2_L.rpt" "FKOffsetMouth2_L_pointConstraint1.crt";
connectAttr "FKPS2Mouth2_L.t" "FKOffsetMouth2_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth2_L.rp" "FKOffsetMouth2_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth2_L.rpt" "FKOffsetMouth2_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth2_L.pm" "FKOffsetMouth2_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth2_L_pointConstraint1.w0" "FKOffsetMouth2_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth2_L_scaleConstraint1.csx" "FKPS1Mouth2_L.sx";
connectAttr "FKPS1Mouth2_L_scaleConstraint1.csy" "FKPS1Mouth2_L.sy";
connectAttr "FKPS1Mouth2_L_scaleConstraint1.csz" "FKPS1Mouth2_L.sz";
connectAttr "FKPS1Mouth2_L.pim" "FKPS1Mouth2_L_scaleConstraint1.cpim";
connectAttr "FKMouth1_L.s" "FKPS1Mouth2_L_scaleConstraint1.tg[0].ts";
connectAttr "FKMouth1_L.pm" "FKPS1Mouth2_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth2_L_scaleConstraint1.w0" "FKPS1Mouth2_L_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetMouth1_L.pim" "FKOffsetMouth1_L_pointConstraint1.cpim";
connectAttr "FKOffsetMouth1_L.rp" "FKOffsetMouth1_L_pointConstraint1.crp";
connectAttr "FKOffsetMouth1_L.rpt" "FKOffsetMouth1_L_pointConstraint1.crt";
connectAttr "FKPS2Mouth1_L.t" "FKOffsetMouth1_L_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Mouth1_L.rp" "FKOffsetMouth1_L_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Mouth1_L.rpt" "FKOffsetMouth1_L_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Mouth1_L.pm" "FKOffsetMouth1_L_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetMouth1_L_pointConstraint1.w0" "FKOffsetMouth1_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Mouth1_L_scaleConstraint1.csx" "FKPS1Mouth1_L.sx";
connectAttr "FKPS1Mouth1_L_scaleConstraint1.csy" "FKPS1Mouth1_L.sy";
connectAttr "FKPS1Mouth1_L_scaleConstraint1.csz" "FKPS1Mouth1_L.sz";
connectAttr "FKPS1Mouth1_L.pim" "FKPS1Mouth1_L_scaleConstraint1.cpim";
connectAttr "FKMouthBase_L.s" "FKPS1Mouth1_L_scaleConstraint1.tg[0].ts";
connectAttr "FKMouthBase_L.pm" "FKPS1Mouth1_L_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Mouth1_L_scaleConstraint1.w0" "FKPS1Mouth1_L_scaleConstraint1.tg[0].tw"
		;
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
connectAttr "FKOffsetTailBase_M_pointConstraint1.ctx" "FKOffsetTailBase_M.tx";
connectAttr "FKOffsetTailBase_M_pointConstraint1.cty" "FKOffsetTailBase_M.ty";
connectAttr "FKOffsetTailBase_M_pointConstraint1.ctz" "FKOffsetTailBase_M.tz";
connectAttr "FKGlobalTailBaseDM_M.otx" "FKGlobalTailBase_M.tx";
connectAttr "FKGlobalTailBaseDM_M.oty" "FKGlobalTailBase_M.ty";
connectAttr "FKGlobalTailBaseDM_M.otz" "FKGlobalTailBase_M.tz";
connectAttr "FKGlobalTailBaseDM_M.orx" "FKGlobalTailBase_M.rx";
connectAttr "FKGlobalTailBaseDM_M.ory" "FKGlobalTailBase_M.ry";
connectAttr "FKGlobalTailBaseDM_M.orz" "FKGlobalTailBase_M.rz";
connectAttr "FKGlobalTailBaseDM_M.osx" "FKGlobalTailBase_M.sx";
connectAttr "FKGlobalTailBaseDM_M.osy" "FKGlobalTailBase_M.sy";
connectAttr "FKGlobalTailBaseDM_M.osz" "FKGlobalTailBase_M.sz";
connectAttr "FKGlobalTailBaseDM_M.oshx" "FKGlobalTailBase_M.shxy";
connectAttr "FKGlobalTailBaseDM_M.oshy" "FKGlobalTailBase_M.shxz";
connectAttr "FKGlobalTailBaseDM_M.oshz" "FKGlobalTailBase_M.shyz";
connectAttr "FKTailBase_M.s" "FKXTailBase_M.is";
connectAttr "FKOffsetTail1_M_pointConstraint1.ctx" "FKOffsetTail1_M.tx";
connectAttr "FKOffsetTail1_M_pointConstraint1.cty" "FKOffsetTail1_M.ty";
connectAttr "FKOffsetTail1_M_pointConstraint1.ctz" "FKOffsetTail1_M.tz";
connectAttr "FKIKBlendSplineTailCondition_M.ocg" "FKOffsetTail1_M.v";
connectAttr "FKTail1_M.s" "FKXTail1_M.is";
connectAttr "FKOffsetTail2_M_pointConstraint1.ctx" "FKOffsetTail2_M.tx";
connectAttr "FKOffsetTail2_M_pointConstraint1.cty" "FKOffsetTail2_M.ty";
connectAttr "FKOffsetTail2_M_pointConstraint1.ctz" "FKOffsetTail2_M.tz";
connectAttr "FKIKBlendSplineTailCondition_M.ocg" "FKOffsetTail2_M.v";
connectAttr "FKTail2_M.s" "FKXTail2_M.is";
connectAttr "FKOffsetTail3_M_pointConstraint1.ctx" "FKOffsetTail3_M.tx";
connectAttr "FKOffsetTail3_M_pointConstraint1.cty" "FKOffsetTail3_M.ty";
connectAttr "FKOffsetTail3_M_pointConstraint1.ctz" "FKOffsetTail3_M.tz";
connectAttr "FKIKBlendSplineTailCondition_M.ocg" "FKOffsetTail3_M.v";
connectAttr "FKTail3_M.s" "FKXTail3_M.is";
connectAttr "FKOffsetTail4_M_pointConstraint1.ctx" "FKOffsetTail4_M.tx";
connectAttr "FKOffsetTail4_M_pointConstraint1.cty" "FKOffsetTail4_M.ty";
connectAttr "FKOffsetTail4_M_pointConstraint1.ctz" "FKOffsetTail4_M.tz";
connectAttr "FKIKBlendSplineTailCondition_M.ocg" "FKOffsetTail4_M.v";
connectAttr "FKTail4_M.s" "FKXTail4_M.is";
connectAttr "FKOffsetTail5_M_pointConstraint1.ctx" "FKOffsetTail5_M.tx";
connectAttr "FKOffsetTail5_M_pointConstraint1.cty" "FKOffsetTail5_M.ty";
connectAttr "FKOffsetTail5_M_pointConstraint1.ctz" "FKOffsetTail5_M.tz";
connectAttr "FKIKBlendSplineTailCondition_M.ocg" "FKOffsetTail5_M.v";
connectAttr "FKTail5_M.s" "FKXTail5_M.is";
connectAttr "FKXTail5_M.s" "FKXTail6_M.is";
connectAttr "FKOffsetTail5_M.pim" "FKOffsetTail5_M_pointConstraint1.cpim";
connectAttr "FKOffsetTail5_M.rp" "FKOffsetTail5_M_pointConstraint1.crp";
connectAttr "FKOffsetTail5_M.rpt" "FKOffsetTail5_M_pointConstraint1.crt";
connectAttr "FKPS2Tail5_M.t" "FKOffsetTail5_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Tail5_M.rp" "FKOffsetTail5_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Tail5_M.rpt" "FKOffsetTail5_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Tail5_M.pm" "FKOffsetTail5_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetTail5_M_pointConstraint1.w0" "FKOffsetTail5_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Tail5_M_scaleConstraint1.csx" "FKPS1Tail5_M.sx";
connectAttr "FKPS1Tail5_M_scaleConstraint1.csy" "FKPS1Tail5_M.sy";
connectAttr "FKPS1Tail5_M_scaleConstraint1.csz" "FKPS1Tail5_M.sz";
connectAttr "FKPS1Tail5_M.pim" "FKPS1Tail5_M_scaleConstraint1.cpim";
connectAttr "FKTail4_M.s" "FKPS1Tail5_M_scaleConstraint1.tg[0].ts";
connectAttr "FKTail4_M.pm" "FKPS1Tail5_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Tail5_M_scaleConstraint1.w0" "FKPS1Tail5_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetTail4_M.pim" "FKOffsetTail4_M_pointConstraint1.cpim";
connectAttr "FKOffsetTail4_M.rp" "FKOffsetTail4_M_pointConstraint1.crp";
connectAttr "FKOffsetTail4_M.rpt" "FKOffsetTail4_M_pointConstraint1.crt";
connectAttr "FKPS2Tail4_M.t" "FKOffsetTail4_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Tail4_M.rp" "FKOffsetTail4_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Tail4_M.rpt" "FKOffsetTail4_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Tail4_M.pm" "FKOffsetTail4_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetTail4_M_pointConstraint1.w0" "FKOffsetTail4_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Tail4_M_scaleConstraint1.csx" "FKPS1Tail4_M.sx";
connectAttr "FKPS1Tail4_M_scaleConstraint1.csy" "FKPS1Tail4_M.sy";
connectAttr "FKPS1Tail4_M_scaleConstraint1.csz" "FKPS1Tail4_M.sz";
connectAttr "FKPS1Tail4_M.pim" "FKPS1Tail4_M_scaleConstraint1.cpim";
connectAttr "FKTail3_M.s" "FKPS1Tail4_M_scaleConstraint1.tg[0].ts";
connectAttr "FKTail3_M.pm" "FKPS1Tail4_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Tail4_M_scaleConstraint1.w0" "FKPS1Tail4_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetTail3_M.pim" "FKOffsetTail3_M_pointConstraint1.cpim";
connectAttr "FKOffsetTail3_M.rp" "FKOffsetTail3_M_pointConstraint1.crp";
connectAttr "FKOffsetTail3_M.rpt" "FKOffsetTail3_M_pointConstraint1.crt";
connectAttr "FKPS2Tail3_M.t" "FKOffsetTail3_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Tail3_M.rp" "FKOffsetTail3_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Tail3_M.rpt" "FKOffsetTail3_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Tail3_M.pm" "FKOffsetTail3_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetTail3_M_pointConstraint1.w0" "FKOffsetTail3_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Tail3_M_scaleConstraint1.csx" "FKPS1Tail3_M.sx";
connectAttr "FKPS1Tail3_M_scaleConstraint1.csy" "FKPS1Tail3_M.sy";
connectAttr "FKPS1Tail3_M_scaleConstraint1.csz" "FKPS1Tail3_M.sz";
connectAttr "FKPS1Tail3_M.pim" "FKPS1Tail3_M_scaleConstraint1.cpim";
connectAttr "FKTail2_M.s" "FKPS1Tail3_M_scaleConstraint1.tg[0].ts";
connectAttr "FKTail2_M.pm" "FKPS1Tail3_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Tail3_M_scaleConstraint1.w0" "FKPS1Tail3_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetTail2_M.pim" "FKOffsetTail2_M_pointConstraint1.cpim";
connectAttr "FKOffsetTail2_M.rp" "FKOffsetTail2_M_pointConstraint1.crp";
connectAttr "FKOffsetTail2_M.rpt" "FKOffsetTail2_M_pointConstraint1.crt";
connectAttr "FKPS2Tail2_M.t" "FKOffsetTail2_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Tail2_M.rp" "FKOffsetTail2_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Tail2_M.rpt" "FKOffsetTail2_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Tail2_M.pm" "FKOffsetTail2_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetTail2_M_pointConstraint1.w0" "FKOffsetTail2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Tail2_M_scaleConstraint1.csx" "FKPS1Tail2_M.sx";
connectAttr "FKPS1Tail2_M_scaleConstraint1.csy" "FKPS1Tail2_M.sy";
connectAttr "FKPS1Tail2_M_scaleConstraint1.csz" "FKPS1Tail2_M.sz";
connectAttr "FKPS1Tail2_M.pim" "FKPS1Tail2_M_scaleConstraint1.cpim";
connectAttr "FKTail1_M.s" "FKPS1Tail2_M_scaleConstraint1.tg[0].ts";
connectAttr "FKTail1_M.pm" "FKPS1Tail2_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Tail2_M_scaleConstraint1.w0" "FKPS1Tail2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetTail1_M.pim" "FKOffsetTail1_M_pointConstraint1.cpim";
connectAttr "FKOffsetTail1_M.rp" "FKOffsetTail1_M_pointConstraint1.crp";
connectAttr "FKOffsetTail1_M.rpt" "FKOffsetTail1_M_pointConstraint1.crt";
connectAttr "FKPS2Tail1_M.t" "FKOffsetTail1_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Tail1_M.rp" "FKOffsetTail1_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Tail1_M.rpt" "FKOffsetTail1_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Tail1_M.pm" "FKOffsetTail1_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetTail1_M_pointConstraint1.w0" "FKOffsetTail1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Tail1_M_scaleConstraint1.csx" "FKPS1Tail1_M.sx";
connectAttr "FKPS1Tail1_M_scaleConstraint1.csy" "FKPS1Tail1_M.sy";
connectAttr "FKPS1Tail1_M_scaleConstraint1.csz" "FKPS1Tail1_M.sz";
connectAttr "FKPS1Tail1_M.pim" "FKPS1Tail1_M_scaleConstraint1.cpim";
connectAttr "FKTailBase_M.s" "FKPS1Tail1_M_scaleConstraint1.tg[0].ts";
connectAttr "FKTailBase_M.pm" "FKPS1Tail1_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Tail1_M_scaleConstraint1.w0" "FKPS1Tail1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetTailBase_M.pim" "FKOffsetTailBase_M_pointConstraint1.cpim";
connectAttr "FKOffsetTailBase_M.rp" "FKOffsetTailBase_M_pointConstraint1.crp";
connectAttr "FKOffsetTailBase_M.rpt" "FKOffsetTailBase_M_pointConstraint1.crt";
connectAttr "FKPS2TailBase_M.t" "FKOffsetTailBase_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2TailBase_M.rp" "FKOffsetTailBase_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2TailBase_M.rpt" "FKOffsetTailBase_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2TailBase_M.pm" "FKOffsetTailBase_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetTailBase_M_pointConstraint1.w0" "FKOffsetTailBase_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1TailBase_M_scaleConstraint1.csx" "FKPS1TailBase_M.sx";
connectAttr "FKPS1TailBase_M_scaleConstraint1.csy" "FKPS1TailBase_M.sy";
connectAttr "FKPS1TailBase_M_scaleConstraint1.csz" "FKPS1TailBase_M.sz";
connectAttr "FKPS1TailBase_M.pim" "FKPS1TailBase_M_scaleConstraint1.cpim";
connectAttr "FKRoot_M.s" "FKPS1TailBase_M_scaleConstraint1.tg[0].ts";
connectAttr "FKRoot_M.pm" "FKPS1TailBase_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1TailBase_M_scaleConstraint1.w0" "FKPS1TailBase_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "Main.ikVis" "IKSystem.v";
connectAttr "MainScaleMultiplyDivide.o" "IKJoints.s";
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKParentConstraintTail1_M.v";
connectAttr "IKXTail1DM_M.osx" "IKXTail1_M.sx";
connectAttr "IKXTail1DM_M.osy" "IKXTail1_M.sy";
connectAttr "IKXTail1DM_M.osz" "IKXTail1_M.sz";
connectAttr "IKXTail1DM_M.otx" "IKXTail1_M.tx";
connectAttr "IKXTail1DM_M.oty" "IKXTail1_M.ty";
connectAttr "IKXTail1DM_M.otz" "IKXTail1_M.tz";
connectAttr "IKXTail1DM_M.orx" "IKXTail1_M.rx";
connectAttr "IKXTail1DM_M.ory" "IKXTail1_M.ry";
connectAttr "IKXTail1DM_M.orz" "IKXTail1_M.rz";
connectAttr "IKXTail1DM_M.oshx" "IKXTail1_M.shxy";
connectAttr "IKXTail1DM_M.oshy" "IKXTail1_M.shxz";
connectAttr "IKXTail1DM_M.oshz" "IKXTail1_M.shyz";
connectAttr "IKXTail2DM_M.osx" "IKXTail2_M.sx";
connectAttr "IKXTail2DM_M.osy" "IKXTail2_M.sy";
connectAttr "IKXTail2DM_M.osz" "IKXTail2_M.sz";
connectAttr "IKXTail1_M.s" "IKXTail2_M.is";
connectAttr "IKXTail2DM_M.orx" "IKXTail2_M.rx";
connectAttr "IKXTail2DM_M.ory" "IKXTail2_M.ry";
connectAttr "IKXTail2DM_M.orz" "IKXTail2_M.rz";
connectAttr "IKXTail2DM_M.otx" "IKXTail2_M.tx";
connectAttr "IKXTail2DM_M.oty" "IKXTail2_M.ty";
connectAttr "IKXTail2DM_M.otz" "IKXTail2_M.tz";
connectAttr "IKXTail2DM_M.oshx" "IKXTail2_M.shxy";
connectAttr "IKXTail2DM_M.oshy" "IKXTail2_M.shxz";
connectAttr "IKXTail2DM_M.oshz" "IKXTail2_M.shyz";
connectAttr "IKXTail3DM_M.osx" "IKXTail3_M.sx";
connectAttr "IKXTail3DM_M.osy" "IKXTail3_M.sy";
connectAttr "IKXTail3DM_M.osz" "IKXTail3_M.sz";
connectAttr "IKXTail2_M.s" "IKXTail3_M.is";
connectAttr "IKXTail3DM_M.orx" "IKXTail3_M.rx";
connectAttr "IKXTail3DM_M.ory" "IKXTail3_M.ry";
connectAttr "IKXTail3DM_M.orz" "IKXTail3_M.rz";
connectAttr "IKXTail3DM_M.otx" "IKXTail3_M.tx";
connectAttr "IKXTail3DM_M.oty" "IKXTail3_M.ty";
connectAttr "IKXTail3DM_M.otz" "IKXTail3_M.tz";
connectAttr "IKXTail3DM_M.oshx" "IKXTail3_M.shxy";
connectAttr "IKXTail3DM_M.oshy" "IKXTail3_M.shxz";
connectAttr "IKXTail3DM_M.oshz" "IKXTail3_M.shyz";
connectAttr "IKXTail4DM_M.osx" "IKXTail4_M.sx";
connectAttr "IKXTail4DM_M.osy" "IKXTail4_M.sy";
connectAttr "IKXTail4DM_M.osz" "IKXTail4_M.sz";
connectAttr "IKXTail3_M.s" "IKXTail4_M.is";
connectAttr "IKXTail4DM_M.orx" "IKXTail4_M.rx";
connectAttr "IKXTail4DM_M.ory" "IKXTail4_M.ry";
connectAttr "IKXTail4DM_M.orz" "IKXTail4_M.rz";
connectAttr "IKXTail4DM_M.otx" "IKXTail4_M.tx";
connectAttr "IKXTail4DM_M.oty" "IKXTail4_M.ty";
connectAttr "IKXTail4DM_M.otz" "IKXTail4_M.tz";
connectAttr "IKXTail4DM_M.oshx" "IKXTail4_M.shxy";
connectAttr "IKXTail4DM_M.oshy" "IKXTail4_M.shxz";
connectAttr "IKXTail4DM_M.oshz" "IKXTail4_M.shyz";
connectAttr "IKXTail5DM_M.osx" "IKXTail5_M.sx";
connectAttr "IKXTail5DM_M.osy" "IKXTail5_M.sy";
connectAttr "IKXTail5DM_M.osz" "IKXTail5_M.sz";
connectAttr "IKXTail4_M.s" "IKXTail5_M.is";
connectAttr "IKXTail5DM_M.orx" "IKXTail5_M.rx";
connectAttr "IKXTail5DM_M.ory" "IKXTail5_M.ry";
connectAttr "IKXTail5DM_M.orz" "IKXTail5_M.rz";
connectAttr "IKXTail5DM_M.otx" "IKXTail5_M.tx";
connectAttr "IKXTail5DM_M.oty" "IKXTail5_M.ty";
connectAttr "IKXTail5DM_M.otz" "IKXTail5_M.tz";
connectAttr "IKXTail5DM_M.oshx" "IKXTail5_M.shxy";
connectAttr "IKXTail5DM_M.oshy" "IKXTail5_M.shxz";
connectAttr "IKXTail5DM_M.oshz" "IKXTail5_M.shyz";
connectAttr "IKXTail5_M.s" "IKXTail6_M.is";
connectAttr "IKXTail6DM_M.orx" "IKXTail6_M.rx";
connectAttr "IKXTail6DM_M.ory" "IKXTail6_M.ry";
connectAttr "IKXTail6DM_M.orz" "IKXTail6_M.rz";
connectAttr "IKXTail6DM_M.otx" "IKXTail6_M.tx";
connectAttr "IKXTail6DM_M.oty" "IKXTail6_M.ty";
connectAttr "IKXTail6DM_M.otz" "IKXTail6_M.tz";
connectAttr "IKXTail6DM_M.osx" "IKXTail6_M.sx";
connectAttr "IKXTail6DM_M.osy" "IKXTail6_M.sy";
connectAttr "IKXTail6DM_M.osz" "IKXTail6_M.sz";
connectAttr "IKXTail6DM_M.oshx" "IKXTail6_M.shxy";
connectAttr "IKXTail6DM_M.oshy" "IKXTail6_M.shxz";
connectAttr "IKXTail6DM_M.oshz" "IKXTail6_M.shyz";
connectAttr "IKfake0SplineTail_M.s" "IKSpTail2_M.is";
connectAttr "SplineTailStretchyBlendTwo4_M.o" "IKSpTail2_M.tx";
connectAttr "IKSpTail2_M.s" "IKSpTail3_M.is";
connectAttr "SplineTailStretchyBlendTwo3_M.o" "IKSpTail3_M.tx";
connectAttr "IKSpTail3_M.s" "IKSpTail4_M.is";
connectAttr "SplineTailStretchyBlendTwo2_M.o" "IKSpTail4_M.tx";
connectAttr "IKSpTail4_M.s" "IKSpTail5_M.is";
connectAttr "SplineTailStretchyBlendTwo1_M.o" "IKSpTail5_M.tx";
connectAttr "IKSpTail5_M.s" "IKSpTail6_M.is";
connectAttr "IKSpTail5_M.s" "IKfake1SplineTail_M.is";
connectAttr "SplineTailStretchyBlendTwo0_M.o" "IKfake1SplineTail_M.tx";
connectAttr "IKfake1SplineTail_M.tx" "IKSplineTailEffector_M.tx";
connectAttr "IKfake1SplineTail_M.ty" "IKSplineTailEffector_M.ty";
connectAttr "IKfake1SplineTail_M.tz" "IKSplineTailEffector_M.tz";
connectAttr "IKfake1SplineTail_M.opm" "IKSplineTailEffector_M.opm";
connectAttr "IKSpTail1FollowOffsetDM_M.otx" "IKSpTail1FollowOffset_M.tx";
connectAttr "IKSpTail1FollowOffsetDM_M.oty" "IKSpTail1FollowOffset_M.ty";
connectAttr "IKSpTail1FollowOffsetDM_M.otz" "IKSpTail1FollowOffset_M.tz";
connectAttr "IKSpTail1FollowOffsetDM_M.orx" "IKSpTail1FollowOffset_M.rx";
connectAttr "IKSpTail1FollowOffsetDM_M.ory" "IKSpTail1FollowOffset_M.ry";
connectAttr "IKSpTail1FollowOffsetDM_M.orz" "IKSpTail1FollowOffset_M.rz";
connectAttr "IKSpTail1FollowOffsetDM_M.osx" "IKSpTail1FollowOffset_M.sx";
connectAttr "IKSpTail1FollowOffsetDM_M.osy" "IKSpTail1FollowOffset_M.sy";
connectAttr "IKSpTail1FollowOffsetDM_M.osz" "IKSpTail1FollowOffset_M.sz";
connectAttr "IKSpTail1FollowOffsetDM_M.oshx" "IKSpTail1FollowOffset_M.shxy";
connectAttr "IKSpTail1FollowOffsetDM_M.oshy" "IKSpTail1FollowOffset_M.shxz";
connectAttr "IKSpTail1FollowOffsetDM_M.oshz" "IKSpTail1FollowOffset_M.shyz";
connectAttr "IKSpTail2FollowOffsetDM_M.otx" "IKSpTail2FollowOffset_M.tx";
connectAttr "IKSpTail2FollowOffsetDM_M.oty" "IKSpTail2FollowOffset_M.ty";
connectAttr "IKSpTail2FollowOffsetDM_M.otz" "IKSpTail2FollowOffset_M.tz";
connectAttr "IKSpTail2FollowOffsetDM_M.orx" "IKSpTail2FollowOffset_M.rx";
connectAttr "IKSpTail2FollowOffsetDM_M.ory" "IKSpTail2FollowOffset_M.ry";
connectAttr "IKSpTail2FollowOffsetDM_M.orz" "IKSpTail2FollowOffset_M.rz";
connectAttr "IKSpTail2FollowOffsetDM_M.osx" "IKSpTail2FollowOffset_M.sx";
connectAttr "IKSpTail2FollowOffsetDM_M.osy" "IKSpTail2FollowOffset_M.sy";
connectAttr "IKSpTail2FollowOffsetDM_M.osz" "IKSpTail2FollowOffset_M.sz";
connectAttr "IKSpTail2FollowOffsetDM_M.oshx" "IKSpTail2FollowOffset_M.shxy";
connectAttr "IKSpTail2FollowOffsetDM_M.oshy" "IKSpTail2FollowOffset_M.shxz";
connectAttr "IKSpTail2FollowOffsetDM_M.oshz" "IKSpTail2FollowOffset_M.shyz";
connectAttr "IKSpTail3FollowOffsetDM_M.otx" "IKSpTail3FollowOffset_M.tx";
connectAttr "IKSpTail3FollowOffsetDM_M.oty" "IKSpTail3FollowOffset_M.ty";
connectAttr "IKSpTail3FollowOffsetDM_M.otz" "IKSpTail3FollowOffset_M.tz";
connectAttr "IKSpTail3FollowOffsetDM_M.orx" "IKSpTail3FollowOffset_M.rx";
connectAttr "IKSpTail3FollowOffsetDM_M.ory" "IKSpTail3FollowOffset_M.ry";
connectAttr "IKSpTail3FollowOffsetDM_M.orz" "IKSpTail3FollowOffset_M.rz";
connectAttr "IKSpTail3FollowOffsetDM_M.osx" "IKSpTail3FollowOffset_M.sx";
connectAttr "IKSpTail3FollowOffsetDM_M.osy" "IKSpTail3FollowOffset_M.sy";
connectAttr "IKSpTail3FollowOffsetDM_M.osz" "IKSpTail3FollowOffset_M.sz";
connectAttr "IKSpTail3FollowOffsetDM_M.oshx" "IKSpTail3FollowOffset_M.shxy";
connectAttr "IKSpTail3FollowOffsetDM_M.oshy" "IKSpTail3FollowOffset_M.shxz";
connectAttr "IKSpTail3FollowOffsetDM_M.oshz" "IKSpTail3FollowOffset_M.shyz";
connectAttr "IKSpTail4FollowOffsetDM_M.otx" "IKSpTail4FollowOffset_M.tx";
connectAttr "IKSpTail4FollowOffsetDM_M.oty" "IKSpTail4FollowOffset_M.ty";
connectAttr "IKSpTail4FollowOffsetDM_M.otz" "IKSpTail4FollowOffset_M.tz";
connectAttr "IKSpTail4FollowOffsetDM_M.orx" "IKSpTail4FollowOffset_M.rx";
connectAttr "IKSpTail4FollowOffsetDM_M.ory" "IKSpTail4FollowOffset_M.ry";
connectAttr "IKSpTail4FollowOffsetDM_M.orz" "IKSpTail4FollowOffset_M.rz";
connectAttr "IKSpTail4FollowOffsetDM_M.osx" "IKSpTail4FollowOffset_M.sx";
connectAttr "IKSpTail4FollowOffsetDM_M.osy" "IKSpTail4FollowOffset_M.sy";
connectAttr "IKSpTail4FollowOffsetDM_M.osz" "IKSpTail4FollowOffset_M.sz";
connectAttr "IKSpTail4FollowOffsetDM_M.oshx" "IKSpTail4FollowOffset_M.shxy";
connectAttr "IKSpTail4FollowOffsetDM_M.oshy" "IKSpTail4FollowOffset_M.shxz";
connectAttr "IKSpTail4FollowOffsetDM_M.oshz" "IKSpTail4FollowOffset_M.shyz";
connectAttr "IKSpTail5FollowOffsetDM_M.otx" "IKSpTail5FollowOffset_M.tx";
connectAttr "IKSpTail5FollowOffsetDM_M.oty" "IKSpTail5FollowOffset_M.ty";
connectAttr "IKSpTail5FollowOffsetDM_M.otz" "IKSpTail5FollowOffset_M.tz";
connectAttr "IKSpTail5FollowOffsetDM_M.orx" "IKSpTail5FollowOffset_M.rx";
connectAttr "IKSpTail5FollowOffsetDM_M.ory" "IKSpTail5FollowOffset_M.ry";
connectAttr "IKSpTail5FollowOffsetDM_M.orz" "IKSpTail5FollowOffset_M.rz";
connectAttr "IKSpTail5FollowOffsetDM_M.osx" "IKSpTail5FollowOffset_M.sx";
connectAttr "IKSpTail5FollowOffsetDM_M.osy" "IKSpTail5FollowOffset_M.sy";
connectAttr "IKSpTail5FollowOffsetDM_M.osz" "IKSpTail5FollowOffset_M.sz";
connectAttr "IKSpTail5FollowOffsetDM_M.oshx" "IKSpTail5FollowOffset_M.shxy";
connectAttr "IKSpTail5FollowOffsetDM_M.oshy" "IKSpTail5FollowOffset_M.shxz";
connectAttr "IKSpTail5FollowOffsetDM_M.oshz" "IKSpTail5FollowOffset_M.shyz";
connectAttr "IKSpTail6FollowOffsetDM_M.otx" "IKSpTail6FollowOffset_M.tx";
connectAttr "IKSpTail6FollowOffsetDM_M.oty" "IKSpTail6FollowOffset_M.ty";
connectAttr "IKSpTail6FollowOffsetDM_M.otz" "IKSpTail6FollowOffset_M.tz";
connectAttr "IKSpTail6FollowOffsetDM_M.orx" "IKSpTail6FollowOffset_M.rx";
connectAttr "IKSpTail6FollowOffsetDM_M.ory" "IKSpTail6FollowOffset_M.ry";
connectAttr "IKSpTail6FollowOffsetDM_M.orz" "IKSpTail6FollowOffset_M.rz";
connectAttr "IKSpTail6FollowOffsetDM_M.osx" "IKSpTail6FollowOffset_M.sx";
connectAttr "IKSpTail6FollowOffsetDM_M.osy" "IKSpTail6FollowOffset_M.sy";
connectAttr "IKSpTail6FollowOffsetDM_M.osz" "IKSpTail6FollowOffset_M.sz";
connectAttr "IKSpTail6FollowOffsetDM_M.oshx" "IKSpTail6FollowOffset_M.shxy";
connectAttr "IKSpTail6FollowOffsetDM_M.oshy" "IKSpTail6FollowOffset_M.shxz";
connectAttr "IKSpTail6FollowOffsetDM_M.oshz" "IKSpTail6FollowOffset_M.shyz";
connectAttr "IKAcTail1DM_M.ot" "IKAcTail1_M.t";
connectAttr "IKAcTail1DM2_M.or" "IKAcTail1_M.r";
connectAttr "IKAcTail2DM_M.ot" "IKAcTail2_M.t";
connectAttr "IKAcTail2DM2_M.or" "IKAcTail2_M.r";
connectAttr "IKAcTail3DM_M.ot" "IKAcTail3_M.t";
connectAttr "IKAcTail3DM2_M.or" "IKAcTail3_M.r";
connectAttr "IKAcTail4DM_M.ot" "IKAcTail4_M.t";
connectAttr "IKAcTail4DM2_M.or" "IKAcTail4_M.r";
connectAttr "IKAcTail5DM_M.ot" "IKAcTail5_M.t";
connectAttr "IKAcTail5DM2_M.or" "IKAcTail5_M.r";
connectAttr "IKAcTail6DM_M.ot" "IKAcTail6_M.t";
connectAttr "IKAcTail6DM2_M.or" "IKAcTail6_M.r";
connectAttr "IKAcPociTail1_M.p" "IKAcPociXformTail1_M.t";
connectAttr "IKAcPociTail2_M.p" "IKAcPociXformTail2_M.t";
connectAttr "IKAcPociTail3_M.p" "IKAcPociXformTail3_M.t";
connectAttr "IKAcPociTail4_M.p" "IKAcPociXformTail4_M.t";
connectAttr "IKAcPociTail5_M.p" "IKAcPociXformTail5_M.t";
connectAttr "IKAcPociTail6_M.p" "IKAcPociXformTail6_M.t";
connectAttr "IKAcTail1FollowOffsetDM_M.otx" "IKAcTail1FollowOffset_M.tx";
connectAttr "IKAcTail1FollowOffsetDM_M.oty" "IKAcTail1FollowOffset_M.ty";
connectAttr "IKAcTail1FollowOffsetDM_M.otz" "IKAcTail1FollowOffset_M.tz";
connectAttr "IKAcTail1FollowOffsetDM_M.orx" "IKAcTail1FollowOffset_M.rx";
connectAttr "IKAcTail1FollowOffsetDM_M.ory" "IKAcTail1FollowOffset_M.ry";
connectAttr "IKAcTail1FollowOffsetDM_M.orz" "IKAcTail1FollowOffset_M.rz";
connectAttr "IKAcTail1FollowOffsetDM_M.osx" "IKAcTail1FollowOffset_M.sx";
connectAttr "IKAcTail1FollowOffsetDM_M.osy" "IKAcTail1FollowOffset_M.sy";
connectAttr "IKAcTail1FollowOffsetDM_M.osz" "IKAcTail1FollowOffset_M.sz";
connectAttr "IKAcTail1FollowOffsetDM_M.oshx" "IKAcTail1FollowOffset_M.shxy";
connectAttr "IKAcTail1FollowOffsetDM_M.oshy" "IKAcTail1FollowOffset_M.shxz";
connectAttr "IKAcTail1FollowOffsetDM_M.oshz" "IKAcTail1FollowOffset_M.shyz";
connectAttr "IKAcTail2FollowOffsetDM_M.otx" "IKAcTail2FollowOffset_M.tx";
connectAttr "IKAcTail2FollowOffsetDM_M.oty" "IKAcTail2FollowOffset_M.ty";
connectAttr "IKAcTail2FollowOffsetDM_M.otz" "IKAcTail2FollowOffset_M.tz";
connectAttr "IKAcTail2FollowOffsetDM_M.orx" "IKAcTail2FollowOffset_M.rx";
connectAttr "IKAcTail2FollowOffsetDM_M.ory" "IKAcTail2FollowOffset_M.ry";
connectAttr "IKAcTail2FollowOffsetDM_M.orz" "IKAcTail2FollowOffset_M.rz";
connectAttr "IKAcTail2FollowOffsetDM_M.osx" "IKAcTail2FollowOffset_M.sx";
connectAttr "IKAcTail2FollowOffsetDM_M.osy" "IKAcTail2FollowOffset_M.sy";
connectAttr "IKAcTail2FollowOffsetDM_M.osz" "IKAcTail2FollowOffset_M.sz";
connectAttr "IKAcTail2FollowOffsetDM_M.oshx" "IKAcTail2FollowOffset_M.shxy";
connectAttr "IKAcTail2FollowOffsetDM_M.oshy" "IKAcTail2FollowOffset_M.shxz";
connectAttr "IKAcTail2FollowOffsetDM_M.oshz" "IKAcTail2FollowOffset_M.shyz";
connectAttr "IKAcTail3FollowOffsetDM_M.otx" "IKAcTail3FollowOffset_M.tx";
connectAttr "IKAcTail3FollowOffsetDM_M.oty" "IKAcTail3FollowOffset_M.ty";
connectAttr "IKAcTail3FollowOffsetDM_M.otz" "IKAcTail3FollowOffset_M.tz";
connectAttr "IKAcTail3FollowOffsetDM_M.orx" "IKAcTail3FollowOffset_M.rx";
connectAttr "IKAcTail3FollowOffsetDM_M.ory" "IKAcTail3FollowOffset_M.ry";
connectAttr "IKAcTail3FollowOffsetDM_M.orz" "IKAcTail3FollowOffset_M.rz";
connectAttr "IKAcTail3FollowOffsetDM_M.osx" "IKAcTail3FollowOffset_M.sx";
connectAttr "IKAcTail3FollowOffsetDM_M.osy" "IKAcTail3FollowOffset_M.sy";
connectAttr "IKAcTail3FollowOffsetDM_M.osz" "IKAcTail3FollowOffset_M.sz";
connectAttr "IKAcTail3FollowOffsetDM_M.oshx" "IKAcTail3FollowOffset_M.shxy";
connectAttr "IKAcTail3FollowOffsetDM_M.oshy" "IKAcTail3FollowOffset_M.shxz";
connectAttr "IKAcTail3FollowOffsetDM_M.oshz" "IKAcTail3FollowOffset_M.shyz";
connectAttr "IKAcTail4FollowOffsetDM_M.otx" "IKAcTail4FollowOffset_M.tx";
connectAttr "IKAcTail4FollowOffsetDM_M.oty" "IKAcTail4FollowOffset_M.ty";
connectAttr "IKAcTail4FollowOffsetDM_M.otz" "IKAcTail4FollowOffset_M.tz";
connectAttr "IKAcTail4FollowOffsetDM_M.orx" "IKAcTail4FollowOffset_M.rx";
connectAttr "IKAcTail4FollowOffsetDM_M.ory" "IKAcTail4FollowOffset_M.ry";
connectAttr "IKAcTail4FollowOffsetDM_M.orz" "IKAcTail4FollowOffset_M.rz";
connectAttr "IKAcTail4FollowOffsetDM_M.osx" "IKAcTail4FollowOffset_M.sx";
connectAttr "IKAcTail4FollowOffsetDM_M.osy" "IKAcTail4FollowOffset_M.sy";
connectAttr "IKAcTail4FollowOffsetDM_M.osz" "IKAcTail4FollowOffset_M.sz";
connectAttr "IKAcTail4FollowOffsetDM_M.oshx" "IKAcTail4FollowOffset_M.shxy";
connectAttr "IKAcTail4FollowOffsetDM_M.oshy" "IKAcTail4FollowOffset_M.shxz";
connectAttr "IKAcTail4FollowOffsetDM_M.oshz" "IKAcTail4FollowOffset_M.shyz";
connectAttr "IKAcTail5FollowOffsetDM_M.otx" "IKAcTail5FollowOffset_M.tx";
connectAttr "IKAcTail5FollowOffsetDM_M.oty" "IKAcTail5FollowOffset_M.ty";
connectAttr "IKAcTail5FollowOffsetDM_M.otz" "IKAcTail5FollowOffset_M.tz";
connectAttr "IKAcTail5FollowOffsetDM_M.orx" "IKAcTail5FollowOffset_M.rx";
connectAttr "IKAcTail5FollowOffsetDM_M.ory" "IKAcTail5FollowOffset_M.ry";
connectAttr "IKAcTail5FollowOffsetDM_M.orz" "IKAcTail5FollowOffset_M.rz";
connectAttr "IKAcTail5FollowOffsetDM_M.osx" "IKAcTail5FollowOffset_M.sx";
connectAttr "IKAcTail5FollowOffsetDM_M.osy" "IKAcTail5FollowOffset_M.sy";
connectAttr "IKAcTail5FollowOffsetDM_M.osz" "IKAcTail5FollowOffset_M.sz";
connectAttr "IKAcTail5FollowOffsetDM_M.oshx" "IKAcTail5FollowOffset_M.shxy";
connectAttr "IKAcTail5FollowOffsetDM_M.oshy" "IKAcTail5FollowOffset_M.shxz";
connectAttr "IKAcTail5FollowOffsetDM_M.oshz" "IKAcTail5FollowOffset_M.shyz";
connectAttr "IKAcTail6FollowOffsetDM_M.otx" "IKAcTail6FollowOffset_M.tx";
connectAttr "IKAcTail6FollowOffsetDM_M.oty" "IKAcTail6FollowOffset_M.ty";
connectAttr "IKAcTail6FollowOffsetDM_M.otz" "IKAcTail6FollowOffset_M.tz";
connectAttr "IKAcTail6FollowOffsetDM_M.orx" "IKAcTail6FollowOffset_M.rx";
connectAttr "IKAcTail6FollowOffsetDM_M.ory" "IKAcTail6FollowOffset_M.ry";
connectAttr "IKAcTail6FollowOffsetDM_M.orz" "IKAcTail6FollowOffset_M.rz";
connectAttr "IKAcTail6FollowOffsetDM_M.osx" "IKAcTail6FollowOffset_M.sx";
connectAttr "IKAcTail6FollowOffsetDM_M.osy" "IKAcTail6FollowOffset_M.sy";
connectAttr "IKAcTail6FollowOffsetDM_M.osz" "IKAcTail6FollowOffset_M.sz";
connectAttr "IKAcTail6FollowOffsetDM_M.oshx" "IKAcTail6FollowOffset_M.shxy";
connectAttr "IKAcTail6FollowOffsetDM_M.oshy" "IKAcTail6FollowOffset_M.shxz";
connectAttr "IKAcTail6FollowOffsetDM_M.oshz" "IKAcTail6FollowOffset_M.shyz";
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
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.ctx" "IKFollowEndSplineTail1_M.tx"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.cty" "IKFollowEndSplineTail1_M.ty"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.ctz" "IKFollowEndSplineTail1_M.tz"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.crx" "IKFollowEndSplineTail1_M.rx"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.cry" "IKFollowEndSplineTail1_M.ry"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.crz" "IKFollowEndSplineTail1_M.rz"
		;
connectAttr "IKFollowEndSplineTail1_M.ro" "IKFollowEndSplineTail1_M_parentConstraint1.cro"
		;
connectAttr "IKFollowEndSplineTail1_M.pim" "IKFollowEndSplineTail1_M_parentConstraint1.cpim"
		;
connectAttr "IKFollowEndSplineTail1_M.rp" "IKFollowEndSplineTail1_M_parentConstraint1.crp"
		;
connectAttr "IKFollowEndSplineTail1_M.rpt" "IKFollowEndSplineTail1_M_parentConstraint1.crt"
		;
connectAttr "IKSplineTail1X_M.t" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSplineTail1X_M.rp" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSplineTail1X_M.rpt" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail1X_M.r" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSplineTail1X_M.ro" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSplineTail1X_M.s" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSplineTail1X_M.pm" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.w0" "IKFollowEndSplineTail1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.ctx" "IKFollowEndSplineTail4_M.tx"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.cty" "IKFollowEndSplineTail4_M.ty"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.ctz" "IKFollowEndSplineTail4_M.tz"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.crx" "IKFollowEndSplineTail4_M.rx"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.cry" "IKFollowEndSplineTail4_M.ry"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.crz" "IKFollowEndSplineTail4_M.rz"
		;
connectAttr "IKFollowEndSplineTail4_M.ro" "IKFollowEndSplineTail4_M_parentConstraint1.cro"
		;
connectAttr "IKFollowEndSplineTail4_M.pim" "IKFollowEndSplineTail4_M_parentConstraint1.cpim"
		;
connectAttr "IKFollowEndSplineTail4_M.rp" "IKFollowEndSplineTail4_M_parentConstraint1.crp"
		;
connectAttr "IKFollowEndSplineTail4_M.rpt" "IKFollowEndSplineTail4_M_parentConstraint1.crt"
		;
connectAttr "IKSplineTail4X_M.t" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSplineTail4X_M.rp" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSplineTail4X_M.rpt" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail4X_M.r" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSplineTail4X_M.ro" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSplineTail4X_M.s" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSplineTail4X_M.pm" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.w0" "IKFollowEndSplineTail4_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.ctx" "IKOffsetSplineTail2_M.tx"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.cty" "IKOffsetSplineTail2_M.ty"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.ctz" "IKOffsetSplineTail2_M.tz"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.crx" "IKOffsetSplineTail2_M.rx"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.cry" "IKOffsetSplineTail2_M.ry"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.crz" "IKOffsetSplineTail2_M.rz"
		;
connectAttr "IKSplineTail2X_M_parentConstraint1.ctx" "IKSplineTail2X_M.tx";
connectAttr "IKSplineTail2X_M_parentConstraint1.cty" "IKSplineTail2X_M.ty";
connectAttr "IKSplineTail2X_M_parentConstraint1.ctz" "IKSplineTail2X_M.tz";
connectAttr "IKSplineTail2X_M_parentConstraint1.crx" "IKSplineTail2X_M.rx";
connectAttr "IKSplineTail2X_M_parentConstraint1.cry" "IKSplineTail2X_M.ry";
connectAttr "IKSplineTail2X_M_parentConstraint1.crz" "IKSplineTail2X_M.rz";
connectAttr "IKSplineTail2X_M.ro" "IKSplineTail2X_M_parentConstraint1.cro";
connectAttr "IKSplineTail2X_M.pim" "IKSplineTail2X_M_parentConstraint1.cpim";
connectAttr "IKSplineTail2X_M.rp" "IKSplineTail2X_M_parentConstraint1.crp";
connectAttr "IKSplineTail2X_M.rpt" "IKSplineTail2X_M_parentConstraint1.crt";
connectAttr "IKSplineTail2_M.t" "IKSplineTail2X_M_parentConstraint1.tg[0].tt";
connectAttr "IKSplineTail2_M.rp" "IKSplineTail2X_M_parentConstraint1.tg[0].trp";
connectAttr "IKSplineTail2_M.rpt" "IKSplineTail2X_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail2_M.r" "IKSplineTail2X_M_parentConstraint1.tg[0].tr";
connectAttr "IKSplineTail2_M.ro" "IKSplineTail2X_M_parentConstraint1.tg[0].tro";
connectAttr "IKSplineTail2_M.s" "IKSplineTail2X_M_parentConstraint1.tg[0].ts";
connectAttr "IKSplineTail2_M.pm" "IKSplineTail2X_M_parentConstraint1.tg[0].tpm";
connectAttr "IKSplineTail2X_M_parentConstraint1.w0" "IKSplineTail2X_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKSplineTail2_MShape.v";
connectAttr "IKOffsetSplineTail2_M.ro" "IKOffsetSplineTail2_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetSplineTail2_M.pim" "IKOffsetSplineTail2_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetSplineTail2_M.rp" "IKOffsetSplineTail2_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetSplineTail2_M.rpt" "IKOffsetSplineTail2_M_parentConstraint1.crt"
		;
connectAttr "IKFollowEndSplineTail1_M.t" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKFollowEndSplineTail1_M.rp" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKFollowEndSplineTail1_M.rpt" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKFollowEndSplineTail1_M.r" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKFollowEndSplineTail1_M.ro" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKFollowEndSplineTail1_M.s" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKFollowEndSplineTail1_M.pm" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.w0" "IKOffsetSplineTail2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKFollowEndSplineTail4_M.t" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKFollowEndSplineTail4_M.rp" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKFollowEndSplineTail4_M.rpt" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKFollowEndSplineTail4_M.r" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKFollowEndSplineTail4_M.ro" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKFollowEndSplineTail4_M.s" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKFollowEndSplineTail4_M.pm" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.w1" "IKOffsetSplineTail2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKFollowEndSplineTail2_MReverse.ox" "IKOffsetSplineTail2_M_parentConstraint1.w0"
		;
connectAttr "IKFollowEndSplineTail2_MUnitConversion.o" "IKOffsetSplineTail2_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.ctx" "IKOffsetSplineTail3_M.tx"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.cty" "IKOffsetSplineTail3_M.ty"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.ctz" "IKOffsetSplineTail3_M.tz"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.crx" "IKOffsetSplineTail3_M.rx"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.cry" "IKOffsetSplineTail3_M.ry"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.crz" "IKOffsetSplineTail3_M.rz"
		;
connectAttr "IKSplineTail3X_M_parentConstraint1.ctx" "IKSplineTail3X_M.tx";
connectAttr "IKSplineTail3X_M_parentConstraint1.cty" "IKSplineTail3X_M.ty";
connectAttr "IKSplineTail3X_M_parentConstraint1.ctz" "IKSplineTail3X_M.tz";
connectAttr "IKSplineTail3X_M_parentConstraint1.crx" "IKSplineTail3X_M.rx";
connectAttr "IKSplineTail3X_M_parentConstraint1.cry" "IKSplineTail3X_M.ry";
connectAttr "IKSplineTail3X_M_parentConstraint1.crz" "IKSplineTail3X_M.rz";
connectAttr "IKSplineTail3X_M.ro" "IKSplineTail3X_M_parentConstraint1.cro";
connectAttr "IKSplineTail3X_M.pim" "IKSplineTail3X_M_parentConstraint1.cpim";
connectAttr "IKSplineTail3X_M.rp" "IKSplineTail3X_M_parentConstraint1.crp";
connectAttr "IKSplineTail3X_M.rpt" "IKSplineTail3X_M_parentConstraint1.crt";
connectAttr "IKSplineTail3_M.t" "IKSplineTail3X_M_parentConstraint1.tg[0].tt";
connectAttr "IKSplineTail3_M.rp" "IKSplineTail3X_M_parentConstraint1.tg[0].trp";
connectAttr "IKSplineTail3_M.rpt" "IKSplineTail3X_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail3_M.r" "IKSplineTail3X_M_parentConstraint1.tg[0].tr";
connectAttr "IKSplineTail3_M.ro" "IKSplineTail3X_M_parentConstraint1.tg[0].tro";
connectAttr "IKSplineTail3_M.s" "IKSplineTail3X_M_parentConstraint1.tg[0].ts";
connectAttr "IKSplineTail3_M.pm" "IKSplineTail3X_M_parentConstraint1.tg[0].tpm";
connectAttr "IKSplineTail3X_M_parentConstraint1.w0" "IKSplineTail3X_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKSplineTail3_MShape.v";
connectAttr "IKOffsetSplineTail3_M.ro" "IKOffsetSplineTail3_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetSplineTail3_M.pim" "IKOffsetSplineTail3_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetSplineTail3_M.rp" "IKOffsetSplineTail3_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetSplineTail3_M.rpt" "IKOffsetSplineTail3_M_parentConstraint1.crt"
		;
connectAttr "IKFollowEndSplineTail1_M.t" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKFollowEndSplineTail1_M.rp" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKFollowEndSplineTail1_M.rpt" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKFollowEndSplineTail1_M.r" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKFollowEndSplineTail1_M.ro" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKFollowEndSplineTail1_M.s" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKFollowEndSplineTail1_M.pm" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.w0" "IKOffsetSplineTail3_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKFollowEndSplineTail4_M.t" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKFollowEndSplineTail4_M.rp" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKFollowEndSplineTail4_M.rpt" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKFollowEndSplineTail4_M.r" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKFollowEndSplineTail4_M.ro" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKFollowEndSplineTail4_M.s" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKFollowEndSplineTail4_M.pm" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.w1" "IKOffsetSplineTail3_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKFollowEndSplineTail3_MReverse.ox" "IKOffsetSplineTail3_M_parentConstraint1.w0"
		;
connectAttr "IKFollowEndSplineTail3_MUnitConversion.o" "IKOffsetSplineTail3_M_parentConstraint1.w1"
		;
connectAttr "IKfake0SplineTail_M.msg" "IKSplineTailHandle_M.hsj";
connectAttr "IKSplineTailEffector_M.hp" "IKSplineTailHandle_M.hee";
connectAttr "ikSplineSolver.msg" "IKSplineTailHandle_M.hsv";
connectAttr "IKSplineTailCurve_MShape.ws" "IKSplineTailHandle_M.ic";
connectAttr "IKSplineTail1LocalOrient2_M.wm" "IKSplineTailHandle_M.dwum";
connectAttr "IKSplineTail4LocalStartOrient_M.wm" "IKSplineTailHandle_M.dwue";
connectAttr "IKSplineTailRamp_M.oc" "IKSplineTailHandle_M.dtra";
connectAttr "IKSplineTailFlipUpAxisSetRange_M.ox" "IKSplineTailHandle_M.dwua";
connectAttr "IKSplineTailFlipAxisSetRange_M.ox" "IKSplineTailHandle_M.dwux";
connectAttr "IKSplineTailFlipAxisSetRange_M.oy" "IKSplineTailHandle_M.dwuy";
connectAttr "IKSplineTailFlipAxisSetRange_M.oz" "IKSplineTailHandle_M.dwuz";
connectAttr "IKSplineTailFlipAxisSetRange_M.ox" "IKSplineTailHandle_M.dwvx";
connectAttr "IKSplineTailFlipAxisSetRange_M.oy" "IKSplineTailHandle_M.dwvy";
connectAttr "IKSplineTailFlipAxisSetRange_M.oz" "IKSplineTailHandle_M.dwvz";
connectAttr "IKSplineTail4_M.ikCvVis" "IKcvOffsetSplineTail1_M.v";
connectAttr "IKcvOffsetSplineTail1DM_M.otx" "IKcvOffsetSplineTail1_M.tx";
connectAttr "IKcvOffsetSplineTail1DM_M.oty" "IKcvOffsetSplineTail1_M.ty";
connectAttr "IKcvOffsetSplineTail1DM_M.otz" "IKcvOffsetSplineTail1_M.tz";
connectAttr "IKcvOffsetSplineTail1DM_M.orx" "IKcvOffsetSplineTail1_M.rx";
connectAttr "IKcvOffsetSplineTail1DM_M.ory" "IKcvOffsetSplineTail1_M.ry";
connectAttr "IKcvOffsetSplineTail1DM_M.orz" "IKcvOffsetSplineTail1_M.rz";
connectAttr "IKcvOffsetSplineTail1DM_M.osx" "IKcvOffsetSplineTail1_M.sx";
connectAttr "IKcvOffsetSplineTail1DM_M.osy" "IKcvOffsetSplineTail1_M.sy";
connectAttr "IKcvOffsetSplineTail1DM_M.osz" "IKcvOffsetSplineTail1_M.sz";
connectAttr "IKcvOffsetSplineTail1DM_M.oshx" "IKcvOffsetSplineTail1_M.shxy";
connectAttr "IKcvOffsetSplineTail1DM_M.oshy" "IKcvOffsetSplineTail1_M.shxz";
connectAttr "IKcvOffsetSplineTail1DM_M.oshz" "IKcvOffsetSplineTail1_M.shyz";
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKcvExtraSplineTail1_M.v";
connectAttr "IKSplineTail4_M.ikCvVis" "IKcvOffsetSplineTail2_M.v";
connectAttr "IKcvOffsetSplineTail2DM_M.otx" "IKcvOffsetSplineTail2_M.tx";
connectAttr "IKcvOffsetSplineTail2DM_M.oty" "IKcvOffsetSplineTail2_M.ty";
connectAttr "IKcvOffsetSplineTail2DM_M.otz" "IKcvOffsetSplineTail2_M.tz";
connectAttr "IKcvOffsetSplineTail2DM_M.orx" "IKcvOffsetSplineTail2_M.rx";
connectAttr "IKcvOffsetSplineTail2DM_M.ory" "IKcvOffsetSplineTail2_M.ry";
connectAttr "IKcvOffsetSplineTail2DM_M.orz" "IKcvOffsetSplineTail2_M.rz";
connectAttr "IKcvOffsetSplineTail2DM_M.osx" "IKcvOffsetSplineTail2_M.sx";
connectAttr "IKcvOffsetSplineTail2DM_M.osy" "IKcvOffsetSplineTail2_M.sy";
connectAttr "IKcvOffsetSplineTail2DM_M.osz" "IKcvOffsetSplineTail2_M.sz";
connectAttr "IKcvOffsetSplineTail2DM_M.oshx" "IKcvOffsetSplineTail2_M.shxy";
connectAttr "IKcvOffsetSplineTail2DM_M.oshy" "IKcvOffsetSplineTail2_M.shxz";
connectAttr "IKcvOffsetSplineTail2DM_M.oshz" "IKcvOffsetSplineTail2_M.shyz";
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKcvExtraSplineTail2_M.v";
connectAttr "IKSplineTail4_M.ikCvVis" "IKcvOffsetSplineTail3_M.v";
connectAttr "IKcvOffsetSplineTail3DM_M.otx" "IKcvOffsetSplineTail3_M.tx";
connectAttr "IKcvOffsetSplineTail3DM_M.oty" "IKcvOffsetSplineTail3_M.ty";
connectAttr "IKcvOffsetSplineTail3DM_M.otz" "IKcvOffsetSplineTail3_M.tz";
connectAttr "IKcvOffsetSplineTail3DM_M.orx" "IKcvOffsetSplineTail3_M.rx";
connectAttr "IKcvOffsetSplineTail3DM_M.ory" "IKcvOffsetSplineTail3_M.ry";
connectAttr "IKcvOffsetSplineTail3DM_M.orz" "IKcvOffsetSplineTail3_M.rz";
connectAttr "IKcvOffsetSplineTail3DM_M.osx" "IKcvOffsetSplineTail3_M.sx";
connectAttr "IKcvOffsetSplineTail3DM_M.osy" "IKcvOffsetSplineTail3_M.sy";
connectAttr "IKcvOffsetSplineTail3DM_M.osz" "IKcvOffsetSplineTail3_M.sz";
connectAttr "IKcvOffsetSplineTail3DM_M.oshx" "IKcvOffsetSplineTail3_M.shxy";
connectAttr "IKcvOffsetSplineTail3DM_M.oshy" "IKcvOffsetSplineTail3_M.shxz";
connectAttr "IKcvOffsetSplineTail3DM_M.oshz" "IKcvOffsetSplineTail3_M.shyz";
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKcvExtraSplineTail3_M.v";
connectAttr "IKSplineTail4_M.ikCvVis" "IKcvOffsetSplineTail4_M.v";
connectAttr "IKcvOffsetSplineTail4DM_M.otx" "IKcvOffsetSplineTail4_M.tx";
connectAttr "IKcvOffsetSplineTail4DM_M.oty" "IKcvOffsetSplineTail4_M.ty";
connectAttr "IKcvOffsetSplineTail4DM_M.otz" "IKcvOffsetSplineTail4_M.tz";
connectAttr "IKcvOffsetSplineTail4DM_M.orx" "IKcvOffsetSplineTail4_M.rx";
connectAttr "IKcvOffsetSplineTail4DM_M.ory" "IKcvOffsetSplineTail4_M.ry";
connectAttr "IKcvOffsetSplineTail4DM_M.orz" "IKcvOffsetSplineTail4_M.rz";
connectAttr "IKcvOffsetSplineTail4DM_M.osx" "IKcvOffsetSplineTail4_M.sx";
connectAttr "IKcvOffsetSplineTail4DM_M.osy" "IKcvOffsetSplineTail4_M.sy";
connectAttr "IKcvOffsetSplineTail4DM_M.osz" "IKcvOffsetSplineTail4_M.sz";
connectAttr "IKcvOffsetSplineTail4DM_M.oshx" "IKcvOffsetSplineTail4_M.shxy";
connectAttr "IKcvOffsetSplineTail4DM_M.oshy" "IKcvOffsetSplineTail4_M.shxz";
connectAttr "IKcvOffsetSplineTail4DM_M.oshz" "IKcvOffsetSplineTail4_M.shyz";
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKcvExtraSplineTail4_M.v";
connectAttr "IKhybridFollowSplineTail1DM_M.otx" "IKhybridFollowSplineTail1_M.tx"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.oty" "IKhybridFollowSplineTail1_M.ty"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.otz" "IKhybridFollowSplineTail1_M.tz"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.orx" "IKhybridFollowSplineTail1_M.rx"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.ory" "IKhybridFollowSplineTail1_M.ry"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.orz" "IKhybridFollowSplineTail1_M.rz"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.osx" "IKhybridFollowSplineTail1_M.sx"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.osy" "IKhybridFollowSplineTail1_M.sy"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.osz" "IKhybridFollowSplineTail1_M.sz"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.oshx" "IKhybridFollowSplineTail1_M.shxy"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.oshy" "IKhybridFollowSplineTail1_M.shxz"
		;
connectAttr "IKhybridFollowSplineTail1DM_M.oshz" "IKhybridFollowSplineTail1_M.shyz"
		;
connectAttr "FKIKBlendSplineTailHybridVisPMA_M.o1" "IKhybridSplineTail1_MShape.v"
		;
connectAttr "FKIKBlendSplineTailHybridVisPMA_M.o1" "IKhybridSplineTail2_MShape.v"
		;
connectAttr "FKIKBlendSplineTailHybridVisPMA_M.o1" "IKhybridSplineTail3_MShape.v"
		;
connectAttr "FKIKBlendSplineTailHybridVisPMA_M.o1" "IKhybridSplineTail4_MShape.v"
		;
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKSplineTail4_MShape.v";
connectAttr "IKSplineTail4X_M_parentConstraint1.ctx" "IKSplineTail4X_M.tx";
connectAttr "IKSplineTail4X_M_parentConstraint1.cty" "IKSplineTail4X_M.ty";
connectAttr "IKSplineTail4X_M_parentConstraint1.ctz" "IKSplineTail4X_M.tz";
connectAttr "IKSplineTail4X_M_parentConstraint1.crx" "IKSplineTail4X_M.rx";
connectAttr "IKSplineTail4X_M_parentConstraint1.cry" "IKSplineTail4X_M.ry";
connectAttr "IKSplineTail4X_M_parentConstraint1.crz" "IKSplineTail4X_M.rz";
connectAttr "IKSplineTail4X_M.ro" "IKSplineTail4X_M_parentConstraint1.cro";
connectAttr "IKSplineTail4X_M.pim" "IKSplineTail4X_M_parentConstraint1.cpim";
connectAttr "IKSplineTail4X_M.rp" "IKSplineTail4X_M_parentConstraint1.crp";
connectAttr "IKSplineTail4X_M.rpt" "IKSplineTail4X_M_parentConstraint1.crt";
connectAttr "IKSplineTail4_M.t" "IKSplineTail4X_M_parentConstraint1.tg[0].tt";
connectAttr "IKSplineTail4_M.rp" "IKSplineTail4X_M_parentConstraint1.tg[0].trp";
connectAttr "IKSplineTail4_M.rpt" "IKSplineTail4X_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail4_M.r" "IKSplineTail4X_M_parentConstraint1.tg[0].tr";
connectAttr "IKSplineTail4_M.ro" "IKSplineTail4X_M_parentConstraint1.tg[0].tro";
connectAttr "IKSplineTail4_M.s" "IKSplineTail4X_M_parentConstraint1.tg[0].ts";
connectAttr "IKSplineTail4_M.pm" "IKSplineTail4X_M_parentConstraint1.tg[0].tpm";
connectAttr "IKSplineTail4X_M_parentConstraint1.w0" "IKSplineTail4X_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.ctx" "IKOffsetConstrainedSplineTail1_M.tx"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.cty" "IKOffsetConstrainedSplineTail1_M.ty"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.ctz" "IKOffsetConstrainedSplineTail1_M.tz"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.crx" "IKOffsetConstrainedSplineTail1_M.rx"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.cry" "IKOffsetConstrainedSplineTail1_M.ry"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.crz" "IKOffsetConstrainedSplineTail1_M.rz"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.csx" "IKOffsetConstrainedSplineTail1_M.sx"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.csy" "IKOffsetConstrainedSplineTail1_M.sy"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.csz" "IKOffsetConstrainedSplineTail1_M.sz"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M.ro" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M.pim" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M.rp" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M.rpt" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.crt"
		;
connectAttr "TailBase_M.t" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "TailBase_M.rp" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "TailBase_M.rpt" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "TailBase_M.r" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "TailBase_M.ro" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "TailBase_M.s" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "TailBase_M.pm" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TailBase_M.jo" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tjo"
		;
connectAttr "TailBase_M.ssc" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tsc"
		;
connectAttr "TailBase_M.is" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tis"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.w0" "IKOffsetConstrainedSplineTail1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M.pim" "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.cpim"
		;
connectAttr "Main.s" "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "Main.pm" "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.w0" "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKSplineTail1_MShape.v";
connectAttr "IKSplineTail1X_M_parentConstraint1.ctx" "IKSplineTail1X_M.tx";
connectAttr "IKSplineTail1X_M_parentConstraint1.cty" "IKSplineTail1X_M.ty";
connectAttr "IKSplineTail1X_M_parentConstraint1.ctz" "IKSplineTail1X_M.tz";
connectAttr "IKSplineTail1X_M_parentConstraint1.crx" "IKSplineTail1X_M.rx";
connectAttr "IKSplineTail1X_M_parentConstraint1.cry" "IKSplineTail1X_M.ry";
connectAttr "IKSplineTail1X_M_parentConstraint1.crz" "IKSplineTail1X_M.rz";
connectAttr "IKSplineTail1X_M.ro" "IKSplineTail1X_M_parentConstraint1.cro";
connectAttr "IKSplineTail1X_M.pim" "IKSplineTail1X_M_parentConstraint1.cpim";
connectAttr "IKSplineTail1X_M.rp" "IKSplineTail1X_M_parentConstraint1.crp";
connectAttr "IKSplineTail1X_M.rpt" "IKSplineTail1X_M_parentConstraint1.crt";
connectAttr "IKSplineTail1_M.t" "IKSplineTail1X_M_parentConstraint1.tg[0].tt";
connectAttr "IKSplineTail1_M.rp" "IKSplineTail1X_M_parentConstraint1.tg[0].trp";
connectAttr "IKSplineTail1_M.rpt" "IKSplineTail1X_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSplineTail1_M.r" "IKSplineTail1X_M_parentConstraint1.tg[0].tr";
connectAttr "IKSplineTail1_M.ro" "IKSplineTail1X_M_parentConstraint1.tg[0].tro";
connectAttr "IKSplineTail1_M.s" "IKSplineTail1X_M_parentConstraint1.tg[0].ts";
connectAttr "IKSplineTail1_M.pm" "IKSplineTail1X_M_parentConstraint1.tg[0].tpm";
connectAttr "IKSplineTail1X_M_parentConstraint1.w0" "IKSplineTail1X_M_parentConstraint1.tg[0].tw"
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
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "IKSplineTailCurve_M.v";
connectAttr "IKSplineTailLocator0_MShape.wp" "IKSplineTailCurve_MShape.cp[0]";
connectAttr "IKSplineTailLocator1_MShape.wp" "IKSplineTailCurve_MShape.cp[1]";
connectAttr "IKSplineTailLocator2_MShape.wp" "IKSplineTailCurve_MShape.cp[2]";
connectAttr "IKSplineTailLocator3_MShape.wp" "IKSplineTailCurve_MShape.cp[3]";
connectAttr "IKSplineTailLocator4_MShape.wp" "IKSplineTailCurve_MShape.cp[4]";
connectAttr "IKSplineTailLocator5_MShape.wp" "IKSplineTailCurve_MShape.cp[5]";
connectAttr "MainScaleMultiplyDivide.o" "IKMessure.s";
connectAttr "MainScaleMultiplyDivide.o" "IKScaler.s";
connectAttr "IKScalerTail1DM_M.os" "IKScalerTail1_M.s";
connectAttr "IKScalerTail2DM_M.os" "IKScalerTail2_M.s";
connectAttr "IKScalerTail3DM_M.os" "IKScalerTail3_M.s";
connectAttr "IKScalerTail4DM_M.os" "IKScalerTail4_M.s";
connectAttr "IKScalerTail5DM_M.os" "IKScalerTail5_M.s";
connectAttr "IKScalerTail6DM_M.os" "IKScalerTail6_M.s";
connectAttr "MainScaleMultiplyDivide.o" "FKIKSystem.s";
connectAttr "Main.fkIkVis" "FKIKSystem.v";
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.ctx" "FKIKParentConstraintSplineTail_M.tx"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.cty" "FKIKParentConstraintSplineTail_M.ty"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.ctz" "FKIKParentConstraintSplineTail_M.tz"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.crx" "FKIKParentConstraintSplineTail_M.rx"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.cry" "FKIKParentConstraintSplineTail_M.ry"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.crz" "FKIKParentConstraintSplineTail_M.rz"
		;
connectAttr "FKIKParentConstraintSplineTail_M.ro" "FKIKParentConstraintSplineTail_M_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintSplineTail_M.pim" "FKIKParentConstraintSplineTail_M_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintSplineTail_M.rp" "FKIKParentConstraintSplineTail_M_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintSplineTail_M.rpt" "FKIKParentConstraintSplineTail_M_parentConstraint1.crt"
		;
connectAttr "TailBase_M.t" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tt"
		;
connectAttr "TailBase_M.rp" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].trp"
		;
connectAttr "TailBase_M.rpt" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].trt"
		;
connectAttr "TailBase_M.r" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tr"
		;
connectAttr "TailBase_M.ro" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tro"
		;
connectAttr "TailBase_M.s" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].ts"
		;
connectAttr "TailBase_M.pm" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TailBase_M.jo" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tjo"
		;
connectAttr "TailBase_M.ssc" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tsc"
		;
connectAttr "TailBase_M.is" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tis"
		;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.w0" "FKIKParentConstraintSplineTail_M_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Wing6_R.pim" "Wing6_R_pointConstraint1.cpim";
connectAttr "Wing6_R.rp" "Wing6_R_pointConstraint1.crp";
connectAttr "Wing6_R.rpt" "Wing6_R_pointConstraint1.crt";
connectAttr "FKXWing6_R.t" "Wing6_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing6_R.rp" "Wing6_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing6_R.rpt" "Wing6_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing6_R.pm" "Wing6_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing6_R_pointConstraint1.w0" "Wing6_R_pointConstraint1.tg[0].tw";
connectAttr "Wing6_R.ro" "Wing6_R_orientConstraint1.cro";
connectAttr "Wing6_R.pim" "Wing6_R_orientConstraint1.cpim";
connectAttr "Wing6_R.jo" "Wing6_R_orientConstraint1.cjo";
connectAttr "Wing6_R.is" "Wing6_R_orientConstraint1.is";
connectAttr "FKXWing6_R.r" "Wing6_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing6_R.ro" "Wing6_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing6_R.pm" "Wing6_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing6_R.jo" "Wing6_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing6_R_orientConstraint1.w0" "Wing6_R_orientConstraint1.tg[0].tw";
connectAttr "Wing5_R.pim" "Wing5_R_pointConstraint1.cpim";
connectAttr "Wing5_R.rp" "Wing5_R_pointConstraint1.crp";
connectAttr "Wing5_R.rpt" "Wing5_R_pointConstraint1.crt";
connectAttr "FKXWing5_R.t" "Wing5_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing5_R.rp" "Wing5_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing5_R.rpt" "Wing5_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing5_R.pm" "Wing5_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing5_R_pointConstraint1.w0" "Wing5_R_pointConstraint1.tg[0].tw";
connectAttr "Wing5_R.ro" "Wing5_R_orientConstraint1.cro";
connectAttr "Wing5_R.pim" "Wing5_R_orientConstraint1.cpim";
connectAttr "Wing5_R.jo" "Wing5_R_orientConstraint1.cjo";
connectAttr "Wing5_R.is" "Wing5_R_orientConstraint1.is";
connectAttr "FKXWing5_R.r" "Wing5_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing5_R.ro" "Wing5_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing5_R.pm" "Wing5_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing5_R.jo" "Wing5_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing5_R_orientConstraint1.w0" "Wing5_R_orientConstraint1.tg[0].tw";
connectAttr "Wing4_R.pim" "Wing4_R_pointConstraint1.cpim";
connectAttr "Wing4_R.rp" "Wing4_R_pointConstraint1.crp";
connectAttr "Wing4_R.rpt" "Wing4_R_pointConstraint1.crt";
connectAttr "FKXWing4_R.t" "Wing4_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing4_R.rp" "Wing4_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing4_R.rpt" "Wing4_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing4_R.pm" "Wing4_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing4_R_pointConstraint1.w0" "Wing4_R_pointConstraint1.tg[0].tw";
connectAttr "Wing4_R.ro" "Wing4_R_orientConstraint1.cro";
connectAttr "Wing4_R.pim" "Wing4_R_orientConstraint1.cpim";
connectAttr "Wing4_R.jo" "Wing4_R_orientConstraint1.cjo";
connectAttr "Wing4_R.is" "Wing4_R_orientConstraint1.is";
connectAttr "FKXWing4_R.r" "Wing4_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing4_R.ro" "Wing4_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing4_R.pm" "Wing4_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing4_R.jo" "Wing4_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing4_R_orientConstraint1.w0" "Wing4_R_orientConstraint1.tg[0].tw";
connectAttr "Wing3_R.pim" "Wing3_R_pointConstraint1.cpim";
connectAttr "Wing3_R.rp" "Wing3_R_pointConstraint1.crp";
connectAttr "Wing3_R.rpt" "Wing3_R_pointConstraint1.crt";
connectAttr "FKXWing3_R.t" "Wing3_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing3_R.rp" "Wing3_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing3_R.rpt" "Wing3_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing3_R.pm" "Wing3_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing3_R_pointConstraint1.w0" "Wing3_R_pointConstraint1.tg[0].tw";
connectAttr "Wing3_R.ro" "Wing3_R_orientConstraint1.cro";
connectAttr "Wing3_R.pim" "Wing3_R_orientConstraint1.cpim";
connectAttr "Wing3_R.jo" "Wing3_R_orientConstraint1.cjo";
connectAttr "Wing3_R.is" "Wing3_R_orientConstraint1.is";
connectAttr "FKXWing3_R.r" "Wing3_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing3_R.ro" "Wing3_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing3_R.pm" "Wing3_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing3_R.jo" "Wing3_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing3_R_orientConstraint1.w0" "Wing3_R_orientConstraint1.tg[0].tw";
connectAttr "Wing2_R.pim" "Wing2_R_pointConstraint1.cpim";
connectAttr "Wing2_R.rp" "Wing2_R_pointConstraint1.crp";
connectAttr "Wing2_R.rpt" "Wing2_R_pointConstraint1.crt";
connectAttr "FKXWing2_R.t" "Wing2_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing2_R.rp" "Wing2_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing2_R.rpt" "Wing2_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing2_R.pm" "Wing2_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing2_R_pointConstraint1.w0" "Wing2_R_pointConstraint1.tg[0].tw";
connectAttr "Wing2_R.ro" "Wing2_R_orientConstraint1.cro";
connectAttr "Wing2_R.pim" "Wing2_R_orientConstraint1.cpim";
connectAttr "Wing2_R.jo" "Wing2_R_orientConstraint1.cjo";
connectAttr "Wing2_R.is" "Wing2_R_orientConstraint1.is";
connectAttr "FKXWing2_R.r" "Wing2_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing2_R.ro" "Wing2_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing2_R.pm" "Wing2_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing2_R.jo" "Wing2_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing2_R_orientConstraint1.w0" "Wing2_R_orientConstraint1.tg[0].tw";
connectAttr "Wing1_R.pim" "Wing1_R_pointConstraint1.cpim";
connectAttr "Wing1_R.rp" "Wing1_R_pointConstraint1.crp";
connectAttr "Wing1_R.rpt" "Wing1_R_pointConstraint1.crt";
connectAttr "FKXWing1_R.t" "Wing1_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWing1_R.rp" "Wing1_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWing1_R.rpt" "Wing1_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWing1_R.pm" "Wing1_R_pointConstraint1.tg[0].tpm";
connectAttr "Wing1_R_pointConstraint1.w0" "Wing1_R_pointConstraint1.tg[0].tw";
connectAttr "Wing1_R.ro" "Wing1_R_orientConstraint1.cro";
connectAttr "Wing1_R.pim" "Wing1_R_orientConstraint1.cpim";
connectAttr "Wing1_R.jo" "Wing1_R_orientConstraint1.cjo";
connectAttr "Wing1_R.is" "Wing1_R_orientConstraint1.is";
connectAttr "FKXWing1_R.r" "Wing1_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWing1_R.ro" "Wing1_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWing1_R.pm" "Wing1_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing1_R.jo" "Wing1_R_orientConstraint1.tg[0].tjo";
connectAttr "Wing1_R_orientConstraint1.w0" "Wing1_R_orientConstraint1.tg[0].tw";
connectAttr "WingBase_R.pim" "WingBase_R_pointConstraint1.cpim";
connectAttr "WingBase_R.rp" "WingBase_R_pointConstraint1.crp";
connectAttr "WingBase_R.rpt" "WingBase_R_pointConstraint1.crt";
connectAttr "FKXWingBase_R.t" "WingBase_R_pointConstraint1.tg[0].tt";
connectAttr "FKXWingBase_R.rp" "WingBase_R_pointConstraint1.tg[0].trp";
connectAttr "FKXWingBase_R.rpt" "WingBase_R_pointConstraint1.tg[0].trt";
connectAttr "FKXWingBase_R.pm" "WingBase_R_pointConstraint1.tg[0].tpm";
connectAttr "WingBase_R_pointConstraint1.w0" "WingBase_R_pointConstraint1.tg[0].tw"
		;
connectAttr "WingBase_R.ro" "WingBase_R_orientConstraint1.cro";
connectAttr "WingBase_R.pim" "WingBase_R_orientConstraint1.cpim";
connectAttr "WingBase_R.jo" "WingBase_R_orientConstraint1.cjo";
connectAttr "WingBase_R.is" "WingBase_R_orientConstraint1.is";
connectAttr "FKXWingBase_R.r" "WingBase_R_orientConstraint1.tg[0].tr";
connectAttr "FKXWingBase_R.ro" "WingBase_R_orientConstraint1.tg[0].tro";
connectAttr "FKXWingBase_R.pm" "WingBase_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXWingBase_R.jo" "WingBase_R_orientConstraint1.tg[0].tjo";
connectAttr "WingBase_R_orientConstraint1.w0" "WingBase_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth5_R.pim" "Mouth5_R_pointConstraint1.cpim";
connectAttr "Mouth5_R.rp" "Mouth5_R_pointConstraint1.crp";
connectAttr "Mouth5_R.rpt" "Mouth5_R_pointConstraint1.crt";
connectAttr "FKXMouth5_R.t" "Mouth5_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth5_R.rp" "Mouth5_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth5_R.rpt" "Mouth5_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth5_R.pm" "Mouth5_R_pointConstraint1.tg[0].tpm";
connectAttr "Mouth5_R_pointConstraint1.w0" "Mouth5_R_pointConstraint1.tg[0].tw";
connectAttr "Mouth5_R.ro" "Mouth5_R_orientConstraint1.cro";
connectAttr "Mouth5_R.pim" "Mouth5_R_orientConstraint1.cpim";
connectAttr "Mouth5_R.jo" "Mouth5_R_orientConstraint1.cjo";
connectAttr "Mouth5_R.is" "Mouth5_R_orientConstraint1.is";
connectAttr "FKXMouth5_R.r" "Mouth5_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth5_R.ro" "Mouth5_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth5_R.pm" "Mouth5_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth5_R.jo" "Mouth5_R_orientConstraint1.tg[0].tjo";
connectAttr "Mouth5_R_orientConstraint1.w0" "Mouth5_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth4_R.pim" "Mouth4_R_pointConstraint1.cpim";
connectAttr "Mouth4_R.rp" "Mouth4_R_pointConstraint1.crp";
connectAttr "Mouth4_R.rpt" "Mouth4_R_pointConstraint1.crt";
connectAttr "FKXMouth4_R.t" "Mouth4_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth4_R.rp" "Mouth4_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth4_R.rpt" "Mouth4_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth4_R.pm" "Mouth4_R_pointConstraint1.tg[0].tpm";
connectAttr "Mouth4_R_pointConstraint1.w0" "Mouth4_R_pointConstraint1.tg[0].tw";
connectAttr "Mouth4_R.ro" "Mouth4_R_orientConstraint1.cro";
connectAttr "Mouth4_R.pim" "Mouth4_R_orientConstraint1.cpim";
connectAttr "Mouth4_R.jo" "Mouth4_R_orientConstraint1.cjo";
connectAttr "Mouth4_R.is" "Mouth4_R_orientConstraint1.is";
connectAttr "FKXMouth4_R.r" "Mouth4_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth4_R.ro" "Mouth4_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth4_R.pm" "Mouth4_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth4_R.jo" "Mouth4_R_orientConstraint1.tg[0].tjo";
connectAttr "Mouth4_R_orientConstraint1.w0" "Mouth4_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth3_R.pim" "Mouth3_R_pointConstraint1.cpim";
connectAttr "Mouth3_R.rp" "Mouth3_R_pointConstraint1.crp";
connectAttr "Mouth3_R.rpt" "Mouth3_R_pointConstraint1.crt";
connectAttr "FKXMouth3_R.t" "Mouth3_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth3_R.rp" "Mouth3_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth3_R.rpt" "Mouth3_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth3_R.pm" "Mouth3_R_pointConstraint1.tg[0].tpm";
connectAttr "Mouth3_R_pointConstraint1.w0" "Mouth3_R_pointConstraint1.tg[0].tw";
connectAttr "Mouth3_R.ro" "Mouth3_R_orientConstraint1.cro";
connectAttr "Mouth3_R.pim" "Mouth3_R_orientConstraint1.cpim";
connectAttr "Mouth3_R.jo" "Mouth3_R_orientConstraint1.cjo";
connectAttr "Mouth3_R.is" "Mouth3_R_orientConstraint1.is";
connectAttr "FKXMouth3_R.r" "Mouth3_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth3_R.ro" "Mouth3_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth3_R.pm" "Mouth3_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth3_R.jo" "Mouth3_R_orientConstraint1.tg[0].tjo";
connectAttr "Mouth3_R_orientConstraint1.w0" "Mouth3_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth2_R.pim" "Mouth2_R_pointConstraint1.cpim";
connectAttr "Mouth2_R.rp" "Mouth2_R_pointConstraint1.crp";
connectAttr "Mouth2_R.rpt" "Mouth2_R_pointConstraint1.crt";
connectAttr "FKXMouth2_R.t" "Mouth2_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth2_R.rp" "Mouth2_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth2_R.rpt" "Mouth2_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth2_R.pm" "Mouth2_R_pointConstraint1.tg[0].tpm";
connectAttr "Mouth2_R_pointConstraint1.w0" "Mouth2_R_pointConstraint1.tg[0].tw";
connectAttr "Mouth2_R.ro" "Mouth2_R_orientConstraint1.cro";
connectAttr "Mouth2_R.pim" "Mouth2_R_orientConstraint1.cpim";
connectAttr "Mouth2_R.jo" "Mouth2_R_orientConstraint1.cjo";
connectAttr "Mouth2_R.is" "Mouth2_R_orientConstraint1.is";
connectAttr "FKXMouth2_R.r" "Mouth2_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth2_R.ro" "Mouth2_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth2_R.pm" "Mouth2_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth2_R.jo" "Mouth2_R_orientConstraint1.tg[0].tjo";
connectAttr "Mouth2_R_orientConstraint1.w0" "Mouth2_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth1_R.pim" "Mouth1_R_pointConstraint1.cpim";
connectAttr "Mouth1_R.rp" "Mouth1_R_pointConstraint1.crp";
connectAttr "Mouth1_R.rpt" "Mouth1_R_pointConstraint1.crt";
connectAttr "FKXMouth1_R.t" "Mouth1_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth1_R.rp" "Mouth1_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth1_R.rpt" "Mouth1_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth1_R.pm" "Mouth1_R_pointConstraint1.tg[0].tpm";
connectAttr "Mouth1_R_pointConstraint1.w0" "Mouth1_R_pointConstraint1.tg[0].tw";
connectAttr "Mouth1_R.ro" "Mouth1_R_orientConstraint1.cro";
connectAttr "Mouth1_R.pim" "Mouth1_R_orientConstraint1.cpim";
connectAttr "Mouth1_R.jo" "Mouth1_R_orientConstraint1.cjo";
connectAttr "Mouth1_R.is" "Mouth1_R_orientConstraint1.is";
connectAttr "FKXMouth1_R.r" "Mouth1_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth1_R.ro" "Mouth1_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth1_R.pm" "Mouth1_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth1_R.jo" "Mouth1_R_orientConstraint1.tg[0].tjo";
connectAttr "Mouth1_R_orientConstraint1.w0" "Mouth1_R_orientConstraint1.tg[0].tw"
		;
connectAttr "MouthBase_R.pim" "MouthBase_R_pointConstraint1.cpim";
connectAttr "MouthBase_R.rp" "MouthBase_R_pointConstraint1.crp";
connectAttr "MouthBase_R.rpt" "MouthBase_R_pointConstraint1.crt";
connectAttr "FKXMouthBase_R.t" "MouthBase_R_pointConstraint1.tg[0].tt";
connectAttr "FKXMouthBase_R.rp" "MouthBase_R_pointConstraint1.tg[0].trp";
connectAttr "FKXMouthBase_R.rpt" "MouthBase_R_pointConstraint1.tg[0].trt";
connectAttr "FKXMouthBase_R.pm" "MouthBase_R_pointConstraint1.tg[0].tpm";
connectAttr "MouthBase_R_pointConstraint1.w0" "MouthBase_R_pointConstraint1.tg[0].tw"
		;
connectAttr "MouthBase_R.ro" "MouthBase_R_orientConstraint1.cro";
connectAttr "MouthBase_R.pim" "MouthBase_R_orientConstraint1.cpim";
connectAttr "MouthBase_R.jo" "MouthBase_R_orientConstraint1.cjo";
connectAttr "MouthBase_R.is" "MouthBase_R_orientConstraint1.is";
connectAttr "FKXMouthBase_R.r" "MouthBase_R_orientConstraint1.tg[0].tr";
connectAttr "FKXMouthBase_R.ro" "MouthBase_R_orientConstraint1.tg[0].tro";
connectAttr "FKXMouthBase_R.pm" "MouthBase_R_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouthBase_R.jo" "MouthBase_R_orientConstraint1.tg[0].tjo";
connectAttr "MouthBase_R_orientConstraint1.w0" "MouthBase_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Tail6_M.pim" "Tail6_M_pointConstraint1.cpim";
connectAttr "Tail6_M.rp" "Tail6_M_pointConstraint1.crp";
connectAttr "Tail6_M.rpt" "Tail6_M_pointConstraint1.crt";
connectAttr "FKXTail6_M.t" "Tail6_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail6_M.rp" "Tail6_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail6_M.rpt" "Tail6_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail6_M.pm" "Tail6_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail6_M_pointConstraint1.w0" "Tail6_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail6_M.t" "Tail6_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail6_M.rp" "Tail6_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail6_M.rpt" "Tail6_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail6_M.pm" "Tail6_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail6_M_pointConstraint1.w1" "Tail6_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail6_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail6_M_pointConstraint1.w1"
		;
connectAttr "Tail6_M.ro" "Tail6_M_orientConstraint1.cro";
connectAttr "Tail6_M.pim" "Tail6_M_orientConstraint1.cpim";
connectAttr "Tail6_M.jo" "Tail6_M_orientConstraint1.cjo";
connectAttr "Tail6_M.is" "Tail6_M_orientConstraint1.is";
connectAttr "FKXTail6_M.r" "Tail6_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail6_M.ro" "Tail6_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail6_M.pm" "Tail6_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail6_M.jo" "Tail6_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail6_M_orientConstraint1.w0" "Tail6_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail6_M.r" "Tail6_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail6_M.ro" "Tail6_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail6_M.pm" "Tail6_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail6_M.jo" "Tail6_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail6_M_orientConstraint1.w1" "Tail6_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail6_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail6_M_orientConstraint1.w1"
		;
connectAttr "Tail5_M.pim" "Tail5_M_pointConstraint1.cpim";
connectAttr "Tail5_M.rp" "Tail5_M_pointConstraint1.crp";
connectAttr "Tail5_M.rpt" "Tail5_M_pointConstraint1.crt";
connectAttr "FKXTail5_M.t" "Tail5_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail5_M.rp" "Tail5_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail5_M.rpt" "Tail5_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail5_M.pm" "Tail5_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail5_M_pointConstraint1.w0" "Tail5_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail5_M.t" "Tail5_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail5_M.rp" "Tail5_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail5_M.rpt" "Tail5_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail5_M.pm" "Tail5_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail5_M_pointConstraint1.w1" "Tail5_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail5_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail5_M_pointConstraint1.w1"
		;
connectAttr "Tail5_M.ro" "Tail5_M_orientConstraint1.cro";
connectAttr "Tail5_M.pim" "Tail5_M_orientConstraint1.cpim";
connectAttr "Tail5_M.jo" "Tail5_M_orientConstraint1.cjo";
connectAttr "Tail5_M.is" "Tail5_M_orientConstraint1.is";
connectAttr "FKXTail5_M.r" "Tail5_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail5_M.ro" "Tail5_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail5_M.pm" "Tail5_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail5_M.jo" "Tail5_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail5_M_orientConstraint1.w0" "Tail5_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail5_M.r" "Tail5_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail5_M.ro" "Tail5_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail5_M.pm" "Tail5_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail5_M.jo" "Tail5_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail5_M_orientConstraint1.w1" "Tail5_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail5_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail5_M_orientConstraint1.w1"
		;
connectAttr "Tail4_M.pim" "Tail4_M_pointConstraint1.cpim";
connectAttr "Tail4_M.rp" "Tail4_M_pointConstraint1.crp";
connectAttr "Tail4_M.rpt" "Tail4_M_pointConstraint1.crt";
connectAttr "FKXTail4_M.t" "Tail4_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail4_M.rp" "Tail4_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail4_M.rpt" "Tail4_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail4_M.pm" "Tail4_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail4_M_pointConstraint1.w0" "Tail4_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail4_M.t" "Tail4_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail4_M.rp" "Tail4_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail4_M.rpt" "Tail4_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail4_M.pm" "Tail4_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail4_M_pointConstraint1.w1" "Tail4_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail4_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail4_M_pointConstraint1.w1"
		;
connectAttr "Tail4_M.ro" "Tail4_M_orientConstraint1.cro";
connectAttr "Tail4_M.pim" "Tail4_M_orientConstraint1.cpim";
connectAttr "Tail4_M.jo" "Tail4_M_orientConstraint1.cjo";
connectAttr "Tail4_M.is" "Tail4_M_orientConstraint1.is";
connectAttr "FKXTail4_M.r" "Tail4_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail4_M.ro" "Tail4_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail4_M.pm" "Tail4_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail4_M.jo" "Tail4_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail4_M_orientConstraint1.w0" "Tail4_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail4_M.r" "Tail4_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail4_M.ro" "Tail4_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail4_M.pm" "Tail4_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail4_M.jo" "Tail4_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail4_M_orientConstraint1.w1" "Tail4_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail4_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail4_M_orientConstraint1.w1"
		;
connectAttr "Tail3_M.pim" "Tail3_M_pointConstraint1.cpim";
connectAttr "Tail3_M.rp" "Tail3_M_pointConstraint1.crp";
connectAttr "Tail3_M.rpt" "Tail3_M_pointConstraint1.crt";
connectAttr "FKXTail3_M.t" "Tail3_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail3_M.rp" "Tail3_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail3_M.rpt" "Tail3_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail3_M.pm" "Tail3_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail3_M_pointConstraint1.w0" "Tail3_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail3_M.t" "Tail3_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail3_M.rp" "Tail3_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail3_M.rpt" "Tail3_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail3_M.pm" "Tail3_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail3_M_pointConstraint1.w1" "Tail3_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail3_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail3_M_pointConstraint1.w1"
		;
connectAttr "Tail3_M.ro" "Tail3_M_orientConstraint1.cro";
connectAttr "Tail3_M.pim" "Tail3_M_orientConstraint1.cpim";
connectAttr "Tail3_M.jo" "Tail3_M_orientConstraint1.cjo";
connectAttr "Tail3_M.is" "Tail3_M_orientConstraint1.is";
connectAttr "FKXTail3_M.r" "Tail3_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail3_M.ro" "Tail3_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail3_M.pm" "Tail3_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail3_M.jo" "Tail3_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail3_M_orientConstraint1.w0" "Tail3_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail3_M.r" "Tail3_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail3_M.ro" "Tail3_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail3_M.pm" "Tail3_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail3_M.jo" "Tail3_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail3_M_orientConstraint1.w1" "Tail3_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail3_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail3_M_orientConstraint1.w1"
		;
connectAttr "Tail2_M.pim" "Tail2_M_pointConstraint1.cpim";
connectAttr "Tail2_M.rp" "Tail2_M_pointConstraint1.crp";
connectAttr "Tail2_M.rpt" "Tail2_M_pointConstraint1.crt";
connectAttr "FKXTail2_M.t" "Tail2_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail2_M.rp" "Tail2_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail2_M.rpt" "Tail2_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail2_M.pm" "Tail2_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail2_M_pointConstraint1.w0" "Tail2_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail2_M.t" "Tail2_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail2_M.rp" "Tail2_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail2_M.rpt" "Tail2_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail2_M.pm" "Tail2_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail2_M_pointConstraint1.w1" "Tail2_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail2_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail2_M_pointConstraint1.w1"
		;
connectAttr "Tail2_M.ro" "Tail2_M_orientConstraint1.cro";
connectAttr "Tail2_M.pim" "Tail2_M_orientConstraint1.cpim";
connectAttr "Tail2_M.jo" "Tail2_M_orientConstraint1.cjo";
connectAttr "Tail2_M.is" "Tail2_M_orientConstraint1.is";
connectAttr "FKXTail2_M.r" "Tail2_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail2_M.ro" "Tail2_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail2_M.pm" "Tail2_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail2_M.jo" "Tail2_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail2_M_orientConstraint1.w0" "Tail2_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail2_M.r" "Tail2_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail2_M.ro" "Tail2_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail2_M.pm" "Tail2_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail2_M.jo" "Tail2_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail2_M_orientConstraint1.w1" "Tail2_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail2_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail2_M_orientConstraint1.w1"
		;
connectAttr "Tail1_M.pim" "Tail1_M_pointConstraint1.cpim";
connectAttr "Tail1_M.rp" "Tail1_M_pointConstraint1.crp";
connectAttr "Tail1_M.rpt" "Tail1_M_pointConstraint1.crt";
connectAttr "FKXTail1_M.t" "Tail1_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTail1_M.rp" "Tail1_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTail1_M.rpt" "Tail1_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTail1_M.pm" "Tail1_M_pointConstraint1.tg[0].tpm";
connectAttr "Tail1_M_pointConstraint1.w0" "Tail1_M_pointConstraint1.tg[0].tw";
connectAttr "IKXTail1_M.t" "Tail1_M_pointConstraint1.tg[1].tt";
connectAttr "IKXTail1_M.rp" "Tail1_M_pointConstraint1.tg[1].trp";
connectAttr "IKXTail1_M.rpt" "Tail1_M_pointConstraint1.tg[1].trt";
connectAttr "IKXTail1_M.pm" "Tail1_M_pointConstraint1.tg[1].tpm";
connectAttr "Tail1_M_pointConstraint1.w1" "Tail1_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail1_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail1_M_pointConstraint1.w1"
		;
connectAttr "Tail1_M.ro" "Tail1_M_orientConstraint1.cro";
connectAttr "Tail1_M.pim" "Tail1_M_orientConstraint1.cpim";
connectAttr "Tail1_M.jo" "Tail1_M_orientConstraint1.cjo";
connectAttr "Tail1_M.is" "Tail1_M_orientConstraint1.is";
connectAttr "FKXTail1_M.r" "Tail1_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTail1_M.ro" "Tail1_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTail1_M.pm" "Tail1_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTail1_M.jo" "Tail1_M_orientConstraint1.tg[0].tjo";
connectAttr "Tail1_M_orientConstraint1.w0" "Tail1_M_orientConstraint1.tg[0].tw";
connectAttr "IKXTail1_M.r" "Tail1_M_orientConstraint1.tg[1].tr";
connectAttr "IKXTail1_M.ro" "Tail1_M_orientConstraint1.tg[1].tro";
connectAttr "IKXTail1_M.pm" "Tail1_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXTail1_M.jo" "Tail1_M_orientConstraint1.tg[1].tjo";
connectAttr "Tail1_M_orientConstraint1.w1" "Tail1_M_orientConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineTail_MReverse.ox" "Tail1_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "Tail1_M_orientConstraint1.w1"
		;
connectAttr "TailBase_M.pim" "TailBase_M_pointConstraint1.cpim";
connectAttr "TailBase_M.rp" "TailBase_M_pointConstraint1.crp";
connectAttr "TailBase_M.rpt" "TailBase_M_pointConstraint1.crt";
connectAttr "FKXTailBase_M.t" "TailBase_M_pointConstraint1.tg[0].tt";
connectAttr "FKXTailBase_M.rp" "TailBase_M_pointConstraint1.tg[0].trp";
connectAttr "FKXTailBase_M.rpt" "TailBase_M_pointConstraint1.tg[0].trt";
connectAttr "FKXTailBase_M.pm" "TailBase_M_pointConstraint1.tg[0].tpm";
connectAttr "TailBase_M_pointConstraint1.w0" "TailBase_M_pointConstraint1.tg[0].tw"
		;
connectAttr "TailBase_M.ro" "TailBase_M_orientConstraint1.cro";
connectAttr "TailBase_M.pim" "TailBase_M_orientConstraint1.cpim";
connectAttr "TailBase_M.jo" "TailBase_M_orientConstraint1.cjo";
connectAttr "TailBase_M.is" "TailBase_M_orientConstraint1.is";
connectAttr "FKXTailBase_M.r" "TailBase_M_orientConstraint1.tg[0].tr";
connectAttr "FKXTailBase_M.ro" "TailBase_M_orientConstraint1.tg[0].tro";
connectAttr "FKXTailBase_M.pm" "TailBase_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXTailBase_M.jo" "TailBase_M_orientConstraint1.tg[0].tjo";
connectAttr "TailBase_M_orientConstraint1.w0" "TailBase_M_orientConstraint1.tg[0].tw"
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
connectAttr "Wing6_L.pim" "Wing6_L_pointConstraint1.cpim";
connectAttr "Wing6_L.rp" "Wing6_L_pointConstraint1.crp";
connectAttr "Wing6_L.rpt" "Wing6_L_pointConstraint1.crt";
connectAttr "FKXWing6_L.t" "Wing6_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing6_L.rp" "Wing6_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing6_L.rpt" "Wing6_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing6_L.pm" "Wing6_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing6_L_pointConstraint1.w0" "Wing6_L_pointConstraint1.tg[0].tw";
connectAttr "Wing6_L.ro" "Wing6_L_orientConstraint1.cro";
connectAttr "Wing6_L.pim" "Wing6_L_orientConstraint1.cpim";
connectAttr "Wing6_L.jo" "Wing6_L_orientConstraint1.cjo";
connectAttr "Wing6_L.is" "Wing6_L_orientConstraint1.is";
connectAttr "FKXWing6_L.r" "Wing6_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing6_L.ro" "Wing6_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing6_L.pm" "Wing6_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing6_L.jo" "Wing6_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing6_L_orientConstraint1.w0" "Wing6_L_orientConstraint1.tg[0].tw";
connectAttr "Wing5_L.pim" "Wing5_L_pointConstraint1.cpim";
connectAttr "Wing5_L.rp" "Wing5_L_pointConstraint1.crp";
connectAttr "Wing5_L.rpt" "Wing5_L_pointConstraint1.crt";
connectAttr "FKXWing5_L.t" "Wing5_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing5_L.rp" "Wing5_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing5_L.rpt" "Wing5_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing5_L.pm" "Wing5_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing5_L_pointConstraint1.w0" "Wing5_L_pointConstraint1.tg[0].tw";
connectAttr "Wing5_L.ro" "Wing5_L_orientConstraint1.cro";
connectAttr "Wing5_L.pim" "Wing5_L_orientConstraint1.cpim";
connectAttr "Wing5_L.jo" "Wing5_L_orientConstraint1.cjo";
connectAttr "Wing5_L.is" "Wing5_L_orientConstraint1.is";
connectAttr "FKXWing5_L.r" "Wing5_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing5_L.ro" "Wing5_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing5_L.pm" "Wing5_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing5_L.jo" "Wing5_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing5_L_orientConstraint1.w0" "Wing5_L_orientConstraint1.tg[0].tw";
connectAttr "Wing4_L.pim" "Wing4_L_pointConstraint1.cpim";
connectAttr "Wing4_L.rp" "Wing4_L_pointConstraint1.crp";
connectAttr "Wing4_L.rpt" "Wing4_L_pointConstraint1.crt";
connectAttr "FKXWing4_L.t" "Wing4_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing4_L.rp" "Wing4_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing4_L.rpt" "Wing4_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing4_L.pm" "Wing4_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing4_L_pointConstraint1.w0" "Wing4_L_pointConstraint1.tg[0].tw";
connectAttr "Wing4_L.ro" "Wing4_L_orientConstraint1.cro";
connectAttr "Wing4_L.pim" "Wing4_L_orientConstraint1.cpim";
connectAttr "Wing4_L.jo" "Wing4_L_orientConstraint1.cjo";
connectAttr "Wing4_L.is" "Wing4_L_orientConstraint1.is";
connectAttr "FKXWing4_L.r" "Wing4_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing4_L.ro" "Wing4_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing4_L.pm" "Wing4_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing4_L.jo" "Wing4_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing4_L_orientConstraint1.w0" "Wing4_L_orientConstraint1.tg[0].tw";
connectAttr "Wing3_L.pim" "Wing3_L_pointConstraint1.cpim";
connectAttr "Wing3_L.rp" "Wing3_L_pointConstraint1.crp";
connectAttr "Wing3_L.rpt" "Wing3_L_pointConstraint1.crt";
connectAttr "FKXWing3_L.t" "Wing3_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing3_L.rp" "Wing3_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing3_L.rpt" "Wing3_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing3_L.pm" "Wing3_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing3_L_pointConstraint1.w0" "Wing3_L_pointConstraint1.tg[0].tw";
connectAttr "Wing3_L.ro" "Wing3_L_orientConstraint1.cro";
connectAttr "Wing3_L.pim" "Wing3_L_orientConstraint1.cpim";
connectAttr "Wing3_L.jo" "Wing3_L_orientConstraint1.cjo";
connectAttr "Wing3_L.is" "Wing3_L_orientConstraint1.is";
connectAttr "FKXWing3_L.r" "Wing3_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing3_L.ro" "Wing3_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing3_L.pm" "Wing3_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing3_L.jo" "Wing3_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing3_L_orientConstraint1.w0" "Wing3_L_orientConstraint1.tg[0].tw";
connectAttr "Wing2_L.pim" "Wing2_L_pointConstraint1.cpim";
connectAttr "Wing2_L.rp" "Wing2_L_pointConstraint1.crp";
connectAttr "Wing2_L.rpt" "Wing2_L_pointConstraint1.crt";
connectAttr "FKXWing2_L.t" "Wing2_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing2_L.rp" "Wing2_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing2_L.rpt" "Wing2_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing2_L.pm" "Wing2_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing2_L_pointConstraint1.w0" "Wing2_L_pointConstraint1.tg[0].tw";
connectAttr "Wing2_L.ro" "Wing2_L_orientConstraint1.cro";
connectAttr "Wing2_L.pim" "Wing2_L_orientConstraint1.cpim";
connectAttr "Wing2_L.jo" "Wing2_L_orientConstraint1.cjo";
connectAttr "Wing2_L.is" "Wing2_L_orientConstraint1.is";
connectAttr "FKXWing2_L.r" "Wing2_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing2_L.ro" "Wing2_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing2_L.pm" "Wing2_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing2_L.jo" "Wing2_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing2_L_orientConstraint1.w0" "Wing2_L_orientConstraint1.tg[0].tw";
connectAttr "Wing1_L.pim" "Wing1_L_pointConstraint1.cpim";
connectAttr "Wing1_L.rp" "Wing1_L_pointConstraint1.crp";
connectAttr "Wing1_L.rpt" "Wing1_L_pointConstraint1.crt";
connectAttr "FKXWing1_L.t" "Wing1_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWing1_L.rp" "Wing1_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWing1_L.rpt" "Wing1_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWing1_L.pm" "Wing1_L_pointConstraint1.tg[0].tpm";
connectAttr "Wing1_L_pointConstraint1.w0" "Wing1_L_pointConstraint1.tg[0].tw";
connectAttr "Wing1_L.ro" "Wing1_L_orientConstraint1.cro";
connectAttr "Wing1_L.pim" "Wing1_L_orientConstraint1.cpim";
connectAttr "Wing1_L.jo" "Wing1_L_orientConstraint1.cjo";
connectAttr "Wing1_L.is" "Wing1_L_orientConstraint1.is";
connectAttr "FKXWing1_L.r" "Wing1_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWing1_L.ro" "Wing1_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWing1_L.pm" "Wing1_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWing1_L.jo" "Wing1_L_orientConstraint1.tg[0].tjo";
connectAttr "Wing1_L_orientConstraint1.w0" "Wing1_L_orientConstraint1.tg[0].tw";
connectAttr "WingBase_L.pim" "WingBase_L_pointConstraint1.cpim";
connectAttr "WingBase_L.rp" "WingBase_L_pointConstraint1.crp";
connectAttr "WingBase_L.rpt" "WingBase_L_pointConstraint1.crt";
connectAttr "FKXWingBase_L.t" "WingBase_L_pointConstraint1.tg[0].tt";
connectAttr "FKXWingBase_L.rp" "WingBase_L_pointConstraint1.tg[0].trp";
connectAttr "FKXWingBase_L.rpt" "WingBase_L_pointConstraint1.tg[0].trt";
connectAttr "FKXWingBase_L.pm" "WingBase_L_pointConstraint1.tg[0].tpm";
connectAttr "WingBase_L_pointConstraint1.w0" "WingBase_L_pointConstraint1.tg[0].tw"
		;
connectAttr "WingBase_L.ro" "WingBase_L_orientConstraint1.cro";
connectAttr "WingBase_L.pim" "WingBase_L_orientConstraint1.cpim";
connectAttr "WingBase_L.jo" "WingBase_L_orientConstraint1.cjo";
connectAttr "WingBase_L.is" "WingBase_L_orientConstraint1.is";
connectAttr "FKXWingBase_L.r" "WingBase_L_orientConstraint1.tg[0].tr";
connectAttr "FKXWingBase_L.ro" "WingBase_L_orientConstraint1.tg[0].tro";
connectAttr "FKXWingBase_L.pm" "WingBase_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXWingBase_L.jo" "WingBase_L_orientConstraint1.tg[0].tjo";
connectAttr "WingBase_L_orientConstraint1.w0" "WingBase_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth5_L.pim" "Mouth5_L_pointConstraint1.cpim";
connectAttr "Mouth5_L.rp" "Mouth5_L_pointConstraint1.crp";
connectAttr "Mouth5_L.rpt" "Mouth5_L_pointConstraint1.crt";
connectAttr "FKXMouth5_L.t" "Mouth5_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth5_L.rp" "Mouth5_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth5_L.rpt" "Mouth5_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth5_L.pm" "Mouth5_L_pointConstraint1.tg[0].tpm";
connectAttr "Mouth5_L_pointConstraint1.w0" "Mouth5_L_pointConstraint1.tg[0].tw";
connectAttr "Mouth5_L.ro" "Mouth5_L_orientConstraint1.cro";
connectAttr "Mouth5_L.pim" "Mouth5_L_orientConstraint1.cpim";
connectAttr "Mouth5_L.jo" "Mouth5_L_orientConstraint1.cjo";
connectAttr "Mouth5_L.is" "Mouth5_L_orientConstraint1.is";
connectAttr "FKXMouth5_L.r" "Mouth5_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth5_L.ro" "Mouth5_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth5_L.pm" "Mouth5_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth5_L.jo" "Mouth5_L_orientConstraint1.tg[0].tjo";
connectAttr "Mouth5_L_orientConstraint1.w0" "Mouth5_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth4_L.pim" "Mouth4_L_pointConstraint1.cpim";
connectAttr "Mouth4_L.rp" "Mouth4_L_pointConstraint1.crp";
connectAttr "Mouth4_L.rpt" "Mouth4_L_pointConstraint1.crt";
connectAttr "FKXMouth4_L.t" "Mouth4_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth4_L.rp" "Mouth4_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth4_L.rpt" "Mouth4_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth4_L.pm" "Mouth4_L_pointConstraint1.tg[0].tpm";
connectAttr "Mouth4_L_pointConstraint1.w0" "Mouth4_L_pointConstraint1.tg[0].tw";
connectAttr "Mouth4_L.ro" "Mouth4_L_orientConstraint1.cro";
connectAttr "Mouth4_L.pim" "Mouth4_L_orientConstraint1.cpim";
connectAttr "Mouth4_L.jo" "Mouth4_L_orientConstraint1.cjo";
connectAttr "Mouth4_L.is" "Mouth4_L_orientConstraint1.is";
connectAttr "FKXMouth4_L.r" "Mouth4_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth4_L.ro" "Mouth4_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth4_L.pm" "Mouth4_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth4_L.jo" "Mouth4_L_orientConstraint1.tg[0].tjo";
connectAttr "Mouth4_L_orientConstraint1.w0" "Mouth4_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth3_L.pim" "Mouth3_L_pointConstraint1.cpim";
connectAttr "Mouth3_L.rp" "Mouth3_L_pointConstraint1.crp";
connectAttr "Mouth3_L.rpt" "Mouth3_L_pointConstraint1.crt";
connectAttr "FKXMouth3_L.t" "Mouth3_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth3_L.rp" "Mouth3_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth3_L.rpt" "Mouth3_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth3_L.pm" "Mouth3_L_pointConstraint1.tg[0].tpm";
connectAttr "Mouth3_L_pointConstraint1.w0" "Mouth3_L_pointConstraint1.tg[0].tw";
connectAttr "Mouth3_L.ro" "Mouth3_L_orientConstraint1.cro";
connectAttr "Mouth3_L.pim" "Mouth3_L_orientConstraint1.cpim";
connectAttr "Mouth3_L.jo" "Mouth3_L_orientConstraint1.cjo";
connectAttr "Mouth3_L.is" "Mouth3_L_orientConstraint1.is";
connectAttr "FKXMouth3_L.r" "Mouth3_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth3_L.ro" "Mouth3_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth3_L.pm" "Mouth3_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth3_L.jo" "Mouth3_L_orientConstraint1.tg[0].tjo";
connectAttr "Mouth3_L_orientConstraint1.w0" "Mouth3_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth2_L.pim" "Mouth2_L_pointConstraint1.cpim";
connectAttr "Mouth2_L.rp" "Mouth2_L_pointConstraint1.crp";
connectAttr "Mouth2_L.rpt" "Mouth2_L_pointConstraint1.crt";
connectAttr "FKXMouth2_L.t" "Mouth2_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth2_L.rp" "Mouth2_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth2_L.rpt" "Mouth2_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth2_L.pm" "Mouth2_L_pointConstraint1.tg[0].tpm";
connectAttr "Mouth2_L_pointConstraint1.w0" "Mouth2_L_pointConstraint1.tg[0].tw";
connectAttr "Mouth2_L.ro" "Mouth2_L_orientConstraint1.cro";
connectAttr "Mouth2_L.pim" "Mouth2_L_orientConstraint1.cpim";
connectAttr "Mouth2_L.jo" "Mouth2_L_orientConstraint1.cjo";
connectAttr "Mouth2_L.is" "Mouth2_L_orientConstraint1.is";
connectAttr "FKXMouth2_L.r" "Mouth2_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth2_L.ro" "Mouth2_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth2_L.pm" "Mouth2_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth2_L.jo" "Mouth2_L_orientConstraint1.tg[0].tjo";
connectAttr "Mouth2_L_orientConstraint1.w0" "Mouth2_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Mouth1_L.pim" "Mouth1_L_pointConstraint1.cpim";
connectAttr "Mouth1_L.rp" "Mouth1_L_pointConstraint1.crp";
connectAttr "Mouth1_L.rpt" "Mouth1_L_pointConstraint1.crt";
connectAttr "FKXMouth1_L.t" "Mouth1_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouth1_L.rp" "Mouth1_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouth1_L.rpt" "Mouth1_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouth1_L.pm" "Mouth1_L_pointConstraint1.tg[0].tpm";
connectAttr "Mouth1_L_pointConstraint1.w0" "Mouth1_L_pointConstraint1.tg[0].tw";
connectAttr "Mouth1_L.ro" "Mouth1_L_orientConstraint1.cro";
connectAttr "Mouth1_L.pim" "Mouth1_L_orientConstraint1.cpim";
connectAttr "Mouth1_L.jo" "Mouth1_L_orientConstraint1.cjo";
connectAttr "Mouth1_L.is" "Mouth1_L_orientConstraint1.is";
connectAttr "FKXMouth1_L.r" "Mouth1_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouth1_L.ro" "Mouth1_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouth1_L.pm" "Mouth1_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouth1_L.jo" "Mouth1_L_orientConstraint1.tg[0].tjo";
connectAttr "Mouth1_L_orientConstraint1.w0" "Mouth1_L_orientConstraint1.tg[0].tw"
		;
connectAttr "MouthBase_L.pim" "MouthBase_L_pointConstraint1.cpim";
connectAttr "MouthBase_L.rp" "MouthBase_L_pointConstraint1.crp";
connectAttr "MouthBase_L.rpt" "MouthBase_L_pointConstraint1.crt";
connectAttr "FKXMouthBase_L.t" "MouthBase_L_pointConstraint1.tg[0].tt";
connectAttr "FKXMouthBase_L.rp" "MouthBase_L_pointConstraint1.tg[0].trp";
connectAttr "FKXMouthBase_L.rpt" "MouthBase_L_pointConstraint1.tg[0].trt";
connectAttr "FKXMouthBase_L.pm" "MouthBase_L_pointConstraint1.tg[0].tpm";
connectAttr "MouthBase_L_pointConstraint1.w0" "MouthBase_L_pointConstraint1.tg[0].tw"
		;
connectAttr "MouthBase_L.ro" "MouthBase_L_orientConstraint1.cro";
connectAttr "MouthBase_L.pim" "MouthBase_L_orientConstraint1.cpim";
connectAttr "MouthBase_L.jo" "MouthBase_L_orientConstraint1.cjo";
connectAttr "MouthBase_L.is" "MouthBase_L_orientConstraint1.is";
connectAttr "FKXMouthBase_L.r" "MouthBase_L_orientConstraint1.tg[0].tr";
connectAttr "FKXMouthBase_L.ro" "MouthBase_L_orientConstraint1.tg[0].tro";
connectAttr "FKXMouthBase_L.pm" "MouthBase_L_orientConstraint1.tg[0].tpm";
connectAttr "FKXMouthBase_L.jo" "MouthBase_L_orientConstraint1.tg[0].tjo";
connectAttr "MouthBase_L_orientConstraint1.w0" "MouthBase_L_orientConstraint1.tg[0].tw"
		;
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
connectAttr "Root_M.s" "WingBase_R.is";
connectAttr "FKWingBase_R.sx" "WingBase_R.sx";
connectAttr "FKWingBase_R.sy" "WingBase_R.sy";
connectAttr "FKWingBase_R.sz" "WingBase_R.sz";
connectAttr "WingBase_R_orientConstraint1.crx" "WingBase_R.rx";
connectAttr "WingBase_R_orientConstraint1.cry" "WingBase_R.ry";
connectAttr "WingBase_R_orientConstraint1.crz" "WingBase_R.rz";
connectAttr "WingBase_R_pointConstraint1.ctx" "WingBase_R.tx";
connectAttr "WingBase_R_pointConstraint1.cty" "WingBase_R.ty";
connectAttr "WingBase_R_pointConstraint1.ctz" "WingBase_R.tz";
connectAttr "WingBase_R.s" "Wing1_R.is";
connectAttr "FKWing1_R.sx" "Wing1_R.sx";
connectAttr "FKWing1_R.sy" "Wing1_R.sy";
connectAttr "FKWing1_R.sz" "Wing1_R.sz";
connectAttr "Wing1_R_orientConstraint1.crx" "Wing1_R.rx";
connectAttr "Wing1_R_orientConstraint1.cry" "Wing1_R.ry";
connectAttr "Wing1_R_orientConstraint1.crz" "Wing1_R.rz";
connectAttr "Wing1_R_pointConstraint1.ctx" "Wing1_R.tx";
connectAttr "Wing1_R_pointConstraint1.cty" "Wing1_R.ty";
connectAttr "Wing1_R_pointConstraint1.ctz" "Wing1_R.tz";
connectAttr "Wing1_R.s" "Wing2_R.is";
connectAttr "FKWing2_R.sx" "Wing2_R.sx";
connectAttr "FKWing2_R.sy" "Wing2_R.sy";
connectAttr "FKWing2_R.sz" "Wing2_R.sz";
connectAttr "Wing2_R_orientConstraint1.crx" "Wing2_R.rx";
connectAttr "Wing2_R_orientConstraint1.cry" "Wing2_R.ry";
connectAttr "Wing2_R_orientConstraint1.crz" "Wing2_R.rz";
connectAttr "Wing2_R_pointConstraint1.ctx" "Wing2_R.tx";
connectAttr "Wing2_R_pointConstraint1.cty" "Wing2_R.ty";
connectAttr "Wing2_R_pointConstraint1.ctz" "Wing2_R.tz";
connectAttr "Wing2_R.s" "Wing3_R.is";
connectAttr "FKWing3_R.sx" "Wing3_R.sx";
connectAttr "FKWing3_R.sy" "Wing3_R.sy";
connectAttr "FKWing3_R.sz" "Wing3_R.sz";
connectAttr "Wing3_R_orientConstraint1.crx" "Wing3_R.rx";
connectAttr "Wing3_R_orientConstraint1.cry" "Wing3_R.ry";
connectAttr "Wing3_R_orientConstraint1.crz" "Wing3_R.rz";
connectAttr "Wing3_R_pointConstraint1.ctx" "Wing3_R.tx";
connectAttr "Wing3_R_pointConstraint1.cty" "Wing3_R.ty";
connectAttr "Wing3_R_pointConstraint1.ctz" "Wing3_R.tz";
connectAttr "Wing3_R.s" "Wing4_R.is";
connectAttr "FKWing4_R.sx" "Wing4_R.sx";
connectAttr "FKWing4_R.sy" "Wing4_R.sy";
connectAttr "FKWing4_R.sz" "Wing4_R.sz";
connectAttr "Wing4_R_orientConstraint1.crx" "Wing4_R.rx";
connectAttr "Wing4_R_orientConstraint1.cry" "Wing4_R.ry";
connectAttr "Wing4_R_orientConstraint1.crz" "Wing4_R.rz";
connectAttr "Wing4_R_pointConstraint1.ctx" "Wing4_R.tx";
connectAttr "Wing4_R_pointConstraint1.cty" "Wing4_R.ty";
connectAttr "Wing4_R_pointConstraint1.ctz" "Wing4_R.tz";
connectAttr "Wing4_R.s" "Wing5_R.is";
connectAttr "FKWing5_R.sx" "Wing5_R.sx";
connectAttr "FKWing5_R.sy" "Wing5_R.sy";
connectAttr "FKWing5_R.sz" "Wing5_R.sz";
connectAttr "Wing5_R_orientConstraint1.crx" "Wing5_R.rx";
connectAttr "Wing5_R_orientConstraint1.cry" "Wing5_R.ry";
connectAttr "Wing5_R_orientConstraint1.crz" "Wing5_R.rz";
connectAttr "Wing5_R_pointConstraint1.ctx" "Wing5_R.tx";
connectAttr "Wing5_R_pointConstraint1.cty" "Wing5_R.ty";
connectAttr "Wing5_R_pointConstraint1.ctz" "Wing5_R.tz";
connectAttr "Wing5_R.s" "Wing6_R.is";
connectAttr "FKWing6_R.sx" "Wing6_R.sx";
connectAttr "FKWing6_R.sy" "Wing6_R.sy";
connectAttr "FKWing6_R.sz" "Wing6_R.sz";
connectAttr "Wing6_R_orientConstraint1.crx" "Wing6_R.rx";
connectAttr "Wing6_R_orientConstraint1.cry" "Wing6_R.ry";
connectAttr "Wing6_R_orientConstraint1.crz" "Wing6_R.rz";
connectAttr "Wing6_R_pointConstraint1.ctx" "Wing6_R.tx";
connectAttr "Wing6_R_pointConstraint1.cty" "Wing6_R.ty";
connectAttr "Wing6_R_pointConstraint1.ctz" "Wing6_R.tz";
connectAttr "Wing6_R.s" "Wing7_R.is";
connectAttr "Root_M.s" "MouthBase_R.is";
connectAttr "FKMouthBase_R.sx" "MouthBase_R.sx";
connectAttr "FKMouthBase_R.sy" "MouthBase_R.sy";
connectAttr "FKMouthBase_R.sz" "MouthBase_R.sz";
connectAttr "MouthBase_R_orientConstraint1.crx" "MouthBase_R.rx";
connectAttr "MouthBase_R_orientConstraint1.cry" "MouthBase_R.ry";
connectAttr "MouthBase_R_orientConstraint1.crz" "MouthBase_R.rz";
connectAttr "MouthBase_R_pointConstraint1.ctx" "MouthBase_R.tx";
connectAttr "MouthBase_R_pointConstraint1.cty" "MouthBase_R.ty";
connectAttr "MouthBase_R_pointConstraint1.ctz" "MouthBase_R.tz";
connectAttr "MouthBase_R.s" "Mouth1_R.is";
connectAttr "FKMouth1_R.sx" "Mouth1_R.sx";
connectAttr "FKMouth1_R.sy" "Mouth1_R.sy";
connectAttr "FKMouth1_R.sz" "Mouth1_R.sz";
connectAttr "Mouth1_R_orientConstraint1.crx" "Mouth1_R.rx";
connectAttr "Mouth1_R_orientConstraint1.cry" "Mouth1_R.ry";
connectAttr "Mouth1_R_orientConstraint1.crz" "Mouth1_R.rz";
connectAttr "Mouth1_R_pointConstraint1.ctx" "Mouth1_R.tx";
connectAttr "Mouth1_R_pointConstraint1.cty" "Mouth1_R.ty";
connectAttr "Mouth1_R_pointConstraint1.ctz" "Mouth1_R.tz";
connectAttr "Mouth1_R.s" "Mouth2_R.is";
connectAttr "FKMouth2_R.sx" "Mouth2_R.sx";
connectAttr "FKMouth2_R.sy" "Mouth2_R.sy";
connectAttr "FKMouth2_R.sz" "Mouth2_R.sz";
connectAttr "Mouth2_R_orientConstraint1.crx" "Mouth2_R.rx";
connectAttr "Mouth2_R_orientConstraint1.cry" "Mouth2_R.ry";
connectAttr "Mouth2_R_orientConstraint1.crz" "Mouth2_R.rz";
connectAttr "Mouth2_R_pointConstraint1.ctx" "Mouth2_R.tx";
connectAttr "Mouth2_R_pointConstraint1.cty" "Mouth2_R.ty";
connectAttr "Mouth2_R_pointConstraint1.ctz" "Mouth2_R.tz";
connectAttr "Mouth2_R.s" "Mouth3_R.is";
connectAttr "FKMouth3_R.sx" "Mouth3_R.sx";
connectAttr "FKMouth3_R.sy" "Mouth3_R.sy";
connectAttr "FKMouth3_R.sz" "Mouth3_R.sz";
connectAttr "Mouth3_R_orientConstraint1.crx" "Mouth3_R.rx";
connectAttr "Mouth3_R_orientConstraint1.cry" "Mouth3_R.ry";
connectAttr "Mouth3_R_orientConstraint1.crz" "Mouth3_R.rz";
connectAttr "Mouth3_R_pointConstraint1.ctx" "Mouth3_R.tx";
connectAttr "Mouth3_R_pointConstraint1.cty" "Mouth3_R.ty";
connectAttr "Mouth3_R_pointConstraint1.ctz" "Mouth3_R.tz";
connectAttr "Mouth3_R.s" "Mouth4_R.is";
connectAttr "FKMouth4_R.sx" "Mouth4_R.sx";
connectAttr "FKMouth4_R.sy" "Mouth4_R.sy";
connectAttr "FKMouth4_R.sz" "Mouth4_R.sz";
connectAttr "Mouth4_R_orientConstraint1.crx" "Mouth4_R.rx";
connectAttr "Mouth4_R_orientConstraint1.cry" "Mouth4_R.ry";
connectAttr "Mouth4_R_orientConstraint1.crz" "Mouth4_R.rz";
connectAttr "Mouth4_R_pointConstraint1.ctx" "Mouth4_R.tx";
connectAttr "Mouth4_R_pointConstraint1.cty" "Mouth4_R.ty";
connectAttr "Mouth4_R_pointConstraint1.ctz" "Mouth4_R.tz";
connectAttr "Mouth4_R.s" "Mouth5_R.is";
connectAttr "FKMouth5_R.sx" "Mouth5_R.sx";
connectAttr "FKMouth5_R.sy" "Mouth5_R.sy";
connectAttr "FKMouth5_R.sz" "Mouth5_R.sz";
connectAttr "Mouth5_R_orientConstraint1.crx" "Mouth5_R.rx";
connectAttr "Mouth5_R_orientConstraint1.cry" "Mouth5_R.ry";
connectAttr "Mouth5_R_orientConstraint1.crz" "Mouth5_R.rz";
connectAttr "Mouth5_R_pointConstraint1.ctx" "Mouth5_R.tx";
connectAttr "Mouth5_R_pointConstraint1.cty" "Mouth5_R.ty";
connectAttr "Mouth5_R_pointConstraint1.ctz" "Mouth5_R.tz";
connectAttr "Mouth5_R.s" "Mouth6_R.is";
connectAttr "TailBase_M_pointConstraint1.ctx" "TailBase_M.tx";
connectAttr "TailBase_M_pointConstraint1.cty" "TailBase_M.ty";
connectAttr "TailBase_M_pointConstraint1.ctz" "TailBase_M.tz";
connectAttr "TailBase_M_orientConstraint1.crx" "TailBase_M.rx";
connectAttr "TailBase_M_orientConstraint1.cry" "TailBase_M.ry";
connectAttr "TailBase_M_orientConstraint1.crz" "TailBase_M.rz";
connectAttr "FKTailBase_M.sx" "TailBase_M.sx";
connectAttr "FKTailBase_M.sy" "TailBase_M.sy";
connectAttr "FKTailBase_M.sz" "TailBase_M.sz";
connectAttr "Root_M.s" "TailBase_M.is";
connectAttr "TailBase_M.s" "Tail1_M.is";
connectAttr "ScaleBlendTail1_M.opr" "Tail1_M.sx";
connectAttr "ScaleBlendTail1_M.opg" "Tail1_M.sy";
connectAttr "ScaleBlendTail1_M.opb" "Tail1_M.sz";
connectAttr "Tail1_M_orientConstraint1.crx" "Tail1_M.rx";
connectAttr "Tail1_M_orientConstraint1.cry" "Tail1_M.ry";
connectAttr "Tail1_M_orientConstraint1.crz" "Tail1_M.rz";
connectAttr "Tail1_M_pointConstraint1.ctx" "Tail1_M.tx";
connectAttr "Tail1_M_pointConstraint1.cty" "Tail1_M.ty";
connectAttr "Tail1_M_pointConstraint1.ctz" "Tail1_M.tz";
connectAttr "Tail1_M.s" "Tail2_M.is";
connectAttr "ScaleBlendTail2_M.opr" "Tail2_M.sx";
connectAttr "ScaleBlendTail2_M.opg" "Tail2_M.sy";
connectAttr "ScaleBlendTail2_M.opb" "Tail2_M.sz";
connectAttr "Tail2_M_orientConstraint1.crx" "Tail2_M.rx";
connectAttr "Tail2_M_orientConstraint1.cry" "Tail2_M.ry";
connectAttr "Tail2_M_orientConstraint1.crz" "Tail2_M.rz";
connectAttr "Tail2_M_pointConstraint1.ctx" "Tail2_M.tx";
connectAttr "Tail2_M_pointConstraint1.cty" "Tail2_M.ty";
connectAttr "Tail2_M_pointConstraint1.ctz" "Tail2_M.tz";
connectAttr "Tail2_M.s" "Tail3_M.is";
connectAttr "ScaleBlendTail3_M.opr" "Tail3_M.sx";
connectAttr "ScaleBlendTail3_M.opg" "Tail3_M.sy";
connectAttr "ScaleBlendTail3_M.opb" "Tail3_M.sz";
connectAttr "Tail3_M_orientConstraint1.crx" "Tail3_M.rx";
connectAttr "Tail3_M_orientConstraint1.cry" "Tail3_M.ry";
connectAttr "Tail3_M_orientConstraint1.crz" "Tail3_M.rz";
connectAttr "Tail3_M_pointConstraint1.ctx" "Tail3_M.tx";
connectAttr "Tail3_M_pointConstraint1.cty" "Tail3_M.ty";
connectAttr "Tail3_M_pointConstraint1.ctz" "Tail3_M.tz";
connectAttr "Tail3_M.s" "Tail4_M.is";
connectAttr "ScaleBlendTail4_M.opr" "Tail4_M.sx";
connectAttr "ScaleBlendTail4_M.opg" "Tail4_M.sy";
connectAttr "ScaleBlendTail4_M.opb" "Tail4_M.sz";
connectAttr "Tail4_M_orientConstraint1.crx" "Tail4_M.rx";
connectAttr "Tail4_M_orientConstraint1.cry" "Tail4_M.ry";
connectAttr "Tail4_M_orientConstraint1.crz" "Tail4_M.rz";
connectAttr "Tail4_M_pointConstraint1.ctx" "Tail4_M.tx";
connectAttr "Tail4_M_pointConstraint1.cty" "Tail4_M.ty";
connectAttr "Tail4_M_pointConstraint1.ctz" "Tail4_M.tz";
connectAttr "Tail4_M.s" "Tail5_M.is";
connectAttr "ScaleBlendTail5_M.opr" "Tail5_M.sx";
connectAttr "ScaleBlendTail5_M.opg" "Tail5_M.sy";
connectAttr "ScaleBlendTail5_M.opb" "Tail5_M.sz";
connectAttr "Tail5_M_orientConstraint1.crx" "Tail5_M.rx";
connectAttr "Tail5_M_orientConstraint1.cry" "Tail5_M.ry";
connectAttr "Tail5_M_orientConstraint1.crz" "Tail5_M.rz";
connectAttr "Tail5_M_pointConstraint1.ctx" "Tail5_M.tx";
connectAttr "Tail5_M_pointConstraint1.cty" "Tail5_M.ty";
connectAttr "Tail5_M_pointConstraint1.ctz" "Tail5_M.tz";
connectAttr "Tail5_M.s" "Tail6_M.is";
connectAttr "Tail6_M_orientConstraint1.crx" "Tail6_M.rx";
connectAttr "Tail6_M_orientConstraint1.cry" "Tail6_M.ry";
connectAttr "Tail6_M_orientConstraint1.crz" "Tail6_M.rz";
connectAttr "Tail6_M_pointConstraint1.ctx" "Tail6_M.tx";
connectAttr "Tail6_M_pointConstraint1.cty" "Tail6_M.ty";
connectAttr "Tail6_M_pointConstraint1.ctz" "Tail6_M.tz";
connectAttr "ScaleBlendTail6_M.opr" "Tail6_M.sx";
connectAttr "ScaleBlendTail6_M.opg" "Tail6_M.sy";
connectAttr "ScaleBlendTail6_M.opb" "Tail6_M.sz";
connectAttr "Root_M.s" "WingBase_L.is";
connectAttr "FKWingBase_L.sx" "WingBase_L.sx";
connectAttr "FKWingBase_L.sy" "WingBase_L.sy";
connectAttr "FKWingBase_L.sz" "WingBase_L.sz";
connectAttr "WingBase_L_orientConstraint1.crx" "WingBase_L.rx";
connectAttr "WingBase_L_orientConstraint1.cry" "WingBase_L.ry";
connectAttr "WingBase_L_orientConstraint1.crz" "WingBase_L.rz";
connectAttr "WingBase_L_pointConstraint1.ctx" "WingBase_L.tx";
connectAttr "WingBase_L_pointConstraint1.cty" "WingBase_L.ty";
connectAttr "WingBase_L_pointConstraint1.ctz" "WingBase_L.tz";
connectAttr "WingBase_L.s" "Wing1_L.is";
connectAttr "FKWing1_L.sx" "Wing1_L.sx";
connectAttr "FKWing1_L.sy" "Wing1_L.sy";
connectAttr "FKWing1_L.sz" "Wing1_L.sz";
connectAttr "Wing1_L_orientConstraint1.crx" "Wing1_L.rx";
connectAttr "Wing1_L_orientConstraint1.cry" "Wing1_L.ry";
connectAttr "Wing1_L_orientConstraint1.crz" "Wing1_L.rz";
connectAttr "Wing1_L_pointConstraint1.ctx" "Wing1_L.tx";
connectAttr "Wing1_L_pointConstraint1.cty" "Wing1_L.ty";
connectAttr "Wing1_L_pointConstraint1.ctz" "Wing1_L.tz";
connectAttr "Wing1_L.s" "Wing2_L.is";
connectAttr "FKWing2_L.sx" "Wing2_L.sx";
connectAttr "FKWing2_L.sy" "Wing2_L.sy";
connectAttr "FKWing2_L.sz" "Wing2_L.sz";
connectAttr "Wing2_L_orientConstraint1.crx" "Wing2_L.rx";
connectAttr "Wing2_L_orientConstraint1.cry" "Wing2_L.ry";
connectAttr "Wing2_L_orientConstraint1.crz" "Wing2_L.rz";
connectAttr "Wing2_L_pointConstraint1.ctx" "Wing2_L.tx";
connectAttr "Wing2_L_pointConstraint1.cty" "Wing2_L.ty";
connectAttr "Wing2_L_pointConstraint1.ctz" "Wing2_L.tz";
connectAttr "Wing2_L.s" "Wing3_L.is";
connectAttr "FKWing3_L.sx" "Wing3_L.sx";
connectAttr "FKWing3_L.sy" "Wing3_L.sy";
connectAttr "FKWing3_L.sz" "Wing3_L.sz";
connectAttr "Wing3_L_orientConstraint1.crx" "Wing3_L.rx";
connectAttr "Wing3_L_orientConstraint1.cry" "Wing3_L.ry";
connectAttr "Wing3_L_orientConstraint1.crz" "Wing3_L.rz";
connectAttr "Wing3_L_pointConstraint1.ctx" "Wing3_L.tx";
connectAttr "Wing3_L_pointConstraint1.cty" "Wing3_L.ty";
connectAttr "Wing3_L_pointConstraint1.ctz" "Wing3_L.tz";
connectAttr "Wing3_L.s" "Wing4_L.is";
connectAttr "FKWing4_L.sx" "Wing4_L.sx";
connectAttr "FKWing4_L.sy" "Wing4_L.sy";
connectAttr "FKWing4_L.sz" "Wing4_L.sz";
connectAttr "Wing4_L_orientConstraint1.crx" "Wing4_L.rx";
connectAttr "Wing4_L_orientConstraint1.cry" "Wing4_L.ry";
connectAttr "Wing4_L_orientConstraint1.crz" "Wing4_L.rz";
connectAttr "Wing4_L_pointConstraint1.ctx" "Wing4_L.tx";
connectAttr "Wing4_L_pointConstraint1.cty" "Wing4_L.ty";
connectAttr "Wing4_L_pointConstraint1.ctz" "Wing4_L.tz";
connectAttr "Wing4_L.s" "Wing5_L.is";
connectAttr "FKWing5_L.sx" "Wing5_L.sx";
connectAttr "FKWing5_L.sy" "Wing5_L.sy";
connectAttr "FKWing5_L.sz" "Wing5_L.sz";
connectAttr "Wing5_L_orientConstraint1.crx" "Wing5_L.rx";
connectAttr "Wing5_L_orientConstraint1.cry" "Wing5_L.ry";
connectAttr "Wing5_L_orientConstraint1.crz" "Wing5_L.rz";
connectAttr "Wing5_L_pointConstraint1.ctx" "Wing5_L.tx";
connectAttr "Wing5_L_pointConstraint1.cty" "Wing5_L.ty";
connectAttr "Wing5_L_pointConstraint1.ctz" "Wing5_L.tz";
connectAttr "Wing5_L.s" "Wing6_L.is";
connectAttr "FKWing6_L.sx" "Wing6_L.sx";
connectAttr "FKWing6_L.sy" "Wing6_L.sy";
connectAttr "FKWing6_L.sz" "Wing6_L.sz";
connectAttr "Wing6_L_orientConstraint1.crx" "Wing6_L.rx";
connectAttr "Wing6_L_orientConstraint1.cry" "Wing6_L.ry";
connectAttr "Wing6_L_orientConstraint1.crz" "Wing6_L.rz";
connectAttr "Wing6_L_pointConstraint1.ctx" "Wing6_L.tx";
connectAttr "Wing6_L_pointConstraint1.cty" "Wing6_L.ty";
connectAttr "Wing6_L_pointConstraint1.ctz" "Wing6_L.tz";
connectAttr "Wing6_L.s" "Wing7_L.is";
connectAttr "Root_M.s" "MouthBase_L.is";
connectAttr "FKMouthBase_L.sx" "MouthBase_L.sx";
connectAttr "FKMouthBase_L.sy" "MouthBase_L.sy";
connectAttr "FKMouthBase_L.sz" "MouthBase_L.sz";
connectAttr "MouthBase_L_orientConstraint1.crx" "MouthBase_L.rx";
connectAttr "MouthBase_L_orientConstraint1.cry" "MouthBase_L.ry";
connectAttr "MouthBase_L_orientConstraint1.crz" "MouthBase_L.rz";
connectAttr "MouthBase_L_pointConstraint1.ctx" "MouthBase_L.tx";
connectAttr "MouthBase_L_pointConstraint1.cty" "MouthBase_L.ty";
connectAttr "MouthBase_L_pointConstraint1.ctz" "MouthBase_L.tz";
connectAttr "MouthBase_L.s" "Mouth1_L.is";
connectAttr "FKMouth1_L.sx" "Mouth1_L.sx";
connectAttr "FKMouth1_L.sy" "Mouth1_L.sy";
connectAttr "FKMouth1_L.sz" "Mouth1_L.sz";
connectAttr "Mouth1_L_orientConstraint1.crx" "Mouth1_L.rx";
connectAttr "Mouth1_L_orientConstraint1.cry" "Mouth1_L.ry";
connectAttr "Mouth1_L_orientConstraint1.crz" "Mouth1_L.rz";
connectAttr "Mouth1_L_pointConstraint1.ctx" "Mouth1_L.tx";
connectAttr "Mouth1_L_pointConstraint1.cty" "Mouth1_L.ty";
connectAttr "Mouth1_L_pointConstraint1.ctz" "Mouth1_L.tz";
connectAttr "Mouth1_L.s" "Mouth2_L.is";
connectAttr "FKMouth2_L.sx" "Mouth2_L.sx";
connectAttr "FKMouth2_L.sy" "Mouth2_L.sy";
connectAttr "FKMouth2_L.sz" "Mouth2_L.sz";
connectAttr "Mouth2_L_orientConstraint1.crx" "Mouth2_L.rx";
connectAttr "Mouth2_L_orientConstraint1.cry" "Mouth2_L.ry";
connectAttr "Mouth2_L_orientConstraint1.crz" "Mouth2_L.rz";
connectAttr "Mouth2_L_pointConstraint1.ctx" "Mouth2_L.tx";
connectAttr "Mouth2_L_pointConstraint1.cty" "Mouth2_L.ty";
connectAttr "Mouth2_L_pointConstraint1.ctz" "Mouth2_L.tz";
connectAttr "Mouth2_L.s" "Mouth3_L.is";
connectAttr "FKMouth3_L.sx" "Mouth3_L.sx";
connectAttr "FKMouth3_L.sy" "Mouth3_L.sy";
connectAttr "FKMouth3_L.sz" "Mouth3_L.sz";
connectAttr "Mouth3_L_orientConstraint1.crx" "Mouth3_L.rx";
connectAttr "Mouth3_L_orientConstraint1.cry" "Mouth3_L.ry";
connectAttr "Mouth3_L_orientConstraint1.crz" "Mouth3_L.rz";
connectAttr "Mouth3_L_pointConstraint1.ctx" "Mouth3_L.tx";
connectAttr "Mouth3_L_pointConstraint1.cty" "Mouth3_L.ty";
connectAttr "Mouth3_L_pointConstraint1.ctz" "Mouth3_L.tz";
connectAttr "Mouth3_L.s" "Mouth4_L.is";
connectAttr "FKMouth4_L.sx" "Mouth4_L.sx";
connectAttr "FKMouth4_L.sy" "Mouth4_L.sy";
connectAttr "FKMouth4_L.sz" "Mouth4_L.sz";
connectAttr "Mouth4_L_orientConstraint1.crx" "Mouth4_L.rx";
connectAttr "Mouth4_L_orientConstraint1.cry" "Mouth4_L.ry";
connectAttr "Mouth4_L_orientConstraint1.crz" "Mouth4_L.rz";
connectAttr "Mouth4_L_pointConstraint1.ctx" "Mouth4_L.tx";
connectAttr "Mouth4_L_pointConstraint1.cty" "Mouth4_L.ty";
connectAttr "Mouth4_L_pointConstraint1.ctz" "Mouth4_L.tz";
connectAttr "Mouth4_L.s" "Mouth5_L.is";
connectAttr "FKMouth5_L.sx" "Mouth5_L.sx";
connectAttr "FKMouth5_L.sy" "Mouth5_L.sy";
connectAttr "FKMouth5_L.sz" "Mouth5_L.sz";
connectAttr "Mouth5_L_orientConstraint1.crx" "Mouth5_L.rx";
connectAttr "Mouth5_L_orientConstraint1.cry" "Mouth5_L.ry";
connectAttr "Mouth5_L_orientConstraint1.crz" "Mouth5_L.rz";
connectAttr "Mouth5_L_pointConstraint1.ctx" "Mouth5_L.tx";
connectAttr "Mouth5_L_pointConstraint1.cty" "Mouth5_L.ty";
connectAttr "Mouth5_L_pointConstraint1.ctz" "Mouth5_L.tz";
connectAttr "Mouth5_L.s" "Mouth6_L.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MantaRayBirostris_Body_GeoSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MantaRayBirostrisSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MantaRayBirostris_Body_GeoSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MantaRayBirostrisSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bump2d1.o" "MantaRay.n";
connectAttr "MantaRay.oc" "MantaRayBirostris_Body_GeoSG.ss";
connectAttr "MantaRayBirostris_Body_GeoSG.msg" "materialInfo1.sg";
connectAttr "MantaRay.msg" "materialInfo1.m";
connectAttr "normalmap_texture.oa" "bump2d1.bv";
connectAttr "place2dTexture1.o" "normalmap_texture.uv";
connectAttr "place2dTexture1.ofu" "normalmap_texture.ofu";
connectAttr "place2dTexture1.ofv" "normalmap_texture.ofv";
connectAttr "place2dTexture1.rf" "normalmap_texture.rf";
connectAttr "place2dTexture1.reu" "normalmap_texture.reu";
connectAttr "place2dTexture1.rev" "normalmap_texture.rev";
connectAttr "place2dTexture1.vt1" "normalmap_texture.vt1";
connectAttr "place2dTexture1.vt2" "normalmap_texture.vt2";
connectAttr "place2dTexture1.vt3" "normalmap_texture.vt3";
connectAttr "place2dTexture1.vc1" "normalmap_texture.vc1";
connectAttr "place2dTexture1.ofs" "normalmap_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture.ws";
connectAttr "bump2d2.o" "MantaRay1.n";
connectAttr "MantaRay1.oc" "MantaRayBirostrisSG.ss";
connectAttr "MantaRayBirostrisSG.msg" "materialInfo2.sg";
connectAttr "MantaRay1.msg" "materialInfo2.m";
connectAttr "normalmap_texture1.oa" "bump2d2.bv";
connectAttr "place2dTexture2.o" "normalmap_texture1.uv";
connectAttr "place2dTexture2.ofu" "normalmap_texture1.ofu";
connectAttr "place2dTexture2.ofv" "normalmap_texture1.ofv";
connectAttr "place2dTexture2.rf" "normalmap_texture1.rf";
connectAttr "place2dTexture2.reu" "normalmap_texture1.reu";
connectAttr "place2dTexture2.rev" "normalmap_texture1.rev";
connectAttr "place2dTexture2.vt1" "normalmap_texture1.vt1";
connectAttr "place2dTexture2.vt2" "normalmap_texture1.vt2";
connectAttr "place2dTexture2.vt3" "normalmap_texture1.vt3";
connectAttr "place2dTexture2.vc1" "normalmap_texture1.vc1";
connectAttr "place2dTexture2.ofs" "normalmap_texture1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture1.ws";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Tail1.fat" "Test1Fat.i1y";
connectAttr "Tail1.fat" "Test1Fat.i1z";
connectAttr "Tail1.fatFront" "Test1Fat.i2y";
connectAttr "Tail1.fatWidth" "Test1Fat.i2z";
connectAttr "Tail2.fat" "Test2Fat.i1y";
connectAttr "Tail2.fat" "Test2Fat.i1z";
connectAttr "Tail2.fatFront" "Test2Fat.i2y";
connectAttr "Tail2.fatWidth" "Test2Fat.i2z";
connectAttr "Group.msg" "bindPose7.m[2]";
connectAttr "DeformationSystem.msg" "bindPose7.m[3]";
connectAttr "Root_M.msg" "bindPose7.m[4]";
connectAttr "Tail1_M.msg" "bindPose7.m[6]";
connectAttr "Tail2_M.msg" "bindPose7.m[7]";
connectAttr "Tail3_M.msg" "bindPose7.m[8]";
connectAttr "Tail4_M.msg" "bindPose7.m[9]";
connectAttr "Tail5_M.msg" "bindPose7.m[10]";
connectAttr "Tail6_M.msg" "bindPose7.m[11]";
connectAttr "WingBase_L.msg" "bindPose7.m[12]";
connectAttr "Wing1_L.msg" "bindPose7.m[13]";
connectAttr "Wing2_L.msg" "bindPose7.m[14]";
connectAttr "Wing3_L.msg" "bindPose7.m[15]";
connectAttr "Wing4_L.msg" "bindPose7.m[16]";
connectAttr "Wing5_L.msg" "bindPose7.m[17]";
connectAttr "Wing6_L.msg" "bindPose7.m[18]";
connectAttr "WingBase_R.msg" "bindPose7.m[19]";
connectAttr "Wing1_R.msg" "bindPose7.m[20]";
connectAttr "Wing2_R.msg" "bindPose7.m[21]";
connectAttr "Wing3_R.msg" "bindPose7.m[22]";
connectAttr "Wing4_R.msg" "bindPose7.m[23]";
connectAttr "Wing5_R.msg" "bindPose7.m[24]";
connectAttr "Wing6_R.msg" "bindPose7.m[25]";
connectAttr "MouthBase_R.msg" "bindPose7.m[26]";
connectAttr "Mouth1_R.msg" "bindPose7.m[27]";
connectAttr "Mouth2_R.msg" "bindPose7.m[28]";
connectAttr "Mouth3_R.msg" "bindPose7.m[29]";
connectAttr "Mouth4_R.msg" "bindPose7.m[30]";
connectAttr "Mouth5_R.msg" "bindPose7.m[31]";
connectAttr "MouthBase_L.msg" "bindPose7.m[32]";
connectAttr "Mouth1_L.msg" "bindPose7.m[33]";
connectAttr "Mouth2_L.msg" "bindPose7.m[34]";
connectAttr "Mouth3_L.msg" "bindPose7.m[35]";
connectAttr "Mouth4_L.msg" "bindPose7.m[36]";
connectAttr "Mouth5_L.msg" "bindPose7.m[37]";
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.w" "bindPose7.p[2]";
connectAttr "bindPose7.m[2]" "bindPose7.p[3]";
connectAttr "bindPose7.m[3]" "bindPose7.p[4]";
connectAttr "bindPose7.m[4]" "bindPose7.p[5]";
connectAttr "TailBase_M.msg" "bindPose7.p[6]";
connectAttr "bindPose7.m[6]" "bindPose7.p[7]";
connectAttr "bindPose7.m[7]" "bindPose7.p[8]";
connectAttr "bindPose7.m[8]" "bindPose7.p[9]";
connectAttr "bindPose7.m[9]" "bindPose7.p[10]";
connectAttr "bindPose7.m[10]" "bindPose7.p[11]";
connectAttr "bindPose7.m[4]" "bindPose7.p[12]";
connectAttr "bindPose7.m[12]" "bindPose7.p[13]";
connectAttr "bindPose7.m[13]" "bindPose7.p[14]";
connectAttr "bindPose7.m[14]" "bindPose7.p[15]";
connectAttr "bindPose7.m[15]" "bindPose7.p[16]";
connectAttr "bindPose7.m[16]" "bindPose7.p[17]";
connectAttr "bindPose7.m[17]" "bindPose7.p[18]";
connectAttr "bindPose7.m[4]" "bindPose7.p[19]";
connectAttr "bindPose7.m[19]" "bindPose7.p[20]";
connectAttr "bindPose7.m[20]" "bindPose7.p[21]";
connectAttr "bindPose7.m[21]" "bindPose7.p[22]";
connectAttr "bindPose7.m[22]" "bindPose7.p[23]";
connectAttr "bindPose7.m[23]" "bindPose7.p[24]";
connectAttr "bindPose7.m[24]" "bindPose7.p[25]";
connectAttr "bindPose7.m[4]" "bindPose7.p[26]";
connectAttr "bindPose7.m[26]" "bindPose7.p[27]";
connectAttr "bindPose7.m[27]" "bindPose7.p[28]";
connectAttr "bindPose7.m[28]" "bindPose7.p[29]";
connectAttr "bindPose7.m[29]" "bindPose7.p[30]";
connectAttr "bindPose7.m[30]" "bindPose7.p[31]";
connectAttr "bindPose7.m[4]" "bindPose7.p[32]";
connectAttr "bindPose7.m[32]" "bindPose7.p[33]";
connectAttr "bindPose7.m[33]" "bindPose7.p[34]";
connectAttr "bindPose7.m[34]" "bindPose7.p[35]";
connectAttr "bindPose7.m[35]" "bindPose7.p[36]";
connectAttr "bindPose7.m[36]" "bindPose7.p[37]";
connectAttr "Root_M.bps" "bindPose7.wm[4]";
connectAttr "Tail1_M.bps" "bindPose7.wm[6]";
connectAttr "Tail2_M.bps" "bindPose7.wm[7]";
connectAttr "Tail3_M.bps" "bindPose7.wm[8]";
connectAttr "Tail4_M.bps" "bindPose7.wm[9]";
connectAttr "Tail5_M.bps" "bindPose7.wm[10]";
connectAttr "Tail6_M.bps" "bindPose7.wm[11]";
connectAttr "WingBase_L.bps" "bindPose7.wm[12]";
connectAttr "Wing1_L.bps" "bindPose7.wm[13]";
connectAttr "Wing2_L.bps" "bindPose7.wm[14]";
connectAttr "Wing3_L.bps" "bindPose7.wm[15]";
connectAttr "Wing4_L.bps" "bindPose7.wm[16]";
connectAttr "Wing5_L.bps" "bindPose7.wm[17]";
connectAttr "Wing6_L.bps" "bindPose7.wm[18]";
connectAttr "WingBase_R.bps" "bindPose7.wm[19]";
connectAttr "Wing1_R.bps" "bindPose7.wm[20]";
connectAttr "Wing2_R.bps" "bindPose7.wm[21]";
connectAttr "Wing3_R.bps" "bindPose7.wm[22]";
connectAttr "Wing4_R.bps" "bindPose7.wm[23]";
connectAttr "Wing5_R.bps" "bindPose7.wm[24]";
connectAttr "Wing6_R.bps" "bindPose7.wm[25]";
connectAttr "MouthBase_R.bps" "bindPose7.wm[26]";
connectAttr "Mouth1_R.bps" "bindPose7.wm[27]";
connectAttr "Mouth2_R.bps" "bindPose7.wm[28]";
connectAttr "Mouth3_R.bps" "bindPose7.wm[29]";
connectAttr "Mouth4_R.bps" "bindPose7.wm[30]";
connectAttr "Mouth5_R.bps" "bindPose7.wm[31]";
connectAttr "MouthBase_L.bps" "bindPose7.wm[32]";
connectAttr "Mouth1_L.bps" "bindPose7.wm[33]";
connectAttr "Mouth2_L.bps" "bindPose7.wm[34]";
connectAttr "Mouth3_L.bps" "bindPose7.wm[35]";
connectAttr "Mouth4_L.bps" "bindPose7.wm[36]";
connectAttr "Mouth5_L.bps" "bindPose7.wm[37]";
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatFront" "RootFat.i2y";
connectAttr "Root.fatWidth" "RootFat.i2z";
connectAttr "TailBase.fat" "TailBaseFat.i1y";
connectAttr "TailBase.fat" "TailBaseFat.i1z";
connectAttr "TailBase.fatFront" "TailBaseFat.i2y";
connectAttr "TailBase.fatWidth" "TailBaseFat.i2z";
connectAttr "Tail1.fat" "Tail1Fat.i1y";
connectAttr "Tail1.fat" "Tail1Fat.i1z";
connectAttr "Tail1.fatFront" "Tail1Fat.i2y";
connectAttr "Tail1.fatWidth" "Tail1Fat.i2z";
connectAttr "Tail2.fat" "Tail2Fat.i1y";
connectAttr "Tail2.fat" "Tail2Fat.i1z";
connectAttr "Tail2.fatFront" "Tail2Fat.i2y";
connectAttr "Tail2.fatWidth" "Tail2Fat.i2z";
connectAttr "Tail3.fat" "Tail3Fat.i1y";
connectAttr "Tail3.fat" "Tail3Fat.i1z";
connectAttr "Tail3.fatFront" "Tail3Fat.i2y";
connectAttr "Tail3.fatWidth" "Tail3Fat.i2z";
connectAttr "Tail4.fat" "Tail4Fat.i1y";
connectAttr "Tail4.fat" "Tail4Fat.i1z";
connectAttr "Tail4.fatFront" "Tail4Fat.i2y";
connectAttr "Tail4.fatWidth" "Tail4Fat.i2z";
connectAttr "Tail5.fat" "Tail5Fat.i1y";
connectAttr "Tail5.fat" "Tail5Fat.i1z";
connectAttr "Tail5.fatFront" "Tail5Fat.i2y";
connectAttr "Tail5.fatWidth" "Tail5Fat.i2z";
connectAttr "Tail6.fat" "Tail6Fat.i1y";
connectAttr "Tail6.fat" "Tail6Fat.i1z";
connectAttr "Tail6.fatFront" "Tail6Fat.i2y";
connectAttr "Tail6.fatWidth" "Tail6Fat.i2z";
connectAttr "MouthBase.fat" "MouthBaseFat.i1y";
connectAttr "MouthBase.fat" "MouthBaseFat.i1z";
connectAttr "MouthBase.fatFront" "MouthBaseFat.i2y";
connectAttr "MouthBase.fatWidth" "MouthBaseFat.i2z";
connectAttr "Mouth1.fat" "Mouth1Fat.i1y";
connectAttr "Mouth1.fat" "Mouth1Fat.i1z";
connectAttr "Mouth1.fatFront" "Mouth1Fat.i2y";
connectAttr "Mouth1.fatWidth" "Mouth1Fat.i2z";
connectAttr "Mouth2.fat" "Mouth2Fat.i1y";
connectAttr "Mouth2.fat" "Mouth2Fat.i1z";
connectAttr "Mouth2.fatFront" "Mouth2Fat.i2y";
connectAttr "Mouth2.fatWidth" "Mouth2Fat.i2z";
connectAttr "Mouth3.fat" "Mouth3Fat.i1y";
connectAttr "Mouth3.fat" "Mouth3Fat.i1z";
connectAttr "Mouth3.fatFront" "Mouth3Fat.i2y";
connectAttr "Mouth3.fatWidth" "Mouth3Fat.i2z";
connectAttr "Mouth4.fat" "Mouth4Fat.i1y";
connectAttr "Mouth4.fat" "Mouth4Fat.i1z";
connectAttr "Mouth4.fatFront" "Mouth4Fat.i2y";
connectAttr "Mouth4.fatWidth" "Mouth4Fat.i2z";
connectAttr "Mouth5.fat" "Mouth5Fat.i1y";
connectAttr "Mouth5.fat" "Mouth5Fat.i1z";
connectAttr "Mouth5.fatFront" "Mouth5Fat.i2y";
connectAttr "Mouth5.fatWidth" "Mouth5Fat.i2z";
connectAttr "Mouth6.fat" "Mouth6Fat.i1y";
connectAttr "Mouth6.fat" "Mouth6Fat.i1z";
connectAttr "Mouth6.fatFront" "Mouth6Fat.i2y";
connectAttr "Mouth6.fatWidth" "Mouth6Fat.i2z";
connectAttr "WingBase.fat" "WingBaseFat.i1y";
connectAttr "WingBase.fat" "WingBaseFat.i1z";
connectAttr "WingBase.fatFront" "WingBaseFat.i2y";
connectAttr "WingBase.fatWidth" "WingBaseFat.i2z";
connectAttr "Wing1.fat" "Wing1Fat.i1y";
connectAttr "Wing1.fat" "Wing1Fat.i1z";
connectAttr "Wing1.fatFront" "Wing1Fat.i2y";
connectAttr "Wing1.fatWidth" "Wing1Fat.i2z";
connectAttr "Wing2.fat" "Wing2Fat.i1y";
connectAttr "Wing2.fat" "Wing2Fat.i1z";
connectAttr "Wing2.fatFront" "Wing2Fat.i2y";
connectAttr "Wing2.fatWidth" "Wing2Fat.i2z";
connectAttr "Wing3.fat" "Wing3Fat.i1y";
connectAttr "Wing3.fat" "Wing3Fat.i1z";
connectAttr "Wing3.fatFront" "Wing3Fat.i2y";
connectAttr "Wing3.fatWidth" "Wing3Fat.i2z";
connectAttr "Wing4.fat" "Wing4Fat.i1y";
connectAttr "Wing4.fat" "Wing4Fat.i1z";
connectAttr "Wing4.fatFront" "Wing4Fat.i2y";
connectAttr "Wing4.fatWidth" "Wing4Fat.i2z";
connectAttr "Wing5.fat" "Wing5Fat.i1y";
connectAttr "Wing5.fat" "Wing5Fat.i1z";
connectAttr "Wing5.fatFront" "Wing5Fat.i2y";
connectAttr "Wing5.fatWidth" "Wing5Fat.i2z";
connectAttr "Wing6.fat" "Wing6Fat.i1y";
connectAttr "Wing6.fat" "Wing6Fat.i1z";
connectAttr "Wing6.fatFront" "Wing6Fat.i2y";
connectAttr "Wing6.fatWidth" "Wing6Fat.i2z";
connectAttr "Wing7.fat" "Wing7Fat.i1y";
connectAttr "Wing7.fat" "Wing7Fat.i1z";
connectAttr "Wing7.fatFront" "Wing7Fat.i2y";
connectAttr "Wing7.fatWidth" "Wing7Fat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "MainExtra1.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing6_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing6_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing5_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing5_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing3_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing3_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWing1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWingBase_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWingBase_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth5_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth5_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth4_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth3_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth3_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouthBase_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMouthBase_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTail5_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTail5_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraTailBase_M.iog" "ControlSet.dsm" -na;
connectAttr "FKTailBase_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing6_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing6_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing5_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing5_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing4_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing4_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWing1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWing1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWingBase_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWingBase_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth5_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth5_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth4_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth4_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth3_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouth1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouth1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMouthBase_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMouthBase_L.iog" "ControlSet.dsm" -na;
connectAttr "IKcvExtraSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvExtraSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvExtraSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvExtraSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSplineTail1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSplineTail2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSplineTail3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSplineTail4_M.iog" "ControlSet.dsm" -na;
connectAttr "FKIKSplineTail_M.iog" "ControlSet.dsm" -na;
connectAttr "Wing6_R.iog" "DeformSet.dsm" -na;
connectAttr "Wing5_R.iog" "DeformSet.dsm" -na;
connectAttr "Wing4_R.iog" "DeformSet.dsm" -na;
connectAttr "Wing3_R.iog" "DeformSet.dsm" -na;
connectAttr "Wing2_R.iog" "DeformSet.dsm" -na;
connectAttr "Wing1_R.iog" "DeformSet.dsm" -na;
connectAttr "WingBase_R.iog" "DeformSet.dsm" -na;
connectAttr "Mouth5_R.iog" "DeformSet.dsm" -na;
connectAttr "Mouth4_R.iog" "DeformSet.dsm" -na;
connectAttr "Mouth3_R.iog" "DeformSet.dsm" -na;
connectAttr "Mouth2_R.iog" "DeformSet.dsm" -na;
connectAttr "Mouth1_R.iog" "DeformSet.dsm" -na;
connectAttr "MouthBase_R.iog" "DeformSet.dsm" -na;
connectAttr "Tail5_M.iog" "DeformSet.dsm" -na;
connectAttr "Tail4_M.iog" "DeformSet.dsm" -na;
connectAttr "Tail3_M.iog" "DeformSet.dsm" -na;
connectAttr "Tail2_M.iog" "DeformSet.dsm" -na;
connectAttr "Tail1_M.iog" "DeformSet.dsm" -na;
connectAttr "TailBase_M.iog" "DeformSet.dsm" -na;
connectAttr "Root_M.iog" "DeformSet.dsm" -na;
connectAttr "Wing6_L.iog" "DeformSet.dsm" -na;
connectAttr "Wing5_L.iog" "DeformSet.dsm" -na;
connectAttr "Wing4_L.iog" "DeformSet.dsm" -na;
connectAttr "Wing3_L.iog" "DeformSet.dsm" -na;
connectAttr "Wing2_L.iog" "DeformSet.dsm" -na;
connectAttr "Wing1_L.iog" "DeformSet.dsm" -na;
connectAttr "WingBase_L.iog" "DeformSet.dsm" -na;
connectAttr "Mouth5_L.iog" "DeformSet.dsm" -na;
connectAttr "Mouth4_L.iog" "DeformSet.dsm" -na;
connectAttr "Mouth3_L.iog" "DeformSet.dsm" -na;
connectAttr "Mouth2_L.iog" "DeformSet.dsm" -na;
connectAttr "Mouth1_L.iog" "DeformSet.dsm" -na;
connectAttr "MouthBase_L.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.iog" "AllSet.dsm" -na;
connectAttr "FKHSRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail6_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKScaler.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintSplineTail_M_parentConstraint1.iog" "AllSet.dsm"
		 -na;
connectAttr "FKIKParentConstraintSplineTail_M.iog" "AllSet.dsm" -na;
connectAttr "FKIKSplineTail_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKSplineTail_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1LocalOrient3_M.iog" "AllSet.dsm" -na;
connectAttr "IKFixedOrientTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail6FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail5FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail4FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail3FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail6FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail5FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail4FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail3FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail6_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail6_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineTailOffset3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineTailOffset2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineTailOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail3_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail4_M1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail1_M1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail_M1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail4_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSplineTail_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetConstrainedSplineTail1_M_scaleConstraint1.iog" "AllSet.dsm"
		 -na;
connectAttr "IKOffsetConstrainedSplineTail1_M_parentConstraint1.iog" "AllSet.dsm"
		 -na;
connectAttr "IKOffsetConstrainedSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4LocalStartOrient_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4X_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4X_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3X_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3X_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2X_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2X_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1X_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1X_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator5_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator5_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvExtraSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvOffsetSplineTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator4_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvExtraSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvOffsetSplineTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator3_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvExtraSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvOffsetSplineTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator2_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvExtraSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvOffsetSplineTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator0_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailLocator0_M.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintToTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailCurve_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailCurve_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailHandle_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineTailEffector_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake1SplineTail_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake0SplineTail_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail6_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpSplineTailOffset_M.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "WingBase_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "WingBase_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing1_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing1_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing2_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing2_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing3_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing4_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing4_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing5_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing5_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing6_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing6_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TailBase_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TailBase_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail3_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail3_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail4_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail4_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail5_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail5_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail6_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Tail6_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "WingBase_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "WingBase_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing1_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing2_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing2_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing3_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing3_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing4_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing5_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing5_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing6_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wing6_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXOffsetTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail2_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail3_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail4_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail5_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Tail6_M.iog" "AllSet.dsm" -na;
connectAttr "IKXTail6_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth1_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth1_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth2_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth2_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth3_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth4_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth4_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth5_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth5_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing1_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing1_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing2_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing2_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing3_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing3_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing4_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing4_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing5_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing5_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing6_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing6_L_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTailBase_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1TailBase_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2TailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1TailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Tail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Tail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail3_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail3_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Tail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail4_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail4_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Tail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail5_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail5_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Tail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Tail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth1_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth2_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth2_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth3_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth3_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth4_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth5_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth5_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Mouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Mouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing1_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing1_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing2_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing2_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing3_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing3_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing4_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing4_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing5_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing5_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing6_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing6_R_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Wing6_R.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Wing6_R.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail6_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToTail1_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToTail6_M.iog" "AllSet.dsm" -na;
connectAttr "FKXMouthBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouthBase_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouthBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouthBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouthBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouth1_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouth2_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth2_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouth3_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth3_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouth4_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth4_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKMouth5_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth5_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWingBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKWingBase_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWingBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWingBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWingBase_L.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalWing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing1_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing2_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing2_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing3_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing3_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing4_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing4_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing5_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing5_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKWing6_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing6_L.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKTailBase_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTailBase_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKTail1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKTail2_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail2_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKTail3_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail3_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKTail4_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail4_M.iog" "AllSet.dsm" -na;
connectAttr "FKXTail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKTail5_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKTail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraTail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetTail5_M.iog" "AllSet.dsm" -na;
connectAttr "FKXMouthBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouthBase_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouthBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouthBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouthBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouth1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouth2_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth2_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouth3_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth3_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouth4_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth4_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKMouth5_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMouth5_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWingBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKWingBase_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWingBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWingBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWingBase_R.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalWing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing2_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing2_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing3_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing3_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing4_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing4_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing5_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing5_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWing6_R.iog" "AllSet.dsm" -na;
connectAttr "FKWing6_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWing6_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWing6_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWing6_R.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_L.iog" "AllSet.dsm" -na;
connectAttr "Mouth6_L.iog" "AllSet.dsm" -na;
connectAttr "WingBase_L.iog" "AllSet.dsm" -na;
connectAttr "Wing1_L.iog" "AllSet.dsm" -na;
connectAttr "Wing2_L.iog" "AllSet.dsm" -na;
connectAttr "Wing3_L.iog" "AllSet.dsm" -na;
connectAttr "Wing4_L.iog" "AllSet.dsm" -na;
connectAttr "Wing5_L.iog" "AllSet.dsm" -na;
connectAttr "Wing6_L.iog" "AllSet.dsm" -na;
connectAttr "Wing7_L.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "TailBase_M.iog" "AllSet.dsm" -na;
connectAttr "Tail1_M.iog" "AllSet.dsm" -na;
connectAttr "Tail2_M.iog" "AllSet.dsm" -na;
connectAttr "Tail3_M.iog" "AllSet.dsm" -na;
connectAttr "Tail4_M.iog" "AllSet.dsm" -na;
connectAttr "Tail5_M.iog" "AllSet.dsm" -na;
connectAttr "Tail6_M.iog" "AllSet.dsm" -na;
connectAttr "MouthBase_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth1_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth2_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth3_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth4_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth5_R.iog" "AllSet.dsm" -na;
connectAttr "Mouth6_R.iog" "AllSet.dsm" -na;
connectAttr "WingBase_R.iog" "AllSet.dsm" -na;
connectAttr "Wing1_R.iog" "AllSet.dsm" -na;
connectAttr "Wing2_R.iog" "AllSet.dsm" -na;
connectAttr "Wing3_R.iog" "AllSet.dsm" -na;
connectAttr "Wing4_R.iog" "AllSet.dsm" -na;
connectAttr "Wing5_R.iog" "AllSet.dsm" -na;
connectAttr "Wing6_R.iog" "AllSet.dsm" -na;
connectAttr "Wing7_R.iog" "AllSet.dsm" -na;
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
connectAttr "MainExtra1.iog" "AllSet.dsm" -na;
connectAttr "Main.iog" "AllSet.dsm" -na;
connectAttr "MainSystem.iog" "AllSet.dsm" -na;
connectAttr "DeformationSystem.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "MainExtra1Shape.iog" "AllSet.dsm" -na;
connectAttr "MainShape.iog" "AllSet.dsm" -na;
connectAttr "RootXformInverterRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotIM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotBM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotPM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerTail1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBTail1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerATail1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerTail2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBTail2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerATail2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerTail3_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBTail3_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerATail3_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerTail4_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBTail4_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerATail4_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerTail5_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBTail5_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerATail5_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendSplineTailBlendTwo_M.msg" "AllSet.dnsm" -na;
connectAttr "volumepowSplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverSplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchySplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeSplineTailUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrainedDM2_M.msg" "AllSet.dnsm" -na;
connectAttr "FKRootRemoveInbtRotMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail6MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail6DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail6BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail6MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail5MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail5DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail5BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail5MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail4MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail4DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail4BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail4MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail3MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail3DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail3BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail3MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail2MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail2DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail2BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail1MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail1DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScalerTail1BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleTail1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail3_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail3_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail4_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail4_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail5_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail5_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendCMTail6_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendTail6_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTailConditionUnitConversion_M.msg" "AllSet.dnsm" -na
		;
connectAttr "FKIKBlendSplineTailHybridVisPMA_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTailsetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTailCondition_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTailUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTail_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineTail_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "Tail1IkFirstJointFixedBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKfirstJointFixedSplineTail1_MUnitConversion.msg" "AllSet.dnsm" -na
		;
connectAttr "IKTail6nonStretchMixer_M.msg" "AllSet.dnsm" -na;
connectAttr "IKTail6Rot_M.msg" "AllSet.dnsm" -na;
connectAttr "IKTail6nonStretchPos_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail6DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail6IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail6IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail6FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail6FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail5DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail5IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail5IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail5FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail5FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail4DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail4IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail4IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail4FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail4FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail3DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail3IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail3IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail3FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail3FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail2DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail2IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail2IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail2FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail2FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKXTail1DM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail1IkMM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail1IkBM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail1FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpTail1FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1FollowOffsetDM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1FollowOffsetPM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1FollowOffsetMM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail6MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail6_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5AM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail5MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail5_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4AM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail4MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail4_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3AM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail3MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail3_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2AM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail2MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1DM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1AM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcTail1MM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociTail1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSplineTail3_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSplineTail3_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSplineTail2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSplineTail2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKhybridFollowSplineTail1DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKhybridFollowSplineTail1MMTailBase_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail4_MFollowTailBaseMDL_M.msg" "AllSet.dnsm" -na;
connectAttr "IKhybridFollowSplineTail1MMRoot_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail4_MFollowRootMDL_M.msg" "AllSet.dnsm" -na;
connectAttr "IKhybridFollowSplineTail1MMMain_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail4_MFollowMainMDL_M.msg" "AllSet.dnsm" -na;
connectAttr "IKhybridFollowSplineTail1BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTailFlipAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTailFlipUpAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail3QTETwist_M_outputRotateXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail3QTETwist_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail3DMTwist_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail3MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail3MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail2QTETwist_M_outputRotateXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail2QTETwist_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail2DMTwist_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail2MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTail2MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineTailRamp_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyBlendTwo4_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyMultiplyDivide4_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyBlendTwo3_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyMultiplyDivide3_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyBlendTwo2_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyMultiplyDivide2_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyBlendTwo1_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyMultiplyDivide1_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyBlendTwo0_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyMultiplyDivide0_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoNormalizeSplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "SplineTailStretchyUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoSplineTail_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSplineTail4SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail4DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail4BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail4MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail4MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail3DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail3BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail3MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail3MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail2DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail2BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail2MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail2MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSplineTail1SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail1DM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail1BM_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail1MM2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKcvOffsetSplineTail1MM1_M.msg" "AllSet.dnsm" -na;
connectAttr "MouthBaseBM_L.msg" "AllSet.dnsm" -na;
connectAttr "Mouth1BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Mouth2BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Mouth3BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Mouth4BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Mouth5BM_L.msg" "AllSet.dnsm" -na;
connectAttr "WingBaseBM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing1BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing2BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing3BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing4BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing5BM_L.msg" "AllSet.dnsm" -na;
connectAttr "Wing6BM_L.msg" "AllSet.dnsm" -na;
connectAttr "RootBM_M.msg" "AllSet.dnsm" -na;
connectAttr "TailBaseBM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail1BM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail2BM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail3BM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail4BM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail5BM_M.msg" "AllSet.dnsm" -na;
connectAttr "Tail6BM_M.msg" "AllSet.dnsm" -na;
connectAttr "MouthBaseBM_R.msg" "AllSet.dnsm" -na;
connectAttr "Mouth1BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Mouth2BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Mouth3BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Mouth4BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Mouth5BM_R.msg" "AllSet.dnsm" -na;
connectAttr "WingBaseBM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing1BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing2BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing3BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing4BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing5BM_R.msg" "AllSet.dnsm" -na;
connectAttr "Wing6BM_R.msg" "AllSet.dnsm" -na;
connectAttr "FKOffsetRootDM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKOffsetRootMM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1DM_L.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1PMRot_L.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1BMRot_L.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1MM_L.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionWing1_L.msg" "AllSet.dnsm" -na;
connectAttr "LegLockRoot_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalTailBaseDM_M.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalTailBasePMRot_M.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalTailBaseBMRot_M.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalTailBaseMM_M.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionTailBase_M.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1DM_R.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1PMRot_R.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1BMRot_R.msg" "AllSet.dnsm" -na;
connectAttr "FKGlobalWing1MM_R.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionWing1_R.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide1.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "MainScaleMultiplyDivide1.o" "MainScaleMultiplyDivide.i1";
connectAttr "Main.s" "MainScaleMultiplyDivide1.i1";
connectAttr "MainExtra1.s" "MainScaleMultiplyDivide1.i2";
connectAttr "FKWing1_R.Global" "globalUnitConversionWing1_R.i";
connectAttr "GlobalFollowMain.wm" "FKGlobalWing1MM_R.i[1]";
connectAttr "FKOffsetWing1_R.wim" "FKGlobalWing1MM_R.i[2]";
connectAttr "globalUnitConversionWing1_R.o" "FKGlobalWing1BMRot_R.tgt[0].wgt";
connectAttr "FKGlobalWing1PMRot_R.tmat" "FKGlobalWing1BMRot_R.tgt[0].tmat";
connectAttr "FKGlobalWing1MM_R.o" "FKGlobalWing1PMRot_R.imat";
connectAttr "FKGlobalWing1BMRot_R.omat" "FKGlobalWing1DM_R.imat";
connectAttr "FKTailBase_M.Global" "globalUnitConversionTailBase_M.i";
connectAttr "GlobalFollowMain.wm" "FKGlobalTailBaseMM_M.i[1]";
connectAttr "FKOffsetTailBase_M.wim" "FKGlobalTailBaseMM_M.i[2]";
connectAttr "globalUnitConversionTailBase_M.o" "FKGlobalTailBaseBMRot_M.tgt[0].wgt"
		;
connectAttr "FKGlobalTailBasePMRot_M.tmat" "FKGlobalTailBaseBMRot_M.tgt[0].tmat"
		;
connectAttr "FKGlobalTailBaseMM_M.o" "FKGlobalTailBasePMRot_M.imat";
connectAttr "FKGlobalTailBaseBMRot_M.omat" "FKGlobalTailBaseDM_M.imat";
connectAttr "FKRoot_M.legLock" "LegLockRoot_MUnitConversion.i";
connectAttr "FKWing1_L.Global" "globalUnitConversionWing1_L.i";
connectAttr "GlobalFollowMain.wm" "FKGlobalWing1MM_L.i[1]";
connectAttr "FKOffsetWing1_L.wim" "FKGlobalWing1MM_L.i[2]";
connectAttr "globalUnitConversionWing1_L.o" "FKGlobalWing1BMRot_L.tgt[0].wgt";
connectAttr "FKGlobalWing1PMRot_L.tmat" "FKGlobalWing1BMRot_L.tgt[0].tmat";
connectAttr "FKGlobalWing1MM_L.o" "FKGlobalWing1PMRot_L.imat";
connectAttr "FKGlobalWing1BMRot_L.omat" "FKGlobalWing1DM_L.imat";
connectAttr "RootX_M.wm" "FKOffsetRootMM_M.i[1]";
connectAttr "FKSystem.wim" "FKOffsetRootMM_M.i[2]";
connectAttr "FKOffsetRootMM_M.o" "FKOffsetRootDM_M.imat";
connectAttr "FKXWing6_R.wm" "Wing6BM_R.imat";
connectAttr "FKXWing5_R.wm" "Wing5BM_R.imat";
connectAttr "FKXWing4_R.wm" "Wing4BM_R.imat";
connectAttr "FKXWing3_R.wm" "Wing3BM_R.imat";
connectAttr "FKXWing2_R.wm" "Wing2BM_R.imat";
connectAttr "FKXWing1_R.wm" "Wing1BM_R.imat";
connectAttr "FKXWingBase_R.wm" "WingBaseBM_R.imat";
connectAttr "FKXMouth5_R.wm" "Mouth5BM_R.imat";
connectAttr "FKXMouth4_R.wm" "Mouth4BM_R.imat";
connectAttr "FKXMouth3_R.wm" "Mouth3BM_R.imat";
connectAttr "FKXMouth2_R.wm" "Mouth2BM_R.imat";
connectAttr "FKXMouth1_R.wm" "Mouth1BM_R.imat";
connectAttr "FKXMouthBase_R.wm" "MouthBaseBM_R.imat";
connectAttr "FKXTail6_M.wm" "Tail6BM_M.imat";
connectAttr "IKXTail6_M.wm" "Tail6BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail6BM_M.tgt[0].wgt";
connectAttr "FKXTail5_M.wm" "Tail5BM_M.imat";
connectAttr "IKXTail5_M.wm" "Tail5BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail5BM_M.tgt[0].wgt";
connectAttr "FKXTail4_M.wm" "Tail4BM_M.imat";
connectAttr "IKXTail4_M.wm" "Tail4BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail4BM_M.tgt[0].wgt";
connectAttr "FKXTail3_M.wm" "Tail3BM_M.imat";
connectAttr "IKXTail3_M.wm" "Tail3BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail3BM_M.tgt[0].wgt";
connectAttr "FKXTail2_M.wm" "Tail2BM_M.imat";
connectAttr "IKXTail2_M.wm" "Tail2BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail2BM_M.tgt[0].wgt";
connectAttr "FKXTail1_M.wm" "Tail1BM_M.imat";
connectAttr "IKXTail1_M.wm" "Tail1BM_M.tgt[0].tmat";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "Tail1BM_M.tgt[0].wgt";
connectAttr "FKXTailBase_M.wm" "TailBaseBM_M.imat";
connectAttr "FKXRoot_M.wm" "RootBM_M.imat";
connectAttr "FKXWing6_L.wm" "Wing6BM_L.imat";
connectAttr "FKXWing5_L.wm" "Wing5BM_L.imat";
connectAttr "FKXWing4_L.wm" "Wing4BM_L.imat";
connectAttr "FKXWing3_L.wm" "Wing3BM_L.imat";
connectAttr "FKXWing2_L.wm" "Wing2BM_L.imat";
connectAttr "FKXWing1_L.wm" "Wing1BM_L.imat";
connectAttr "FKXWingBase_L.wm" "WingBaseBM_L.imat";
connectAttr "FKXMouth5_L.wm" "Mouth5BM_L.imat";
connectAttr "FKXMouth4_L.wm" "Mouth4BM_L.imat";
connectAttr "FKXMouth3_L.wm" "Mouth3BM_L.imat";
connectAttr "FKXMouth2_L.wm" "Mouth2BM_L.imat";
connectAttr "FKXMouth1_L.wm" "Mouth1BM_L.imat";
connectAttr "FKXMouthBase_L.wm" "MouthBaseBM_L.imat";
connectAttr "IKSplineTail1X_M.wm" "IKcvOffsetSplineTail1MM1_M.i[1]";
connectAttr "IKSplineTail2X_M.wm" "IKcvOffsetSplineTail1MM2_M.i[1]";
connectAttr "IKcvOffsetSplineTail1MM2_M.o" "IKcvOffsetSplineTail1BM_M.imat";
connectAttr "IKcvOffsetSplineTail1MM1_M.o" "IKcvOffsetSplineTail1BM_M.tgt[0].tmat"
		;
connectAttr "IKStiffSplineTail1SetRange_M.ox" "IKcvOffsetSplineTail1BM_M.tgt[0].wgt"
		;
connectAttr "IKcvOffsetSplineTail1BM_M.omat" "IKcvOffsetSplineTail1DM_M.imat";
connectAttr "IKSplineTail1_M.stiff" "IKStiffSplineTail1SetRange_M.vx";
connectAttr "IKSplineTail1_M.stiff" "IKStiffSplineTail1SetRange_M.vy";
connectAttr "IKSplineTail2X_M.wm" "IKcvOffsetSplineTail2MM1_M.i[1]";
connectAttr "IKSplineTail3X_M.wm" "IKcvOffsetSplineTail2MM2_M.i[1]";
connectAttr "IKcvOffsetSplineTail2MM2_M.o" "IKcvOffsetSplineTail2BM_M.imat";
connectAttr "IKcvOffsetSplineTail2MM1_M.o" "IKcvOffsetSplineTail2BM_M.tgt[0].tmat"
		;
connectAttr "IKcvOffsetSplineTail2BM_M.omat" "IKcvOffsetSplineTail2DM_M.imat";
connectAttr "IKSplineTail3X_M.wm" "IKcvOffsetSplineTail3MM1_M.i[1]";
connectAttr "IKSplineTail2X_M.wm" "IKcvOffsetSplineTail3MM2_M.i[1]";
connectAttr "IKcvOffsetSplineTail3MM2_M.o" "IKcvOffsetSplineTail3BM_M.imat";
connectAttr "IKcvOffsetSplineTail3MM1_M.o" "IKcvOffsetSplineTail3BM_M.tgt[0].tmat"
		;
connectAttr "IKcvOffsetSplineTail3BM_M.omat" "IKcvOffsetSplineTail3DM_M.imat";
connectAttr "IKSplineTail4X_M.wm" "IKcvOffsetSplineTail4MM1_M.i[1]";
connectAttr "IKSplineTail3X_M.wm" "IKcvOffsetSplineTail4MM2_M.i[1]";
connectAttr "IKcvOffsetSplineTail4MM2_M.o" "IKcvOffsetSplineTail4BM_M.imat";
connectAttr "IKcvOffsetSplineTail4MM1_M.o" "IKcvOffsetSplineTail4BM_M.tgt[0].tmat"
		;
connectAttr "IKStiffSplineTail4SetRange_M.ox" "IKcvOffsetSplineTail4BM_M.tgt[0].wgt"
		;
connectAttr "IKcvOffsetSplineTail4BM_M.omat" "IKcvOffsetSplineTail4DM_M.imat";
connectAttr "IKSplineTail4_M.stiff" "IKStiffSplineTail4SetRange_M.vx";
connectAttr "IKSplineTail4_M.stiff" "IKStiffSplineTail4SetRange_M.vy";
connectAttr "IKSplineTailCurve_MShape.ws" "IKCurveInfoSplineTail_M.ic";
connectAttr "IKSplineTail4_M.stretchy" "SplineTailStretchyUnitConversion_M.i";
connectAttr "IKCurveInfoSplineTail_M.al" "IKCurveInfoNormalizeSplineTail_M.i1x";
connectAttr "IKCurveInfoNormalizeSplineTail_M.ox" "IKCurveInfoAllMultiplySplineTail_M.i1x"
		;
connectAttr "MainScaleMultiplyDivide.ox" "IKCurveInfoAllMultiplySplineTail_M.i2x"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "SplineTailStretchyMultiplyDivide0_M.i2x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "SplineTailStretchyBlendTwo0_M.ab"
		;
connectAttr "SplineTailStretchyMultiplyDivide0_M.ox" "SplineTailStretchyBlendTwo0_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "SplineTailStretchyMultiplyDivide1_M.i2x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "SplineTailStretchyBlendTwo1_M.ab"
		;
connectAttr "SplineTailStretchyMultiplyDivide1_M.ox" "SplineTailStretchyBlendTwo1_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "SplineTailStretchyMultiplyDivide2_M.i2x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "SplineTailStretchyBlendTwo2_M.ab"
		;
connectAttr "SplineTailStretchyMultiplyDivide2_M.ox" "SplineTailStretchyBlendTwo2_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "SplineTailStretchyMultiplyDivide3_M.i2x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "SplineTailStretchyBlendTwo3_M.ab"
		;
connectAttr "SplineTailStretchyMultiplyDivide3_M.ox" "SplineTailStretchyBlendTwo3_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "SplineTailStretchyMultiplyDivide4_M.i2x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "SplineTailStretchyBlendTwo4_M.ab"
		;
connectAttr "SplineTailStretchyMultiplyDivide4_M.ox" "SplineTailStretchyBlendTwo4_M.i[1]"
		;
connectAttr "IKSplineTail2QTETwist_M_outputRotateXUC.o" "IKSplineTailRamp_M.cel[1].ecr"
		;
connectAttr "IKSplineTail3QTETwist_M_outputRotateXUC.o" "IKSplineTailRamp_M.cel[2].ecr"
		;
connectAttr "IKOffsetSplineTail2_M.wim" "IKSplineTail2MM1_M.i[0]";
connectAttr "IKSplineTail2LocalOrient0_M.wm" "IKSplineTail2MM2_M.i[0]";
connectAttr "IKSplineTail2MM1_M.o" "IKSplineTail2MM2_M.i[1]";
connectAttr "IKSplineTail2MM2_M.o" "IKSplineTail2DMTwist_M.imat";
connectAttr "IKSplineTail2DMTwist_M.oqx" "IKSplineTail2QTETwist_M.iqx";
connectAttr "IKSplineTail2DMTwist_M.oqw" "IKSplineTail2QTETwist_M.iqw";
connectAttr "IKSplineTail2QTETwist_M.orx" "IKSplineTail2QTETwist_M_outputRotateXUC.i"
		;
connectAttr "IKOffsetSplineTail3_M.wim" "IKSplineTail3MM1_M.i[0]";
connectAttr "IKSplineTail3LocalOrient0_M.wm" "IKSplineTail3MM2_M.i[0]";
connectAttr "IKSplineTail3MM1_M.o" "IKSplineTail3MM2_M.i[1]";
connectAttr "IKSplineTail3MM2_M.o" "IKSplineTail3DMTwist_M.imat";
connectAttr "IKSplineTail3DMTwist_M.oqx" "IKSplineTail3QTETwist_M.iqx";
connectAttr "IKSplineTail3DMTwist_M.oqw" "IKSplineTail3QTETwist_M.iqw";
connectAttr "IKSplineTail3QTETwist_M.orx" "IKSplineTail3QTETwist_M_outputRotateXUC.i"
		;
connectAttr "IKSplineTail4_M.flipAxis" "IKSplineTailFlipUpAxisSetRange_M.vx";
connectAttr "IKSplineTail4_M.flipAxis" "IKSplineTailFlipAxisSetRange_M.vx";
connectAttr "IKSplineTail4_M.flipAxis" "IKSplineTailFlipAxisSetRange_M.vy";
connectAttr "IKSplineTail4_M.flipAxis" "IKSplineTailFlipAxisSetRange_M.vz";
connectAttr "IKhybridFollowSplineTail1MMMain_M.o" "IKhybridFollowSplineTail1BM_M.tgt[0].tmat"
		;
connectAttr "IKSplineTail4_MFollowMainMDL_M.o" "IKhybridFollowSplineTail1BM_M.tgt[0].wgt"
		;
connectAttr "IKhybridFollowSplineTail1MMRoot_M.o" "IKhybridFollowSplineTail1BM_M.tgt[1].tmat"
		;
connectAttr "IKSplineTail4_MFollowRootMDL_M.o" "IKhybridFollowSplineTail1BM_M.tgt[1].wgt"
		;
connectAttr "IKhybridFollowSplineTail1MMTailBase_M.o" "IKhybridFollowSplineTail1BM_M.tgt[2].tmat"
		;
connectAttr "IKSplineTail4_MFollowTailBaseMDL_M.o" "IKhybridFollowSplineTail1BM_M.tgt[2].wgt"
		;
connectAttr "IKSplineTail4_M.followMain" "IKSplineTail4_MFollowMainMDL_M.i1";
connectAttr "Main.wm" "IKhybridFollowSplineTail1MMMain_M.i[2]";
connectAttr "IKSplineTail4_M.followRoot" "IKSplineTail4_MFollowRootMDL_M.i1";
connectAttr "RootX_M.wm" "IKhybridFollowSplineTail1MMRoot_M.i[2]";
connectAttr "IKSplineTail4_M.followTailBase" "IKSplineTail4_MFollowTailBaseMDL_M.i1"
		;
connectAttr "TailBase_M.wm" "IKhybridFollowSplineTail1MMTailBase_M.i[2]";
connectAttr "IKhybridFollowSplineTail1BM_M.omat" "IKhybridFollowSplineTail1DM_M.imat"
		;
connectAttr "IKSplineTail2_M.followEnd" "IKFollowEndSplineTail2_MUnitConversion.i"
		;
connectAttr "IKFollowEndSplineTail2_MUnitConversion.o" "IKFollowEndSplineTail2_MReverse.ix"
		;
connectAttr "IKSplineTail3_M.followEnd" "IKFollowEndSplineTail3_MUnitConversion.i"
		;
connectAttr "IKFollowEndSplineTail3_MUnitConversion.o" "IKFollowEndSplineTail3_MReverse.ix"
		;
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail1_M.ic";
connectAttr "IKAcPociXformTail1_M.wm" "IKAcTail1MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail1MM_M.i[1]";
connectAttr "IKAcTail1MM_M.o" "IKAcTail1DM_M.imat";
connectAttr "IKAcPociXformTail1_M.wm" "IKAcTail1AM_M.imat";
connectAttr "IKAcTail2_M.wm" "IKAcTail1AM_M.pmat";
connectAttr "IKfake0SplineTail_M.wm" "IKAcTail1AM_M.smat";
connectAttr "IKAcTail1AM_M.tmat" "IKAcTail1MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail1MM2_M.i[1]";
connectAttr "IKAcTail1MM2_M.o" "IKAcTail1DM2_M.imat";
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail2_M.ic";
connectAttr "IKAcPociXformTail2_M.wm" "IKAcTail2MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail2MM_M.i[1]";
connectAttr "IKAcTail2MM_M.o" "IKAcTail2DM_M.imat";
connectAttr "IKAcPociXformTail2_M.wm" "IKAcTail2AM_M.imat";
connectAttr "IKAcTail3_M.wm" "IKAcTail2AM_M.pmat";
connectAttr "IKSpTail2_M.wm" "IKAcTail2AM_M.smat";
connectAttr "IKAcTail2AM_M.tmat" "IKAcTail2MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail2MM2_M.i[1]";
connectAttr "IKAcTail2MM2_M.o" "IKAcTail2DM2_M.imat";
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail3_M.ic";
connectAttr "IKAcPociXformTail3_M.wm" "IKAcTail3MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail3MM_M.i[1]";
connectAttr "IKAcTail3MM_M.o" "IKAcTail3DM_M.imat";
connectAttr "IKAcPociXformTail3_M.wm" "IKAcTail3AM_M.imat";
connectAttr "IKAcTail4_M.wm" "IKAcTail3AM_M.pmat";
connectAttr "IKSpTail3_M.wm" "IKAcTail3AM_M.smat";
connectAttr "IKAcTail3AM_M.tmat" "IKAcTail3MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail3MM2_M.i[1]";
connectAttr "IKAcTail3MM2_M.o" "IKAcTail3DM2_M.imat";
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail4_M.ic";
connectAttr "IKAcPociXformTail4_M.wm" "IKAcTail4MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail4MM_M.i[1]";
connectAttr "IKAcTail4MM_M.o" "IKAcTail4DM_M.imat";
connectAttr "IKAcPociXformTail4_M.wm" "IKAcTail4AM_M.imat";
connectAttr "IKAcTail5_M.wm" "IKAcTail4AM_M.pmat";
connectAttr "IKSpTail4_M.wm" "IKAcTail4AM_M.smat";
connectAttr "IKAcTail4AM_M.tmat" "IKAcTail4MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail4MM2_M.i[1]";
connectAttr "IKAcTail4MM2_M.o" "IKAcTail4DM2_M.imat";
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail5_M.ic";
connectAttr "IKAcPociXformTail5_M.wm" "IKAcTail5MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail5MM_M.i[1]";
connectAttr "IKAcTail5MM_M.o" "IKAcTail5DM_M.imat";
connectAttr "IKAcPociXformTail5_M.wm" "IKAcTail5AM_M.imat";
connectAttr "IKAcTail6_M.wm" "IKAcTail5AM_M.pmat";
connectAttr "IKSpTail5_M.wm" "IKAcTail5AM_M.smat";
connectAttr "IKAcTail5AM_M.tmat" "IKAcTail5MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail5MM2_M.i[1]";
connectAttr "IKAcTail5MM2_M.o" "IKAcTail5DM2_M.imat";
connectAttr "IKSplineTailCurve_MShape.ws" "IKAcPociTail6_M.ic";
connectAttr "IKAcPociXformTail6_M.wm" "IKAcTail6MM_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail6MM_M.i[1]";
connectAttr "IKAcTail6MM_M.o" "IKAcTail6DM_M.imat";
connectAttr "IKSplineTail4LocalOrient2_M.wm" "IKAcTail6MM2_M.i[0]";
connectAttr "IKAcSplineTailOffset_M.wim" "IKAcTail6MM2_M.i[1]";
connectAttr "IKAcTail6MM2_M.o" "IKAcTail6DM2_M.imat";
connectAttr "IKAcTail1_M.wm" "IKAcTail1FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail1FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail1FollowOffsetMM_M.o" "IKAcTail1FollowOffsetPM_M.imat";
connectAttr "IKAcTail1FollowOffsetPM_M.tmat" "IKAcTail1FollowOffsetDM_M.imat";
connectAttr "IKAcTail2_M.wm" "IKAcTail2FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail2FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail2FollowOffsetMM_M.o" "IKAcTail2FollowOffsetPM_M.imat";
connectAttr "IKAcTail2FollowOffsetPM_M.tmat" "IKAcTail2FollowOffsetDM_M.imat";
connectAttr "IKAcTail3_M.wm" "IKAcTail3FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail3FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail3FollowOffsetMM_M.o" "IKAcTail3FollowOffsetPM_M.imat";
connectAttr "IKAcTail3FollowOffsetPM_M.tmat" "IKAcTail3FollowOffsetDM_M.imat";
connectAttr "IKAcTail4_M.wm" "IKAcTail4FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail4FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail4FollowOffsetMM_M.o" "IKAcTail4FollowOffsetPM_M.imat";
connectAttr "IKAcTail4FollowOffsetPM_M.tmat" "IKAcTail4FollowOffsetDM_M.imat";
connectAttr "IKAcTail5_M.wm" "IKAcTail5FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail5FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail5FollowOffsetMM_M.o" "IKAcTail5FollowOffsetPM_M.imat";
connectAttr "IKAcTail5FollowOffsetPM_M.tmat" "IKAcTail5FollowOffsetDM_M.imat";
connectAttr "IKAcTail6_M.wm" "IKAcTail6FollowOffsetMM_M.i[1]";
connectAttr "IKAcSplineTailOffset2_M.wim" "IKAcTail6FollowOffsetMM_M.i[2]";
connectAttr "IKAcTail6FollowOffsetMM_M.o" "IKAcTail6FollowOffsetPM_M.imat";
connectAttr "IKAcTail6FollowOffsetPM_M.tmat" "IKAcTail6FollowOffsetDM_M.imat";
connectAttr "IKfake0SplineTail_M.wm" "IKSpTail1FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail1FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail1FollowOffsetMM_M.o" "IKSpTail1FollowOffsetDM_M.imat";
connectAttr "IKSpTail1FollowOffset_M.wm" "Tail1IkBM_M.imat";
connectAttr "IKAcTail1FollowOffset_M.wm" "Tail1IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail1IkBM_M.tgt[0].wgt";
connectAttr "Tail1IkFirstJointFixedBM_M.omat" "Tail1IkMM_M.i[0]";
connectAttr "IKXOffsetTail1_M.wim" "Tail1IkMM_M.i[1]";
connectAttr "Tail1IkMM_M.o" "IKXTail1DM_M.imat";
connectAttr "IKSpTail2_M.wm" "IKSpTail2FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail2FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail2FollowOffsetMM_M.o" "IKSpTail2FollowOffsetDM_M.imat";
connectAttr "IKSpTail2FollowOffset_M.wm" "Tail2IkBM_M.imat";
connectAttr "IKAcTail2FollowOffset_M.wm" "Tail2IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail2IkBM_M.tgt[0].wgt";
connectAttr "Tail2IkBM_M.omat" "Tail2IkMM_M.i[0]";
connectAttr "IKXTail1_M.wim" "Tail2IkMM_M.i[1]";
connectAttr "Tail2IkMM_M.o" "IKXTail2DM_M.imat";
connectAttr "IKSpTail3_M.wm" "IKSpTail3FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail3FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail3FollowOffsetMM_M.o" "IKSpTail3FollowOffsetDM_M.imat";
connectAttr "IKSpTail3FollowOffset_M.wm" "Tail3IkBM_M.imat";
connectAttr "IKAcTail3FollowOffset_M.wm" "Tail3IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail3IkBM_M.tgt[0].wgt";
connectAttr "Tail3IkBM_M.omat" "Tail3IkMM_M.i[0]";
connectAttr "IKXTail2_M.wim" "Tail3IkMM_M.i[1]";
connectAttr "Tail3IkMM_M.o" "IKXTail3DM_M.imat";
connectAttr "IKSpTail4_M.wm" "IKSpTail4FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail4FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail4FollowOffsetMM_M.o" "IKSpTail4FollowOffsetDM_M.imat";
connectAttr "IKSpTail4FollowOffset_M.wm" "Tail4IkBM_M.imat";
connectAttr "IKAcTail4FollowOffset_M.wm" "Tail4IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail4IkBM_M.tgt[0].wgt";
connectAttr "Tail4IkBM_M.omat" "Tail4IkMM_M.i[0]";
connectAttr "IKXTail3_M.wim" "Tail4IkMM_M.i[1]";
connectAttr "Tail4IkMM_M.o" "IKXTail4DM_M.imat";
connectAttr "IKSpTail5_M.wm" "IKSpTail5FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail5FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail5FollowOffsetMM_M.o" "IKSpTail5FollowOffsetDM_M.imat";
connectAttr "IKSpTail5FollowOffset_M.wm" "Tail5IkBM_M.imat";
connectAttr "IKAcTail5FollowOffset_M.wm" "Tail5IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail5IkBM_M.tgt[0].wgt";
connectAttr "Tail5IkBM_M.omat" "Tail5IkMM_M.i[0]";
connectAttr "IKXTail4_M.wim" "Tail5IkMM_M.i[1]";
connectAttr "Tail5IkMM_M.o" "IKXTail5DM_M.imat";
connectAttr "IKTail6nonStretchMixer_M.o" "IKSpTail6FollowOffsetMM_M.i[1]";
connectAttr "IKSpSplineTailOffset_M.wim" "IKSpTail6FollowOffsetMM_M.i[2]";
connectAttr "IKSpTail6FollowOffsetMM_M.o" "IKSpTail6FollowOffsetDM_M.imat";
connectAttr "IKSpTail6FollowOffset_M.wm" "Tail6IkBM_M.imat";
connectAttr "IKAcTail6FollowOffset_M.wm" "Tail6IkBM_M.tgt[0].tmat";
connectAttr "SplineTailStretchyUnitConversion_M.o" "Tail6IkBM_M.tgt[0].wgt";
connectAttr "Tail6IkBM_M.omat" "Tail6IkMM_M.i[0]";
connectAttr "IKXTail5_M.wim" "Tail6IkMM_M.i[1]";
connectAttr "Tail6IkMM_M.o" "IKXTail6DM_M.imat";
connectAttr "IKSpTail6_M.wm" "IKTail6nonStretchPos_M.imat";
connectAttr "IKSplineTail4LocalOrient2_M.wm" "IKTail6Rot_M.imat";
connectAttr "IKTail6Rot_M.tmat" "IKTail6nonStretchMixer_M.i[0]";
connectAttr "IKTail6nonStretchPos_M.tmat" "IKTail6nonStretchMixer_M.i[1]";
connectAttr "IKSplineTail1_M.firstJointFixed" "IKfirstJointFixedSplineTail1_MUnitConversion.i"
		;
connectAttr "Tail1IkBM_M.omat" "Tail1IkFirstJointFixedBM_M.imat";
connectAttr "IKfirstJointFixedSplineTail1_MUnitConversion.o" "Tail1IkFirstJointFixedBM_M.tgt[0].wgt"
		;
connectAttr "IKSplineTail1LocalOrient3_M.wm" "Tail1IkFirstJointFixedBM_M.tgt[0].tmat"
		;
connectAttr "FKIKSplineTail_M.FKIKBlend" "FKIKBlendSplineTail_MUnitConversion.i"
		;
connectAttr "FKIKBlendSplineTail_MUnitConversion.o" "FKIKBlendSplineTail_MReverse.ix"
		;
connectAttr "FKIKSplineTail_M.FKIKBlend" "FKIKBlendSplineTailUnitConversion_M.i"
		;
connectAttr "FKIKSplineTail_M.autoVis" "FKIKBlendSplineTailCondition_M.ft";
connectAttr "FKIKSplineTail_M.IKVis" "FKIKBlendSplineTailCondition_M.ctr";
connectAttr "FKIKSplineTail_M.FKVis" "FKIKBlendSplineTailCondition_M.ctg";
connectAttr "FKIKSplineTail_M.FKIKBlend" "FKIKBlendSplineTailCondition_M.cfr";
connectAttr "FKIKBlendSplineTailsetRange_M.ox" "FKIKBlendSplineTailCondition_M.cfg"
		;
connectAttr "FKIKSplineTail_M.FKIKBlend" "FKIKBlendSplineTailsetRange_M.vx";
connectAttr "FKIKBlendSplineTailConditionUnitConversion_M.o" "FKIKBlendSplineTailHybridVisPMA_M.i1[0]"
		;
connectAttr "IKSplineTail4_M.ikHybridVis" "FKIKBlendSplineTailHybridVisPMA_M.i1[1]"
		;
connectAttr "FKIKBlendSplineTailCondition_M.ocr" "FKIKBlendSplineTailConditionUnitConversion_M.i"
		;
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail6_M.b";
connectAttr "IKScaleTail6MultiplyDivide_M.ox" "ScaleBlendTail6_M.c1r";
connectAttr "IKScaleTail6MultiplyDivide_M.oy" "ScaleBlendTail6_M.c1g";
connectAttr "IKScaleTail6MultiplyDivide_M.oz" "ScaleBlendTail6_M.c1b";
connectAttr "ScaleBlendTail6_M.opr" "ScaleBlendCMTail6_M.isx";
connectAttr "ScaleBlendTail6_M.opg" "ScaleBlendCMTail6_M.isy";
connectAttr "ScaleBlendTail6_M.opb" "ScaleBlendCMTail6_M.isz";
connectAttr "FKTail5_M.sx" "ScaleBlendTail5_M.c2r";
connectAttr "FKTail5_M.sy" "ScaleBlendTail5_M.c2g";
connectAttr "FKTail5_M.sz" "ScaleBlendTail5_M.c2b";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail5_M.b";
connectAttr "IKScaleTail5MultiplyDivide_M.ox" "ScaleBlendTail5_M.c1r";
connectAttr "IKScaleTail5MultiplyDivide_M.oy" "ScaleBlendTail5_M.c1g";
connectAttr "IKScaleTail5MultiplyDivide_M.oz" "ScaleBlendTail5_M.c1b";
connectAttr "ScaleBlendTail5_M.opr" "ScaleBlendCMTail5_M.isx";
connectAttr "ScaleBlendTail5_M.opg" "ScaleBlendCMTail5_M.isy";
connectAttr "ScaleBlendTail5_M.opb" "ScaleBlendCMTail5_M.isz";
connectAttr "FKTail4_M.sx" "ScaleBlendTail4_M.c2r";
connectAttr "FKTail4_M.sy" "ScaleBlendTail4_M.c2g";
connectAttr "FKTail4_M.sz" "ScaleBlendTail4_M.c2b";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail4_M.b";
connectAttr "IKScaleTail4MultiplyDivide_M.ox" "ScaleBlendTail4_M.c1r";
connectAttr "IKScaleTail4MultiplyDivide_M.oy" "ScaleBlendTail4_M.c1g";
connectAttr "IKScaleTail4MultiplyDivide_M.oz" "ScaleBlendTail4_M.c1b";
connectAttr "ScaleBlendTail4_M.opr" "ScaleBlendCMTail4_M.isx";
connectAttr "ScaleBlendTail4_M.opg" "ScaleBlendCMTail4_M.isy";
connectAttr "ScaleBlendTail4_M.opb" "ScaleBlendCMTail4_M.isz";
connectAttr "FKTail3_M.sx" "ScaleBlendTail3_M.c2r";
connectAttr "FKTail3_M.sy" "ScaleBlendTail3_M.c2g";
connectAttr "FKTail3_M.sz" "ScaleBlendTail3_M.c2b";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail3_M.b";
connectAttr "IKScaleTail3MultiplyDivide_M.ox" "ScaleBlendTail3_M.c1r";
connectAttr "IKScaleTail3MultiplyDivide_M.oy" "ScaleBlendTail3_M.c1g";
connectAttr "IKScaleTail3MultiplyDivide_M.oz" "ScaleBlendTail3_M.c1b";
connectAttr "ScaleBlendTail3_M.opr" "ScaleBlendCMTail3_M.isx";
connectAttr "ScaleBlendTail3_M.opg" "ScaleBlendCMTail3_M.isy";
connectAttr "ScaleBlendTail3_M.opb" "ScaleBlendCMTail3_M.isz";
connectAttr "FKTail2_M.sx" "ScaleBlendTail2_M.c2r";
connectAttr "FKTail2_M.sy" "ScaleBlendTail2_M.c2g";
connectAttr "FKTail2_M.sz" "ScaleBlendTail2_M.c2b";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail2_M.b";
connectAttr "IKScaleTail2MultiplyDivide_M.ox" "ScaleBlendTail2_M.c1r";
connectAttr "IKScaleTail2MultiplyDivide_M.oy" "ScaleBlendTail2_M.c1g";
connectAttr "IKScaleTail2MultiplyDivide_M.oz" "ScaleBlendTail2_M.c1b";
connectAttr "ScaleBlendTail2_M.opr" "ScaleBlendCMTail2_M.isx";
connectAttr "ScaleBlendTail2_M.opg" "ScaleBlendCMTail2_M.isy";
connectAttr "ScaleBlendTail2_M.opb" "ScaleBlendCMTail2_M.isz";
connectAttr "FKTail1_M.sx" "ScaleBlendTail1_M.c2r";
connectAttr "FKTail1_M.sy" "ScaleBlendTail1_M.c2g";
connectAttr "FKTail1_M.sz" "ScaleBlendTail1_M.c2b";
connectAttr "FKIKBlendSplineTailUnitConversion_M.o" "ScaleBlendTail1_M.b";
connectAttr "IKScaleTail1MultiplyDivide_M.ox" "ScaleBlendTail1_M.c1r";
connectAttr "IKScaleTail1MultiplyDivide_M.oy" "ScaleBlendTail1_M.c1g";
connectAttr "IKScaleTail1MultiplyDivide_M.oz" "ScaleBlendTail1_M.c1b";
connectAttr "ScaleBlendTail1_M.opr" "ScaleBlendCMTail1_M.isx";
connectAttr "ScaleBlendTail1_M.opg" "ScaleBlendCMTail1_M.isy";
connectAttr "ScaleBlendTail1_M.opb" "ScaleBlendCMTail1_M.isz";
connectAttr "IKScalerTail1_M.s" "IKScaleTail1MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBTail1_M.o1" "IKScaleTail1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBTail1_M.o1" "IKScaleTail1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBTail1_M.o1" "IKScaleTail1MultiplyDivide_M.i2z"
		;
connectAttr "Main.wm" "IKScalerTail1BM_M.imat";
connectAttr "IKSplineTail1LocalOrient2_M.wm" "IKScalerTail1BM_M.tgt[0].tmat";
connectAttr "IKScalerTail1MM_M.o" "IKScalerTail1DM_M.imat";
connectAttr "IKScalerTail1BM_M.omat" "IKScalerTail1MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail1MM_M.i[1]";
connectAttr "IKScalerTail2_M.s" "IKScaleTail2MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBTail2_M.o1" "IKScaleTail2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBTail2_M.o1" "IKScaleTail2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBTail2_M.o1" "IKScaleTail2MultiplyDivide_M.i2z"
		;
connectAttr "Main.wm" "IKScalerTail2BM_M.imat";
connectAttr "IKSplineTail1LocalOrient2_M.wm" "IKScalerTail2BM_M.tgt[0].tmat";
connectAttr "IKSplineTail2LocalOrient2_M.wm" "IKScalerTail2BM_M.tgt[1].tmat";
connectAttr "IKSplineTail3LocalOrient2_M.wm" "IKScalerTail2BM_M.tgt[2].tmat";
connectAttr "IKScalerTail2MM_M.o" "IKScalerTail2DM_M.imat";
connectAttr "IKScalerTail2BM_M.omat" "IKScalerTail2MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail2MM_M.i[1]";
connectAttr "IKScalerTail3_M.s" "IKScaleTail3MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBTail3_M.o1" "IKScaleTail3MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBTail3_M.o1" "IKScaleTail3MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBTail3_M.o1" "IKScaleTail3MultiplyDivide_M.i2z"
		;
connectAttr "Main.wm" "IKScalerTail3BM_M.imat";
connectAttr "IKSplineTail1LocalOrient2_M.wm" "IKScalerTail3BM_M.tgt[0].tmat";
connectAttr "IKSplineTail2LocalOrient2_M.wm" "IKScalerTail3BM_M.tgt[1].tmat";
connectAttr "IKSplineTail3LocalOrient2_M.wm" "IKScalerTail3BM_M.tgt[2].tmat";
connectAttr "IKScalerTail3MM_M.o" "IKScalerTail3DM_M.imat";
connectAttr "IKScalerTail3BM_M.omat" "IKScalerTail3MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail3MM_M.i[1]";
connectAttr "IKScalerTail4_M.s" "IKScaleTail4MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBTail4_M.o1" "IKScaleTail4MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBTail4_M.o1" "IKScaleTail4MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBTail4_M.o1" "IKScaleTail4MultiplyDivide_M.i2z"
		;
connectAttr "Main.wm" "IKScalerTail4BM_M.imat";
connectAttr "IKSplineTail2LocalOrient2_M.wm" "IKScalerTail4BM_M.tgt[1].tmat";
connectAttr "IKSplineTail3LocalOrient2_M.wm" "IKScalerTail4BM_M.tgt[2].tmat";
connectAttr "IKSplineTail4LocalOrient2_M.wm" "IKScalerTail4BM_M.tgt[3].tmat";
connectAttr "IKScalerTail4MM_M.o" "IKScalerTail4DM_M.imat";
connectAttr "IKScalerTail4BM_M.omat" "IKScalerTail4MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail4MM_M.i[1]";
connectAttr "IKScalerTail5_M.s" "IKScaleTail5MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBTail5_M.o1" "IKScaleTail5MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBTail5_M.o1" "IKScaleTail5MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBTail5_M.o1" "IKScaleTail5MultiplyDivide_M.i2z"
		;
connectAttr "Main.wm" "IKScalerTail5BM_M.imat";
connectAttr "IKSplineTail2LocalOrient2_M.wm" "IKScalerTail5BM_M.tgt[1].tmat";
connectAttr "IKSplineTail3LocalOrient2_M.wm" "IKScalerTail5BM_M.tgt[2].tmat";
connectAttr "IKSplineTail4LocalOrient2_M.wm" "IKScalerTail5BM_M.tgt[3].tmat";
connectAttr "IKScalerTail5MM_M.o" "IKScalerTail5DM_M.imat";
connectAttr "IKScalerTail5BM_M.omat" "IKScalerTail5MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail5MM_M.i[1]";
connectAttr "IKScalerTail6_M.s" "IKScaleTail6MultiplyDivide_M.i1";
connectAttr "Main.wm" "IKScalerTail6BM_M.imat";
connectAttr "IKSplineTail4LocalOrient2_M.wm" "IKScalerTail6BM_M.tgt[3].tmat";
connectAttr "IKScalerTail6MM_M.o" "IKScalerTail6DM_M.imat";
connectAttr "IKScalerTail6BM_M.omat" "IKScalerTail6MM_M.i[0]";
connectAttr "Main.wim" "IKScalerTail6MM_M.i[1]";
connectAttr "FKRootRemoveInbtRotBM2_M.omat" "FKRootRemoveInbtRotMM_M.i[0]";
connectAttr "FKXRoot_M.wm" "FKRootRemoveInbtRotMM_M.i[1]";
connectAttr "FKRootRemoveInbtRotMM_M.o" "LegLockConstrainedDM2_M.imat";
connectAttr "IKSplineTail4_M.volume" "volumeSplineTailUnitConversion_M.i";
connectAttr "volumeSplineTailUnitConversion_M.o" "multWithStretchySplineTail_M.i1x"
		;
connectAttr "SplineTailStretchyUnitConversion_M.o" "multWithStretchySplineTail_M.i2x"
		;
connectAttr "IKCurveInfoAllMultiplySplineTail_M.ox" "volume1OverSplineTail_M.i2x"
		;
connectAttr "volume1OverSplineTail_M.ox" "volumepowSplineTail_M.i1x";
connectAttr "multWithStretchySplineTail_M.ox" "volumeBlendSplineTailBlendTwo_M.ab"
		;
connectAttr "volumepowSplineTail_M.ox" "volumeBlendSplineTailBlendTwo_M.i[1]";
connectAttr "volumeBlendSplineTailBlendTwo_M.o" "IKSquashDistributNormalizerATail5_M.i1[0]"
		;
connectAttr "IKSquashDistributerTail5_M.ox" "IKSquashDistributNormalizerBTail5_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerATail5_M.o1" "IKSquashDistributerTail5_M.i1x"
		;
connectAttr "IKScalerTail5_M.scalerWeight" "IKSquashDistributerTail5_M.i2x";
connectAttr "volumeBlendSplineTailBlendTwo_M.o" "IKSquashDistributNormalizerATail4_M.i1[0]"
		;
connectAttr "IKSquashDistributerTail4_M.ox" "IKSquashDistributNormalizerBTail4_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerATail4_M.o1" "IKSquashDistributerTail4_M.i1x"
		;
connectAttr "IKScalerTail4_M.scalerWeight" "IKSquashDistributerTail4_M.i2x";
connectAttr "volumeBlendSplineTailBlendTwo_M.o" "IKSquashDistributNormalizerATail3_M.i1[0]"
		;
connectAttr "IKSquashDistributerTail3_M.ox" "IKSquashDistributNormalizerBTail3_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerATail3_M.o1" "IKSquashDistributerTail3_M.i1x"
		;
connectAttr "IKScalerTail3_M.scalerWeight" "IKSquashDistributerTail3_M.i2x";
connectAttr "volumeBlendSplineTailBlendTwo_M.o" "IKSquashDistributNormalizerATail2_M.i1[0]"
		;
connectAttr "IKSquashDistributerTail2_M.ox" "IKSquashDistributNormalizerBTail2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerATail2_M.o1" "IKSquashDistributerTail2_M.i1x"
		;
connectAttr "IKScalerTail2_M.scalerWeight" "IKSquashDistributerTail2_M.i2x";
connectAttr "volumeBlendSplineTailBlendTwo_M.o" "IKSquashDistributNormalizerATail1_M.i1[0]"
		;
connectAttr "IKSquashDistributerTail1_M.ox" "IKSquashDistributNormalizerBTail1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerATail1_M.o1" "IKSquashDistributerTail1_M.i1x"
		;
connectAttr "IKScalerTail1_M.scalerWeight" "IKSquashDistributerTail1_M.i2x";
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
connectAttr "MantaRayBirostris_Body_GeoSG.pa" ":renderPartition.st" -na;
connectAttr "MantaRayBirostrisSG.pa" ":renderPartition.st" -na;
connectAttr "MantaRay.msg" ":defaultShaderList1.s" -na;
connectAttr "MantaRay1.msg" ":defaultShaderList1.s" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "normalmap_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of Ray_Rig_Hi_v001.ma
