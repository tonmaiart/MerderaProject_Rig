//Maya ASCII 2025ff03 scene
//Name: import.ma
//Last modified: Mon, Nov 24, 2025 03:42:12 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202505300603-a12e894a3d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26100)";
fileInfo "UUID" "BBF4AB22-4613-3CC2-3371-0A88A374DB89";
createNode transform -s -n "persp";
	rename -uid "2E92A4D0-4762-AFBA-0BFA-ADACC5D3970B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 579.616772078596 416.96275386270827 613.19580075889667 ;
	setAttr ".r" -type "double3" -31.538352729606906 41.400000000000595 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8D40A948-4678-6FFC-A633-218553CD40D9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 995.29796558236035;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -29.777670730021097 -0.46340344003511902 -202.03678610668362 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "451F0CF6-4A40-FDDA-6924-1EAD31B77EC7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "48C960EA-49D8-786E-5EDF-8F8A0CAAA97D";
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
	rename -uid "75960617-4372-C9CA-112C-C79A5C2BDA28";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1F373085-4878-6F35-1F81-799F89E2841C";
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
	rename -uid "F9192740-4FA2-CB71-794B-C18B3C15FEF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E822407A-4EDC-2B91-2D63-4BA68895C7F1";
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
createNode transform -n "Ray";
	rename -uid "B7AF2A02-4958-356B-E4CF-1789F701FEE4";
createNode transform -n "Armature" -p "Ray";
	rename -uid "080CF665-4A9E-C5C6-D9DE-00BCC098D8B6";
	setAttr ".r" -type "double3" -4.3257109609839972e-06 0 0 ;
	setAttr -av ".rx";
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -av ".sy";
	setAttr -av ".sz";
createNode locator -n "ArmatureShape" -p "Armature";
	rename -uid "6EE48CBB-4922-4101-FA19-EBAF3EEEFEF4";
	setAttr -k off ".v";
createNode joint -n "Bone001" -p "Armature";
	rename -uid "7531836F-4700-D51D-5C93-FF8286F94CF0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.8308871277536729e-19 0.059988141059875488 2.0623950958251953 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -90.833267211914062 86.732040405273438 -90.831977844238281 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.082759299999999994 -5.6999709999999997 -99.837384 0
		 -0.0046012099999999997 99.837417000000002 -5.6999690000000003 0 99.999960999999999 -0.00012352899999999999 -0.082887100000000005 0
		 3.22949e-10 5.9988299999999999 206.239531 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone002" -p "Bone001";
	rename -uid "4E5DB287-4C42-3AC9-FF7C-448415AF4B4A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3012872934341431 -1.0967621477675493e-07 2.4156673816833063e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -90.000068664550781 -0.0015633712755516171 3.2370741367340088 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999994039535522 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.080158699999999999 -0.053301800000000003 -99.999960999999999 0
		 -99.999954000000002 0.00054416700000000002 0.080158400000000005 0 0.00050144100000000004 99.999994999999998 -0.053302200000000001 0
		 -0.10767 -1.418482 76.322389999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone003" -p "Bone002";
	rename -uid "2538E97A-48B4-8562-DDED-B788D2CE6FC3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1831725835800171 1.191320748716862e-07 6.1227346748182754e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -5.3496081818593666e-05 1.2140990495681763 -0.015903914347290993 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999988079071045 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999994039535522 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.0523886 -2.1721330000000001 -99.976400999999996 0
		 -99.999983999999998 -0.00010521199999999999 0.052403199999999997 0 -0.0012434600000000001 99.976421999999999 -2.1721330000000001 0
		 -0.20252300000000001 -1.4815400000000001 -41.994798000000003 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone004" -p "Bone003";
	rename -uid "4ECE26E1-463D-FDA9-71A7-B081EF53FF64";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.0222017765045166 1.1933454402424104e-07 -3.2249712234033723e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.004317485261708498 0.86014878749847412 -0.11569026112556459 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999988079071045 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.149531 -3.672717 -99.932428000000002 0 -99.999882999999997 -0.0120196 -0.14918999999999999 0
		 -0.0065321900000000002 99.932542999999995 -3.6727310000000002 0 -0.25608700000000001 -3.7019030000000002 -144.19088199999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone005" -p "Bone004";
	rename -uid "4E722E81-4FFD-DC79-69A1-EA955B7EF524";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.52260732650756836 5.3652593123842962e-07 -3.2591607634913089e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.6647061531548388e-05 -2.4997074604034424 0.1120026931166649 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.0461921 0.689249 -99.997624000000002 0 -99.999989999999997 -0.0048792200000000001 0.046159499999999999 0
		 -0.0045609500000000002 99.997632999999993 0.68925099999999995 0 -0.17799499999999999 -5.6212939999999998 -196.41629499999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone006" -p "Bone005";
	rename -uid "CA97D02B-40D3-C476-021E-6CA952C66D09";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.66145223379135132 -5.9265630625304766e-08 3.2115764270201907e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00015534478006884456 0.49997922778129578 0.014638537541031837 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.071698499999999998 -0.18337500000000001 -99.999814999999998 0
		 -99.999977999999999 -0.0051846100000000001 0.071708099999999997 0 -0.0053160999999999998 99.999842000000001 -0.18337200000000001 0
		 -0.20854200000000001 -5.1653859999999998 -262.559957 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone007" -p "Bone006";
	rename -uid "7C8B6953-443C-B4BC-20CA-44AC04F486A3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.53862792253494263 5.9451167544466443e-08 -1.7390497930591664e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00028046793886460364 2.8562539228005338e-05 -0.046561095863580704 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999988079071045 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.0095659100000000004 -0.183421 -99.999830000000003 0
		 -99.999987000000004 -0.0060024600000000003 -0.0095549199999999997 0 -0.0059849300000000003 99.999836000000002 -0.183421 0
		 -0.247167 -5.2641739999999997 -316.42265700000002 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone008" -p "Bone007";
	rename -uid "92ED230B-40A6-1A69-0A67-B1B4AF4E6FCD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.50403738021850586 -3.637978807091713e-12 9.3295312808550079e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00041129818418994546 -2.4392618342972128e-06 -0.056145776063203812 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999988079071045 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.107559 -0.18341099999999999 -99.999768000000003 0
		 -99.999937000000003 -0.0070515500000000002 -0.107546 0 -0.0068542799999999999 99.999836000000002 -0.183418 0
		 -0.24234600000000001 -5.3566159999999998 -366.82631500000002 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone009" -p "Bone008";
	rename -uid "C4191749-4038-FA72-1875-6ABDA7CEC02A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.51719927787780762 3.1832314562052488e-10 6.8869397296111856e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00056552939349785447 -2.8574473617481999e-05 0.14552730321884155 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.14643400000000001 -0.18337800000000001 -99.999729000000002 0
		 -99.999898000000002 -0.0071776699999999997 0.14644799999999999 0 -0.0074462 99.999842000000001 -0.183367 0
		 -0.18671599999999999 -5.4514690000000003 -418.54616199999998 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone010" -p "Bone009";
	rename -uid "B94FCD6D-40B8-9E12-3795-72A23672E546";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.50663101673126221 -6.1091213865438476e-08 -1.8364424647643318e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00042972571100108325 3.4595057513797656e-05 -0.15072450041770935 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.11663 -0.183418 -99.999765999999994 0 -99.999934999999994 -0.0088094599999999999 -0.116614 0
		 -0.0085955500000000004 99.999836000000002 -0.18342800000000001 0 -0.26089800000000002 -5.5443930000000003 -469.208935 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone010_end" -p "Bone010";
	rename -uid "CE6AD34C-4F6A-2E08-6A73-BDB341D8BF2B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.50663042068481445 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.098999995574355029;
	setAttr ".fbxID" 5;
createNode joint -n "Bone016" -p "Bone001";
	rename -uid "2DA8114F-4AE1-5CF2-0862-A5B989A1E287";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3013713359832764 4.5422789298754651e-06 3.3545586575201014e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.00013786929775960743 -69.422462463378906 3.2677915096282959 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 93.590557000000004 -7.2021899999999996e-06 -35.225076000000001 0
		 3.8848499999999999e-05 100 8.2771399999999998e-05 0 35.225079000000001 -9.1150599999999994e-05 93.590565999999995 0
		 -0.10767 -1.4184969999999999 76.313973000000004 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone017" -p "Bone016";
	rename -uid "37DB7C04-4481-1631-40FA-ED8C8B5E21E2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.73489731550216675 -3.8349128317349823e-09 -4.5815699678541932e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.017565976828336716 -11.914883613586426 -1.1760482788085938 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 98.827414000000005 -2.008254 -15.136342000000001 0
		 1.9162920000000001 99.978802000000002 -0.75319700000000001 0 15.148260000000001 0.45430900000000002 98.844938999999997 0
		 68.671785 -1.418501 50.427182999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone018" -p "Bone017";
	rename -uid "25417742-4C74-0E70-907D-C8AFE15D77C2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.90134716033935547 6.3795596361160278e-08 -1.8383434507995844e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.69391846656799316 1.5252363681793213 -0.26724863052368164 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 0.99999988079071045 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 98.379182999999998 -2.4857849999999999 -17.758285000000001 0
		 2.1618149999999998 99.956312999999994 -2.0155259999999999 0 17.800628 1.598956 98.389938999999998 0
		 157.74957699999999 -3.2286299999999999 36.784063000000003 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone019" -p "Bone018";
	rename -uid "05BB1A6F-4C21-705D-BCC0-568DC4D454DD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.85533034801483154 6.7520886659622192e-08 -1.1612428352236748e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.33774137496948242 1.8627912998199463 1.047796368598938 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 0.99999988079071045 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 97.771634000000006 -0.709148 -20.981044000000001 0
		 0.23871000000000001 99.974014999999994 -2.266683 0 20.991664 2.1660879999999998 97.747909000000007 0
		 241.89628200000001 -5.3547900000000004 21.594854999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone020" -p "Bone019";
	rename -uid "D89FA961-4B98-5724-BC1C-2AB1FE62BDA2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.65886980295181274 -1.7292331904172897e-06 1.6740523278713226e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.10880493372678757 2.8839607238769531 0.84187763929367065 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 96.584612000000007 0.64990199999999998 -25.903493999999998 0
		 -1.14872 99.977659000000003 -1.7747790000000001 0 25.886167 2.0117219999999998 96.570479000000006 0
		 306.315044 -5.8221990000000003 7.7710889999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone021" -p "Bone020";
	rename -uid "60C877AD-43C4-D4FE-96A8-58B4C41D5EAD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.72715675830841064 2.4703331291675568e-07 1.8731225281953812e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.31962516903877258 1.9911369085311892 -0.85432142019271851 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000002384185791 0.99999982118606567 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 95.633279000000002 -0.91024400000000005 -29.213857999999998 0
		 0.12845699999999999 99.963601999999995 -2.69415 0 29.227747999999998 2.538977 95.599638999999996 0
		 376.54721599999999 -5.3495920000000003 -11.064788 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone023" -p "Bone021";
	rename -uid "00D3DBFB-4A01-B373-B481-C4938FEB0178";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44692966341972351 1.9082799553871155e-06 -1.4074612408876419e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 1.8046685457229614 4.0285806655883789 1.3846744298934937 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 0.99999988079071045 1.0000002384185791 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000002384185791 0.99999982118606567 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 93.318855999999997 1.3235319999999999 -35.914372 0
		 -1.051758 99.989929000000004 0.95201599999999997 0 35.923347 -0.51067899999999999 93.323365999999993 0
		 419.28855600000003 -5.7562189999999998 -24.121348999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone023_end" -p "Bone023";
	rename -uid "B94EB0AE-466E-56D9-9D98-06BBB5FC5545";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.44692951440811157 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.098999995574355029;
	setAttr ".fbxID" 5;
createNode joint -n "connectBone001" -p "Bone001";
	rename -uid "AD34F58C-4755-E6E4-1331-16B64DF1D9E6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3012962341308594 2.4516674557162332e-07 5.198457841970594e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -90.000190734863281 69.281082153320312 3.2673735618591309 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000001192092896 1.0000001192092896 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -93.562028999999995 -4.9157299999999998e-05 -35.300834999999999 0
		 -35.300837000000001 6.97184e-05 93.562036000000006 0 -2.1381399999999998e-05 100.000012 -8.2582900000000012e-05 0
		 -0.10768899999999999 -1.4184969999999999 76.321499000000003 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone017FBXASC040mirroredFBXASC041" -p "connectBone001";
	rename -uid "B07294C9-4132-C787-6812-AB979B22CC28";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.73353451490402222 -1.2780121494415653e-07 1.2071814126102254e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -89.739540100097656 1.1503778696060181 11.964648246765137 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999982118606567 0.99999982118606567 0.9999997615814209 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1.0000001192092896 1.0000001192092896 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -98.827679000000003 -2.0076849999999999 -15.134715 0
		 1.9157010000000001 -99.978821999999994 0.75334299999999998 0 -15.146633 0.45457599999999998 98.845196999999999 0
		 -68.738665999999995 -1.41852 50.427132 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone018FBXASC040mirroredFBXASC041" -p "Bone017FBXASC040mirroredFBXASC041";
	rename -uid "6446DEC6-4707-8E32-11C4-039D5D7CDF56";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.9013482928276062 -6.6263601183891296e-07 -2.3014727048575878e-06 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.6939430832862854 1.5270886421203613 0.26772695779800415 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999982118606567 1 0.99999982118606567 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999982118606567 0.99999982118606567 0.9999997615814209 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -98.378883000000002 -2.4860690000000001 -17.759843 0
		 2.1620240000000002 -99.956298000000004 2.0158290000000001 0 -17.802199000000002 1.599178 98.389644000000004 0
		 -157.81679199999999 -3.228078 36.785271000000002 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone019FBXASC040mirroredFBXASC041" -p "Bone018FBXASC040mirroredFBXASC041";
	rename -uid "7C1D9E15-4E0F-A226-95CE-56BAADF0A03C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.85533028841018677 7.9162418842315674e-09 -1.3670069165527821e-06 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.33777430653572083 1.8624032735824585 -1.0478616952896118 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1 1.0000001192092896 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999982118606567 1 0.99999982118606567 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -97.771443000000005 -0.70931599999999995 -20.981938 0
		 0.23879400000000001 -99.974018000000001 2.2669929999999998 0 -20.992564999999999 2.1663670000000002 97.747731999999999 0
		 -241.96323699999999 -5.3544910000000003 21.594608000000001 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone020FBXASC040mirroredFBXASC041" -p "Bone019FBXASC040mirroredFBXASC041";
	rename -uid "E0F6D26C-4E21-469A-77C0-A99A288DF4B8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.65887200832366943 1.4908146113157272e-06 4.9289083108305931e-06 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.10867635905742645 2.8837358951568604 -0.84217029809951782 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999982118606567 1.0000002384185791 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1 1.0000001192092896 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -96.584473000000003 0.65023799999999998 -25.904017 0
		 -1.149187 -99.977620999999999 1.775185 0 -25.886680999999999 2.0122390000000001 96.570345000000003 0
		 -306.38218799999999 -5.8219770000000004 7.7706629999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone021FBXASC040mirroredFBXASC041" -p "Bone020FBXASC040mirroredFBXASC041";
	rename -uid "24D8B6FF-4073-2DAD-47F7-1E8EADA77E03";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.72715777158737183 -5.7741999626159668e-08 3.6255223676562309e-06 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.31950166821479797 1.9899606704711912 0.85478246212005615 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000002384185791 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999982118606567 1.0000002384185791 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -95.633711000000005 -0.91068899999999997 -29.212387 0
		 0.12883500000000001 -99.963595999999995 2.694569 0 -29.226293999999999 2.5392809999999999 95.600076999999999 0
		 -376.61436400000002 -5.3491369999999998 -11.065274 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone023FBXASC040mirroredFBXASC041" -p "Bone021FBXASC040mirroredFBXASC041";
	rename -uid "246AB5D3-4063-CB4D-4654-C48C8340319F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44693070650100708 -2.0181760191917419e-06 -7.5316056609153748e-06 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -1.8046221733093264 4.0273337364196777 -1.3848848342895508 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000002384185791 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -93.320178999999996 1.323483 -35.910924000000001 0
		 -1.0518719999999999 -99.989940000000004 -0.95163399999999998 0 -35.919910000000002 -0.51032999999999995 93.324719999999999 0
		 -419.35577999999998 -5.7559699999999996 -24.121915999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone023FBXASC040mirroredFBXASC041_end" -p "Bone023FBXASC040mirroredFBXASC041";
	rename -uid "83A3DFFE-4F29-7CAA-3E7F-8FB4B7774D4B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.44693037867546082 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.098999995574355029;
	setAttr ".fbxID" 5;
createNode joint -n "connectBone002" -p "Bone001";
	rename -uid "CAC06D40-49EC-1EF8-E537-558160259CB8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3013186454772949 1.5620585145370569e-06 3.3940160903966898e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -89.520660400390625 145.58074951171875 4.1154332160949707 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000002384185791 1.0000001192092896 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -56.456049 -1.2205509999999999 82.530141999999998 0
		 82.536308000000005 5.9635200000000001e-05 56.460270000000001 0 -0.68917499999999998 99.992570000000001 1.0073639999999999 0
		 -0.107691 -1.418493 76.319241000000005 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone012FBXASC040mirroredFBXASC041" -p "connectBone002";
	rename -uid "B94F29A5-4F6E-49B1-AA82-0D91BAAFBC07";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.6902689933776855 1.2044994264215347e-06 1.9511207938194275e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 15.005575180053711 9.5736875534057617 61.754718780517578 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1.0000002384185791 1.0000001192092896 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 45.465085000000002 -17.199895999999999 87.390463999999994 0
		 87.570569000000006 26.542490000000001 -40.334780000000002 0 -16.258061000000001 94.866546 27.129604 0
		 -95.533531999999994 -3.4815309999999999 215.81743700000001 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone013FBXASC040mirroredFBXASC041" -p "Bone012FBXASC040mirroredFBXASC041";
	rename -uid "6DC63532-4F02-BA0D-EE45-5980AFA5022F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.24592210352420807 -5.6996941566467285e-07 2.6077032089233398e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 2.718447208404541 -3.153517484664917 19.07142448425293 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 70.580188000000007 -2.3529209999999998 70.801860000000005 0
		 66.875316999999995 35.183376000000003 -65.496705000000006 0 -23.369399999999999 93.576661999999999 26.406016999999999 0
		 -84.352665999999999 -7.7113620000000003 237.30874399999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone014FBXASC040mirroredFBXASC041" -p "Bone013FBXASC040mirroredFBXASC041";
	rename -uid "BD7792FE-4723-CA27-9CC3-C38AC1787638";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2026219516992569 -5.3644180297851562e-07 -2.0116567611694336e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 11.498093605041504 7.2075910568237305 9.1099939346313477 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000002384185791 0.99999970197677612 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 82.575986 -8.5188780000000008 55.755189999999999 0
		 51.142085000000002 52.994413999999999 -67.646722999999994 0 -23.784385 84.374284000000003 48.117379999999997 0
		 -70.051589000000007 -8.1881769999999996 251.654811 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone015FBXASC040mirroredFBXASC041" -p "Bone014FBXASC040mirroredFBXASC041";
	rename -uid "F7632DE2-4D8D-0913-0CC5-4DBFF62EDD35";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21605780720710754 1.0803341865539551e-07 4.4703483581542969e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 6.4837222099304199 8.9645566940307617 3.186337947845459 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 0.99999994039535522 0.99999988079071045 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000002384185791 0.99999970197677612 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 87.955327999999994 -18.639683999999999 43.777075000000004 0
		 45.023750999999997 62.357979999999998 -63.908934000000002 0 -15.386063 75.921334999999999 63.239403000000003 0
		 -52.210389999999997 -10.028741999999999 263.70114100000001 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone024FBXASC040mirroredFBXASC041" -p "Bone015FBXASC040mirroredFBXASC041";
	rename -uid "6B45B2DC-45D8-50DB-B2E7-D9AFB5AA8244";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21425953507423401 -4.0233135223388672e-07 1.0430812835693359e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.96041744947433472 1.8829807043075562 -8.4826440811157227 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999982118606567 1 1.0000001192092896 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 0.99999994039535522 0.99999988079071045 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 80.813850000000002 -30.113924000000001 50.618960999999999 0
		 57.710911000000003 57.661327 -57.832723999999999 0 -11.771856 75.949477999999999 63.977328999999997 0
		 -33.365135000000002 -14.022501 273.08080699999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone024FBXASC040mirroredFBXASC041_end" -p "Bone024FBXASC040mirroredFBXASC041";
	rename -uid "7827CAC7-4BE9-4C22-6CCD-4DBA308012A8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.21425952017307281 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.098999995574355029;
	setAttr ".fbxID" 5;
createNode joint -n "connectBone003" -p "Bone001";
	rename -uid "00C05918-4B9B-80F6-691F-C79441A87258";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3013186454772949 1.5620585145370569e-06 3.3940160903966898e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -90.477951049804688 -145.63426208496094 4.1143598556518555 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 56.515732999999997 -1.2199249999999999 82.489292000000006 0
		 82.495408999999995 -6.2678100000000006e-05 -56.519933999999999 0 0.68955200000000005 99.992555999999993 1.0063470000000001 0
		 -0.1077 -1.418493 76.319248999999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone012" -p "connectBone003";
	rename -uid "72F65852-4DC7-93B6-F17A-768D3FC9BD6C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.6911081075668335 -6.7352129917708226e-07 4.0046870708465576e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -15.005630493164064 9.5744132995605469 -61.795795440673828 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999988079071045 0.99999994039535522 0.99999988079071045 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -45.464466000000002 -17.200095999999998 87.390698 0
		 87.570858999999999 -26.542439000000002 40.334158000000002 0 16.258109999999999 94.866506000000001 27.129653000000001 0
		 95.466480000000004 -3.4815109999999998 215.817654 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone013" -p "Bone012";
	rename -uid "C53D5B5A-436C-1C02-FD56-28A3DF423EAE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.24592104554176331 -2.4028122425079346e-07 -4.4703483581542969e-08 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.7184407711029053 -3.1536009311676025 -19.071531295776367 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999988079071045 0.99999994039535522 0.99999988079071045 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -70.579809999999995 -2.3529369999999998 70.802177999999998 0
		 66.875651000000005 -35.183413000000002 65.496381999999997 0 23.369539 93.576660000000004 26.405933999999998 0
		 84.285787999999997 -7.7113899999999997 237.30885799999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone014" -p "Bone013";
	rename -uid "2C50B4B2-4918-5926-5D77-ED86EF679418";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.20262244343757629 2.9802322387695312e-08 -1.4901161193847656e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -11.498053550720215 7.2076101303100586 -9.1099433898925781 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -82.575642999999999 -8.5189369999999993 55.755603999999998 0
		 51.142491 -52.994399999999999 67.646433999999999 0 23.784593000000001 84.374288000000007 48.117265000000003 0
		 69.984731999999994 -8.1881500000000003 251.65497199999999 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone015" -p "Bone014";
	rename -uid "4F81320B-45E8-9C5D-8E5F-BDB443F38063";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21605899930000305 3.986060619354248e-07 1.7136335372924805e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -6.4837446212768555 8.9646739959716797 -3.1868641376495361 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999994039535522 1.0000001192092896 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -87.955445999999995 -18.639431999999999 43.776781 0
		 45.023404999999997 -62.358026000000002 63.909109999999998 0 15.386039999999999 75.921333000000004 63.239373999999998 0
		 52.143535999999997 -10.028756 263.70147400000002 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone024" -p "Bone015";
	rename -uid "6A0266B3-4B9A-E663-2659-6BAB49EC0ABE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21425975859165192 2.9802322387695312e-07 2.644956111907959e-07 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.96047836542129517 1.8829153776168823 8.4829082489013672 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999988079071045 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999994039535522 1.0000001192092896 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -80.813772999999998 -30.113866000000002 50.619042999999998 0
		 57.710982999999999 -57.661216000000003 57.832783999999997 0 11.771865999999999 75.949591999999996 63.977195000000002 0
		 33.298211999999999 -14.022474000000001 273.08113400000002 1;
	setAttr ".radi" 0.099000001475214955;
	setAttr ".fbxID" 5;
createNode joint -n "Bone024_end" -p "Bone024";
	rename -uid "30004547-4430-BF46-F0E7-17816ADD005B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.21425977349281311 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.098999995574355029;
	setAttr ".fbxID" 5;
createNode transform -n "Camera" -p "Ray";
	rename -uid "313912CA-4938-880F-44E2-0BBD626E1A85";
	setAttr ".t" -type "double3" 735.88916015625 495.8309326171875 692.5791015625 ;
	setAttr ".r" -type "double3" 22.768804428452686 142.10832847501666 34.348498826522622 ;
	setAttr ".s" -type "double3" 99.999994039535522 100 100 ;
	setAttr ".ra" -type "double3" 0 -90 0 ;
createNode camera -n "CameraShape" -p "Camera";
	rename -uid "5273D018-4901-2599-7A76-ABBEDCBE33C2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.4173228346456692 0.94488188976377951 ;
	setAttr ".ncp" 9.9999995529651553;
	setAttr ".fcp" 9999.9994039535522;
	setAttr ".fd" 9999.9990234375;
	setAttr ".coi" 11.143766171809377;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".bfc" no;
createNode transform -n "Light" -p "Ray";
	rename -uid "2BB42D8D-4903-68EC-F5C1-3CAA12664D88";
	setAttr ".t" -type "double3" 407.62454223632812 590.38623046875 -100.54539489746094 ;
	setAttr ".r" -type "double3" 47.533543811639426 107.22077404372372 10.743655337998277 ;
	setAttr ".s" -type "double3" 100 99.999994039535522 100 ;
	setAttr ".spt" -type "double3" 0 0 -5.6843418860808015e-14 ;
createNode pointLight -n "LightShape" -p "Light";
	rename -uid "455BA5F8-4B5D-1F9C-3A85-E3A420D9D5C0";
	addAttr -ci true -sn "EnableNearAttenuation" -ln "EnableNearAttenuation" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "NearAttenuationStart" -ln "NearAttenuationStart" -at "double";
	addAttr -ci true -sn "NearAttenuationEnd" -ln "NearAttenuationEnd" -at "double";
	addAttr -ci true -sn "EnableFarAttenuation" -ln "EnableFarAttenuation" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "FarAttenuationStart" -ln "FarAttenuationStart" -at "double";
	addAttr -ci true -sn "FarAttenuationEnd" -ln "FarAttenuationEnd" -at "double";
	addAttr -ci true -sn "DecayStart" -ln "DecayStart" -at "double";
	setAttr -k off ".v";
	setAttr ".in" 1000;
	setAttr ".urs" no;
	setAttr ".de" 2;
	setAttr ".dms" yes;
	setAttr ".DecayStart" 24.999998509883881;
createNode transform -n "MantaRayBirostris" -p "Ray";
	rename -uid "02BEBFF1-4100-9AF0-4936-0BA4B4B557B0";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "MantaRayBirostrisShape" -p "MantaRayBirostris";
	rename -uid "BDF3129C-4380-9760-229E-AB89E832FCA9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "MantaRayBirostrisShapeOrig" -p "MantaRayBirostris";
	rename -uid "328FB2B3-4685-B14A-0F71-3D8295672ACF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "skinCluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[0:799]";
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 948 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.96554905 0.014764748 0.96448284
		 0.01488195 0.96342301 0.015118685 0.96531427 0.015787808 0.96344709 0.015845742 0.96409369
		 0.016027857 0.96498275 0.016648777 0.96424198 0.016689066 0.9653433 0.017133219 0.93691766
		 0.041707933 0.93707871 0.042720277 0.93782657 0.043064199 0.93819368 0.043803357
		 0.93921411 0.043934599 0.48031354 0.049922839 0.48383814 0.051011771 0.47768384 0.05352027
		 0.48191255 0.0553798 0.48531389 0.056383997 0.49126756 0.057789885 0.47976869 0.058242656
		 0.48860729 0.06060338 0.48457146 0.061751045 0.48011357 0.062956281 0.47651207 0.063116297
		 0.91040897 0.068440631 0.91063678 0.069671109 0.91141725 0.070260331 0.91202903 0.071023218
		 0.91326553 0.071215041 0.50596786 0.074778013 0.50228435 0.07876996 0.49434566 0.085158937
		 0.4848178 0.087990083 0.47987401 0.088217765 0.88389397 0.09517777 0.88418484 0.096621454
		 0.88499832 0.097463198 0.88586348 0.098251753 0.88731503 0.098500237 0.53177798 0.10241724
		 0.52900976 0.10691488 0.51550788 0.12143912 0.85727948 0.12181157 0.85770011 0.12353519
		 0.8585791 0.12466647 0.85973555 0.12551199 0.86147076 0.12588203 0.56763417 0.13223073
		 0.49455917 0.13297948 0.48978651 0.13403918 0.56463444 0.13885617 0.83056712 0.14843756
		 0.83114272 0.15050521 0.83208561 0.1519462 0.83355355 0.15284653 0.60135049 0.15332079
		 0.83563715 0.15336141 0.75142372 0.15610977 0.76268357 0.15692359 0.75224519 0.16021593
		 0.76130158 0.16037162 0.73108053 0.16150415 0.76846755 0.16303203 0.59635901 0.16363899
		 0.71808666 0.16439377 0.63143563 0.16478589 0.73307216 0.16582066 0.54070652 0.16604859
		 0.7669965 0.16646448 0.75993228 0.16653043 0.77011245 0.16725728 0.76532423 0.16868511
		 0.68652135 0.16911228 0.72002113 0.16912441 0.76803648 0.16935769 0.7801826 0.16938633
		 0.65811175 0.17041466 0.78351593 0.17075481 0.76520896 0.17087112 0.76169646 0.17123096
		 0.77931762 0.1715185 0.75814587 0.17235495 0.78190434 0.17242019 0.76400471 0.17272039
		 0.78421342 0.1735453 0.78006053 0.17355654 0.7619738 0.17362873 0.78240544 0.17412637
		 0.80270433 0.17436256 0.74871671 0.17471077 0.68791509 0.17484276 0.63077909 0.1753161
		 0.75716227 0.17532061 0.7525081 0.17559987 0.75820428 0.17630497 0.65902358 0.17711127
		 0.77226663 0.17737259 0.80405557 0.17764008 0.75863999 0.17832313 0.75529355 0.17867389
		 0.76208377 0.17918329 0.80524844 0.17957982 0.80722225 0.18071546 0.81053787 0.1819703
		 0.76492661 0.18214332 0.50777274 0.18296355 0.78789866 0.18325554 0.7824232 0.18351354
		 0.78430915 0.18395808 0.78328395 0.18416451 0.50158429 0.18429871 0.76364058 0.18450718
		 0.77766365 0.18589355 0.78875244 0.18763414 0.78101087 0.18825501 0.78272772 0.18910372
		 0.75722921 0.18913138 0.76477468 0.1898203 0.79292965 0.19226393 0.76560885 0.19612211
		 0.79767948 0.19630463 0.78896743 0.19634311 0.80208158 0.19702978 0.76205719 0.19739604
		 0.81189007 0.20041808 0.80148464 0.20063856 0.81469953 0.20102903 0.80130845 0.20166966
		 0.81136489 0.20224234 0.7963863 0.20237142 0.80198479 0.20251095 0.81308526 0.20269066
		 0.56906021 0.20328161 0.79728556 0.20406362 0.81616992 0.20431711 0.81200647 0.20456836
		 0.81406635 0.20524774 0.79974699 0.2073421 0.77625263 0.20942864 0.80843377 0.21247815
		 0.81967515 0.21358554 0.70839953 0.21509686 0.61873025 0.21555823 0.82414615 0.21576357
		 0.81713992 0.21577816 0.78590453 0.21656741 0.68176031 0.21674801 0.82040024 0.21717997
		 0.73220748 0.21793222 0.79296774 0.21803048 0.65576273 0.21879286 0.8173368 0.21914193
		 0.8151564 0.21932697 0.7987954 0.2197504 0.80389047 0.21997304 0.81345826 0.22015749
		 0.79901397 0.22131038 0.8300938 0.22189254 0.76370382 0.22232218 0.80515915 0.22241277
		 0.81250513 0.22265087 0.81491059 0.22284773 0.82655573 0.22319226 0.78869158 0.22329557
		 0.82010818 0.22438844 0.8079254 0.22614987 0.81412345 0.22621596 0.80996025 0.22650908
		 0.81103009 0.227497 0.79711562 0.22790025 0.80770946 0.2295292 0.52708644 0.23193553
		 0.81090373 0.23224452 0.82656908 0.23239027 0.83069456 0.23324502 0.51732117 0.23599109
		 0.8119154 0.23605819 0.73066324 0.23636736 0.60943365 0.23985444 0.70889145 0.2448176
		 0.73857987 0.248059 0.82106668 0.25172228 0.82541507 0.25367579 0.76886588 0.2537497
		 0.75045228 0.25570855 0.5866406 0.25662714 0.68019092 0.25815061 0.81792963 0.26486209
		 0.82269955 0.26671901 0.71902549 0.26805747 0.54584694 0.27662426 0.63592696 0.27669391
		 0.68392634 0.27702945 0.77221864 0.2774983 0.74248958 0.2776683 0.52913183 0.2790812
		 0.64670837 0.29224941 0.6925537 0.2951276 0.81287879 0.29709443 0.81863546 0.29836476
		 0.71084076 0.30334672 0.52673769 0.30366659 0.5307101 0.30410796 0.77114886 0.30416557
		 0.55072594 0.30592027 0.7297979 0.30665791 0.65676999 0.30799878 0.59327751 0.30802065
		 0.61280388 0.31819507 0.66693175 0.32133126 0.51913291 0.32318473 0.52413309 0.32485852
		 0.52124703 0.32489473 0.52800351 0.32595345 0.81125045 0.32601145 0.81796092 0.32677352
		 0.76967949 0.3301948 0.54399604 0.33021736 0.68048936 0.3311899 0.62879539 0.33246288
		 0.50927818 0.33345914 0.51177633 0.33618563 0.51459271 0.33898482 0.50233918 0.33969042
		 0.69646007 0.34089357 0.51947922 0.34167683 0.50449377 0.342264 0.57174987 0.34316424
		 0.50697976 0.34532678 0.64195597 0.34687689 0.50037372 0.34795043 0.50507444 0.34947109
		 0.53268963 0.35079083 0.58567142 0.35109666 0.71225196 0.35132056 0.5123108 0.3519496
		 0.82418251 0.35329717 0.81367654 0.35418999 0.50265568 0.3549816 0.49686724 0.3554565
		 0.49951684 0.35591668 0.50303423 0.35958594 0.65666354 0.35970768 0.52205056 0.36022925
		 0.52285528 0.3613534 0.59926897 0.36298355 0.50602639 0.36337575 0.54701227 0.36569741
		 0.77374005 0.36713251;
	setAttr ".uvst[0].uvsp[250:499]" 0.49375516 0.36857489 0.56430435 0.36985517
		 0.49741232 0.37019399 0.5449301 0.37175855 0.51361805 0.3722924 0.53227746 0.37237364
		 0.51468915 0.37321389 0.67128831 0.37537104 0.5570302 0.37573135 0.53307688 0.37577644
		 0.4926796 0.37612301 0.74966764 0.37696955 0.6124714 0.37703758 0.49995184 0.37739819
		 0.49638718 0.37744507 0.52131385 0.37975538 0.57685918 0.38088194 0.52244979 0.38153827
		 0.50533491 0.38161153 0.83631718 0.38309687 0.50873208 0.38440371 0.50975561 0.38521907
		 0.56953245 0.38587081 0.51334304 0.38796866 0.82612044 0.38831761 0.53807575 0.3883732
		 0.53363502 0.38858363 0.49056751 0.38877788 0.51448643 0.38937682 0.54239982 0.38950014
		 0.49525857 0.38951114 0.6268214 0.3899169 0.52774435 0.39125264 0.54591137 0.39336196
		 0.50101596 0.39360988 0.54538929 0.39405224 0.68190038 0.39465919 0.5210914 0.39656207
		 0.59222239 0.39775258 0.50621158 0.39794537 0.50730342 0.39882132 0.55236357 0.39951408
		 0.50836736 0.39998552 0.55172825 0.4001013 0.73341876 0.40012833 0.63901329 0.40323991
		 0.48931038 0.40387985 0.51590413 0.40436706 0.49251574 0.40464914 0.58546752 0.40466321
		 0.49706936 0.4066551 0.50218219 0.41191739 0.5028019 0.41240847 0.6094383 0.41272706
		 0.50337952 0.41289613 0.51182902 0.4157235 0.85815471 0.41630766 0.78712696 0.41649178
		 0.64725929 0.41697603 0.57206392 0.41837621 0.48618007 0.41839784 0.48987418 0.41905677
		 0.5712834 0.41917476 0.85160255 0.41945529 0.60461789 0.42016524 0.49443972 0.42048976
		 0.4985112 0.42294383 0.49890733 0.42326009 0.49934822 0.42361191 0.62074751 0.42502657
		 0.50790018 0.42729521 0.49266422 0.4300465 0.49413979 0.43094522 0.49438518 0.43115586
		 0.49470383 0.4315398 0.48947293 0.43206385 0.61503917 0.43243217 0.49237144 0.43400523
		 0.4926855 0.43420136 0.49305582 0.43445218 0.48501068 0.43546018 0.68496609 0.43714336
		 0.59137076 0.43764019 0.5907982 0.43828869 0.4996773 0.43974623 0.48905832 0.43990037
		 0.48962069 0.44033387 0.49007577 0.44066712 0.71435803 0.44135344 0.62529802 0.44221771
		 0.59766829 0.44394982 0.82497418 0.4439809 0.66083282 0.44442365 0.6192866 0.44443744
		 0.59699017 0.44448751 0.60160911 0.44737202 0.88875842 0.45145902 0.6028344 0.4516688
		 0.88432711 0.45432714 0.60272551 0.45611268 0.64052564 0.45619473 0.61554074 0.45637801
		 0.6189605 0.45709944 0.68723345 0.45710817 0.71228325 0.4581148 0.75944448 0.45908639
		 0.66545963 0.46031207 0.68776524 0.46106863 0.60019213 0.46206215 0.66664243 0.46415582
		 0.13377301 0.46545231 0.63019168 0.46626633 0.66667217 0.46704143 0.63133377 0.46704513
		 0.61002386 0.46713269 0.12896147 0.46753615 0.1285203 0.46792507 0.8701207 0.46814811
		 0.61183202 0.46822751 0.12828135 0.4684428 0.5950368 0.46883386 0.75561374 0.46893701
		 0.66842967 0.46911559 0.64993751 0.4691917 0.13559866 0.46971637 0.14840633 0.4699508
		 0.13290814 0.47156423 0.13256541 0.47184199 0.4926911 0.47189254 0.13225515 0.47210652
		 0.13783166 0.4728263 0.50241083 0.47298658 0.14710627 0.47298759 0.65273994 0.47401476
		 0.13632663 0.47416449 0.58735329 0.47419757 0.1356619 0.47441047 0.61852235 0.47470024
		 0.1349815 0.47480112 0.6023702 0.47527212 0.46760851 0.47543371 0.4928692 0.47549218
		 0.50601399 0.4755801 0.16117881 0.47561097 0.61946791 0.47574985 0.14561287 0.47596258
		 0.49719858 0.475972 0.60380399 0.47638291 0.63983256 0.47659189 0.91696191 0.47662163
		 0.12636477 0.47675776 0.65560234 0.47676599 0.80881912 0.4772737 0.49966699 0.47752279
		 0.57609433 0.47853059 0.14302282 0.47895271 0.50492972 0.47909176 0.15914798 0.47909653
		 0.65838474 0.47920078 0.14260477 0.47969222 0.6066345 0.47990614 0.49413127 0.47993785
		 0.46787405 0.48038989 0.91305673 0.48039287 0.14180426 0.48046511 0.49893832 0.48069912
		 0.60747296 0.48091066 0.59190542 0.48163125 0.6465745 0.48176947 0.15692295 0.48262191
		 0.59309351 0.48266819 0.56461692 0.48272237 0.17365441 0.48309094 0.62855458 0.48313481
		 0.80762547 0.48348778 0.59399408 0.48373961 0.64247543 0.48376867 0.49529862 0.48397446
		 0.64969289 0.48418438 0.61034167 0.48424268 0.42178011 0.48572642 0.63241124 0.48603922
		 0.65231466 0.48627931 0.63702238 0.48631239 0.4981378 0.48661047 0.17114015 0.48673326
		 0.15357499 0.48688805 0.57911372 0.48691225 0.5796144 0.48747849 0.15312114 0.48748422
		 0.13634717 0.48755121 0.58011949 0.48808676 0.15233855 0.48817039 0.64410293 0.48843279
		 0.9068529 0.48847038 0.18485472 0.48858386 0.59844661 0.48883414 0.85906476 0.48934248
		 0.63615942 0.48947138 0.61467636 0.48952743 0.47078088 0.48990262 0.42288145 0.49049783
		 0.9342705 0.49092487 0.5684942 0.49118689 0.55235851 0.49122661 0.56885594 0.49161956
		 0.62193578 0.49190131 0.56918114 0.49200833 0.63668001 0.49210942 0.18229879 0.49224925
		 0.19110836 0.49250901 0.16632085 0.49284744 0.58549654 0.49307734 0.61471099 0.49309176
		 0.93151951 0.49364686 0.85811418 0.49413544 0.60267532 0.49449569 0.14629576 0.49455661
		 0.62363786 0.49552006 0.17915857 0.49577737 0.18941411 0.49577963 0.20347559 0.49600405
		 0.5606755 0.49601063 0.57172734 0.49602211 0.21111099 0.49624813 0.56106657 0.4963204
		 0.56128269 0.49656087 0.16304955 0.49675906 0.61611724 0.49676773 0.93581033 0.49684188
		 0.16237499 0.49736452 0.58760583 0.49758339 0.93046433 0.49770558 0.5578019 0.49772453
		 0.47724217 0.49780446 0.16137934 0.49795061 0.37155169 0.49798697 0.56221485 0.49801534
		 0.90424019 0.49805507 0.55806106 0.49808902 0.94121194 0.49819463 0.55826432 0.49839851
		 0.20281801 0.49869019 0.20542935 0.49914688 0.60351551 0.49916813 0.2171599 0.50012243
		 0.20965666 0.50021398 0.93689102 0.50021785 0.57326406 0.50055319 0.58844805 0.50076991;
	setAttr ".uvst[0].uvsp[500:749]" 0.55165738 0.50084555 0.17425869 0.50089723
		 0.20231877 0.50119615 0.5602712 0.50125158 0.55200094 0.50129282 0.48127133 0.5014627
		 0.94238001 0.50169176 0.55244714 0.50184506 0.21332866 0.50186408 0.92936128 0.50218743
		 0.93407905 0.50242501 0.90412498 0.5030002 0.1542353 0.50319505 0.21563035 0.5032208
		 0.20862573 0.50331783 0.19544664 0.50373662 0.37294707 0.50416827 0.57400715 0.50423086
		 0.20292157 0.50428778 0.93884504 0.50440103 0.16998988 0.50467074 0.169173 0.50541073
		 0.55697811 0.50578964 0.92928308 0.5057897 0.21370873 0.50579524 0.16801506 0.50602233
		 0.18969323 0.50606203 0.20736428 0.5062685 0.21111384 0.507743 0.22231844 0.50946099
		 0.15954301 0.51086217 0.18162516 0.51107752 0.43461797 0.51137292 0.22021462 0.51181138
		 0.31999397 0.51426506 0.21778014 0.51490194 0.20329994 0.5151208 0.17583431 0.51612818
		 0.17450897 0.51684219 0.17299676 0.5170399 0.23328662 0.51796108 0.16137414 0.5187732
		 0.21511275 0.52004611 0.23175906 0.52011895 0.23197174 0.52288258 0.19191106 0.52310812
		 0.32417446 0.52396989 0.25269893 0.52474475 0.44925565 0.52478945 0.15983286 0.52500975
		 0.23108354 0.52665627 0.27711779 0.52676582 0.17518811 0.52700126 0.1768302 0.52714252
		 0.17831588 0.5272119 0.45378068 0.52753043 0.25235745 0.52866459 0.15820251 0.52936524
		 0.14990678 0.52936709 0.14092906 0.53061366 0.15590566 0.53332353 0.17459404 0.53404552
		 0.20658103 0.53417766 0.17637509 0.53534949 0.17799374 0.5357815 0.39017075 0.53692424
		 0.14988109 0.53704613 0.14881162 0.53786594 0.14912568 0.53829414 0.14949822 0.53892148
		 0.15712985 0.53930968 0.15810916 0.53975773 0.14483641 0.54096031 0.14543429 0.54152501
		 0.14603575 0.54246438 0.27980602 0.54274184 0.22683689 0.54357713 0.17072451 0.54591346
		 0.1203282 0.54648066 0.15495883 0.54698098 0.17242642 0.54698259 0.17396018 0.54743344
		 0.15561116 0.54761451 0.25082019 0.54837346 0.050508365 0.551265 0.042160332 0.55303204
		 0.041638404 0.55326164 0.041241646 0.5536958 0.16541512 0.55381316 0.16645807 0.55511475
		 0.12889653 0.55520415 0.1297591 0.55608237 0.16733465 0.55621392 0.045752168 0.55707091
		 0.13075018 0.55709136 0.045482069 0.55737638 0.045198232 0.5577141 0.039071769 0.55846912
		 0.048397377 0.55984521 0.043302417 0.56037098 0.047994599 0.56051844 0.41748893 0.56068361
		 0.047736749 0.56117868 0.061120883 0.56143951 0.046371728 0.56265944 0.42414665 0.56364834
		 0.35314569 0.56556833 0.13940378 0.5659017 0.1399723 0.56648058 0.053938001 0.56676853
		 0.104094 0.56679344 0.053150892 0.56755501 0.052403957 0.56795973 0.049367815 0.57049567
		 0.1143689 0.57088584 0.21416858 0.57106572 0.11492273 0.57149374 0.067946598 0.57151216
		 0.046366543 0.57193542 0.11585113 0.57211196 0.043306917 0.57318079 0.14711501 0.57375264
		 0.11120367 0.57480478 0.14821081 0.57486826 0.11162613 0.57512653 0.11224671 0.57551032
		 0.10268661 0.57574731 0.11036482 0.57585943 0.14930208 0.57597935 0.06145294 0.57743931
		 0.060752869 0.57820952 0.060148612 0.57865262 0.076441064 0.57960546 0.12020689 0.58111465
		 0.12082866 0.58177829 0.1065347 0.58181626 0.055823088 0.58192343 0.11249791 0.58314764
		 0.29991144 0.58337045 0.10253581 0.58404171 0.052258387 0.58408475 0.1129283 0.58413482
		 0.20443949 0.58476627 0.084011748 0.58504987 0.098151833 0.58559358 0.048736915 0.58605278
		 0.07106933 0.58665419 0.091888636 0.58702266 0.070465475 0.58763915 0.069847926 0.58830273
		 0.065878287 0.59150326 0.24839616 0.59155953 0.12685032 0.59169185 0.39283267 0.59262151
		 0.12813297 0.59275806 0.079020634 0.59343368 0.12921624 0.59365422 0.078388363 0.59458041
		 0.077633813 0.59538388 0.059678644 0.59621209 0.11885661 0.59685862 0.40320563 0.59757036
		 0.19402063 0.59797668 0.11989503 0.59857947 0.089947 0.59861231 0.055991739 0.59866053
		 0.073784292 0.59958434 0.089722201 0.60012066 0.12031829 0.60012102 0.10692118 0.60051447
		 0.099867389 0.60098207 0.088984489 0.60143304 0.108193 0.6023187 0.099979147 0.60262644
		 0.1085958 0.60394484 0.10002184 0.6041131 0.068577364 0.60439152 0.31652001 0.60620749
		 0.083830699 0.60713226 0.064993411 0.60746783 0.1824939 0.60977244 0.061282843 0.60995764
		 0.24077171 0.61058933 0.06839557 0.61464536 0.078671247 0.61510897 0.3412329 0.61537081
		 0.065095007 0.61628067 0.095674768 0.61763245 0.076243013 0.62081975 0.17049314 0.62108552
		 0.38126972 0.62722534 0.07357955 0.62764513 0.39185572 0.62781405 0.071065068 0.62809932
		 0.22900194 0.62827957 0.076659888 0.62830335 0.068367586 0.6287086 0.087484375 0.62887603
		 0.071474805 0.63071841 0.15709791 0.63126546 0.28496444 0.63234305 0.10647921 0.63249862
		 0.078560561 0.63278085 0.075587779 0.63398916 0.072465926 0.63496417 0.068474576
		 0.63634712 0.079967499 0.63655627 0.074049845 0.6386652 0.077973485 0.63911581 0.14322497
		 0.64074701 0.092196912 0.64077532 0.075364977 0.64099091 0.2144075 0.64226425 0.072239757
		 0.64246458 0.087005585 0.64334995 0.2692731 0.64514518 0.083871931 0.64572859 0.081484124
		 0.64778984 0.33742791 0.65271437 0.11551352 0.65291977 0.38643247 0.65466726 0.3797088
		 0.65564227 0.2001629 0.65660518 0.098519236 0.65686214 0.091970965 0.65742016 0.25353181
		 0.65766025 0.094730288 0.65768248 0.089786023 0.65890878 0.18226428 0.6680553 0.24100789
		 0.66934687 0.16310088 0.67533678 0.11987861 0.6769852 0.1001455 0.67816848 0.09622018
		 0.6784395 0.30506787 0.68093181 0.22909811 0.68165874 0.38799843 0.68324834 0.34147406
		 0.68450469 0.3822403 0.68468302 0.28803605 0.68539488 0.21630234 0.69717252 0.27099302
		 0.69987601 0.097802758 0.70289052 0.11372775 0.70586503 0.20322056 0.71263111 0.34722596
		 0.71497339 0.39282602 0.71502399 0.31930295 0.71596152 0.25620776 0.71665567 0.38806647
		 0.7168861;
	setAttr ".uvst[0].uvsp[750:947]" 0.15398835 0.72669613 0.39517859 0.72817761
		 0.39042732 0.72830701 0.30006722 0.72947848 0.25143918 0.73360419 0.34992146 0.73765403
		 0.17652321 0.74371165 0.084534869 0.7455349 0.36185789 0.745713 0.36049882 0.74703884
		 0.35893464 0.74844378 0.28620577 0.74846679 0.35709006 0.7485798 0.39900145 0.74876451
		 0.39483118 0.7491886 0.094163001 0.74988878 0.32940131 0.75273168 0.32316771 0.75300008
		 0.3710115 0.75381899 0.36976764 0.75486666 0.38090461 0.75793743 0.39276987 0.75803095
		 0.37859654 0.75841582 0.32278618 0.75922775 0.39611986 0.76002514 0.34423807 0.76071042
		 0.35115415 0.76097137 0.36023781 0.76117051 0.3871654 0.76179105 0.3686569 0.76195878
		 0.38462126 0.76201403 0.385941 0.76208723 0.3828291 0.76232535 0.33542559 0.7638219
		 0.38842565 0.76473624 0.33477059 0.76481628 0.38365078 0.76491433 0.33848181 0.76539654
		 0.22264573 0.76545072 0.33376443 0.76545298 0.38735986 0.76623672 0.38959673 0.76633805
		 0.33760428 0.76704586 0.33794931 0.76723945 0.33739913 0.76749355 0.33694774 0.76769042
		 0.33760533 0.76770359 0.33713493 0.76803899 0.33528265 0.7685374 0.18524113 0.76858449
		 0.25435665 0.77006727 0.34926349 0.77359718 0.33049256 0.77420545 0.37474212 0.77434748
		 0.36756331 0.77627927 0.28471446 0.77636623 0.34633315 0.77659386 0.35620081 0.77809459
		 0.34328261 0.77946782 0.30733964 0.77947021 0.1352341 0.77960116 0.36671829 0.77976471
		 0.36472374 0.78080231 0.33062667 0.78112322 0.35104606 0.78139561 0.36981893 0.78149235
		 0.37099686 0.78167182 0.38053116 0.78168905 0.38438022 0.7818802 0.36999813 0.78245437
		 0.3863956 0.78284723 0.38295513 0.78464693 0.38093802 0.78477639 0.36972225 0.78629708
		 0.38443393 0.78647572 0.34764907 0.78648692 0.3560757 0.78652102 0.31813121 0.78683114
		 0.36532292 0.78692722 0.38116103 0.78695607 0.31796315 0.78867233 0.33065987 0.79020613
		 0.31653079 0.79021072 0.36040023 0.79092866 0.31518117 0.79154551 0.35019416 0.79505843
		 0.31969106 0.79522592 0.3563059 0.79577428 0.067334726 0.79679132 0.34911871 0.79703236
		 0.3456192 0.79781014 0.07348986 0.79829729 0.33129174 0.79863107 0.32419622 0.79960853
		 0.35559171 0.80016065 0.35078615 0.8001653 0.3517445 0.80036294 0.32153827 0.80063534
		 0.32312739 0.80082834 0.35094279 0.80134624 0.37883493 0.8016395 0.37538397 0.80291438
		 0.37331486 0.80409199 0.34354964 0.80494744 0.37209797 0.80613822 0.32390893 0.80631971
		 0.22481418 0.80777538 0.32755429 0.80847329 0.19637495 0.80882627 0.37075752 0.80956429
		 0.32702649 0.81077331 0.25380328 0.8108272 0.35077468 0.81087703 0.35385305 0.81134385
		 0.35602772 0.81160933 0.33141178 0.81280673 0.35368428 0.81335777 0.33398515 0.81367445
		 0.22371881 0.8144803 0.33102655 0.8145743 0.35089055 0.81472826 0.35548371 0.81487191
		 0.33111796 0.8159132 0.10593089 0.81610554 0.25226566 0.81655824 0.3518177 0.81676221
		 0.33075145 0.8171134 0.2858938 0.81722897 0.33519238 0.81739724 0.33372161 0.81844443
		 0.19677362 0.81942075 0.33524901 0.81963575 0.16157021 0.81976622 0.29726887 0.8197937
		 0.28394693 0.82195389 0.32694089 0.82266718 0.29705453 0.82454115 0.31806475 0.82456952
		 0.32887438 0.82605165 0.31756628 0.82873076 0.16633205 0.83022606 0.40497419 0.8311491
		 0.40283981 0.83170599 0.40136898 0.83268631 0.40036076 0.83413821 0.3997632 0.83626157
		 0.12919587 0.84384495 0.054175317 0.84679073 0.05892612 0.8479774 0.1320406 0.85055465
		 0.43185967 0.85947216 0.43010533 0.85988688 0.079586834 0.86008632 0.42899835 0.86084783
		 0.42801648 0.86193621 0.42756832 0.86368239 0.092738375 0.87496203 0.095397711 0.87953532
		 0.45875794 0.88770598 0.45731986 0.88800037 0.45655727 0.88893747 0.45560583 0.88968205
		 0.45528412 0.89111423 0.043062285 0.89242613 0.048012868 0.89278048 0.057471707 0.89585745
		 0.065256223 0.90245932 0.068841487 0.90655333 0.48575929 0.91583216 0.48456624 0.9160741
		 0.48410833 0.91701913 0.039071828 0.91744059 0.48315471 0.91745895 0.042667583 0.91768324
		 0.4828901 0.91864717 0.04708983 0.91902483 0.051104769 0.92026436 0.043069646 0.92202044
		 0.053689376 0.9231503 0.047764733 0.9238447 0.0445759 0.9245162 0.039991289 0.92717814
		 0.046050176 0.92980611 0.042519674 0.93082726 0.51274979 0.943964 0.51181138 0.94414401
		 0.51165169 0.94509172 0.51070052 0.94523364 0.51050258 0.94617009 0.5395925 0.97218311
		 0.53900355 0.97220862 0.53820807 0.9729476 0.5390569 0.97304839 0.53998625 0.97309941
		 0.53820473 0.97354352 0.53754681 0.97397137 0.53901559 0.97401214 0.54009986 0.97420681;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 800 ".vt";
	setAttr ".vt[0:165]"  -3.50285721 -0.32299483 -0.03049466 -2.86284256 -0.6790843 -0.013821945
		 -3.41642356 0.0025246143 0.0020689666 -2.71666789 -0.17791581 0.017578542 -3.43085694 0.28085643 -0.029857174
		 -2.7561779 0.3282162 -0.028305963 -2.067176819 -0.25039822 0.044793151 -2.17129254 -0.9481191 0.00098350644
		 -2.19433999 0.40388745 -0.025460333 -1.73546517 0.6285733 -0.029021367 -1.43351865 0.88696754 -0.031302646
		 -1.46972179 0.12634617 0.084086686 -1.54060495 -1.16983724 0.0305527 -1.37411153 -0.58074856 0.13190976
		 -1.32329118 -0.19793755 0.14942023 -1.078645825 0.4564473 0.14436728 -0.88112164 1.54296553 -0.035288393
		 -0.55705714 1.12795329 0.12168026 -1.21315289 -1.38770485 0.11950798 -0.82085991 -0.9936263 0.32673913
		 -1.031112909 -1.65929079 0.16088513 -0.67822385 -1.52061105 0.31825256 -0.91886282 -1.92814517 0.15744165
		 -0.63996935 -2.14309573 0.16734371 -0.78435254 -0.24057099 0.30556756 -0.60206103 1.9093895 -0.019903272
		 -0.48668575 1.96602774 -0.016933352 -0.10603738 1.8376379 -0.010052934 -0.071410418 1.90038371 -0.0073819607
		 -0.31037951 0.87745535 0.19697845 -0.046699047 1.27469742 0.13867982 -0.35481524 1.34547472 0.10883352
		 -0.81531239 -2.32424498 0.092260331 -0.72017908 -2.29061007 0.086728424 -0.9282279 -2.33612609 0.058896899
		 -1.10517311 -1.98781395 0.066131204 -1.18282735 -1.77054977 0.020799987 -1.37507546 -1.55708182 -0.015336931
		 -3.98059058 0.28767312 -0.028930709 -3.9943924 0.14414346 -0.018272117 -4.059069633 0.019331306 -0.030883089
		 -4.4125576 0.30910122 -0.039719939 -4.30263138 0.33071947 -0.031988263 -4.36348629 0.21943399 -0.035716563
		 -0.048354864 1.67844319 0.094411194 -0.024287701 1.64147401 0.3792963 -0.069533348 1.51882744 0.11025721
		 -0.024287701 1.6619004 0.36001623 -0.51929235 -2.67808723 0.012442932 -0.56464624 -2.70922947 -0.050479278
		 -0.37542605 -2.79755044 -0.023760259 -0.40482736 -2.80085611 -0.085602641 -0.28328609 -2.86404109 -0.10703009
		 -1.16516578 -2.013901711 0.019020215 -1.21908224 -1.79801559 -0.0055758506 -1.2059114 -2.019629478 -0.017097771
		 -1.23411334 -1.82443738 -0.027244344 -1.20487833 -2.14868712 -0.016263738 -1.17921078 -2.24192142 -0.0015050769
		 -1.08178246 -2.2872045 -0.026774645 -1.16690803 -2.1557653 0.01412186 -1.084055066 -2.25803614 0.0070004761
		 -1.13651133 -2.20989799 0.022812627 -2.79302311 0.41891104 -0.059719607 -2.24697351 0.55263251 -0.059719607
		 -3.98482656 0.35814369 -0.059719607 -1.25097442 -1.82794809 -0.059719622 -3.41642356 0.0025246143 -0.12150818
		 -3.50285721 -0.32299483 -0.088944554 -2.86284256 -0.6790843 -0.10561727 -2.71666789 -0.17791581 -0.1488128
		 -2.7561779 0.3282162 -0.091133267 -3.43085694 0.28085643 -0.089582041 -2.17129254 -0.9481191 -0.12042272
		 -2.067176819 -0.25039822 -0.18467915 -2.19433999 0.40388745 -0.093978897 -1.46969438 0.12634617 -0.23238295
		 -1.73546517 0.6285733 -0.090417862 -1.54060495 -1.16983724 -0.16938582 -1.37411153 -0.58074856 -0.25878534
		 -1.32329118 -0.19793755 -0.26604435 -1.43351865 0.88696754 -0.088136613 -1.078645825 0.45644724 -0.24777877
		 -0.88112164 1.54296553 -0.084150836 -0.59138799 0.9811002 -0.19915134 -1.21315289 -1.38770485 -0.23894718
		 -0.82085991 -0.9936263 -0.36770961 -1.031112909 -1.65929079 -0.23870084 -0.67822385 -1.50978088 -0.31907931
		 -0.67783189 -1.90976071 -0.24370363 -0.92239523 -1.93186831 -0.22596875 -0.71822119 -0.2901257 -0.34904024
		 -0.48668575 1.96602774 -0.070035145 -0.10603738 1.8376379 -0.10938625 -0.071410418 1.90038371 -0.10064204
		 -0.31387639 0.70003015 -0.25446525 -0.18227339 0.9776969 -0.21399689 -0.84286141 -2.27523851 -0.21707794
		 -0.67861462 -2.2575264 -0.059719622 -0.60653067 -2.1151588 -0.046504349 -0.98636675 -2.29493165 -0.18122476
		 -1.10517311 -1.98781395 -0.16576284 -1.18282735 -1.77054977 -0.14023918 -1.37507546 -1.55708182 -0.10410228
		 -1.64662969 -1.34787154 -0.059719607 -2.2144711 -1.076542377 -0.059719607 -2.90288758 -0.74486619 -0.059719607
		 -3.44901562 0.34696716 -0.059719607 -1.83115888 0.7380808 -0.059719607 -1.50488842 0.94281316 -0.059719607
		 -0.94019866 1.57310879 -0.059719607 -0.63743496 1.94323444 -0.052273318 -0.49201751 2.012148857 -0.043484256
		 -0.13075209 1.87837934 -0.059719607 -0.097020388 1.9179821 -0.052798942 -3.9943924 0.14414346 -0.1011671
		 -4.059069633 0.019331306 -0.088556126 -3.98059058 0.28767312 -0.090508506 -4.42497253 0.31485379 -0.079719275
		 -4.36348629 0.21943399 -0.083722651 -4.30389309 0.37834507 -0.059719607 -4.44801903 0.37575042 -0.059719607
		 -4.48292446 0.29064989 -0.059719607 -4.39284992 0.18477368 -0.059719607 -4.10188103 -0.028334558 -0.059719607
		 -3.53531504 -0.37677976 -0.059719607 -0.53701138 -2.6260941 -0.2157141 -0.4559741 -2.58291626 -0.19314083
		 -0.48253775 -2.62538052 -0.09948875 -0.32601762 -2.64590287 -0.21490258 -0.36432695 -2.72525334 -0.13212425
		 -0.57017708 -2.67006016 -0.1883958 -0.37464643 -2.68765879 -0.23806816 -0.39657617 -2.73598146 -0.20700771
		 -0.23371315 -2.74566388 -0.28493744 -0.20850539 -2.72300434 -0.29402727 -0.22428608 -2.80700231 -0.1796087
		 -0.22233582 -2.80051875 -0.25749677 -0.1932137 -2.9116199 -0.13228661 -1.21908224 -1.79801559 -0.11386335
		 -1.1679734 -2.015122414 -0.1387935 -1.084055066 -2.25803614 -0.12643966 -1.39533913 -1.58180106 -0.059719607
		 -1.23411334 -1.82443738 -0.092194855 -1.2059114 -2.019629478 -0.1026755 -1.20487833 -2.14868712 -0.10317545
		 -1.1637342 -2.14752555 -0.13829127 -1.22540259 -2.020250797 -0.056634605 -1.22117639 -2.14885855 -0.059719577
		 -1.17921078 -2.24192142 -0.11793409 -1.20104551 -2.26198745 -0.059719577 -1.12523186 -2.30223966 -0.059719577
		 -1.13190317 -2.20013237 -0.14225176 -1.084117055 -2.29684806 -0.059719622 -1.083918691 -2.288059 -0.095399946
		 -0.70925236 -2.29042315 0.07455942 -0.5101316 -2.67006159 0.0047822595 -0.36502552 -2.78576255 -0.030857027
		 -0.58117414 -2.714432 -0.10581043 -0.40908813 -2.78986835 -0.13118678 -0.24344468 -2.87783003 -0.15585703
		 -0.15928197 -2.78761125 -0.29158002 -0.58227491 -2.69675803 -0.15840355 -0.40444946 -2.764817 -0.16909736
		 -0.21791959 -2.84452224 -0.20041043 -0.16300964 -2.86348987 -0.21114719;
	setAttr ".vt[166:331]" -0.46442294 -2.58318281 -0.20852748 -0.33299446 -2.64214945 -0.22806603
		 -0.20132446 -2.72600961 -0.28184694 -0.69618344 -2.2418592 -0.20174214 -0.71903229 -2.24282694 -0.21121678
		 -0.45864868 -2.58046269 -0.2014817 -0.32863975 -2.64195967 -0.22192532 -0.650774 -2.12945342 0.1746264
		 -0.7355752 -2.29412198 0.090267003 -0.52629614 -2.68478227 0.0087414533 -0.38235807 -2.80570054 -0.031992316
		 -0.26800108 -2.88728476 -0.078151524 -0.20370913 -2.72119808 -0.29001123 -0.18487906 -2.91283607 -0.12806028
		 -0.15262866 -2.78426337 -0.28955477 -0.15424848 -2.86359978 -0.2086398 -0.25502253 -2.88927293 -0.071868837
		 -0.24460268 -2.8788991 -0.075483263 -0.18096542 -2.90525413 -0.12549251 -0.15270829 -2.85916734 -0.20215821
		 -0.15250635 -2.78081679 -0.28012615 -0.025752306 2.12781215 -0.025491938 -0.025752306 2.12781215 -0.093947262
		 -0.053539991 2.14326668 -0.059719592 -0.005947113 5.18446922 -0.052295133 -0.0097019672 5.18957138 -0.056645364
		 -0.005947113 5.20061111 -0.058013588 -0.005947113 5.1828022 -0.062717468 -0.020683527 2.63725495 -0.04011476
		 -0.017551899 3.14669776 -0.043367594 -0.014185429 3.65614057 -0.044967756 -0.011657715 4.16558361 -0.047330946
		 -0.0090577602 4.67502642 -0.049443126 -0.020683527 2.6369772 -0.078610867 -0.017551899 3.14614224 -0.074644834
		 -0.014185429 3.65530729 -0.07232514 -0.011657715 4.1644721 -0.069238335 -0.0090577602 4.67363739 -0.06638211
		 -0.036724329 2.65098405 -0.059300721 -0.03040719 3.15870142 -0.058883682 -0.02302742 3.66641903 -0.058441833
		 -0.019697666 4.17413616 -0.057984099 -0.015716553 4.68185425 -0.057447553 -0.02996397 1.44788015 0.32506087
		 -0.046953201 1.57123518 0.28997052 -0.078745127 1.77978444 0.07400842 -0.63409162 -2.15855122 0.14911494
		 -0.38466835 1.92350507 -0.014332399 -0.37970757 1.96476126 -0.039944991 -0.33443093 1.16631317 -0.18415177
		 -0.21946359 1.61024475 -0.1453957 -0.12188196 1.82555294 -0.098583028 -0.13441992 1.86495161 -0.059719607
		 -0.12085748 1.8249054 -0.026471391 -0.35606956 1.89131451 -0.011271834 -0.34087062 1.52422071 0.060680956
		 -0.44524217 1.87133217 -0.12733838 -0.41079974 1.91879439 -0.11471117 -0.40955806 1.9072423 -0.15032259
		 -0.42287135 1.93553376 -0.13670725 -0.21697569 2.023425102 -0.11112535 -0.215734 2.011873007 -0.14673677
		 -0.21981359 2.044108391 -0.13312143 -0.17407393 2.029332638 -0.10984361 -0.17283225 2.017780542 -0.14545503
		 -0.16470909 2.05066967 -0.13183969 -0.15718198 2.0083539486 -0.10117662 -0.15594029 1.99680185 -0.13678804
		 -0.13936687 2.015936375 -0.1231727 -0.16433549 1.82872677 -0.014111772 -0.16256642 1.82872677 -0.11298734
		 -0.14253378 1.87410688 -0.069119021 -0.19095683 1.9832406 -0.089412093 -0.22956014 1.87333083 -0.051159218
		 -0.14708209 1.575387 0.080841362 -0.42715192 1.853477 -0.10534227 -0.22825837 1.64467537 0.027926192
		 -0.29518914 1.72130752 -0.013103798 -0.19187951 1.98993301 -0.14176241 -0.26955724 1.88931274 -0.12179777
		 -0.34076238 1.91612101 -0.033267945 -0.33090615 1.51319623 0.036366075 -0.35482788 1.87976217 -0.04688327
		 -0.31290078 1.49805951 0.044056505 -0.36562967 1.66209078 -0.026625991 -0.37980056 1.66028619 -0.042511448
		 -0.35306191 1.59425092 0.0070386827 -0.40495324 1.76733184 -0.079237163 -0.42293954 1.78037226 -0.10057862
		 -0.37516189 1.66028619 -0.021881565 -0.39948297 1.72910285 -0.057426766 -0.37622166 1.9157536 -0.058810845
		 -0.39783502 1.82236457 -0.054741219 -0.47078419 1.88115764 -0.071541578 -0.42591023 1.84192467 -0.14095369
		 -0.40646577 1.76392329 -0.11504395 -0.31377029 1.78145003 -0.11146015 -0.33264065 1.64894819 -0.12639651
		 -0.4560926 1.80833507 -0.085661858 -0.44222665 1.78232539 -0.10266908 -0.60206103 1.9093895 -0.084643364
		 -0.4375937 1.73676264 -0.1227344 -1.16120672 1.18752718 -0.033295527 -0.80587506 0.7965579 0.14079812
		 -0.50660825 0.41748565 0.24636166 -1.16120672 1.18752718 -0.086143732 -0.84004498 0.72104776 -0.22621334
		 -0.46773481 0.30690134 -0.30932036 -1.22643006 1.23052168 -0.059719607 -0.36435604 1.53020883 0.069470637
		 -0.78365445 1.67094588 -0.029914856 -0.82284474 1.71657276 -0.056833357 -0.76943517 1.68961704 -0.084347963
		 -0.5356822 1.72508824 -0.10932389 -0.48793221 1.74446344 -0.10900849 -0.45519257 -1.48130524 0.34096295
		 -0.51652932 -2.098005772 0.21007659 -0.56475544 -0.88017827 0.36196095 -0.50948167 -0.26619399 0.33967724
		 -0.481318 -1.45206618 -0.3312763 -0.50210476 -1.79525077 -0.24654958 -0.54209924 -0.90188992 -0.38382617
		 -0.46722722 -0.33569974 -0.36085236 -0.49931383 -1.91869807 -0.08446312 -0.52445698 -2.082427263 0.21799295
		 -0.51223874 -2.11063647 0.19071035 -0.30192614 0.29896796 0.27778322 -0.25374413 0.161686 -0.33509487
		 -1.029874325 -2.14270854 0.08637359 -0.85652947 -2.1418817 0.12085159 -0.70743418 -2.19013047 0.13288067
		 -0.69447327 -2.19686723 0.12715262 -0.6830821 -2.20053554 0.11507306 -1.057242274 -2.14168406 -0.17365462
		 -0.90838027 -2.10616875 -0.22155222 -0.72041082 -2.090524673 -0.22652966 -0.68700814 -2.10349512 -0.20652193
		 -0.64850688 -2.16427636 -0.053245038 -0.95518613 -2.43355918 -0.033967659 -1.0065653324 -2.32454777 0.032948688
		 -1.045211792 -2.29746509 -0.15383223 -0.94986057 -2.42653799 -0.13126388 -0.96897173 -2.43884659 -0.082498699
		 -1.22394466 -2.189605 -0.059719577 -0.86386991 -2.45386195 -0.17476657 -0.82772899 -2.48543692 -0.014528394
		 -0.69165969 -2.42350078 0.061932504 -0.76218152 -2.45910072 0.042859301 -0.79121614 -2.42224669 -0.21271682
		 -0.66135454 -2.36459064 -0.19563764 -0.65429688 -2.38272691 -0.073249996 -0.68198085 -2.41867995 0.050599441
		 -0.6789062 -2.36824369 -0.20743009 -0.70263743 -2.43059039 0.063343883 -0.68094301 -2.5747118 0.010064632
		 -0.57571006 -2.47803283 -0.19271153 -0.74122429 -2.61128616 -0.066339403 -0.62330198 -2.53285885 0.040254086
		 -0.67483044 -2.5316906 -0.20998368 -0.58372259 -2.49821877 -0.08439748 -0.61359143 -2.52784443 0.029751688
		 -0.58954167 -2.48163748 -0.20517319 -0.63304353 -2.53945303 0.040588707 -0.75519085 -2.60517883 -0.12413618
		 -0.74655724 -2.57929802 -0.18025208 -0.87830687 -2.51194572 -0.043432027;
	setAttr ".vt[332:497]" -0.89451003 -2.50654054 -0.10331744 -0.87989736 -2.49160576 -0.15209585
		 -0.74134254 -2.39968157 -0.21074364 -0.6036706 -2.49021602 -0.20615634 -0.64345002 -1.96924043 -0.21543527
		 -0.51729012 -1.90129662 -0.21500939 -0.72707367 -2.39269543 -0.2100625 -0.82632017 -2.26978683 -0.2164551
		 -0.89130902 -2.10608768 -0.22193983 -0.49500442 -2.087274313 0.024667487 -0.55140257 -2.086287498 -0.046341538
		 -0.49842811 -2.075389862 0.016778529 -0.49823165 -2.057155132 -0.0097672492 -0.49592543 -2.060053349 -0.020409197
		 -0.49588108 -1.92640412 -0.065869123 -0.54885554 -1.94633472 -0.1371679 -0.49568462 -1.91720235 -0.099357635
		 -0.22784901 -1.45513129 0.35336685 -0.27873755 -0.82013625 0.37969929 -0.2351265 -0.29556954 0.35630757
		 -0.29333806 -1.79138935 -0.25280929 -0.38493609 -1.92121661 -0.067767039 -0.38821793 -2.090619087 0.2401706
		 -0.39278293 -2.10737514 0.23186874 -0.24903893 -1.43786418 -0.33869615 -0.25810742 -0.88483912 -0.38977417
		 -0.22208095 -0.39088908 -0.36689645 -0.39662933 -2.11828756 0.21181056 -0.3189373 -1.89602637 -0.21849295
		 -0.38246155 -2.094204903 0.04568553 -0.38471961 -2.063783407 0.011128679 -0.38504386 -2.082336664 0.038449816
		 -0.38295913 -2.067515373 -0.00037007034 -0.38249683 -1.93054926 -0.048935682 -0.38217235 -1.92198372 -0.083989203
		 -4.33155966 0.27781874 -0.035066903 -4.37317705 0.33446777 -0.036148459 -4.4031105 0.26825589 -0.037804946
		 -4.33155966 0.27781874 -0.084372312 -4.30263138 0.33071947 -0.087450951 -4.41735077 0.26298863 -0.081660897
		 -4.38000917 0.34045404 -0.083452538 -4.49407673 0.35210812 -0.059719607 3.41642356 0.0025246143 0.0020689666
		 3.50285745 -0.32299483 -0.03049466 2.8628428 -0.6790843 -0.013821945 2.71666789 -0.17791581 0.017578542
		 2.75617814 0.3282162 -0.028305963 3.43085694 0.28085643 -0.029857174 2.17129254 -0.9481191 0.00098350644
		 2.067177057 -0.25039822 0.044793151 2.19433999 0.40388745 -0.025460333 1.46972203 0.12634617 0.084086686
		 1.73546529 0.6285733 -0.029021367 1.54060483 -1.16983724 0.0305527 1.37411141 -0.58074856 0.13190976
		 1.32329106 -0.19793755 0.14942023 1.43351865 0.88696754 -0.031302646 1.078645945 0.4564473 0.14436728
		 0.88112164 1.54296553 -0.035288393 1.16120648 1.18752718 -0.033295527 0.80587506 0.7965579 0.14079812
		 0.55705714 1.12795329 0.12168026 1.21315312 -1.38770485 0.11950798 0.82085991 -0.9936263 0.32673913
		 1.031112909 -1.65929079 0.16088513 0.67822385 -1.52061105 0.31825256 0.78435254 -0.24057099 0.30556756
		 0.56475544 -0.88017827 0.36196095 0.50948167 -0.26619399 0.33967724 0.78365445 1.67094588 -0.029914856
		 0.35481524 1.34547472 0.10883352 0.10603738 1.8376379 -0.010052934 0 1.83600259 0.0386585
		 0 1.901263 0.016372584 0.071410418 1.90038371 -0.0073819607 0.31037951 0.87745535 0.19697845
		 0.50660825 0.41748565 0.24636166 0.30192614 0.29896796 0.27778322 0 0.81974745 0.21492374
		 0 1.20852172 0.15591896 0.046699047 1.27469742 0.13867982 0 1.44416761 0.35792303
		 0.02996397 1.44788015 0.32506087 0.63996935 -2.14309573 0.16734371 0.650774 -2.12945342 0.1746264
		 0.70743418 -2.19013047 0.13288067 0.69447327 -2.19686723 0.12715262 0.6830821 -2.20053554 0.11507306
		 0.63409162 -2.15855122 0.14911494 0.85652947 -2.1418817 0.12085159 0.91886282 -1.92814517 0.15744165
		 1.10517335 -1.98781395 0.066131204 1.029874325 -2.14270854 0.08637359 1.18282723 -1.77054977 0.020799987
		 1.37507558 -1.55708182 -0.015336931 1.64662957 -1.34787154 -0.059719607 2.2144711 -1.076542377 -0.059719607
		 2.90288758 -0.74486619 -0.059719607 2.79302335 0.41891104 -0.059719607 3.44901586 0.34696716 -0.059719607
		 1.83115888 0.7380808 -0.059719607 2.24697328 0.55263251 -0.059719607 1.5048883 0.94281316 -0.059719607
		 0.94019866 1.57310879 -0.059719607 1.22643018 1.23052168 -0.059719607 0.82284474 1.71657276 -0.056833357
		 0.49201751 2.012148857 -0.043484256 0.63743496 1.94323444 -0.052273318 0.60206103 1.9093895 -0.019903272
		 0.48668575 1.96602774 -0.016933352 0.38466835 1.92350507 -0.014332399 0.37970757 1.96476126 -0.039944991
		 0.097020388 1.9179821 -0.052798942 0.13075209 1.87837934 -0.059719607 3.99439263 0.14414346 -0.018272117
		 4.059069633 0.019331306 -0.030883089 3.98059058 0.28767312 -0.028930709 4.30263138 0.33071947 -0.031988263
		 4.37317657 0.33446777 -0.036148459 4.4125576 0.30910122 -0.039719939 4.33155918 0.27781874 -0.035066903
		 4.4031105 0.26825589 -0.037804946 4.36348629 0.21943399 -0.035716563 3.98482633 0.35814369 -0.059719607
		 4.30389309 0.37834507 -0.059719607 4.44801903 0.37575042 -0.059719607 4.49407673 0.35210812 -0.059719607
		 4.39284992 0.18477368 -0.059719607 4.10188103 -0.028334558 -0.059719607 3.5353148 -0.37677976 -0.059719607
		 0.078745127 1.77978444 0.07400842 0 1.78359997 0.11386716 0.048354864 1.67844319 0.094411194
		 0.024287701 1.6619004 0.36001623 0 1.70320034 0.3829681 0 1.69328761 0.11789013 0 1.66684961 0.40929052
		 0.024287701 1.64147401 0.3792963 0.72017908 -2.29061007 0.086728424 0.7355752 -2.29412198 0.090267003
		 0.70263743 -2.43059039 0.063343883 0.69165969 -2.42350078 0.061932504 0.67861462 -2.2575264 -0.059719622
		 0.70925236 -2.29042315 0.07455942 0.68198085 -2.41867995 0.050599441 0.65429688 -2.38272691 -0.073249996
		 0.37542605 -2.79755044 -0.023760259 0.36502552 -2.78576255 -0.030857027 0.5101316 -2.67006159 0.0047822595
		 0.51929235 -2.67808723 0.012442932 0.82772899 -2.48543692 -0.014528394 0.74122429 -2.61128616 -0.066339403
		 0.68094301 -2.5747118 0.010064632 0.76218152 -2.45910072 0.042859301 0.52629614 -2.68478227 0.0087414533
		 0.38235807 -2.80570054 -0.031992316 0.56464624 -2.70922947 -0.050479278 0.58117414 -2.714432 -0.10581043
		 0.40908813 -2.78986835 -0.13118678 0.40482736 -2.80085611 -0.085602641 0.26800108 -2.88728476 -0.078151524
		 0.25502253 -2.88927293 -0.071868837 0.24460268 -2.8788991 -0.075483263 0.28328609 -2.86404109 -0.10703009
		 0.24344468 -2.87783003 -0.15585703;
	setAttr ".vt[498:663]" 1.21908212 -1.79801559 -0.0055758506 1.16516566 -2.013901711 0.019020215
		 1.39533925 -1.58180106 -0.059719607 0.9282279 -2.33612609 0.058896899 1.0065653324 -2.32454777 0.032948688
		 0.95518613 -2.43355918 -0.033967659 1.25097442 -1.82794809 -0.059719622 1.23411345 -1.82443738 -0.027244344
		 1.2059114 -2.019629478 -0.017097771 1.22540259 -2.020250797 -0.056634605 1.20487809 -2.14868712 -0.016263738
		 1.16690803 -2.1557653 0.01412186 1.22117639 -2.14885855 -0.059719577 1.081782579 -2.2872045 -0.026774645
		 1.1792109 -2.24192142 -0.0015050769 1.20104527 -2.26198745 -0.059719577 1.12523198 -2.30223966 -0.059719577
		 1.13651109 -2.20989799 0.022812627 1.084055185 -2.25803614 0.0070004761 3.41642356 0.0025246143 -0.12150818
		 2.71666789 -0.17791581 -0.1488128 2.8628428 -0.6790843 -0.10561727 3.50285745 -0.32299483 -0.088944554
		 2.75617814 0.3282162 -0.091133267 3.43085694 0.28085643 -0.089582041 2.067177057 -0.25039822 -0.18467915
		 2.17129254 -0.9481191 -0.12042272 2.19433999 0.40388745 -0.093978897 1.46969438 0.12634617 -0.23238295
		 1.73546529 0.6285733 -0.090417862 1.37411141 -0.58074856 -0.25878534 1.54060483 -1.16983724 -0.16938582
		 1.32329106 -0.19793755 -0.26604435 1.43351865 0.88696754 -0.088136613 1.078645945 0.45644724 -0.24777877
		 0.88112164 1.54296553 -0.084150836 0.59138799 0.9811002 -0.19915134 0.84004498 0.72104776 -0.22621334
		 1.16120648 1.18752718 -0.086143732 0.82085991 -0.9936263 -0.36770961 1.21315312 -1.38770485 -0.23894718
		 1.031112909 -1.65929079 -0.23870084 0.67822385 -1.50978088 -0.31907931 0.67783189 -1.90976071 -0.24370363
		 0.92239523 -1.93186831 -0.22596875 0.71822119 -0.2901257 -0.34904024 0.46722722 -0.33569974 -0.36085236
		 0.54209924 -0.90188992 -0.38382617 0.5356822 1.72508824 -0.10932389 0.33443093 1.16631317 -0.18415177
		 0.76943517 1.68961704 -0.084347963 0.10603738 1.8376379 -0.10938625 0.071410418 1.90038371 -0.10064204
		 0 1.901263 -0.12439659 0 1.83600259 -0.14667901 0.31387639 0.70003015 -0.25446525
		 0.46773481 0.30690134 -0.30932036 0.18227339 0.9776969 -0.21399689 0 0.94093537 -0.2306155
		 0 0.57428122 -0.28711972 0.72041082 -2.090524673 -0.22652966 0.71903229 -2.24282694 -0.21121678
		 0.82632017 -2.26978683 -0.2164551 0.89130902 -2.10608768 -0.22193983 0.64850688 -2.16427636 -0.053245038
		 0.69618344 -2.2418592 -0.20174214 0.68700814 -2.10349512 -0.20652193 0.98636675 -2.29493165 -0.18122476
		 1.057242155 -2.14168406 -0.17365462 0.90838027 -2.10616875 -0.22155222 0.84286141 -2.27523851 -0.21707794
		 1.10517335 -1.98781395 -0.16576284 1.18282723 -1.77054977 -0.14023918 1.37507558 -1.55708182 -0.10410228
		 0.48668575 1.96602774 -0.070035145 0.60206103 1.9093895 -0.084643364 0.37622166 1.9157536 -0.058810845
		 4.059069633 0.019331306 -0.088556126 3.99439263 0.14414346 -0.1011671 3.98059058 0.28767312 -0.090508506
		 4.33155918 0.27781874 -0.084372312 4.30263138 0.33071947 -0.087450951 4.36348629 0.21943399 -0.083722651
		 4.3800087 0.34045404 -0.083452538 4.42497253 0.31485379 -0.079719275 0.6789062 -2.36824369 -0.20743009
		 0.72707367 -2.39269543 -0.2100625 0.66135454 -2.36459064 -0.19563764 0.32601762 -2.64590287 -0.21490258
		 0.4559741 -2.58291626 -0.19314083 0.48253775 -2.62538052 -0.09948875 0.36432695 -2.72525334 -0.13212425
		 0.79121614 -2.42224669 -0.21271682 0.67483044 -2.5316906 -0.20998368 0.74655724 -2.57929802 -0.18025208
		 0.86386991 -2.45386195 -0.17476657 0.46442294 -2.58318281 -0.20852748 0.33299446 -2.64214945 -0.22806603
		 0.37464643 -2.68765879 -0.23806816 0.53701138 -2.6260941 -0.2157141 0.39657617 -2.73598146 -0.20700771
		 0.57017708 -2.67006016 -0.1883958 0.20850539 -2.72300434 -0.29402727 0.23371315 -2.74566388 -0.28493744
		 0.22428608 -2.80700231 -0.1796087 0.20132446 -2.72600961 -0.28184694 0.22233582 -2.80051875 -0.25749677
		 0.15928197 -2.78761125 -0.29158002 1.16797328 -2.015122414 -0.1387935 1.21908212 -1.79801559 -0.11386335
		 1.23411345 -1.82443738 -0.092194855 1.2059114 -2.019629478 -0.1026755 1.1637342 -2.14752555 -0.13829127
		 1.20487809 -2.14868712 -0.10317545 1.2239449 -2.189605 -0.059719577 1.08391881 -2.288059 -0.095399946
		 1.1792109 -2.24192142 -0.11793409 1.084055185 -2.25803614 -0.12643966 1.13190293 -2.20013237 -0.14225176
		 1.084117174 -2.29684806 -0.059719622 0.60653067 -2.1151588 -0.046504349 0.94986057 -2.42653799 -0.13126388
		 0.96897173 -2.43884659 -0.082498699 0.58227491 -2.69675803 -0.15840355 0.40444946 -2.764817 -0.16909736
		 0.21791959 -2.84452224 -0.20041043 0.1932137 -2.9116199 -0.13228661 0.16300964 -2.86348987 -0.21114719
		 0.75519085 -2.60517883 -0.12413618 0.45864868 -2.58046269 -0.2014817 0.32863975 -2.64195967 -0.22192532
		 0.20370913 -2.72119808 -0.29001123 0.81531239 -2.32424498 0.092260331 0.15262866 -2.78426337 -0.28955477
		 0.15424848 -2.86359978 -0.2086398 0.18487906 -2.91283607 -0.12806028 0.18096542 -2.90525413 -0.12549251
		 0.15270829 -2.85916734 -0.20215821 0.15250635 -2.78081679 -0.28012615 0.21946359 1.61024475 -0.1453957
		 0 1.62157094 -0.1668649 0 1.40250766 -0.17862478 0 2.12154174 -0.011264518 0.025752306 2.12781215 -0.025491938
		 0.053539991 2.14326668 -0.059719592 0.025752306 2.12781215 -0.093947262 0.017551899 3.14669776 -0.043367594
		 0.014185429 3.65614057 -0.044967756 0.02302742 3.66641903 -0.058441833 0.03040719 3.15870142 -0.058883682
		 0.017551899 3.14614224 -0.074644834 0.014185429 3.65530729 -0.07232514 0 3.65485525 -0.079239666
		 0 3.14352202 -0.082253084 0.0097019672 5.18957138 -0.056645364 0.005947113 5.18446922 -0.052295133
		 0.005947113 5.20061111 -0.058013588 0.005947113 5.1828022 -0.062717468 0 5.19431782 -0.048756182
		 0 5.21190834 -0.058423728 0 5.18842697 -0.067600921 0.020683527 2.63725495 -0.04011476
		 0 2.63320279 -0.031095803 0 3.14558864 -0.035964683 0.0090577602 4.67502642 -0.049443126
		 0.015716553 4.68185425 -0.057447553;
	setAttr ".vt[664:799]" 0.011657715 4.16558361 -0.047330946 0.019697666 4.17413616 -0.057984099
		 0.036724329 2.65098405 -0.059300721 0.0090577602 4.67363739 -0.06638211 0 4.67737818 -0.071632907
		 0.011657715 4.1644721 -0.069238335 0 4.16614819 -0.075163007 0.020683527 2.6369772 -0.078610867
		 0.046953201 1.57123518 0.28997052 0.069533348 1.51882744 0.11025721 0.14708209 1.575387 0.080841362
		 0.49500442 -2.087274313 0.024667487 0.49842811 -2.075389862 0.016778529 0.38504386 -2.082336664 0.038449816
		 0.38246155 -2.094204903 0.04568553 0.12188196 1.82555294 -0.098583028 0.13441992 1.86495161 -0.059719607
		 0.12085748 1.8249054 -0.026471391 0.16256642 1.82872677 -0.11298734 0.14253378 1.87410688 -0.069119021
		 0.16433549 1.82872677 -0.014111772 0.36435604 1.53020883 0.069470637 0.33090615 1.51319623 0.036366075
		 0.34087062 1.52422071 0.060680956 0.35606956 1.89131451 -0.011271834 0.34076238 1.91612101 -0.033267945
		 0.35482788 1.87976217 -0.04688327 0.44524217 1.87133217 -0.12733838 0.42715192 1.853477 -0.10534227
		 0.41079974 1.91879439 -0.11471117 0.42287135 1.93553376 -0.13670725 0.42591023 1.84192467 -0.14095369
		 0.40955806 1.9072423 -0.15032259 0.21697569 2.023425102 -0.11112535 0.21981359 2.044108391 -0.13312143
		 0.215734 2.011873007 -0.14673677 0.17407393 2.029332638 -0.10984361 0.16470909 2.05066967 -0.13183969
		 0.17283225 2.017780542 -0.14545503 0.15718198 2.0083539486 -0.10117662 0.13936687 2.015936375 -0.1231727
		 0.15594029 1.99680185 -0.13678804 0.19095683 1.9832406 -0.089412093 0.22956014 1.87333083 -0.051159218
		 0.22825837 1.64467537 0.027926192 0.31290078 1.49805951 0.044056505 0.29518914 1.72130752 -0.013103798
		 0.36562967 1.66209078 -0.026625991 0.26955724 1.88931274 -0.12179777 0.19187951 1.98993301 -0.14176241
		 0.31377029 1.78145003 -0.11146015 0.35306191 1.59425092 0.0070386827 0.37980056 1.66028619 -0.042511448
		 0.40495324 1.76733184 -0.079237163 0.42293954 1.78037226 -0.10057862 0.37516189 1.66028619 -0.021881565
		 0.39948297 1.72910285 -0.057426766 0.39783502 1.82236457 -0.054741219 0.47078419 1.88115764 -0.071541578
		 0.40646577 1.76392329 -0.11504395 0.33264065 1.64894819 -0.12639651 0.4560926 1.80833507 -0.085661858
		 0.44222665 1.78232539 -0.10266908 0.4375937 1.73676264 -0.1227344 0.48793221 1.74446344 -0.10900849
		 0.52445698 -2.082427263 0.21799295 0.51652932 -2.098005772 0.21007659 0.45519257 -1.48130524 0.34096295
		 0.27873755 -0.82013625 0.37969929 0.2351265 -0.29556954 0.35630757 0.50210476 -1.79525077 -0.24654958
		 0.481318 -1.45206618 -0.3312763 0.22208095 -0.39088908 -0.36689645 0.25810742 -0.88483912 -0.38977417
		 0.55140257 -2.086287498 -0.046341538 0.51729012 -1.90129662 -0.21500939 0.49592543 -2.060053349 -0.020409197
		 0.49823165 -2.057155132 -0.0097672492 0.51223874 -2.11063647 0.19071035 0.54885554 -1.94633472 -0.1371679
		 0.49931383 -1.91869807 -0.08446312 0.49588108 -1.92640412 -0.065869123 0 0.27617571 0.28489497
		 0.25374413 0.161686 -0.33509487 1.045211792 -2.29746509 -0.15383223 0.64345002 -1.96924043 -0.21543527
		 0.63304353 -2.53945303 0.040588707 0.62330198 -2.53285885 0.040254086 0.61359143 -2.52784443 0.029751688
		 0.58372259 -2.49821877 -0.08439748 0.58954167 -2.48163748 -0.20517319 0.57571006 -2.47803283 -0.19271153
		 0.6036706 -2.49021602 -0.20615634 0.87830687 -2.51194572 -0.043432027 0.89451003 -2.50654054 -0.10331744
		 0.87989736 -2.49160576 -0.15209585 0.74134254 -2.39968157 -0.21074364 0.29333806 -1.79138935 -0.25280929
		 0.3189373 -1.89602637 -0.21849295 0.38295913 -2.067515373 -0.00037007034 0.38471961 -2.063783407 0.011128679
		 0.38493609 -1.92121661 -0.067767039 0.38249683 -1.93054926 -0.048935682 0.49568462 -1.91720235 -0.099357635
		 0.38217235 -1.92198372 -0.083989203 0.38821793 -2.090619087 0.2401706 0.39278293 -2.10737514 0.23186874
		 0.22784901 -1.45513129 0.35336685 0.24903893 -1.43786418 -0.33869615 0.39662933 -2.11828756 0.21181056
		 0 -2.1059289 0.057152137 0 -2.1177597 0.062181138 0 -0.82369292 0.38474429 0 -0.30163324 0.35981393
		 0 -0.42176673 -0.38732478 0 -0.89878249 -0.40929052 0 -1.81590843 -0.25157502 0 -1.93680358 -0.20785594
		 0 -2.09281373 0.012766302 0 -2.086250544 0.027166076 0 -1.92969322 -0.065977797 0 -1.94453382 -0.046341389
		 0 -1.93808293 -0.086669549 0 0.069500864 -0.3481864 4.48292446 0.29064989 -0.059719607
		 4.41735077 0.26298863 -0.081660897 0 3.65793538 -0.03839317 0 4.68241644 -0.04494527
		 0 4.1702261 -0.04190053 0 2.12154174 -0.10817467 0 2.63216496 -0.087734476 0 -2.11873364 0.25495335
		 0 -2.13952088 0.24532396 0 -1.45149565 0.35683769 0 -1.45122123 -0.35207778 0 -2.14453912 0.22289215;
	setAttr -s 1608 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 3 1 3 2 1 2 0 1 5 4 1 4 2 1 3 5 1 1 7 1 7 6 1
		 6 3 1 8 5 1 6 8 1 11 9 1 9 8 1 6 11 1 7 12 1 12 13 1 13 6 1 14 11 1 13 14 1 11 15 1
		 15 10 1 10 9 1 268 269 1 269 17 1 17 16 1 16 268 1 12 18 1 18 19 1 19 13 1 21 19 1
		 18 20 1 20 21 1 24 14 1 19 24 1 283 284 1 284 24 1 19 283 1 17 31 1 31 276 1 276 16 1
		 405 406 1 406 28 1 28 27 1 27 405 1 24 15 1 29 17 1 269 270 1 270 29 1 270 292 1
		 292 411 1 411 29 1 411 412 1 412 30 1 30 29 1 30 31 1 412 414 1 414 209 1 209 30 1
		 23 173 1 173 296 1 296 297 1 297 23 1 297 298 1 298 212 1 212 23 1 22 35 1 35 294 1
		 294 295 1 295 22 1 22 20 1 20 36 1 36 35 1 37 36 1 18 37 1 12 104 1 104 37 1 7 105 1
		 105 104 1 1 106 1 106 105 1 63 107 1 107 4 1 5 63 1 108 64 1 64 8 1 9 108 1 109 108 1
		 10 109 1 110 274 1 274 268 1 16 110 1 276 277 1 277 110 1 112 111 1 111 25 1 25 26 1
		 26 112 1 214 112 1 26 213 1 213 214 1 113 27 1 28 114 1 114 113 1 2 39 1 39 40 1
		 40 0 1 4 38 1 38 39 1 368 41 1 41 367 1 367 42 1 42 368 1 41 369 1 369 43 1 43 367 1
		 107 65 1 65 38 1 65 120 1 120 42 1 42 38 1 121 374 1 374 41 1 368 121 1 43 123 1
		 123 124 1 124 40 1 40 43 1 124 125 1 125 0 1 211 464 1 464 405 1 27 211 1 47 467 1
		 467 468 1 468 44 1 44 47 1 414 469 1 469 45 1 45 209 1 469 467 1 47 45 1 174 319 1
		 319 312 1 312 33 1 33 174 1 98 155 1 155 317 1 317 316 1 316 98 1 50 157 1 157 156 1
		 156 48 1 48 50 1 311 322 1 322 320 1 320 313 1 313 311 1 48 175 1 175 176 1 176 50 1
		 49 158 1 158 159 1 159 51 1 51 49 1 176 177 1;
	setAttr ".ed[166:331]" 177 182 1 182 50 1 182 183 1 183 157 1 52 51 1 159 160 1
		 160 52 1 36 54 1 54 53 1 53 35 1 37 142 1 142 54 1 104 142 1 34 305 1 305 304 1 304 311 1
		 311 34 1 142 66 1 66 56 1 56 54 1 56 55 1 55 53 1 66 147 1 147 55 1 55 57 1 57 60 1
		 60 53 1 147 148 1 148 57 1 58 150 1 150 151 1 151 59 1 59 58 1 60 294 1 57 58 1 58 62 1
		 62 60 1 59 61 1 61 62 1 125 106 1 64 63 1 70 69 1 69 68 1 68 67 1 67 70 1 71 70 1
		 67 72 1 72 71 1 74 73 1 73 69 1 70 74 1 71 75 1 75 74 1 76 74 1 75 77 1 77 76 1 74 79 1
		 79 78 1 78 73 1 76 80 1 80 79 1 82 76 1 77 81 1 81 82 1 84 272 1 272 271 1 271 83 1
		 83 84 1 79 86 1 86 85 1 85 78 1 86 88 1 88 87 1 87 85 1 89 90 1 90 87 1 88 89 1 80 91 1
		 91 86 1 91 288 1 288 287 1 287 86 1 215 84 1 83 278 1 278 279 1 279 215 1 94 551 1
		 551 552 1 552 93 1 93 94 1 82 91 1 95 273 1 273 272 1 84 95 1 95 96 1 96 556 1 556 557 1
		 557 95 1 215 96 1 170 339 1 339 340 1 340 301 1 301 170 1 303 98 1 98 169 1 169 302 1
		 302 303 1 100 299 1 299 300 1 300 97 1 97 100 1 102 87 1 90 101 1 101 102 1 102 103 1
		 103 85 1 103 104 1 104 78 1 105 73 1 106 69 1 72 107 1 63 71 1 75 64 1 108 77 1 109 81 1
		 271 274 1 110 83 1 277 278 1 112 92 1 92 266 1 266 111 1 214 257 1 257 92 1 93 113 1
		 114 94 1 116 115 1 115 67 1 68 116 1 115 117 1 117 72 1 115 370 1 370 371 1 371 117 1
		 119 370 1 116 119 1 117 65 1 371 120 1 118 374 1 121 373 1 373 118 1 123 119 1 116 124 1
		 68 125 1 170 318 1 318 338 1 338 339 1 316 315 1 315 169 1 129 127 1 127 128 1 128 130 1
		 130 129 1 314 324 1 324 330 1 330 310 1 310 314 1;
	setAttr ".ed[332:497]" 166 167 1 167 132 1 132 126 1 126 166 1 132 133 1 133 131 1
		 131 126 1 167 135 1 135 134 1 134 132 1 130 136 1 136 168 1 168 129 1 134 137 1 137 133 1
		 135 161 1 161 137 1 101 140 1 140 139 1 139 102 1 139 142 1 142 103 1 143 66 1 139 143 1
		 140 144 1 144 143 1 144 147 1 140 146 1 146 145 1 145 144 1 145 148 1 309 57 1 145 309 1
		 150 149 1 149 154 1 154 151 1 152 146 1 146 299 1 299 141 1 141 152 1 149 145 1 152 149 1
		 141 154 1 154 153 1 153 59 1 303 99 1 99 212 1 298 303 1 155 33 1 312 317 1 157 130 1
		 128 156 1 183 136 1 307 308 1 308 153 1 154 307 1 158 162 1 162 163 1 163 159 1 163 164 1
		 164 160 1 164 165 1 165 138 1 138 160 1 158 322 1 322 329 1 329 162 1 133 163 1 162 131 1
		 137 164 1 161 165 1 169 170 1 301 302 1 166 171 1 171 172 1 172 167 1 172 178 1 178 135 1
		 315 318 1 129 172 1 171 127 1 168 178 1 173 21 1 22 173 1 295 296 1 32 313 1 313 319 1
		 174 32 1 175 49 1 51 176 1 52 177 1 138 177 1 178 180 1 180 161 1 180 181 1 181 165 1
		 181 179 1 179 138 1 179 182 1 179 184 1 184 183 1 184 185 1 185 136 1 185 186 1 186 168 1
		 181 185 1 180 186 1 216 638 1 638 639 1 639 215 1 215 216 1 639 556 1 406 640 1 640 187 1
		 187 28 1 187 189 1 189 114 1 189 188 1 188 94 1 196 206 1 206 205 1 205 195 1 195 196 1
		 200 201 1 201 650 1 650 651 1 651 200 1 206 201 1 200 205 1 191 190 1 190 192 1 192 193 1
		 193 191 1 190 656 1 656 657 1 657 192 1 657 658 1 658 193 1 640 660 1 660 194 1 194 187 1
		 660 661 1 661 195 1 195 194 1 191 208 1 208 198 1 198 190 1 208 207 1 207 197 1 197 198 1
		 207 206 1 196 197 1 194 204 1 204 189 1 205 204 1 658 668 1 668 203 1 203 193 1 668 670 1
		 670 202 1 202 203 1 670 650 1 201 202 1 203 208 1 202 207 1 199 188 1;
	setAttr ".ed[498:663]" 204 199 1 200 199 1 47 210 1 210 209 1 44 46 1 46 210 1
		 46 30 1 44 211 1 211 240 1 240 46 1 240 31 1 341 343 1 343 363 1 363 361 1 361 341 1
		 552 638 1 216 93 1 93 217 1 217 218 1 218 113 1 218 219 1 219 27 1 236 237 1 237 218 1
		 217 236 1 237 235 1 235 219 1 216 236 1 235 211 1 31 247 1 247 221 1 221 275 1 275 31 1
		 213 220 1 220 246 1 246 214 1 246 248 1 248 257 1 222 241 1 241 223 1 223 225 1 225 222 1
		 260 222 1 225 224 1 224 260 1 223 226 1 226 228 1 228 225 1 228 227 1 227 224 1 226 229 1
		 229 231 1 231 228 1 231 230 1 230 227 1 229 232 1 232 234 1 234 231 1 234 233 1 233 230 1
		 232 235 1 237 234 1 236 233 1 232 238 1 238 239 1 239 235 1 223 239 1 238 226 1 235 242 1
		 242 240 1 242 249 1 249 31 1 241 243 1 243 239 1 243 242 1 243 250 1 250 249 1 236 245 1
		 245 244 1 244 233 1 245 224 1 227 244 1 216 262 1 262 245 1 262 260 1 220 221 1 247 246 1
		 247 252 1 252 248 1 249 247 1 250 251 1 251 247 1 241 253 1 253 250 1 253 254 1 254 251 1
		 251 255 1 255 252 1 255 257 1 222 254 1 254 256 1 256 255 1 256 258 1 258 257 1 258 259 1
		 259 92 1 260 261 1 261 254 1 262 263 1 263 261 1 264 259 1 256 264 1 254 265 1 265 264 1
		 261 267 1 267 265 1 215 263 1 215 267 1 279 280 1 280 267 1 15 269 1 268 10 1 24 270 1
		 284 292 1 274 109 1 272 82 1 81 271 1 273 91 1 213 275 1 31 26 1 25 276 1 111 277 1
		 266 278 1 266 279 1 280 264 1 279 259 1 290 173 1 23 282 1 282 290 1 21 281 1 281 283 1
		 350 351 1 351 284 1 283 350 1 88 285 1 285 286 1 286 89 1 287 285 1 358 357 1 357 287 1
		 288 358 1 342 337 1 337 345 1 345 344 1 344 342 1 290 281 1 212 291 1 291 282 1 347 289 1
		 289 346 1 346 347 1 351 746 1 746 292 1 273 293 1 293 288 1 746 411 1;
	setAttr ".ed[664:829]" 557 293 1 34 294 1 294 61 1 61 305 1 34 32 1 32 295 1
		 174 296 1 33 297 1 155 298 1 101 299 1 100 306 1 306 141 1 90 300 1 89 301 1 340 90 1
		 302 336 1 336 99 1 59 304 1 306 307 1 330 131 1 329 330 1 308 304 1 150 309 1 100 310 1
		 310 307 1 319 328 1 328 323 1 323 312 1 326 325 1 325 316 1 317 326 1 318 327 1 327 338 1
		 325 321 1 321 315 1 323 326 1 321 327 1 320 328 1 97 314 1 49 320 1 324 126 1 328 175 1
		 48 323 1 326 156 1 128 325 1 327 171 1 166 335 1 335 327 1 127 321 1 304 331 1 331 322 1
		 331 332 1 332 329 1 332 333 1 333 330 1 333 307 1 308 332 1 334 314 1 97 334 1 324 335 1
		 334 335 1 89 336 1 286 337 1 337 336 1 286 352 1 352 360 1 360 337 1 334 338 1 97 339 1
		 300 340 1 99 342 1 342 291 1 341 291 1 342 343 1 345 364 1 364 362 1 362 344 1 289 353 1
		 353 365 1 365 346 1 348 289 1 347 348 1 360 364 1 342 347 1 346 343 1 344 348 1 362 366 1
		 366 348 1 354 290 1 282 355 1 355 354 1 281 349 1 349 350 1 285 356 1 356 352 1 357 356 1
		 366 353 1 354 349 1 291 359 1 359 355 1 774 775 1 775 361 1 363 774 1 776 777 1 777 351 1
		 350 776 1 778 779 1 779 357 1 358 778 1 780 781 1 781 360 1 352 780 1 361 359 1 782 783 1
		 783 362 1 364 782 1 784 785 1 785 365 1 353 784 1 781 782 1 365 363 1 783 786 1 786 366 1
		 777 746 1 293 787 1 787 358 1 39 367 1 120 121 1 369 122 1 122 123 1 374 122 1 372 118 1
		 118 370 1 119 372 1 373 371 1 122 372 1 557 787 1 661 790 1 790 196 1 198 791 1 791 656 1
		 197 792 1 792 791 1 790 792 1 199 794 1 794 793 1 793 188 1 651 794 1 355 796 1 796 795 1
		 795 354 1 349 797 1 797 776 1 468 464 1 356 798 1 798 780 1 779 798 1 786 784 1 795 797 1
		 793 551 1 359 799 1 799 796 1 787 778 1 775 799 1 785 774 1 378 377 1;
	setAttr ".ed[830:995]" 377 376 1 376 375 1 375 378 1 379 378 1 375 380 1 380 379 1
		 382 381 1 381 377 1 378 382 1 379 383 1 383 382 1 384 382 1 383 385 1 385 384 1 382 387 1
		 387 386 1 386 381 1 388 387 1 384 388 1 390 384 1 385 389 1 389 390 1 394 393 1 393 392 1
		 392 391 1 391 394 1 387 396 1 396 395 1 395 386 1 396 398 1 398 397 1 397 395 1 388 399 1
		 399 396 1 399 401 1 401 400 1 400 396 1 403 394 1 391 402 1 402 403 1 407 406 1 405 404 1
		 404 407 1 390 399 1 408 409 1 409 393 1 394 408 1 411 410 1 410 409 1 408 411 1 408 413 1
		 413 412 1 403 413 1 413 415 1 415 414 1 416 419 1 419 418 1 418 417 1 417 416 1 421 420 1
		 420 419 1 416 421 1 425 424 1 424 423 1 423 422 1 422 425 1 426 397 1 397 423 1 424 426 1
		 426 427 1 427 395 1 427 428 1 428 386 1 428 429 1 429 381 1 429 430 1 430 377 1 431 379 1
		 380 432 1 432 431 1 383 434 1 434 433 1 433 385 1 435 389 1 433 435 1 392 437 1 437 436 1
		 436 391 1 438 402 1 436 438 1 439 442 1 442 441 1 441 440 1 440 439 1 439 444 1 444 443 1
		 443 442 1 404 446 1 446 445 1 445 407 1 448 447 1 447 375 1 376 448 1 447 449 1 449 380 1
		 453 452 1 452 451 1 451 450 1 450 453 1 453 455 1 455 454 1 454 452 1 449 456 1 456 432 1
		 450 457 1 457 456 1 449 450 1 458 451 1 452 459 1 459 458 1 461 460 1 460 455 1 455 448 1
		 448 461 1 376 462 1 462 461 1 464 463 1 463 404 1 467 466 1 466 465 1 465 468 1 470 469 1
		 415 470 1 470 466 1 474 473 1 473 472 1 472 471 1 471 474 1 475 478 1 478 477 1 477 476 1
		 476 475 1 479 482 1 482 481 1 481 480 1 480 479 1 483 486 1 486 485 1 485 484 1 484 483 1
		 479 488 1 488 487 1 487 482 1 489 492 1 492 491 1 491 490 1 490 489 1 479 494 1 494 493 1
		 493 488 1 480 495 1 495 494 1 496 497 1 497 491 1 492 496 1 424 499 1;
	setAttr ".ed[996:1161]" 499 498 1 498 426 1 498 500 1 500 427 1 500 428 1 503 502 1
		 502 501 1 501 483 1 483 503 1 505 504 1 504 500 1 498 505 1 499 506 1 506 505 1 507 504 1
		 506 507 1 499 509 1 509 508 1 508 506 1 508 510 1 510 507 1 514 513 1 513 512 1 512 511 1
		 511 514 1 425 509 1 512 508 1 509 515 1 515 512 1 516 511 1 515 516 1 430 462 1 431 434 1
		 520 519 1 519 518 1 518 517 1 517 520 1 521 522 1 522 517 1 518 521 1 519 524 1 524 523 1
		 523 518 1 525 521 1 523 525 1 526 527 1 527 525 1 523 526 1 524 529 1 529 528 1 528 523 1
		 528 530 1 530 526 1 526 532 1 532 531 1 531 527 1 536 535 1 535 534 1 534 533 1 533 536 1
		 529 538 1 538 537 1 537 528 1 540 537 1 538 539 1 539 540 1 541 540 1 539 542 1 542 541 1
		 543 530 1 537 543 1 545 544 1 544 543 1 537 545 1 547 546 1 546 548 1 548 533 1 534 547 1
		 551 550 1 550 549 1 549 552 1 543 532 1 553 534 1 535 554 1 554 553 1 553 557 1 556 555 1
		 555 553 1 555 547 1 561 560 1 560 559 1 559 558 1 558 561 1 562 564 1 564 563 1 563 475 1
		 475 562 1 565 568 1 568 567 1 567 566 1 566 565 1 539 570 1 570 569 1 569 542 1 571 570 1
		 538 571 1 529 428 1 428 571 1 524 429 1 519 430 1 432 522 1 521 431 1 434 525 1 527 433 1
		 531 435 1 437 536 1 533 436 1 548 438 1 440 573 1 573 572 1 572 439 1 572 574 1 574 444 1
		 446 549 1 550 445 1 517 576 1 576 575 1 575 520 1 522 577 1 577 576 1 577 579 1 579 578 1
		 578 576 1 578 580 1 580 575 1 456 577 1 457 579 1 459 582 1 582 581 1 581 458 1 580 460 1
		 461 575 1 462 520 1 560 584 1 584 583 1 583 559 1 563 585 1 585 478 1 586 589 1 589 588 1
		 588 587 1 587 586 1 590 593 1 593 592 1 592 591 1 591 590 1 594 597 1 597 596 1 596 595 1
		 595 594 1 597 599 1 599 598 1 598 596 1 596 601 1 601 600 1 600 595 1;
	setAttr ".ed[1162:1327]" 586 603 1 603 602 1 602 589 1 598 604 1 604 601 1 604 605 1
		 605 600 1 570 607 1 607 606 1 606 569 1 571 500 1 500 607 1 504 608 1 608 607 1 608 609 1
		 609 606 1 507 609 1 609 611 1 611 610 1 610 606 1 510 611 1 612 611 1 508 612 1 614 513 1
		 514 613 1 613 614 1 566 610 1 610 616 1 616 615 1 615 566 1 611 614 1 614 616 1 613 615 1
		 617 613 1 511 617 1 562 420 1 421 618 1 618 562 1 477 474 1 471 476 1 481 588 1 589 480 1
		 602 495 1 617 620 1 620 619 1 619 613 1 622 621 1 621 490 1 491 622 1 623 622 1 497 623 1
		 625 623 1 497 624 1 624 625 1 626 484 1 484 490 1 621 626 1 622 598 1 599 621 1 623 604 1
		 625 605 1 564 558 1 559 563 1 595 628 1 628 627 1 627 594 1 600 629 1 629 628 1 583 585 1
		 628 586 1 587 627 1 629 603 1 417 423 1 398 417 1 418 422 1 473 486 1 486 630 1 630 472 1
		 488 492 1 489 487 1 493 496 1 493 624 1 605 631 1 631 629 1 625 632 1 632 631 1 624 633 1
		 633 632 1 494 633 1 495 634 1 634 633 1 602 635 1 635 634 1 603 636 1 636 635 1 635 632 1
		 636 631 1 638 637 1 637 547 1 547 639 1 641 640 1 407 641 1 445 642 1 642 641 1 550 643 1
		 643 642 1 647 646 1 646 645 1 645 644 1 644 647 1 648 651 1 650 649 1 649 648 1 647 648 1
		 649 646 1 652 655 1 655 654 1 654 653 1 653 652 1 654 657 1 656 653 1 655 658 1 641 659 1
		 659 660 1 659 644 1 644 661 1 663 652 1 653 662 1 662 663 1 665 663 1 662 664 1 664 665 1
		 646 665 1 664 645 1 642 666 1 666 659 1 666 647 1 655 667 1 667 668 1 667 669 1 669 670 1
		 669 649 1 663 667 1 665 669 1 671 666 1 643 671 1 671 648 1 415 672 1 672 466 1 672 673 1
		 673 465 1 413 673 1 673 674 1 674 463 1 463 465 1 403 674 1 675 678 1 678 677 1 677 676 1
		 676 675 1 549 637 1 446 680 1 680 679 1 679 549 1 681 680 1 404 681 1;
	setAttr ".ed[1328:1493]" 680 683 1 683 682 1 682 679 1 681 684 1 684 683 1 682 637 1
		 463 684 1 687 686 1 686 403 1 403 685 1 685 687 1 444 689 1 689 688 1 688 443 1 574 690 1
		 690 689 1 691 694 1 694 693 1 693 692 1 692 691 1 695 696 1 696 694 1 691 695 1 694 698 1
		 698 697 1 697 693 1 696 699 1 699 698 1 698 701 1 701 700 1 700 697 1 699 702 1 702 701 1
		 701 704 1 704 703 1 703 700 1 702 705 1 705 704 1 704 683 1 684 703 1 705 682 1 707 706 1
		 706 703 1 684 707 1 707 693 1 697 706 1 674 708 1 708 684 1 403 709 1 709 708 1 707 710 1
		 710 692 1 708 710 1 709 711 1 711 710 1 713 712 1 712 682 1 705 713 1 713 699 1 696 712 1
		 712 714 1 714 637 1 695 714 1 689 686 1 687 688 1 690 715 1 715 686 1 686 709 1 686 716 1
		 716 711 1 711 717 1 717 692 1 716 718 1 718 717 1 715 719 1 719 716 1 574 719 1 718 691 1
		 719 720 1 720 718 1 574 721 1 721 720 1 572 722 1 722 721 1 718 723 1 723 695 1 723 724 1
		 724 714 1 725 720 1 722 725 1 725 726 1 726 718 1 726 727 1 727 723 1 724 547 1 727 547 1
		 727 728 1 728 546 1 393 390 1 389 392 1 409 399 1 410 401 1 435 437 1 536 531 1 532 535 1
		 543 554 1 685 443 1 402 441 1 442 403 1 438 440 1 548 573 1 546 573 1 725 728 1 722 546 1
		 729 730 1 730 416 1 417 729 1 400 731 1 731 398 1 401 733 1 733 732 1 732 400 1 735 540 1
		 541 734 1 734 735 1 735 545 1 545 737 1 737 736 1 736 544 1 738 741 1 741 740 1 740 739 1
		 739 738 1 731 729 1 730 742 1 742 421 1 743 745 1 745 744 1 744 743 1 410 746 1 746 733 1
		 544 747 1 747 554 1 747 557 1 425 501 1 502 516 1 516 425 1 422 630 1 630 501 1 418 472 1
		 419 471 1 420 476 1 566 569 1 615 748 1 748 565 1 567 542 1 542 561 1 558 541 1 618 749 1
		 749 564 1 503 511 1 619 748 1 592 626 1 599 592 1 503 620 1 612 513 1;
	setAttr ".ed[1494:1607]" 619 593 1 593 565 1 474 751 1 751 750 1 750 473 1 478 753 1
		 753 752 1 752 477 1 584 754 1 754 583 1 585 755 1 755 753 1 752 751 1 754 755 1 750 485 1
		 590 568 1 485 489 1 597 591 1 751 482 1 487 750 1 753 588 1 481 752 1 754 756 1 756 594 1
		 627 754 1 755 587 1 757 503 1 484 757 1 626 758 1 758 757 1 592 759 1 759 758 1 619 759 1
		 758 620 1 760 568 1 590 760 1 756 591 1 756 760 1 749 541 1 739 734 1 749 739 1 739 762 1
		 762 761 1 761 734 1 584 760 1 560 568 1 561 567 1 738 618 1 742 738 1 742 675 1 676 738 1
		 764 763 1 763 740 1 741 764 1 745 766 1 766 765 1 765 744 1 767 743 1 744 767 1 763 762 1
		 676 745 1 743 738 1 767 741 1 767 768 1 768 764 1 769 770 1 770 730 1 729 769 1 732 771 1
		 771 731 1 772 735 1 761 772 1 772 737 1 765 768 1 771 769 1 770 773 1 773 742 1 678 775 1
		 774 677 1 733 777 1 776 732 1 737 779 1 778 736 1 762 781 1 780 761 1 773 678 1 764 783 1
		 782 763 1 766 785 1 784 765 1 677 766 1 768 786 1 787 747 1 736 787 1 453 447 1 458 457 1
		 460 788 1 788 454 1 788 459 1 578 582 1 582 789 1 789 580 1 579 581 1 789 788 1 645 790 1
		 791 662 1 792 664 1 794 671 1 643 793 1 796 770 1 769 795 1 797 771 1 798 772 1 799 773 1;
	setAttr -s 800 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[664:799]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 810 -ch 3216 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 898 841 873 902
		f 4 4 5 -3 6
		mu 0 4 896 906 902 873
		f 4 7 8 9 -2
		mu 0 4 841 765 810 873
		f 4 10 -7 -10 11
		mu 0 4 882 896 873 810
		f 4 12 13 -12 14
		mu 0 4 799 858 882 810
		f 4 15 16 17 -9
		mu 0 4 765 743 750 810
		f 4 18 -15 -18 19
		mu 0 4 756 799 810 750
		f 4 -13 20 21 22
		mu 0 4 858 799 788 856
		f 4 23 24 25 26
		mu 0 4 861 800 805 877
		f 4 27 28 29 -17
		mu 0 4 743 731 730 750
		f 4 30 -29 31 32
		mu 0 4 709 730 731 719
		f 4 33 -20 -30 34
		mu 0 4 744 756 750 730
		f 4 35 36 -35 37
		mu 0 4 728 740 744 730
		f 4 -26 38 39 40
		mu 0 4 877 805 809 883
		f 4 41 42 43 44
		mu 0 4 826 833 837 835
		f 4 45 -21 -19 -34
		mu 0 4 744 788 799 756
		f 4 46 -25 47 48
		mu 0 4 761 805 800 754
		f 4 49 50 51 -49
		mu 0 4 754 748 753 761
		f 4 -52 52 53 54
		mu 0 4 761 753 767 773
		f 4 -39 -47 -55 55
		mu 0 4 809 805 761 773
		f 4 -54 56 57 58
		mu 0 4 773 767 785 789
		f 4 59 60 61 62
		mu 0 4 672 674 675 673
		f 4 63 64 65 -63
		mu 0 4 673 670 669 672
		f 4 66 67 68 69
		mu 0 4 701 710 697 687
		f 4 70 71 72 -67
		mu 0 4 701 719 723 710
		f 4 73 -72 -32 74
		mu 0 4 732 723 719 731
		f 4 75 76 -75 -28
		mu 0 4 743 742 732 731
		f 4 77 78 -76 -16
		mu 0 4 765 757 742 743
		f 4 79 80 -78 -8
		mu 0 4 841 838 757 765
		f 4 81 82 -5 83
		mu 0 4 899 907 906 896
		f 4 84 85 -14 86
		mu 0 4 880 890 882 858
		f 4 87 -87 -23 88
		mu 0 4 868 880 858 856
		f 4 89 90 -27 91
		mu 0 4 884 874 861 877
		f 4 -41 92 93 -92
		mu 0 4 877 883 886 884
		f 4 94 95 96 97
		mu 0 4 888 889 887 885
		f 4 98 -98 99 100
		mu 0 4 879 888 885 872
		f 4 101 -44 102 103
		mu 0 4 846 835 837 844
		f 4 104 105 106 -4
		mu 0 4 902 915 914 898
		f 4 -105 -6 107 108
		mu 0 4 915 902 906 916
		f 4 109 110 111 112
		mu 0 4 929 930 925 926
		f 4 -111 113 114 115
		mu 0 4 925 930 927 923
		f 4 116 117 -108 -83
		mu 0 4 907 917 916 906
		f 4 118 119 120 -118
		mu 0 4 917 928 926 916
		f 4 121 122 -110 123
		mu 0 4 932 933 930 929
		f 4 124 125 126 127
		mu 0 4 923 921 913 914
		f 4 128 129 -107 -127
		mu 0 4 913 897 898 914
		f 4 130 131 -45 132
		mu 0 4 825 814 826 835
		f 4 133 134 135 136
		mu 0 4 797 796 806 808
		f 4 137 138 139 -58
		mu 0 4 785 794 795 789
		f 4 140 -134 141 -139
		mu 0 4 794 796 797 795
		f 4 142 143 144 145
		mu 0 4 671 658 657 667
		f 4 146 147 148 149
		mu 0 4 647 664 655 643
		f 4 150 151 152 153
		mu 0 4 611 609 629 630
		f 4 154 155 156 157
		mu 0 4 676 659 650 666
		f 4 158 159 160 -154
		mu 0 4 630 631 612 611
		f 4 161 162 163 164
		mu 0 4 636 640 618 613
		f 4 -161 165 166 167
		mu 0 4 611 612 602 600
		f 4 168 169 -151 -168
		mu 0 4 600 598 609 611
		f 4 170 -164 171 172
		mu 0 4 604 613 618 599
		f 4 -73 173 174 175
		mu 0 4 710 723 726 714
		f 4 -74 176 177 -174
		mu 0 4 723 732 733 726
		f 3 -77 178 -177
		mu 0 3 732 742 733
		f 4 179 180 181 182
		mu 0 4 684 688 683 676
		f 4 183 184 185 -178
		mu 0 4 733 727 724 726
		f 4 -175 -186 186 187
		mu 0 4 714 726 724 716
		f 4 -185 188 189 -187
		mu 0 4 724 727 717 716
		f 4 -188 190 191 192
		mu 0 4 714 716 708 706
		f 4 -191 -190 193 194
		mu 0 4 708 716 717 711
		f 4 195 196 197 198
		mu 0 4 703 704 698 691
		f 4 -176 -193 199 -68
		mu 0 4 710 714 706 697
		f 4 -192 200 201 202
		mu 0 4 706 708 703 702
		f 4 -199 203 204 -202
		mu 0 4 703 691 695 702
		f 4 -80 -1 -130 205
		mu 0 4 838 841 898 897
		f 4 -11 -86 206 -84
		mu 0 4 896 882 890 899
		f 4 207 208 209 210
		mu 0 4 68 106 49 42
		f 4 211 -211 212 213
		mu 0 4 51 68 42 41
		f 4 214 215 -208 216
		mu 0 4 133 172 106 68
		f 4 -212 217 218 -217
		mu 0 4 68 51 64 133
		f 4 219 -219 220 221
		mu 0 4 143 133 64 92
		f 4 -215 222 223 224
		mu 0 4 172 133 186 191
		f 4 -223 -220 225 226
		mu 0 4 186 133 143 179
		f 4 227 -222 228 229
		mu 0 4 151 143 92 96
		f 4 230 231 232 233
		mu 0 4 142 147 91 74
		f 4 -224 234 235 236
		mu 0 4 191 186 208 205
		f 4 -236 237 238 239
		mu 0 4 205 208 228 218
		f 4 240 241 -239 242
		mu 0 4 248 233 218 228
		f 4 -227 243 244 -235
		mu 0 4 186 179 192 208
		f 4 245 246 247 -245
		mu 0 4 192 197 209 208
		f 5 248 -234 249 250 251
		mu 0 5 149 142 74 67 90
		f 4 252 253 254 255
		mu 0 4 114 119 122 116
		f 4 -228 256 -244 -226
		mu 0 4 143 151 192 179
		f 4 257 258 -231 259
		mu 0 4 180 187 147 142
		f 4 260 261 262 263
		mu 0 4 180 178 181 190
		f 4 -261 -260 -249 264
		mu 0 4 178 180 142 149
		f 4 265 266 267 268
		mu 0 4 265 256 245 255
		f 4 269 270 271 272
		mu 0 4 276 282 267 259
		f 4 273 274 275 276
		mu 0 4 247 236 244 254
		f 4 277 -242 278 279
		mu 0 4 214 218 233 226
		f 4 -278 280 281 -240
		mu 0 4 218 214 203 205
		f 4 282 283 -237 -282
		mu 0 4 203 196 191 205
		f 4 -79 284 -225 -284
		mu 0 4 196 176 172 191
		f 4 -81 285 -216 -285
		mu 0 4 176 111 106 172
		f 4 286 -82 287 -214
		mu 0 4 41 40 48 51
		f 4 288 -85 289 -221
		mu 0 4 64 56 66 92
		f 4 290 -229 -290 -88
		mu 0 4 77 96 92 66
		f 4 291 -90 292 -233
		mu 0 4 91 73 65 74
		f 4 293 -250 -293 -94
		mu 0 4 62 67 74 65
		f 4 294 295 296 -95
		mu 0 4 59 61 60 58
		f 4 -295 -99 297 298
		mu 0 4 61 59 63 69
		f 4 -256 299 -104 300
		mu 0 4 114 116 109 107
		f 4 301 302 -210 303
		mu 0 4 33 32 42 49
		f 4 304 305 -213 -303
		mu 0 4 32 31 41 42
		f 4 -305 306 307 308
		mu 0 4 31 32 22 21
		f 4 309 -307 -302 310
		mu 0 4 23 22 32 33
		f 4 311 -117 -287 -306
		mu 0 4 31 30 40 41
		f 4 312 -119 -312 -309
		mu 0 4 21 19 30 31
		f 4 313 -122 314 315
		mu 0 4 17 14 15 18
		f 4 -126 316 -311 317
		mu 0 4 34 24 23 33
		f 4 318 -129 -318 -304
		mu 0 4 49 50 34 33
		f 4 319 320 321 -266
		mu 0 4 265 273 271 256
		f 4 -150 322 323 -271
		mu 0 4 282 287 278 267
		f 4 324 325 326 327
		mu 0 4 318 304 305 320
		f 4 328 329 330 331
		mu 0 4 268 284 280 263
		f 4 332 333 334 335
		mu 0 4 301 316 315 300
		f 4 -335 336 337 338
		mu 0 4 300 315 311 298
		f 4 339 340 341 -334
		mu 0 4 316 322 321 315
		f 4 -328 342 343 344
		mu 0 4 318 320 334 324
		f 4 345 346 -337 -342
		mu 0 4 321 325 311 315
		f 4 347 348 -346 -341
		mu 0 4 322 327 325 321
		f 4 349 350 351 -280
		mu 0 4 226 223 212 214
		f 4 -352 352 353 -281
		mu 0 4 214 212 202 203
		f 3 -354 -179 -283
		mu 0 3 203 202 196
		f 4 354 -184 -353 355
		mu 0 4 213 211 202 212
		f 4 356 357 -356 -351
		mu 0 4 223 222 213 212
		f 4 -189 -355 -358 358
		mu 0 4 221 211 213 222
		f 4 359 360 361 -357
		mu 0 4 223 229 227 222
		f 4 362 -194 -359 -362
		mu 0 4 227 224 221 222
		f 4 363 -195 -363 364
		mu 0 4 707 708 711 713
		f 4 -197 365 366 367
		mu 0 4 698 704 705 696
		f 4 368 369 370 371
		mu 0 4 232 229 236 239
		f 4 372 -361 -369 373
		mu 0 4 231 227 229 232
		f 4 374 -367 -374 -372
		mu 0 4 239 241 231 232
		f 4 -209 -286 -206 -319
		mu 0 4 49 106 111 50
		f 4 -289 -218 -288 -207
		mu 0 4 56 64 51 48
		f 4 -368 375 376 -198
		mu 0 4 698 696 693 691
		f 4 377 378 -65 379
		mu 0 4 644 639 669 670
		f 4 380 -145 381 -148
		mu 0 4 664 667 657 655
		f 4 382 -327 383 -152
		mu 0 4 609 603 617 629
		f 4 384 -343 -383 -170
		mu 0 4 598 584 603 609
		f 4 385 386 -376 387
		mu 0 4 252 250 240 241
		f 4 388 389 390 -163
		mu 0 4 640 645 620 618
		f 4 -391 391 392 -172
		mu 0 4 618 620 597 599
		f 4 -393 393 394 395
		mu 0 4 599 597 587 596
		f 4 396 397 398 -389
		mu 0 4 640 659 665 645
		f 4 -338 399 -390 400
		mu 0 4 298 311 310 296
		f 4 -347 401 -392 -400
		mu 0 4 311 325 330 310
		f 4 -349 402 -394 -402
		mu 0 4 325 327 335 330
		f 4 -272 403 -269 404
		mu 0 4 259 267 265 255
		f 4 -333 405 406 407
		mu 0 4 316 301 302 317
		f 4 -340 -408 408 409
		mu 0 4 322 316 317 323
		f 4 -324 410 -320 -404
		mu 0 4 267 278 273 265
		f 4 -325 411 -407 412
		mu 0 4 304 318 317 302
		f 4 -345 413 -409 -412
		mu 0 4 318 324 323 317
		f 4 414 -33 -71 415
		mu 0 4 674 709 719 701
		f 4 -416 -70 416 -61
		mu 0 4 674 701 687 675
		f 4 417 418 -143 419
		mu 0 4 678 666 658 671
		f 4 420 -165 421 -160
		mu 0 4 631 636 613 612
		f 4 -422 -171 422 -166
		mu 0 4 612 613 604 602
		f 4 -396 423 -423 -173
		mu 0 4 599 596 602 604
		f 4 -348 -410 424 425
		mu 0 4 327 322 323 328
		f 4 -403 -426 426 427
		mu 0 4 335 327 328 336
		f 4 -395 -428 428 429
		mu 0 4 596 587 586 595
		f 4 -424 -430 430 -167
		mu 0 4 602 596 595 600
		f 4 -431 431 432 -169
		mu 0 4 600 595 593 598
		f 4 -385 -433 433 434
		mu 0 4 584 598 593 585
		f 4 -344 -435 435 436
		mu 0 4 324 334 337 329
		f 4 -432 -429 437 -434
		mu 0 4 593 595 586 585
		f 4 -436 -438 -427 438
		mu 0 4 329 337 336 328
		f 4 -437 -439 -425 -414
		mu 0 4 324 329 328 323
		f 4 439 440 441 442
		mu 0 4 124 139 159 149
		f 4 -442 443 -262 -265
		mu 0 4 149 159 181 178
		f 4 444 445 446 -43
		mu 0 4 833 852 854 837
		f 4 -103 -447 447 448
		mu 0 4 844 837 854 859
		f 4 -301 -449 449 450
		mu 0 4 114 107 89 98
		f 4 451 452 453 454
		mu 0 4 911 912 905 904
		f 4 455 456 457 458
		mu 0 4 44 36 37 45
		f 4 -453 459 -456 460
		mu 0 4 43 35 36 44
		f 4 461 462 463 464
		mu 0 4 944 941 946 945
		f 4 -463 465 466 467
		mu 0 4 946 941 942 947
		f 4 -468 468 469 -464
		mu 0 4 1 0 5 4
		f 4 -446 470 471 472
		mu 0 4 854 852 893 894
		f 4 -472 473 474 475
		mu 0 4 894 893 903 904
		f 4 -462 476 477 478
		mu 0 4 941 944 938 937
		f 4 -478 479 480 481
		mu 0 4 937 938 924 922
		f 4 -481 482 -452 483
		mu 0 4 922 924 912 911
		f 4 -448 -473 484 485
		mu 0 4 859 854 894 895
		f 4 -485 -476 -454 486
		mu 0 4 895 894 904 905
		f 4 -470 487 488 489
		mu 0 4 4 5 11 10
		f 4 -489 490 491 492
		mu 0 4 10 11 27 26
		f 4 -492 493 -457 494
		mu 0 4 26 27 37 36
		f 4 -477 -465 -490 495
		mu 0 4 9 2 4 10
		f 4 -480 -496 -493 496
		mu 0 4 25 9 10 26
		f 4 -483 -497 -495 -460
		mu 0 4 35 25 26 36
		f 4 497 -450 -486 498
		mu 0 4 53 98 89 52
		f 4 499 -499 -487 -461
		mu 0 4 44 53 52 43
		f 4 -142 500 501 -140
		mu 0 4 795 797 798 789
		f 4 -501 -137 502 503
		mu 0 4 798 797 808 802
		f 4 -502 -504 504 -59
		mu 0 4 789 798 802 773
		f 4 -503 505 506 507
		mu 0 4 802 808 825 813
		f 4 -505 -508 508 -56
		mu 0 4 773 802 813 809
		f 4 509 510 511 512
		mu 0 4 641 637 633 634
		f 4 -255 513 -440 514
		mu 0 4 116 122 139 124
		f 4 -300 515 516 517
		mu 0 4 109 116 115 110
		f 4 -518 518 519 -102
		mu 0 4 846 845 839 835
		f 4 520 521 -517 522
		mu 0 4 113 108 110 115
		f 4 -522 523 524 -519
		mu 0 4 845 849 840 839
		f 4 -516 -515 525 -523
		mu 0 4 115 116 124 113
		f 4 -525 526 -133 -520
		mu 0 4 839 840 825 835
		f 4 527 528 529 530
		mu 0 4 809 830 832 834
		f 4 531 532 533 -101
		mu 0 4 872 865 867 879
		f 4 -298 -534 534 535
		mu 0 4 69 63 71 75
		f 4 536 537 538 539
		mu 0 4 876 869 878 881
		f 4 540 -540 541 542
		mu 0 4 87 80 72 79
		f 4 -539 543 544 545
		mu 0 4 881 878 870 875
		f 4 -542 -546 546 547
		mu 0 4 79 72 76 81
		f 4 -545 548 549 550
		mu 0 4 875 870 866 871
		f 4 -547 -551 551 552
		mu 0 4 81 76 78 83
		f 4 -550 553 554 555
		mu 0 4 871 866 863 864
		f 4 -552 -556 556 557
		mu 0 4 83 78 85 88
		f 4 -555 558 -524 559
		mu 0 4 864 863 840 849
		f 4 -557 -560 -521 560
		mu 0 4 88 85 108 113
		f 4 561 562 563 -559
		mu 0 4 863 862 853 840
		f 4 -544 564 -563 565
		mu 0 4 870 878 853 862
		f 4 -562 -554 -549 -566
		mu 0 4 862 863 866 870
		f 4 -527 566 567 -507
		mu 0 4 825 840 831 813
		f 4 568 569 -509 -568
		mu 0 4 831 827 809 813
		f 4 -565 -538 570 571
		mu 0 4 853 878 869 842
		f 4 -564 -572 572 -567
		mu 0 4 840 853 842 831
		f 4 -569 -573 573 574
		mu 0 4 827 831 842 843
		f 4 575 576 577 -561
		mu 0 4 113 97 86 88
		f 4 578 -548 579 -577
		mu 0 4 97 79 81 86
		f 4 -558 -578 -580 -553
		mu 0 4 83 88 86 81
		f 4 -526 580 581 -576
		mu 0 4 113 124 105 97
		f 4 -582 582 -543 -579
		mu 0 4 97 105 87 79
		f 4 583 -529 584 -533
		mu 0 4 865 832 830 867
		f 4 -585 585 586 -535
		mu 0 4 71 120 118 75
		f 3 -570 587 -528
		mu 0 3 809 827 830
		f 4 -588 -575 588 589
		mu 0 4 830 827 843 848
		f 4 -571 590 591 -574
		mu 0 4 842 869 857 843
		f 4 592 593 -589 -592
		mu 0 4 857 860 848 843
		f 4 -590 594 595 -586
		mu 0 4 830 848 847 836
		f 4 596 -536 -587 -596
		mu 0 4 112 69 75 118
		f 4 -537 597 -593 -591
		mu 0 4 869 876 860 857
		f 4 -594 598 599 -595
		mu 0 4 848 860 855 847
		f 4 600 601 -597 -600
		mu 0 4 101 84 69 112
		f 4 -602 602 603 -299
		mu 0 4 69 84 70 61
		f 4 -598 -541 604 605
		mu 0 4 95 80 87 99
		f 4 -605 -583 606 607
		mu 0 4 99 87 105 117
		f 4 608 -603 -601 609
		mu 0 4 82 70 84 101
		f 4 -599 610 611 -610
		mu 0 4 101 95 93 82
		f 4 -606 612 613 -611
		mu 0 4 95 99 100 93
		f 4 -607 -581 -443 614
		mu 0 4 117 105 124 149
		f 4 -615 615 -613 -608
		mu 0 4 117 149 100 99
		f 4 -616 -252 616 617
		mu 0 4 100 149 90 94
		f 4 -22 618 -24 619
		mu 0 4 856 788 800 861
		f 4 -46 620 -48 -619
		mu 0 4 788 744 754 800
		f 4 -621 -37 621 -50
		mu 0 4 754 744 740 748
		f 4 622 -89 -620 -91
		mu 0 4 874 868 856 861
		f 4 623 -230 624 -232
		mu 0 4 147 151 96 91
		f 4 625 -257 -624 -259
		mu 0 4 187 192 151 147
		f 4 -291 -623 -292 -625
		mu 0 4 96 77 73 91
		f 4 -584 -532 626 -530
		mu 0 4 832 865 872 834
		f 4 627 -97 628 -40
		mu 0 4 809 885 887 883
		f 4 -96 629 -93 -629
		mu 0 4 887 889 886 883
		f 4 -297 630 -294 -630
		mu 0 4 58 60 67 62
		f 3 -631 631 -251
		mu 0 3 67 60 90
		f 4 632 -612 -614 -618
		mu 0 4 94 82 93 100
		f 4 633 -609 -633 -617
		mu 0 4 90 70 82 94
		f 4 -634 -632 -296 -604
		mu 0 4 70 90 60 61
		f 4 -531 -627 -100 -628
		mu 0 4 809 834 872 885
		f 4 634 -60 635 636
		mu 0 4 668 674 672 663
		f 4 -38 -31 637 638
		mu 0 4 728 730 709 699
		f 4 639 640 -36 641
		mu 0 4 722 735 740 728
		f 4 -243 642 643 644
		mu 0 4 248 228 234 251
		f 4 -238 -248 645 -643
		mu 0 4 228 208 209 234
		f 4 646 647 -247 648
		mu 0 4 207 220 209 197
		f 4 649 650 651 652
		mu 0 4 279 258 283 285
		f 4 -415 -635 653 -638
		mu 0 4 709 674 668 699
		f 4 -636 -66 654 655
		mu 0 4 663 672 669 660
		f 3 656 657 658
		mu 0 3 627 624 625
		f 4 659 660 -622 -641
		mu 0 4 735 741 748 740
		f 4 -246 -626 661 662
		mu 0 4 197 192 187 193
		f 3 -661 663 -51
		mu 0 3 748 741 753
		f 4 -662 -258 -264 664
		mu 0 4 193 187 180 190
		f 4 -180 665 666 667
		mu 0 4 688 684 697 695
		f 4 -200 -203 -205 -667
		mu 0 4 697 706 702 695
		f 4 668 669 -69 -666
		mu 0 4 684 678 687 697
		f 4 -420 670 -417 -670
		mu 0 4 678 671 675 687
		f 4 -671 -146 671 -62
		mu 0 4 675 671 667 673
		f 4 -381 672 -64 -672
		mu 0 4 667 664 670 673
		f 4 -147 -270 -380 -673
		mu 0 4 664 647 644 670
		f 4 -360 -350 673 -370
		mu 0 4 229 223 226 236
		f 4 -274 674 675 -371
		mu 0 4 236 247 242 239
		f 4 -279 676 -275 -674
		mu 0 4 226 233 244 236
		f 4 -241 677 -268 678
		mu 0 4 233 248 255 245
		f 4 679 680 -378 -273
		mu 0 4 259 253 275 276
		f 4 -668 -204 681 -181
		mu 0 4 688 695 691 683
		f 4 -375 -676 682 -388
		mu 0 4 241 239 242 252
		f 4 683 -401 -399 684
		mu 0 4 280 298 296 277
		f 4 -682 -377 -387 685
		mu 0 4 683 691 693 686
		f 4 -373 -366 686 -365
		mu 0 4 713 705 704 707
		f 4 -196 -201 -364 -687
		mu 0 4 704 703 708 707
		f 4 -683 -675 687 688
		mu 0 4 252 242 247 263
		f 4 689 690 691 -144
		mu 0 4 658 649 648 657
		f 4 692 693 -149 694
		mu 0 4 646 632 643 655
		f 3 695 696 -321
		mu 0 3 273 290 271
		f 4 -694 697 698 -323
		mu 0 4 287 297 292 278
		f 4 -692 699 -695 -382
		mu 0 4 657 648 646 655
		f 4 -699 700 -696 -411
		mu 0 4 278 292 290 273
		f 4 -157 701 -690 -419
		mu 0 4 666 650 649 658
		f 4 -418 -669 -183 -158
		mu 0 4 666 678 684 676
		f 4 -688 -277 702 -332
		mu 0 4 263 247 254 268
		f 4 -397 -162 703 -156
		mu 0 4 659 640 636 650
		f 4 704 -339 -684 -330
		mu 0 4 284 300 298 280
		f 4 705 -159 706 -691
		mu 0 4 649 631 630 648
		f 4 707 -384 708 -693
		mu 0 4 646 629 617 632
		f 4 709 -406 710 711
		mu 0 4 290 302 301 289
		f 4 -709 -326 712 -698
		mu 0 4 297 305 304 292
		f 4 -707 -153 -708 -700
		mu 0 4 648 630 629 646
		f 4 -713 -413 -710 -701
		mu 0 4 292 304 302 290
		f 4 -704 -421 -706 -702
		mu 0 4 650 636 631 649
		f 4 -182 713 714 -155
		mu 0 4 676 683 679 659
		f 4 715 716 -398 -715
		mu 0 4 679 681 665 659
		f 4 -717 717 718 -685
		mu 0 4 277 260 264 280
		f 4 719 -689 -331 -719
		mu 0 4 264 252 263 280
		f 4 -686 720 -716 -714
		mu 0 4 683 686 681 679
		f 4 -721 -386 -720 -718
		mu 0 4 260 250 252 264
		f 3 721 -703 722
		mu 0 3 270 268 254
		f 4 -705 723 -711 -336
		mu 0 4 300 284 289 301
		f 4 -329 -722 724 -724
		mu 0 4 284 268 270 289
		f 4 -405 -678 725 -680
		mu 0 4 259 255 248 253
		f 4 -645 726 727 -726
		mu 0 4 248 251 258 253
		f 4 -727 728 729 730
		mu 0 4 258 251 266 272
		f 4 -712 -725 731 -697
		mu 0 4 290 289 270 271
		f 4 -723 732 -322 -732
		mu 0 4 270 254 256 271
		f 4 -276 733 -267 -733
		mu 0 4 254 244 245 256
		f 3 -734 -677 -679
		mu 0 3 245 244 233
		f 4 -379 734 735 -655
		mu 0 4 669 639 635 660
		f 4 -735 -681 -728 -650
		mu 0 4 279 275 253 258
		f 4 736 -736 737 -510
		mu 0 4 641 660 635 637
		f 4 738 739 740 -652
		mu 0 4 283 291 293 285
		f 4 -658 741 742 743
		mu 0 4 625 624 616 619
		f 3 744 -657 745
		mu 0 3 622 624 627
		f 4 -651 -731 746 -739
		mu 0 4 283 258 272 291
		f 4 -738 747 -659 748
		mu 0 4 637 635 627 625
		f 4 -653 749 -746 -748
		mu 0 4 635 626 622 627
		f 4 -741 750 751 -750
		mu 0 4 626 610 614 622
		f 4 752 -637 753 754
		mu 0 4 656 668 663 654
		f 4 -642 -639 755 756
		mu 0 4 722 728 699 689
		f 4 -644 757 758 -729
		mu 0 4 251 234 246 266
		f 4 -646 -648 759 -758
		mu 0 4 234 209 220 246
		f 4 -742 -745 -752 760
		mu 0 4 616 624 622 614
		f 4 -654 -753 761 -756
		mu 0 4 699 668 656 689
		f 4 -754 -656 762 763
		mu 0 4 654 663 660 652
		f 4 764 765 -512 766
		mu 0 4 607 608 634 633
		f 4 767 768 -640 769
		mu 0 4 712 729 735 722
		f 4 770 771 -647 772
		mu 0 4 210 230 220 207
		f 4 773 774 -730 775
		mu 0 4 288 299 272 266
		f 4 -763 -737 -513 776
		mu 0 4 652 660 641 634
		f 4 777 778 -740 779
		mu 0 4 309 312 293 291
		f 4 780 781 -743 782
		mu 0 4 591 594 619 616
		f 4 -775 783 -780 -747
		mu 0 4 272 299 309 291
		f 4 -749 -744 784 -511
		mu 0 4 637 625 619 633
		f 4 -779 785 786 -751
		mu 0 4 610 578 590 614
		f 3 -769 787 -660
		mu 0 3 735 729 741
		f 4 -663 788 789 -649
		mu 0 4 197 193 198 207
		f 4 -128 -106 790 -116
		mu 0 4 923 914 915 925
		f 4 -791 -109 -121 -112
		mu 0 4 925 915 916 926
		f 4 -113 -120 791 -124
		mu 0 4 929 926 928 932
		f 4 -125 -115 792 793
		mu 0 4 921 923 927 931
		f 4 -793 -114 -123 794
		mu 0 4 931 927 930 933
		f 4 795 796 -310 797
		mu 0 4 20 17 22 23
		f 4 -797 -316 798 -308
		mu 0 4 22 17 18 21
		f 4 -798 -317 -794 799
		mu 0 4 20 23 24 16
		f 4 -313 -799 -315 -792
		mu 0 4 19 21 18 15
		f 4 -796 -800 -795 -314
		mu 0 4 17 20 16 14
		f 3 -789 -665 800
		mu 0 3 198 193 190
		f 4 -455 -475 801 802
		mu 0 4 911 904 903 910
		f 4 -479 803 804 -466
		mu 0 4 941 937 936 942
		f 4 -482 805 806 -804
		mu 0 4 937 922 920 936
		f 4 -484 -803 807 -806
		mu 0 4 922 911 910 920
		f 4 -498 808 809 810
		mu 0 4 98 53 54 102
		f 4 -500 -459 811 -809
		mu 0 4 53 44 45 54
		f 4 -755 812 813 814
		mu 0 4 656 654 623 628
		f 4 -770 -757 815 816
		mu 0 4 712 722 689 680
		f 4 -131 -506 -136 817
		mu 0 4 814 825 808 806
		f 4 -759 818 819 -776
		mu 0 4 266 246 262 288
		f 4 -760 -772 820 -819
		mu 0 4 246 220 230 262
		f 4 -783 -761 -787 821
		mu 0 4 591 616 614 590
		f 4 -762 -815 822 -816
		mu 0 4 689 656 628 680
		f 4 -253 -451 -811 823
		mu 0 4 119 114 98 102
		f 4 -764 824 825 -813
		mu 0 4 654 652 621 623
		f 3 -773 -790 826
		mu 0 3 210 207 198
		f 4 -777 -766 827 -825
		mu 0 4 652 634 608 621
		f 4 -785 -782 828 -767
		mu 0 4 633 619 594 607
		f 4 829 830 831 832
		mu 0 4 565 516 451 532
		f 4 833 -833 834 835
		mu 0 4 601 565 532 548
		f 4 836 837 -830 838
		mu 0 4 606 546 516 565
		f 4 -834 839 840 -839
		mu 0 4 565 601 653 606
		f 4 841 -841 842 843
		mu 0 4 685 606 653 690
		f 4 -837 844 845 846
		mu 0 4 546 606 638 575
		f 4 847 -845 -842 848
		mu 0 4 677 638 606 685
		f 4 849 -844 850 851
		mu 0 4 718 685 690 721
		f 4 852 853 854 855
		mu 0 4 745 737 738 749
		f 4 -846 856 857 858
		mu 0 4 575 638 651 583
		f 4 -858 859 860 861
		mu 0 4 583 651 615 576
		f 4 -848 862 863 -857
		mu 0 4 638 677 700 651
		f 4 864 865 866 -864
		mu 0 4 700 715 682 651
		f 4 867 -856 868 869
		mu 0 4 755 745 749 752
		f 4 870 -42 871 872
		mu 0 4 828 833 826 812
		f 4 -850 873 -863 -849
		mu 0 4 685 718 700 677
		f 4 874 875 -853 876
		mu 0 4 747 734 737 745
		f 4 877 878 -875 879
		mu 0 4 753 739 734 747
		f 4 880 881 -53 -880
		mu 0 4 747 766 767 753
		f 4 882 -881 -877 -868
		mu 0 4 755 766 747 745
		f 4 883 884 -57 -882
		mu 0 4 766 783 785 767
		f 4 885 886 887 888
		mu 0 4 563 553 554 564
		f 4 889 890 -886 891
		mu 0 4 561 552 553 563
		f 4 892 893 894 895
		mu 0 4 536 542 562 545
		f 4 896 897 -894 898
		mu 0 4 550 576 562 542
		f 4 -897 899 900 -862
		mu 0 4 576 550 556 583
		f 4 901 902 -859 -901
		mu 0 4 556 551 575 583
		f 4 903 904 -847 -903
		mu 0 4 551 534 546 575
		f 4 905 906 -838 -905
		mu 0 4 534 486 516 546
		f 4 907 -836 908 909
		mu 0 4 605 601 548 555
		f 4 910 911 912 -843
		mu 0 4 653 661 692 690
		f 4 913 -851 -913 914
		mu 0 4 720 721 690 692
		f 4 915 916 917 -855
		mu 0 4 738 736 746 749
		f 4 918 -869 -918 919
		mu 0 4 751 752 749 746
		f 4 920 921 922 923
		mu 0 4 774 771 764 763
		f 4 -921 924 925 926
		mu 0 4 771 774 784 781
		f 4 -873 927 928 929
		mu 0 4 828 812 819 823
		f 4 930 931 -832 932
		mu 0 4 412 450 532 451
		f 4 933 934 -835 -932
		mu 0 4 450 484 548 532
		f 4 935 936 937 938
		mu 0 4 411 403 415 427
		f 4 939 940 941 -936
		mu 0 4 411 391 396 403
		f 4 942 943 -909 -935
		mu 0 4 484 505 555 548
		f 4 944 945 -943 946
		mu 0 4 427 434 505 484
		f 4 947 -937 948 949
		mu 0 4 406 415 403 392
		f 4 950 951 952 953
		mu 0 4 390 378 391 412
		f 4 954 955 -954 -933
		mu 0 4 451 430 390 412
		f 4 -132 956 957 -872
		mu 0 4 826 814 807 812
		f 4 -135 958 959 960
		mu 0 4 806 796 793 801
		f 4 961 -138 -885 962
		mu 0 4 792 794 785 783
		f 4 -959 -141 -962 963
		mu 0 4 793 796 794 792
		f 4 964 965 966 967
		mu 0 4 521 520 537 538
		f 4 968 969 970 971
		mu 0 4 541 530 525 539
		f 4 972 973 974 975
		mu 0 4 409 439 442 414
		f 4 976 977 978 979
		mu 0 4 469 501 461 435
		f 4 -973 980 981 982
		mu 0 4 439 409 405 436
		f 4 983 984 985 986
		mu 0 4 419 395 382 407
		f 4 987 988 989 -981
		mu 0 4 409 386 384 405
		f 4 990 991 -988 -976
		mu 0 4 414 388 386 409
		f 4 992 993 -985 994
		mu 0 4 380 374 382 395
		f 4 995 996 997 -899
		mu 0 4 542 535 544 550
		f 4 -998 998 999 -900
		mu 0 4 550 544 547 556
		f 3 -1000 1000 -902
		mu 0 3 556 547 551
		f 4 1001 1002 1003 1004
		mu 0 4 470 515 526 469
		f 4 1005 1006 -999 1007
		mu 0 4 543 540 547 544
		f 4 1008 1009 -1008 -997
		mu 0 4 535 533 543 544
		f 4 1010 -1006 -1010 1011
		mu 0 4 529 540 543 533
		f 4 1012 1013 1014 -1009
		mu 0 4 535 528 524 533
		f 4 1015 1016 -1012 -1015
		mu 0 4 524 513 529 533
		f 4 1017 1018 1019 1020
		mu 0 4 493 496 514 502
		f 4 -1013 -996 -893 1021
		mu 0 4 528 535 542 536
		f 4 1022 -1014 1023 1024
		mu 0 4 514 524 528 527
		f 4 1025 -1020 -1025 1026
		mu 0 4 518 502 514 527
		f 4 1027 -955 -831 -907
		mu 0 4 486 430 451 516
		f 4 -911 -840 -908 1028
		mu 0 4 661 653 601 605
		f 4 1029 1030 1031 1032
		mu 0 4 447 402 341 367
		f 4 1033 1034 -1032 1035
		mu 0 4 313 348 367 341
		f 4 1036 1037 1038 -1031
		mu 0 4 402 355 307 341
		f 4 1039 -1036 -1039 1040
		mu 0 4 274 313 341 307
		f 4 1041 1042 -1041 1043
		mu 0 4 249 238 274 307
		f 4 1044 1045 1046 -1038
		mu 0 4 355 338 294 307
		f 4 -1044 -1047 1047 1048
		mu 0 4 249 307 294 261
		f 4 -1042 1049 1050 1051
		mu 0 4 238 249 217 215
		f 4 1052 1053 1054 1055
		mu 0 4 199 204 194 188
		f 4 1056 1057 1058 -1046
		mu 0 4 338 331 286 294
		f 4 1059 -1058 1060 1061
		mu 0 4 308 286 331 342
		f 4 1062 -1062 1063 1064
		mu 0 4 339 308 342 350
		f 4 1065 -1048 -1059 1066
		mu 0 4 235 261 294 286
		f 4 1067 1068 -1067 1069
		mu 0 4 257 225 235 286
		f 5 1070 1071 1072 -1055 1073
		mu 0 5 184 177 182 188 194
		f 4 -254 1074 1075 1076
		mu 0 4 122 119 121 130
		f 4 1077 -1050 -1049 -1066
		mu 0 4 235 217 249 261
		f 4 1078 -1054 1079 1080
		mu 0 4 195 194 204 206
		f 4 1081 -263 1082 1083
		mu 0 4 195 190 181 185
		f 4 -1079 -1084 1084 -1074
		mu 0 4 194 195 185 184
		f 4 1085 1086 1087 1088
		mu 0 4 361 387 368 352;
	setAttr ".fc[500:809]"
		f 4 1089 1090 1091 1092
		mu 0 4 349 351 364 358
		f 4 1093 1094 1095 1096
		mu 0 4 423 394 363 398
		f 4 -1064 1097 1098 1099
		mu 0 4 350 342 356 373
		f 4 1100 -1098 -1061 1101
		mu 0 4 353 356 342 331
		f 4 1102 1103 -1102 -1057
		mu 0 4 338 354 353 331
		f 4 1104 -904 -1103 -1045
		mu 0 4 355 371 354 338
		f 4 1105 -906 -1105 -1037
		mu 0 4 402 424 371 355
		f 4 -910 1106 -1034 1107
		mu 0 4 306 346 348 313
		f 4 -912 1108 -1043 1109
		mu 0 4 237 269 274 238
		f 4 -915 -1110 -1052 1110
		mu 0 4 216 237 238 215
		f 4 -917 1111 -1056 1112
		mu 0 4 189 200 199 188
		f 4 -1073 1113 -920 -1113
		mu 0 4 188 182 183 189
		f 4 -924 1114 1115 1116
		mu 0 4 158 175 174 163
		f 4 -925 -1117 1117 1118
		mu 0 4 144 158 163 148
		f 4 1119 -1076 1120 -929
		mu 0 4 126 130 121 123
		f 4 1121 1122 1123 -1033
		mu 0 4 367 444 488 447
		f 4 -1122 -1035 1124 1125
		mu 0 4 444 367 348 413
		f 4 1126 1127 1128 -1126
		mu 0 4 413 464 482 444
		f 4 -1129 1129 1130 -1123
		mu 0 4 444 482 509 488
		f 4 -944 1131 -1125 -1107
		mu 0 4 346 399 413 348
		f 4 -946 1132 -1127 -1132
		mu 0 4 399 452 464 413
		f 4 -950 1133 1134 1135
		mu 0 4 490 506 497 479
		f 4 1136 -951 1137 -1131
		mu 0 4 509 523 511 488
		f 4 -956 1138 -1124 -1138
		mu 0 4 511 465 447 488
		f 4 -1087 1139 1140 1141
		mu 0 4 368 387 410 397
		f 4 -1092 1142 1143 -969
		mu 0 4 358 364 389 370
		f 4 1144 1145 1146 1147
		mu 0 4 453 421 404 437
		f 4 1148 1149 1150 1151
		mu 0 4 429 449 466 446
		f 4 1152 1153 1154 1155
		mu 0 4 441 462 473 457
		f 4 1156 1157 1158 -1154
		mu 0 4 462 481 498 473
		f 4 -1155 1159 1160 1161
		mu 0 4 457 473 487 476
		f 4 1162 1163 1164 -1145
		mu 0 4 453 472 454 421
		f 4 -1160 -1159 1165 1166
		mu 0 4 487 473 498 503
		f 4 -1161 -1167 1167 1168
		mu 0 4 476 487 503 491
		f 4 -1099 1169 1170 1171
		mu 0 4 373 356 359 383
		f 4 -1101 1172 1173 -1170
		mu 0 4 356 353 357 359
		f 3 -1104 -1001 -1173
		mu 0 3 353 354 357
		f 4 -1007 1174 1175 -1174
		mu 0 4 357 372 362 359
		f 4 -1171 -1176 1176 1177
		mu 0 4 383 359 362 401
		f 4 -1175 -1011 1178 -1177
		mu 0 4 362 372 408 401
		f 4 -1178 1179 1180 1181
		mu 0 4 383 401 428 418
		f 4 -1180 -1179 -1017 1182
		mu 0 4 428 401 408 432
		f 4 1183 -1183 -1016 1184
		mu 0 4 508 495 513 524
		f 4 1185 -1018 1186 1187
		mu 0 4 474 496 493 471
		f 4 1188 1189 1190 1191
		mu 0 4 398 418 426 433
		f 4 -1181 1192 1193 -1190
		mu 0 4 418 428 443 426
		f 4 -1188 1194 -1191 -1194
		mu 0 4 443 448 433 426
		f 4 -1106 -1030 -1139 -1028
		mu 0 4 424 402 447 465
		f 4 -1029 -1108 -1040 -1109
		mu 0 4 269 306 313 274
		f 4 1195 -1187 -1021 1196
		mu 0 4 492 471 493 502
		f 4 1197 -890 1198 1199
		mu 0 4 549 552 561 557
		f 4 -971 1200 -968 1201
		mu 0 4 539 525 521 538
		f 4 -975 1202 -1146 1203
		mu 0 4 414 442 467 440
		f 4 -991 -1204 -1165 1204
		mu 0 4 388 414 440 400
		f 4 1205 1206 1207 -1196
		mu 0 4 458 468 456 448
		f 4 1208 1209 -986 1210
		mu 0 4 375 393 407 382
		f 4 1211 -1211 -994 1212
		mu 0 4 360 375 382 374
		f 4 1213 -1213 1214 1215
		mu 0 4 365 360 374 376
		f 4 1216 1217 -1210 1218
		mu 0 4 422 435 407 393
		f 4 1219 -1158 1220 -1209
		mu 0 4 517 498 481 499
		f 4 1221 -1166 -1220 -1212
		mu 0 4 522 503 498 517
		f 4 1222 -1168 -1222 -1214
		mu 0 4 507 491 503 522
		f 4 1223 -1088 1224 -1091
		mu 0 4 351 352 368 364
		f 4 1225 1226 1227 -1156
		mu 0 4 457 455 438 441
		f 4 1228 1229 -1226 -1162
		mu 0 4 476 475 455 457
		f 4 1230 -1143 -1225 -1142
		mu 0 4 397 389 364 368
		f 4 1231 -1148 1232 -1227
		mu 0 4 455 453 437 438
		f 4 1233 -1163 -1232 -1230
		mu 0 4 475 472 453 455
		f 4 1234 -898 -861 1235
		mu 0 4 564 562 576 615
		f 4 -888 1236 -895 -1235
		mu 0 4 564 554 545 562
		f 4 1237 1238 1239 -966
		mu 0 4 520 501 531 537
		f 4 -982 1240 -984 1241
		mu 0 4 436 405 395 419
		f 4 -990 1242 -995 -1241
		mu 0 4 405 384 380 395
		f 4 -993 -1243 1243 -1215
		mu 0 4 374 380 384 376
		f 4 1244 1245 -1229 -1169
		mu 0 4 491 489 475 476
		f 4 1246 1247 -1245 -1223
		mu 0 4 507 504 489 491
		f 4 1248 1249 -1247 -1216
		mu 0 4 376 377 366 365
		f 4 -989 1250 -1249 -1244
		mu 0 4 384 386 377 376
		f 4 -992 1251 1252 -1251
		mu 0 4 386 388 379 377
		f 4 1253 1254 -1252 -1205
		mu 0 4 400 369 379 388
		f 4 1255 1256 -1254 -1164
		mu 0 4 472 483 500 454
		f 4 -1250 -1253 -1255 1257
		mu 0 4 366 377 379 369
		f 4 1258 -1248 -1258 -1257
		mu 0 4 483 489 504 500
		f 4 -1234 -1246 -1259 -1256
		mu 0 4 472 475 489 483
		f 4 -441 1259 1260 1261
		mu 0 4 159 139 164 184
		f 4 -1085 -1083 -444 -1262
		mu 0 4 184 185 181 159
		f 4 1262 -445 -871 1263
		mu 0 4 851 852 833 828
		f 4 1264 1265 -1264 -930
		mu 0 4 823 850 851 828
		f 4 1266 1267 -1265 -1121
		mu 0 4 121 103 104 123
		f 4 1268 1269 1270 1271
		mu 0 4 900 908 909 901
		f 4 1272 -458 1273 1274
		mu 0 4 46 45 37 38
		f 4 1275 -1275 1276 -1269
		mu 0 4 47 46 38 39
		f 4 1277 1278 1279 1280
		mu 0 4 6 7 3 8
		f 4 1281 -467 1282 -1280
		mu 0 4 943 947 942 940
		f 4 -469 -1282 -1279 1283
		mu 0 4 5 0 3 7
		f 4 -471 -1263 1284 1285
		mu 0 4 893 852 851 892
		f 4 -474 -1286 1286 1287
		mu 0 4 903 893 892 901
		f 4 1288 -1281 1289 1290
		mu 0 4 934 939 940 935
		f 4 1291 -1291 1292 1293
		mu 0 4 918 934 935 919
		f 4 1294 -1294 1295 -1270
		mu 0 4 908 918 919 909
		f 4 -1285 -1266 1296 1297
		mu 0 4 892 851 850 891
		f 4 -1287 -1298 1298 -1272
		mu 0 4 901 892 891 900
		f 4 -488 -1284 1299 1300
		mu 0 4 11 5 7 12
		f 4 -491 -1301 1301 1302
		mu 0 4 27 11 12 28
		f 4 -494 -1303 1303 -1274
		mu 0 4 37 27 28 38
		f 4 1304 -1300 -1278 -1289
		mu 0 4 13 12 7 6
		f 4 1305 -1302 -1305 -1292
		mu 0 4 29 28 12 13
		f 4 -1277 -1304 -1306 -1295
		mu 0 4 39 38 28 29
		f 4 1306 -1297 -1268 1307
		mu 0 4 55 57 104 103
		f 4 -1276 -1299 -1307 1308
		mu 0 4 46 47 57 55
		f 4 -963 1309 1310 -964
		mu 0 4 792 783 787 793
		f 4 1311 1312 -960 -1311
		mu 0 4 787 775 801 793
		f 4 -884 1313 -1312 -1310
		mu 0 4 783 766 775 787
		f 4 1314 1315 1316 -1313
		mu 0 4 775 776 807 801
		f 4 -883 1317 -1315 -1314
		mu 0 4 766 755 776 775
		f 4 1318 1319 1320 1321
		mu 0 4 571 582 579 570
		f 4 -514 -1077 1322 -1260
		mu 0 4 139 122 130 164
		f 4 1323 1324 1325 -1120
		mu 0 4 126 128 134 130
		f 4 1326 -1324 -928 1327
		mu 0 4 811 815 819 812
		f 4 1328 1329 1330 -1325
		mu 0 4 128 131 138 134
		f 4 -1327 1331 1332 -1329
		mu 0 4 815 811 804 816
		f 4 -1323 -1326 -1331 1333
		mu 0 4 164 130 134 138
		f 4 1334 -1332 -1328 -958
		mu 0 4 807 804 811 812
		f 4 1335 1336 1337 1338
		mu 0 4 759 760 755 758
		f 4 -926 1339 1340 1341
		mu 0 4 781 784 786 782
		f 4 -1340 -1119 1342 1343
		mu 0 4 141 144 148 145
		f 4 1344 1345 1346 1347
		mu 0 4 778 791 790 780
		f 4 1348 1349 -1345 1350
		mu 0 4 161 153 152 162
		f 4 1351 1352 1353 -1346
		mu 0 4 791 820 818 790
		f 4 1354 1355 -1352 -1350
		mu 0 4 153 137 135 152
		f 4 1356 1357 1358 -1353
		mu 0 4 820 824 821 818
		f 4 1359 1360 -1357 -1356
		mu 0 4 137 132 127 135
		f 4 1361 1362 1363 -1358
		mu 0 4 824 829 822 821
		f 4 1364 1365 -1362 -1361
		mu 0 4 132 129 125 127
		f 4 1366 -1333 1367 -1363
		mu 0 4 829 816 804 822
		f 4 1368 -1330 -1367 -1366
		mu 0 4 129 138 131 125
		f 4 1369 1370 -1368 1371
		mu 0 4 803 817 822 804
		f 4 1372 -1354 1373 -1370
		mu 0 4 803 790 818 817
		f 4 -1364 -1371 -1374 -1359
		mu 0 4 821 822 817 818
		f 4 -1316 1374 1375 -1335
		mu 0 4 807 776 777 804
		f 4 1376 1377 -1375 -1318
		mu 0 4 755 762 777 776
		f 4 1378 1379 -1347 -1373
		mu 0 4 803 779 780 790
		f 4 -1376 1380 -1379 -1372
		mu 0 4 804 777 779 803
		f 4 1381 1382 -1381 -1378
		mu 0 4 762 769 779 777
		f 4 1383 1384 -1369 1385
		mu 0 4 136 140 138 129
		f 4 -1384 1386 -1355 1387
		mu 0 4 140 136 137 153
		f 4 -1360 -1387 -1386 -1365
		mu 0 4 132 137 136 129
		f 4 -1385 1388 1389 -1334
		mu 0 4 138 140 155 164
		f 4 -1388 -1349 1390 -1389
		mu 0 4 140 153 161 155
		f 4 -1341 1391 -1336 1392
		mu 0 4 782 786 760 759
		f 4 -1344 1393 1394 -1392
		mu 0 4 141 145 150 146
		f 3 -1337 1395 -1377
		mu 0 3 755 760 762
		f 4 1396 1397 -1382 -1396
		mu 0 4 760 768 769 762
		f 4 -1383 1398 1399 -1380
		mu 0 4 779 769 772 780
		f 4 1400 1401 -1399 -1398
		mu 0 4 768 770 772 769
		f 4 -1395 1402 1403 -1397
		mu 0 4 146 150 154 157
		f 4 -1343 1404 -1403 -1394
		mu 0 4 145 148 154 150
		f 4 1405 -1348 -1400 -1402
		mu 0 4 770 778 780 772
		f 4 -1404 1406 1407 -1401
		mu 0 4 157 154 160 168
		f 4 1408 1409 -1407 -1405
		mu 0 4 148 156 160 154
		f 4 -1118 1410 1411 -1409
		mu 0 4 148 163 165 156
		f 4 1412 1413 -1351 -1406
		mu 0 4 168 166 161 162
		f 4 1414 1415 -1391 -1414
		mu 0 4 166 170 155 161
		f 4 1416 -1410 -1412 1417
		mu 0 4 167 160 156 165
		f 4 -1417 1418 1419 -1408
		mu 0 4 160 167 169 168
		f 4 -1420 1420 1421 -1413
		mu 0 4 168 169 171 166
		f 4 1422 -1261 -1390 -1416
		mu 0 4 170 184 164 155
		f 4 -1415 -1422 1423 -1423
		mu 0 4 170 166 171 184
		f 4 -1071 -1424 1424 1425
		mu 0 4 177 184 171 173
		f 4 1426 -852 1427 -854
		mu 0 4 737 718 721 738
		f 4 1428 -874 -1427 -876
		mu 0 4 734 700 718 737
		f 4 -879 1429 -865 -1429
		mu 0 4 734 739 715 700
		f 4 -916 -1428 -914 1430
		mu 0 4 736 738 721 720
		f 4 -1053 1431 -1051 1432
		mu 0 4 204 199 215 217
		f 4 -1080 -1433 -1078 1433
		mu 0 4 206 204 217 235
		f 4 -1431 -1111 -1432 -1112
		mu 0 4 200 216 215 199
		f 4 -1339 1434 -1342 -1393
		mu 0 4 759 758 781 782
		f 4 -870 1435 -922 1436
		mu 0 4 755 752 764 771
		f 4 1437 -923 -1436 -919
		mu 0 4 751 763 764 752
		f 4 1438 -1115 -1438 -1114
		mu 0 4 182 174 175 183
		f 3 -1072 1439 -1439
		mu 0 3 182 177 174
		f 4 -1419 1440 -1425 -1421
		mu 0 4 169 167 173 171
		f 4 -1418 1441 -1426 -1441
		mu 0 4 167 165 177 173
		f 4 -1440 -1442 -1411 -1116
		mu 0 4 174 177 165 163
		f 4 -1437 -927 -1435 -1338
		mu 0 4 755 771 781 758
		f 4 1442 1443 -889 1444
		mu 0 4 581 580 563 564
		f 4 1445 1446 -860 -867
		mu 0 4 682 642 615 651
		f 4 1447 1448 1449 -866
		mu 0 4 715 725 694 682
		f 4 1450 -1063 1451 1452
		mu 0 4 295 308 339 319
		f 4 -1070 -1060 -1451 1453
		mu 0 4 257 286 308 295
		f 4 1454 1455 1456 -1068
		mu 0 4 257 243 219 225
		f 4 1457 1458 1459 1460
		mu 0 4 345 344 340 326
		f 4 -1445 -1236 -1447 1461
		mu 0 4 581 564 615 642
		f 4 1462 1463 -892 -1444
		mu 0 4 580 577 561 563
		f 3 1464 1465 1466
		mu 0 3 566 569 568
		f 4 1467 1468 -1448 -1430
		mu 0 4 739 741 725 715
		f 4 1469 1470 -1434 -1069
		mu 0 4 225 201 206 235
		f 3 -878 -664 -1468
		mu 0 3 739 753 741
		f 4 1471 -1082 -1081 -1471
		mu 0 4 201 190 195 206
		f 4 1472 -1003 1473 1474
		mu 0 4 536 526 515 518
		f 4 -1475 -1027 -1024 -1022
		mu 0 4 536 518 527 528
		f 4 1475 1476 -1473 -896
		mu 0 4 545 531 526 536
		f 4 1477 -1240 -1476 -1237
		mu 0 4 554 537 531 545
		f 4 -887 1478 -967 -1478
		mu 0 4 554 553 538 537
		f 4 1479 -1202 -1479 -891
		mu 0 4 552 539 538 553
		f 4 -1093 -972 -1480 -1198
		mu 0 4 549 541 539 552
		f 4 -1189 1480 -1172 -1182
		mu 0 4 418 398 373 383
		f 4 -1192 1481 1482 -1097
		mu 0 4 398 433 431 423
		f 4 1483 -1100 -1481 -1096
		mu 0 4 363 350 373 398
		f 4 1484 -1089 1485 -1065
		mu 0 4 350 361 352 339
		f 4 -1090 -1200 1486 1487
		mu 0 4 351 349 347 343
		f 4 -1002 1488 -1026 -1474
		mu 0 4 515 470 502 518
		f 4 -1482 -1195 -1208 1489
		mu 0 4 431 433 448 456
		f 4 1490 -1219 -1221 1491
		mu 0 4 466 494 499 481
		f 4 1492 -1206 -1197 -1489
		mu 0 4 470 460 492 502
		f 4 -1184 1493 -1186 -1193
		mu 0 4 495 508 496 474
		f 4 -1023 -1019 -1494 -1185
		mu 0 4 524 514 496 508
		f 4 1494 1495 -1483 -1490
		mu 0 4 456 449 423 431
		f 4 -965 1496 1497 1498
		mu 0 4 520 521 480 477
		f 4 1499 1500 1501 -970
		mu 0 4 530 512 485 525
		f 3 -1141 1502 1503
		mu 0 3 397 410 420
		f 4 -1144 1504 1505 -1500
		mu 0 4 370 389 417 385
		f 4 -1201 -1502 1506 -1497
		mu 0 4 521 525 485 480
		f 4 -1231 -1504 1507 -1505
		mu 0 4 389 397 420 417
		f 4 -1238 -1499 1508 -978
		mu 0 4 501 520 477 461
		f 4 -977 -1004 -1477 -1239
		mu 0 4 501 469 526 531
		f 4 -1149 1509 -1094 -1496
		mu 0 4 449 429 394 423
		f 4 -979 1510 -987 -1218
		mu 0 4 435 461 419 407
		f 4 -1151 -1492 -1157 1511
		mu 0 4 446 466 481 462
		f 4 -1498 1512 -983 1513
		mu 0 4 477 480 439 436
		f 4 -1501 1514 -1203 1515
		mu 0 4 485 512 467 442
		f 4 1516 1517 -1228 1518
		mu 0 4 420 425 441 438
		f 4 -1506 1519 -1147 -1515
		mu 0 4 385 417 437 404
		f 4 -1507 -1516 -974 -1513
		mu 0 4 480 485 442 439
		f 4 -1508 -1519 -1233 -1520
		mu 0 4 417 420 438 437
		f 4 -1509 -1514 -1242 -1511
		mu 0 4 461 477 436 419
		f 4 1520 -1005 -980 1521
		mu 0 4 459 470 469 435
		f 4 1522 1523 -1522 -1217
		mu 0 4 422 445 459 435
		f 4 -1491 1524 1525 -1523
		mu 0 4 494 466 463 478
		f 4 -1495 1526 -1525 -1150
		mu 0 4 449 456 463 466
		f 4 1527 -1493 -1521 -1524
		mu 0 4 445 460 470 459
		f 4 -1526 -1527 -1207 -1528
		mu 0 4 478 463 456 468
		f 3 1528 -1510 1529
		mu 0 3 416 394 429
		f 4 1530 -1512 -1153 -1518
		mu 0 4 425 446 462 441
		f 4 -1530 -1152 -1531 1531
		mu 0 4 416 429 446 425
		f 4 -1488 1532 -1486 -1224
		mu 0 4 351 343 339 352
		f 4 1533 -1452 -1533 1534
		mu 0 4 326 319 339 343
		f 4 1535 1536 1537 -1534
		mu 0 4 326 314 303 319
		f 4 -1503 1538 -1532 -1517
		mu 0 4 420 410 416 425
		f 4 1539 -1529 -1539 -1140
		mu 0 4 387 394 416 410
		f 4 1540 -1095 -1540 -1086
		mu 0 4 361 363 394 387
		f 3 -1485 -1484 -1541
		mu 0 3 361 350 363
		f 4 1541 -1199 -1464 1542
		mu 0 4 560 557 561 577
		f 4 -1461 -1535 -1487 -1542
		mu 0 4 345 326 343 347
		f 4 -1543 1543 -1322 1544
		mu 0 4 560 577 571 570
		f 4 1545 1546 -1459 1547
		mu 0 4 333 332 340 344
		f 4 1548 1549 1550 -1466
		mu 0 4 569 574 573 568
		f 3 1551 -1467 1552
		mu 0 3 567 566 568
		f 4 -1547 1553 -1536 -1460
		mu 0 4 340 332 314 326
		f 4 1554 -1465 1555 -1545
		mu 0 4 570 569 566 560
		f 4 -1556 -1552 1556 -1458
		mu 0 4 560 566 567 558
		f 4 -1557 1557 1558 -1548
		mu 0 4 558 567 572 559
		f 4 1559 1560 -1443 1561
		mu 0 4 592 589 580 581
		f 4 1562 1563 -1446 -1450
		mu 0 4 694 662 642 682
		f 4 1564 -1453 -1538 1565
		mu 0 4 281 295 319 303
		f 4 -1455 -1454 -1565 1566
		mu 0 4 243 257 295 281
		f 4 1567 -1558 -1553 -1551
		mu 0 4 573 572 567 568
		f 4 -1562 -1462 -1564 1568
		mu 0 4 592 581 642 662
		f 4 1569 1570 -1463 -1561
		mu 0 4 589 588 577 580
		f 4 1571 -765 1572 -1320
		mu 0 4 582 608 607 579
		f 4 1573 -768 1574 -1449
		mu 0 4 725 729 712 694
		f 4 1575 -771 1576 -1456
		mu 0 4 243 230 210 219
		f 4 1577 -774 1578 -1537
		mu 0 4 314 299 288 303
		f 4 1579 -1319 -1544 -1571
		mu 0 4 588 582 571 577
		f 4 1580 -778 1581 -1546
		mu 0 4 333 312 309 332
		f 4 1582 -781 1583 -1550
		mu 0 4 574 594 591 573
		f 4 -1554 -1582 -784 -1578
		mu 0 4 314 332 309 299
		f 4 -1549 -1555 -1321 1584
		mu 0 4 574 569 570 579
		f 4 -1559 1585 -786 -1581
		mu 0 4 559 572 590 578
		f 3 -1469 -788 -1574
		mu 0 3 725 741 729
		f 4 1586 -1470 -1457 1587
		mu 0 4 198 201 225 219
		f 4 -940 1588 -931 -953
		mu 0 4 391 411 450 412
		f 4 -939 -947 -934 -1589
		mu 0 4 411 427 484 450
		f 4 -948 1589 -945 -938
		mu 0 4 415 406 434 427
		f 4 -941 -952 1590 1591
		mu 0 4 396 391 378 381
		f 4 -942 -1592 1592 -949
		mu 0 4 403 396 381 392
		f 4 1593 1594 1595 -1130
		mu 0 4 482 497 510 509
		f 4 -1128 1596 -1135 -1594
		mu 0 4 482 464 479 497
		f 4 1597 -1591 -1137 -1596
		mu 0 4 510 519 523 509
		f 4 -1597 -1133 -1590 -1136
		mu 0 4 479 464 452 490
		f 4 -1134 -1593 -1598 -1595
		mu 0 4 497 506 519 510
		f 3 -801 -1472 -1587
		mu 0 3 198 190 201
		f 4 -1288 -1271 1598 -802
		mu 0 4 903 901 909 910
		f 4 1599 -1290 -1283 -805
		mu 0 4 936 935 940 942
		f 4 1600 -1293 -1600 -807
		mu 0 4 920 919 935 936
		f 4 -1599 -1296 -1601 -808
		mu 0 4 910 909 919 920
		f 4 1601 -1308 1602 -810
		mu 0 4 54 55 103 102
		f 4 -1273 -1309 -1602 -812
		mu 0 4 45 46 55 54
		f 4 1603 -1560 1604 -814
		mu 0 4 623 589 592 628
		f 4 -817 1605 -1563 -1575
		mu 0 4 712 680 662 694
		f 4 -818 -961 -1317 -957
		mu 0 4 814 806 801 807
		f 4 1606 -1566 -1579 -820
		mu 0 4 262 281 303 288
		f 4 -1576 -1567 -1607 -821
		mu 0 4 230 243 281 262
		f 4 -822 -1586 -1568 -1584
		mu 0 4 591 590 572 573
		f 4 -1605 -1569 -1606 -823
		mu 0 4 628 592 662 680
		f 4 -824 -1603 -1267 -1075
		mu 0 4 119 102 103 121
		f 4 1607 -1570 -1604 -826
		mu 0 4 621 588 589 623
		f 3 -827 -1588 -1577
		mu 0 3 210 198 219
		f 4 -1572 -1580 -1608 -828
		mu 0 4 608 582 588 621
		f 4 -1583 -1585 -1573 -829
		mu 0 4 594 574 579 607;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6A5738A8-4F51-0029-E2EF-E3ADD346FA3D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E0EF3993-4160-BE8D-A5FD-8FB7E54817F6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "97CAD67F-469B-8FB5-9F36-45A8E9B51584";
createNode displayLayerManager -n "layerManager";
	rename -uid "D9728047-46E2-74E2-778B-AD943FBBF1F9";
createNode displayLayer -n "defaultLayer";
	rename -uid "C19C747D-438A-EF98-1925-C8ABDA63E002";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C2BC302F-4236-8DBA-894F-27AB11096025";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B19E2E26-40A8-6782-41A7-0C8C6B02C84F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "63AA55A2-4BB5-9A0F-89D2-528141FBBC79";
	setAttr ".version" -type "string" "5.4.8.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "52756385-4B2E-879F-3F70-BCBBD77180CB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "95F9AB2D-4F19-074B-1092-6FBB018D7DD4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "4F31B3CD-4268-0124-9C6B-74942192819B";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "6A3FB96E-46F7-1B3A-F51E-99978D2B973C";
createNode phong -n "MantaRay";
	rename -uid "70428D61-40E0-EFBE-9DA3-D9849A71E6A8";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.588 0.588 0.588 ;
	setAttr ".cp" 2.0000007152557373;
createNode shadingEngine -n "MantaRayBirostrisSG";
	rename -uid "89899BD6-45FE-C563-63A2-F2BAE11E4EE9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "DE5751D8-4AF0-F338-EBB5-C1A0352C119E";
createNode bump2d -n "bump2d1";
	rename -uid "BB8CB2D6-44CC-2923-5E75-21824536510B";
	setAttr ".bd" 0.30000001192092896;
	setAttr ".bi" 1;
createNode file -n "normalmap_texture";
	rename -uid "9A8CED29-4C26-39AC-4DD1-389C2CAC62AC";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:\\My Drive\\Projects\\KafkaProj\\.share\\.Wip\\Animal\\Ray\\source\\MantaRayBirostris_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "EFD90B8D-4505-28B2-296E-5E96202A66D4";
createNode animCurveTL -n "Armature_translateX";
	rename -uid "CF194CB9-4FBD-CCE8-7336-B1BD6F579DB8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Armature_translateY";
	rename -uid "3E183955-4D59-D468-1143-998E84F7C115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Armature_translateZ";
	rename -uid "B988BC62-4AFB-54B5-AFE0-66A8CCA72D5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Armature_scaleX";
	rename -uid "D882EACD-4A67-AA55-934C-DDA5B05CB9D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 100;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Armature_scaleY";
	rename -uid "476FE0BA-4217-B012-BBCC-BDBA99AA581D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 100;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Armature_scaleZ";
	rename -uid "856DFAD6-4B7E-DF38-B009-4E9ABC35DABE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 100;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Armature_rotateX";
	rename -uid "7E0CC960-4B5C-2D8A-A931-9CAB09942FAE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.3257109609839972e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Armature_rotateY";
	rename -uid "7DA3690E-4479-BE13-D3A5-6BBA13A94B73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Armature_rotateZ";
	rename -uid "3204D325-477B-1BC0-D3A9-E49FA5AB139E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone001_translateX";
	rename -uid "B0BBF464-4298-57E6-8B44-D6A72F84D0F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.8308871277536729e-19;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone001_translateY";
	rename -uid "C0EE670E-4E3C-EB2A-12AF-2EB02D823361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.059988141059875488;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone001_translateZ";
	rename -uid "F2815642-4341-3CFE-7236-8F9D5DF8F504";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.0623950958251953;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone001_scaleX";
	rename -uid "53D4323C-4131-2B5B-89D0-FB96FFC01D65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone001_scaleY";
	rename -uid "ED35D030-4D27-C52A-4D93-669208D4B411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone001_scaleZ";
	rename -uid "E55E1E9B-4FBC-3C18-839A-18BA0E875A23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone001_rotateX";
	rename -uid "58767CF7-41B0-2655-5694-0E9EADDCEDA6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -90.833267211914062;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone001_rotateY";
	rename -uid "706DE843-4538-77AB-B0B8-9E90DFE65F11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 86.732040405273438;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone001_rotateZ";
	rename -uid "19FB07C5-4C8B-139C-FAFB-769873D98A77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -90.831977844238281;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone002_translateX";
	rename -uid "2E83152C-4AFB-4A35-F4F6-E4A18BD0B3F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3012872934341431;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone002_translateY";
	rename -uid "A8258A76-4F82-4A71-E02F-3380FBC0C9C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.0967621477675493e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone002_translateZ";
	rename -uid "30FA1FD9-457F-B62B-1A10-1EAF8908EAAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4156673816833063e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone002_scaleX";
	rename -uid "A419D153-4932-CA1C-B0BB-8AB8CA9414BC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone002_scaleY";
	rename -uid "DC80C247-48D3-4DEC-5744-29A60CF1B713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone002_scaleZ";
	rename -uid "FC8CA3B6-4823-38C0-76FF-F09ECC305ADC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone002_rotateX";
	rename -uid "7FF81FA7-4C11-2B2A-EB31-D588F4FD7B0C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -90.000068664550781;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone002_rotateY";
	rename -uid "E3397678-491D-E586-78B2-2D89A94BF8C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0015633712755516171;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone002_rotateZ";
	rename -uid "D15AFDDA-4DE3-B85D-63A4-A3AFE859FD85";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.2370741367340088;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone003_translateX";
	rename -uid "88B7104E-482D-7EDA-DE7C-26A882D6DE35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1831725835800171;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone003_translateY";
	rename -uid "678BC9B0-4D4F-F9FF-D73C-0F8C36C7A8D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.191320748716862e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone003_translateZ";
	rename -uid "9C184A75-4514-DEAB-6304-F6929DFB1E7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.1227346748182754e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone003_scaleX";
	rename -uid "B3B472FD-486F-64BB-390A-BEB784BE69D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone003_scaleY";
	rename -uid "A8F2E11D-40F0-8D83-C0C8-25AA05ABA72B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone003_scaleZ";
	rename -uid "DDCEF70E-4915-4CAA-D684-B0B11DC8EE3F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone003_rotateX";
	rename -uid "E1792A19-4E55-A28A-0AE9-D5872DE9972A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.3496081818593666e-05;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone003_rotateY";
	rename -uid "DDDCFC71-4C17-988B-C107-A4818155095F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2140990495681763;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone003_rotateZ";
	rename -uid "B9A10385-43D4-938C-BC59-5AAF045DF615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.015903914347290993;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone004_translateX";
	rename -uid "264E8072-49BF-E24D-462D-129A459B4EA8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0222017765045166;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone004_translateY";
	rename -uid "B3F876FE-4B7D-2050-9E33-D1ABF3C76587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1933454402424104e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone004_translateZ";
	rename -uid "EE8A480C-4962-D4AF-49BE-A6AED114006A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.2249712234033723e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone004_scaleX";
	rename -uid "B1AB9F6D-48A9-7063-11EE-799EF93AA1D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone004_scaleY";
	rename -uid "8F8DC204-41AD-C608-43AC-34A891C0441C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone004_scaleZ";
	rename -uid "7ADD52D3-44E3-C1B4-201C-60A98160711D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone004_rotateX";
	rename -uid "FB775141-4F90-FBDA-51F5-2D87851BCA07";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.004317485261708498;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone004_rotateY";
	rename -uid "0D40A58C-4319-81DE-D112-2E930B8E0CB8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.86014878749847412;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone004_rotateZ";
	rename -uid "BDD19AD8-43A5-44B0-D2F3-0095A5E6940A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.11569026112556459;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone005_translateX";
	rename -uid "6B73A4CC-4F14-783B-826B-618B565C33DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.52260732650756836;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone005_translateY";
	rename -uid "2DAB5C49-4443-FE45-B638-6F9B6288563A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3652593123842962e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone005_translateZ";
	rename -uid "20CE1506-4404-4859-2679-D9AFDC9A575A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.2591607634913089e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone005_scaleX";
	rename -uid "1011E43C-4B65-6BC0-AAD6-9A894F8A6839";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone005_scaleY";
	rename -uid "060D8CBF-4AA8-ABAA-0764-A1B46F7BADEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone005_scaleZ";
	rename -uid "E0C17548-456B-C82D-2E83-01B0143329DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone005_rotateX";
	rename -uid "584179C4-40C5-0201-B846-7D9C30B0313F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6647061531548388e-05;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone005_rotateY";
	rename -uid "DA949467-4269-BA65-7860-208A8A17CDA0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4997074604034424;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone005_rotateZ";
	rename -uid "EF856774-4F38-F5BF-00E6-B98F6ED7E52F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1120026931166649;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone006_translateX";
	rename -uid "77775506-4988-F599-9FE7-6FA48A8ED2CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.66145223379135132;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone006_translateY";
	rename -uid "D2320EA0-4EBB-8346-EE8E-E9AF03700D3F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9265630625304766e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone006_translateZ";
	rename -uid "0A212817-4667-1DC2-6B80-0DA413A23335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.2115764270201907e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone006_scaleX";
	rename -uid "831441DA-443A-7485-DC5E-CC80CDDE042C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone006_scaleY";
	rename -uid "AEAE0F27-4A7E-26EB-23D3-B3B34D8A43E0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone006_scaleZ";
	rename -uid "13C26C59-4CD0-27DF-B934-38BE54BA544C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone006_rotateX";
	rename -uid "11BEBBCE-44EF-38F3-E98F-9B98B95D906F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00015534478006884456;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone006_rotateY";
	rename -uid "ABAE3E8D-4824-ED71-3FD8-37B0CC74A846";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.49997922778129578;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone006_rotateZ";
	rename -uid "D497AA06-4E27-C300-C84B-E2A087BF6DE6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.014638537541031837;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone007_translateX";
	rename -uid "D302E3F1-4B3A-3D9A-7320-3C9F64660586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.53862792253494263;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone007_translateY";
	rename -uid "4E62E50B-416D-994D-A041-3EAA4B812F6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.9451167544466443e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone007_translateZ";
	rename -uid "B975E7CC-44DB-30F7-B337-8292CCE4AE27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.7390497930591664e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone007_scaleX";
	rename -uid "9BC0D54F-4EDF-BC3C-1902-6883D6766DA3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone007_scaleY";
	rename -uid "0A7D0A44-4D28-BE12-4213-2FBEA33ED875";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone007_scaleZ";
	rename -uid "CA71FBE5-479A-C1BC-33A1-E6A80FD072CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone007_rotateX";
	rename -uid "0658E77D-497E-F68C-F4B5-56B739609361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00028046793886460364;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone007_rotateY";
	rename -uid "86251E41-4D31-AAEF-D82E-52872544EC3D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8562539228005338e-05;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone007_rotateZ";
	rename -uid "304D2F68-48C8-1C70-9FFD-AEBA8F8494A4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.046561095863580704;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone008_translateX";
	rename -uid "094936A7-40B5-0260-E6B1-BAAA5956C80D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.50403738021850586;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone008_translateY";
	rename -uid "AA7EF621-41B2-33B1-059F-68AFB901CF02";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.637978807091713e-12;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone008_translateZ";
	rename -uid "2946705D-485C-4A43-B93B-9BBBC627B6CA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.3295312808550079e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone008_scaleX";
	rename -uid "11A6AE66-473B-59EB-AB76-B290CB572CD7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone008_scaleY";
	rename -uid "7476F234-4D19-9FB1-DC95-5E8353A2B87C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone008_scaleZ";
	rename -uid "946639A3-4AC6-4573-5FA2-8485E979942B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone008_rotateX";
	rename -uid "40A458CE-4199-44FD-F4AB-9AA1AAED5E79";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00041129818418994546;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone008_rotateY";
	rename -uid "C3F28E68-4447-41CD-F0FF-AD97A8BDE84E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4392618342972128e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone008_rotateZ";
	rename -uid "34E02891-473D-BE20-9554-2D990CD258F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.056145776063203812;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone009_translateX";
	rename -uid "03A7B3A3-4405-02B7-A422-4C9D5F37304B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.51719927787780762;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone009_translateY";
	rename -uid "A1F86028-47D7-8B73-35C3-F5BDFD80B38F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1832314562052488e-10;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone009_translateZ";
	rename -uid "747082C8-4D50-4926-DDA9-6B91F050FD6B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.8869397296111856e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone009_scaleX";
	rename -uid "2C172FA2-496C-5972-ECA7-EAB0D188CBD6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone009_scaleY";
	rename -uid "3967F039-4107-541B-14A0-85996A2C4CE6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone009_scaleZ";
	rename -uid "B469D5CB-489A-F4C0-B529-C3BF76E85D66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone009_rotateX";
	rename -uid "032B5D0E-4502-3934-8C97-1F8A90FB4D78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00056552939349785447;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone009_rotateY";
	rename -uid "53EC54D4-473B-DA65-7696-16A3FEE41503";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8574473617481999e-05;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone009_rotateZ";
	rename -uid "0AC7DB11-4B0C-CBB0-C76A-3988F346E0B2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.14552730321884155;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone010_translateX";
	rename -uid "EDF975FA-4351-23D0-FB27-BC8DCADD3DDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.50663101673126221;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone010_translateY";
	rename -uid "19E33A6C-496C-AF36-4DD0-B6876FBDFD43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.1091213865438476e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone010_translateZ";
	rename -uid "01DB6EA5-4EB7-48E4-FFCF-249CC1113BEB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8364424647643318e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone010_scaleX";
	rename -uid "DF14B1C4-47FE-0324-3D00-65A37AC33EC2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone010_scaleY";
	rename -uid "12B40FCC-45F1-B826-2D21-FB81218AB646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone010_scaleZ";
	rename -uid "A4A87166-4615-84B6-AD9B-0E9ECF18B12B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone010_rotateX";
	rename -uid "03C02E58-4B52-5BB5-C26C-749A3617937E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00042972571100108325;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone010_rotateY";
	rename -uid "783E651F-4EB6-111C-E6EB-76B26A775D5E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.4595057513797656e-05;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone010_rotateZ";
	rename -uid "38698A28-4760-315A-AAD5-5EA94A601E16";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.15072450041770935;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone016_translateX";
	rename -uid "894F224A-47A1-B65E-6F55-629754E54AD6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3013713359832764;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone016_translateY";
	rename -uid "3D8F71FB-4AE8-1EC4-11E7-08AB7CF2DC65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.5422789298754651e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone016_translateZ";
	rename -uid "E38089C5-4DD7-4D90-710F-C9A2FC06E2B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3545586575201014e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone016_scaleX";
	rename -uid "C4A81E7D-493F-36B9-7654-85A97BB09262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone016_scaleY";
	rename -uid "221777E4-465D-7695-DC84-ED827AECF8ED";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone016_scaleZ";
	rename -uid "C3455748-46B4-0427-3E69-B0A58833EE70";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone016_rotateX";
	rename -uid "339B0F85-43F5-6E6B-38FF-C7AA0A9FBAEE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00013786929775960743;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone016_rotateY";
	rename -uid "BB666CAE-433A-C8A8-B498-9DB4EAA957CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -69.422462463378906;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone016_rotateZ";
	rename -uid "109237A1-4044-57BC-BCA9-98A8CE6D86D4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.2677915096282959;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017_translateX";
	rename -uid "49DA9176-4F41-FFE4-3093-C7A66083F5E7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.73489731550216675;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017_translateY";
	rename -uid "BDD91F14-43A4-BB87-8E6D-CDBBFE6CA096";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.8349128317349823e-09;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017_translateZ";
	rename -uid "A02480E3-4844-1DEA-4EE2-8B9B16A08EE3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.5815699678541932e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017_scaleX";
	rename -uid "D1142484-467F-0991-A0F5-5FB620F061DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017_scaleY";
	rename -uid "49854569-4968-1A8E-FC67-C08691753256";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017_scaleZ";
	rename -uid "49CEC5E5-4F6E-8177-0BEB-2D9F3256C8EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017_rotateX";
	rename -uid "03FD4C3C-47F3-5DDC-316C-8DA2F679B3D2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.017565976828336716;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017_rotateY";
	rename -uid "C864077D-44BB-0EC6-63FC-8DA7A6D50C09";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.914883613586426;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017_rotateZ";
	rename -uid "732CA5FC-4BD9-4EFE-2269-E1884ECEE447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1760482788085938;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018_translateX";
	rename -uid "8B65F1EE-4225-7279-7879-24A4C6DD8BB7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.90134716033935547;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018_translateY";
	rename -uid "9A2C5F55-467E-0DD0-7A60-29A58624F36B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3795596361160278e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018_translateZ";
	rename -uid "C3E9C23D-437D-D733-D4EB-1BBD9CFA3927";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8383434507995844e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018_scaleX";
	rename -uid "4ED43E29-440A-885D-F871-CDA941C4D308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018_scaleY";
	rename -uid "01ED0CA3-4266-D38B-B5A1-30A16911FB63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018_scaleZ";
	rename -uid "E1007183-4EFD-76A0-14FF-4799DB5697FD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018_rotateX";
	rename -uid "3993EBA0-4EB0-D332-E6BE-979AA7B8FB95";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.69391846656799316;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018_rotateY";
	rename -uid "9BD76E3B-400D-A5B1-B5C6-EC8B4ED37711";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5252363681793213;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018_rotateZ";
	rename -uid "4339B8A2-4791-716E-AF10-64BA7447B061";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.26724863052368164;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019_translateX";
	rename -uid "BBD4D4E0-4259-A7D4-08B4-FDBD655407A4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.85533034801483154;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019_translateY";
	rename -uid "BCF93F1E-470D-758B-B19E-5D99A79A1F45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.7520886659622192e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019_translateZ";
	rename -uid "1DBBB823-4155-9C10-3058-6EADE4577B75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1612428352236748e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019_scaleX";
	rename -uid "2CC5E1FE-4422-4FC1-21DB-5B9DCF38A8A0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019_scaleY";
	rename -uid "144A762F-46B4-8E48-0139-FBA9C83661C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019_scaleZ";
	rename -uid "78F1FCFB-4013-774A-B972-5489E70BF090";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019_rotateX";
	rename -uid "11468C7D-4C0D-21DE-806B-F9ACFE321528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.33774137496948242;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019_rotateY";
	rename -uid "D667D3AE-4383-FAD0-1E30-7BAEB65DC088";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8627912998199463;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019_rotateZ";
	rename -uid "38FD0DB3-4A6E-3A8A-BC65-58A223DF3EDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.047796368598938;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020_translateX";
	rename -uid "5622C107-411D-EA9E-8BB6-27A04FC0B255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.65886980295181274;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020_translateY";
	rename -uid "1C8B4FB3-45D3-6232-DA4C-FFA955D6A0AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.7292331904172897e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020_translateZ";
	rename -uid "906A98A5-4CFC-CB6F-04CA-229E45371544";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6740523278713226e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020_scaleX";
	rename -uid "FCDECD4F-413F-80A0-9B65-C29822E7D0D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020_scaleY";
	rename -uid "5BEF4636-426B-D65A-41D0-138D20AE6A08";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020_scaleZ";
	rename -uid "F580BDFB-43F8-F8B0-9667-A996B00C819F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020_rotateX";
	rename -uid "59BA7C95-431F-0777-71E8-6D8AB01154A5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.10880493372678757;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020_rotateY";
	rename -uid "44E1CABB-4FE1-E7D3-4862-FA9D2DC28A36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8839607238769531;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020_rotateZ";
	rename -uid "EDBECEDD-40DD-0083-61DE-BE91CEA7C563";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.84187763929367065;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021_translateX";
	rename -uid "9119EA9E-43B3-7946-3694-14817F2384F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.72715675830841064;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021_translateY";
	rename -uid "2F5F5C0A-490B-A1E9-FB55-4E97A56C9A7B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4703331291675568e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021_translateZ";
	rename -uid "DD027FB9-4CB1-0631-1AD8-F89BF59096EB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8731225281953812e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021_scaleX";
	rename -uid "DC23E3AE-483D-7A6F-F5E3-75BFB3D7FF93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021_scaleY";
	rename -uid "558CA9B7-4511-447A-E047-42A32DF25DEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021_scaleZ";
	rename -uid "DFF77F7D-4DCA-5A14-172C-61B1D1CCF269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021_rotateX";
	rename -uid "2B7EDDD2-49DD-0645-D46B-7FAE90A251E2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.31962516903877258;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021_rotateY";
	rename -uid "D0734CF7-469B-7F1E-E5EC-A6A875ED5AC7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9911369085311892;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021_rotateZ";
	rename -uid "8A1D2B6C-4C6B-6700-9D48-80A7BCA6B407";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.85432142019271851;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023_translateX";
	rename -uid "CD9BE90E-4D8D-2BAE-2B82-C686D67B7532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.44692966341972351;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023_translateY";
	rename -uid "1CFDD815-4C8F-6741-21EE-F2A5FB0A2FF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9082799553871155e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023_translateZ";
	rename -uid "AA973BFE-4A38-993D-6D21-349096625F48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4074612408876419e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023_scaleX";
	rename -uid "A2ED3995-4613-DFDB-FD44-13BACD8EAB28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023_scaleY";
	rename -uid "9A8AF1A7-41A3-9327-DB5F-6ABCC8B4CD21";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023_scaleZ";
	rename -uid "5D550F75-4C27-CCB9-EAB8-24A769D826B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023_rotateX";
	rename -uid "B17FD520-49D9-75A4-F503-73B073DBE114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8046685457229614;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023_rotateY";
	rename -uid "AC1708EC-4CEC-A411-54F2-3B8D127A5853";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0285806655883789;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023_rotateZ";
	rename -uid "B67EA26D-4D4A-9B11-589A-9D8E8ADCD830";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3846744298934937;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone001_translateX";
	rename -uid "7A177934-4EBF-4F23-D19A-589094744BBF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3012962341308594;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone001_translateY";
	rename -uid "CFDC966F-43C8-E97C-6BFC-30AFB758D209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4516674557162332e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone001_translateZ";
	rename -uid "65193E15-4EF1-81C9-FACA-74AE9EAADBD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.198457841970594e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone001_scaleX";
	rename -uid "630D499D-400F-D467-1DD0-E285ED7F0A91";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone001_scaleY";
	rename -uid "D3780216-4C37-91EB-49FA-DFBC5E6578BB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone001_scaleZ";
	rename -uid "6E43A9D9-41FD-68CE-E5DA-0A8D860A4C4A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone001_rotateX";
	rename -uid "912DCDE7-4DDA-51CF-9BE2-8EB5EA458D71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -90.000190734863281;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone001_rotateY";
	rename -uid "AB2B65BC-4E0A-C2E8-8715-2BA1AEE1E649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 69.281082153320312;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone001_rotateZ";
	rename -uid "0CA94F97-4248-9639-A275-B8A070671D6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.2673735618591309;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017FBXASC040mirroredFBXASC041_translateX";
	rename -uid "1E4DE103-4A69-C582-BC08-67B0F1E78B9F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.73353451490402222;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017FBXASC040mirroredFBXASC041_translateY";
	rename -uid "C4E54AA3-47DB-27B3-6C91-7C87F1684139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2780121494415653e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone017FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "BC56B411-4E54-4235-7E53-06AD0620A10C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2071814126102254e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "2BA85F01-4C08-CD44-C62E-F287A6B4EC61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "AAE33111-49C4-3F1B-A7F4-389DB28599B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone017FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "A5BF9970-4897-5D13-3FC6-6EA90672A78D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.9999997615814209;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "581BF070-45E6-D65C-BBD3-AFAA3E8EA1B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -89.739540100097656;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "F9EC3894-4041-2D9A-175E-8BB681E319A4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1503778696060181;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone017FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "D8ABB643-42D7-65F9-64AD-7193F3CCCB76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.964648246765137;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018FBXASC040mirroredFBXASC041_translateX";
	rename -uid "970E4538-4F13-7A73-D579-7EB752F18F8B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.9013482928276062;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018FBXASC040mirroredFBXASC041_translateY";
	rename -uid "06296E83-4B8B-C82C-7661-D68288A0B5EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.6263601183891296e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone018FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "DB1B8561-4D11-F5D9-5A16-D2A5AF26A013";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3014727048575878e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "A7BF75AB-42CD-4917-8F75-37A04E8F3C91";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "4295D09A-4B9E-73AC-62E6-44B91384F1CD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone018FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "4B46F8C1-4AD6-3090-4F84-6EB71DEBA76D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "CDA2DCF3-4D75-2E7A-C353-9A9F455B8A5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.6939430832862854;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "7589979A-4823-BCF7-006D-D0AAA39791AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5270886421203613;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone018FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "7E3456E2-40C0-1F07-C072-FC892DC28B42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.26772695779800415;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019FBXASC040mirroredFBXASC041_translateX";
	rename -uid "4B76F945-4D74-FA2C-E930-E5B059894FB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.85533028841018677;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019FBXASC040mirroredFBXASC041_translateY";
	rename -uid "B4B62E37-464E-1388-85BC-38B30C89E203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.9162418842315674e-09;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone019FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "00FE278E-4F98-339C-F30B-EB9F741A34C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3670069165527821e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "0BE86A0A-4134-EC6F-F82B-2DBAFC763F98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "4B71BFBB-4004-6D3C-32B0-518CFAD94E44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone019FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "B2110A69-4A97-BF0A-83BA-3B9F7A6CD5FA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "C7B791FD-4AA2-B5B9-F5CB-1F8B424F5D38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.33777430653572083;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "38D8D9EB-4D73-9886-6C41-47AEC881AFE0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8624032735824585;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone019FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "610DB47C-4EA5-4F16-F75A-30A018125DE4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.0478616952896118;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020FBXASC040mirroredFBXASC041_translateX";
	rename -uid "990AB8BC-4B18-AE90-591C-E99EE8707F33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.65887200832366943;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020FBXASC040mirroredFBXASC041_translateY";
	rename -uid "F780269E-49EA-FCD7-2FDC-FBBAE1778A8E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4908146113157272e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone020FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "DBC4D0BE-4A0F-890A-1EBB-B7AA462AC1E4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9289083108305931e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "A99200AB-4C7D-7C06-2327-0FB1AA956351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "046B6C53-429C-725D-0CEE-42875FBEB22D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone020FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "2A7AB3B2-42DB-E1D8-976B-60830E5F5FD0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "021ABCDF-4751-BD6E-5FBD-9B90A3EFA3B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.10867635905742645;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "F8EA98BB-43C5-CFCF-DF3D-DCABAFC355C0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8837358951568604;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone020FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "D261B542-4245-AE49-864F-84A87ECCFFAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.84217029809951782;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021FBXASC040mirroredFBXASC041_translateX";
	rename -uid "F87B426D-461A-3530-17C2-789870B62C8E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.72715777158737183;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021FBXASC040mirroredFBXASC041_translateY";
	rename -uid "6201572C-4A7D-30C8-040B-049BF3837E97";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.7741999626159668e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone021FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "BA183A1E-4053-F695-15C5-A3B9ECE48D86";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.6255223676562309e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "513BD38E-4512-4375-8DC2-47810D1B665C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "6FB975E7-42DB-908B-2846-4F8982BAAEBB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone021FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "18812C09-47D7-93E9-99B1-2099BE7A0F46";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "018337A8-455D-840F-5B54-2FADDF1FCCF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.31950166821479797;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "0BB98313-43FC-F3CE-8222-CDB26F18FFBE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9899606704711912;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone021FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "260771C8-4A66-EFA4-E20C-79AFE2E0BEF8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.85478246212005615;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023FBXASC040mirroredFBXASC041_translateX";
	rename -uid "52D5B955-44B2-8DAF-4C85-1580B6FE9CB0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.44693070650100708;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023FBXASC040mirroredFBXASC041_translateY";
	rename -uid "D3B15ECF-4033-A9E5-9863-858F72EFAE91";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.0181760191917419e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone023FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "50B1C878-42E1-C337-07A9-81AB01F140BD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.5316056609153748e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "EDF70B17-441E-F6E2-0787-42811E445BE1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "07B35DA5-4D84-E857-52BC-E2BD87F57D59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone023FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "184B516E-4F88-0BE6-2C9C-5A97C2F0D229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "E690A2A0-42F4-AF17-9D16-9CBCC8EF4A50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8046221733093264;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "39961F7B-454F-49DF-10E1-49823A7DBDE8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0273337364196777;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone023FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "DA047584-40F2-94DB-DAF8-07B8746F6AF3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3848848342895508;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone002_translateX";
	rename -uid "9B431B21-424F-77F4-D1DC-9CA882D3BD29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3013186454772949;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone002_translateY";
	rename -uid "3364D5A4-4444-C566-7EAB-628FF829414E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5620585145370569e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone002_translateZ";
	rename -uid "925909B5-4299-BEED-809E-0EAE28D9E443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3940160903966898e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone002_scaleX";
	rename -uid "4207ACF0-4EA4-9199-47AA-238AB69BD01F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone002_scaleY";
	rename -uid "9814015D-4517-6918-F88A-A28C01A9C284";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone002_scaleZ";
	rename -uid "BA1B4804-4192-EAA0-D556-9989D62FAB18";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone002_rotateX";
	rename -uid "09C6803A-4FA8-130F-7DCE-63AC60E164E4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -89.520660400390625;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone002_rotateY";
	rename -uid "12C74EFA-4032-AECB-56AB-04859A2097EF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 145.58074951171875;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone002_rotateZ";
	rename -uid "D38E95D0-473B-B214-5DF8-1DB6978C234E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.1154332160949707;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012FBXASC040mirroredFBXASC041_translateX";
	rename -uid "A1CF6C44-4B9C-60F9-E238-AA933D0F336C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6902689933776855;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012FBXASC040mirroredFBXASC041_translateY";
	rename -uid "B7FF96B3-47AD-934E-B093-6B9F6E245B5A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2044994264215347e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "FEC75CB8-4B58-1B41-A424-B9947271D7E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9511207938194275e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "838100A5-4967-187F-1742-E29F14CCB7D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "289CB35E-41CB-A7FF-E1FF-EF9DC876ECF8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "4B3F2BF2-4151-8AAB-9373-5E9B8093808A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "92A935AA-4A0F-15DA-A17C-2781053BAB7E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.005575180053711;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "F944DD2D-4A2E-2CD8-79EA-419AD0A31E67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.5736875534057617;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "E7735472-4325-4E37-4859-F5B17968E7BB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 61.754718780517578;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013FBXASC040mirroredFBXASC041_translateX";
	rename -uid "B673FD7E-4F4B-DE1E-BB06-31B84B8CDB40";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.24592210352420807;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013FBXASC040mirroredFBXASC041_translateY";
	rename -uid "48AC5909-4DAD-89C8-61DF-8DB49A26C33A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.6996941566467285e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "745FE6FE-4C8B-8ED6-B991-F38FC1A5DA45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6077032089233398e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "7199C5B4-4FA7-3D9B-4C77-558BB13165B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "F12DF6D8-434D-3D46-9BA6-D0A86D35677E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "2CA860DB-4CFD-6E35-AFA5-5EB161210C7F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "798E3424-4099-E30A-173A-69A5D71C4195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.718447208404541;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "50037958-4E5A-381D-3337-25B5E7A8DF88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.153517484664917;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "6896C8B6-4C25-DE28-3A35-97BE35AAC4B8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.07142448425293;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014FBXASC040mirroredFBXASC041_translateX";
	rename -uid "6F9B1195-4863-33ED-FA12-A49BDBA148AC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.2026219516992569;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014FBXASC040mirroredFBXASC041_translateY";
	rename -uid "16207CB4-41CF-14BD-F1AD-AFA43BB4257C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.3644180297851562e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "EE1F6F07-4C66-7303-F566-C797BAE29BB7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.0116567611694336e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "82155552-4519-1CA2-2823-D7A3813ACD96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000002384185791;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "C1592977-4DEF-96E6-2552-69BE2864764F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999970197677612;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "73CA98E9-4E93-FA33-1EF7-3E987A0C69DB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "1977F5C7-467F-235E-097D-CD815017866C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.498093605041504;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "1D813540-4842-56EA-0712-C19098535EC9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.2075910568237305;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "A34D2152-4273-3FD7-3391-97A2E2FEDF2D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.1099939346313477;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015FBXASC040mirroredFBXASC041_translateX";
	rename -uid "7A4B9551-4E44-B396-99D6-418E4A49944D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.21605780720710754;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015FBXASC040mirroredFBXASC041_translateY";
	rename -uid "099D3229-454E-2D0F-457A-B8BAE7A17D25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0803341865539551e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "627EBFC9-41A4-A018-AED2-2A8B6C19DD15";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.4703483581542969e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "FB09375A-47C7-09D9-DF68-2D9D05801966";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "3F630384-4D19-DF87-3007-A78740BC4ADE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "39D90FCE-4D0E-152D-7F48-899BF129977F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "66627960-459C-03AA-1294-9D8E70196D43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.4837222099304199;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "66AE7906-4FB6-3A70-98CC-C197FB84A96B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.9645566940307617;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "5DE3DD4A-4B91-D195-5EFB-4B8CC5DE39D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.186337947845459;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024FBXASC040mirroredFBXASC041_translateX";
	rename -uid "8EBD8A4B-444F-5852-CE76-DE9D7CB1FDDA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.21425953507423401;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024FBXASC040mirroredFBXASC041_translateY";
	rename -uid "B4134FCF-4780-C253-5C8F-399D7CF1773F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.0233135223388672e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024FBXASC040mirroredFBXASC041_translateZ";
	rename -uid "74DEF250-4B4B-1588-CB89-83BB9DA9CCD9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0430812835693359e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024FBXASC040mirroredFBXASC041_scaleX";
	rename -uid "4068E8CC-44F1-5223-C9E0-A2A87F592EFF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999982118606567;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024FBXASC040mirroredFBXASC041_scaleY";
	rename -uid "743151FB-483A-7A01-F20D-E6ABE12A098C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024FBXASC040mirroredFBXASC041_scaleZ";
	rename -uid "6E2AE8BA-4B6D-D4EE-B45B-DCA574E69AEC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024FBXASC040mirroredFBXASC041_rotateX";
	rename -uid "2B198196-43BF-B917-42C2-77B044CC68AE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.96041744947433472;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024FBXASC040mirroredFBXASC041_rotateY";
	rename -uid "93B40475-4018-3AFF-CB1F-28A8F59030CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8829807043075562;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024FBXASC040mirroredFBXASC041_rotateZ";
	rename -uid "E3C51C9B-493D-46BC-8CB7-2FAA371357F0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.4826440811157227;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone003_translateX";
	rename -uid "8CD4C166-4342-2CB9-C65B-5E97DC624E76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3013186454772949;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone003_translateY";
	rename -uid "BDB6E25E-4DC3-53DC-A752-289B76C2FAAE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5620585145370569e-06;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "connectBone003_translateZ";
	rename -uid "6EE14CE3-4CD7-41D8-7F13-79858DBD8C42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3940160903966898e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone003_scaleX";
	rename -uid "FF1BDB72-45A3-36C6-B70F-7F8EEFC8AE7B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone003_scaleY";
	rename -uid "B72E16F2-42A6-BE86-4EDF-7B9A531F98AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "connectBone003_scaleZ";
	rename -uid "C255DCB0-4000-CD2B-92DE-1D90C745D6FD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone003_rotateX";
	rename -uid "0BC7F92A-4BB0-E741-E815-6EA14D4D6E3A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -90.477951049804688;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone003_rotateY";
	rename -uid "5626F19B-4F4E-562C-B50A-0A81D0A9A409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -145.63426208496094;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "connectBone003_rotateZ";
	rename -uid "20DD8D90-4A14-12EB-B3EE-CD860278CCF7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.1143598556518555;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012_translateX";
	rename -uid "0E4C7CED-4ADD-212B-D506-129DA108A23F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6911081075668335;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012_translateY";
	rename -uid "4DF70A37-4093-6DC7-E139-E6BEA5F5E0AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.7352129917708226e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone012_translateZ";
	rename -uid "A70B6551-46A9-D850-315D-919CCC24AF45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0046870708465576e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012_scaleX";
	rename -uid "D0CAFBEA-4177-20ED-A280-44A9BACCC25D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012_scaleY";
	rename -uid "39513BBD-411F-E00E-DFF1-2DB12DA2D817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone012_scaleZ";
	rename -uid "1DE0A9FE-4293-7B6B-5602-7F969B491D8F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012_rotateX";
	rename -uid "14C726BD-4FA3-2BCF-89D1-B9A43FD5C5DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.005630493164064;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012_rotateY";
	rename -uid "C63856E9-4AA7-9259-1F7B-3B951A7B099D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.5744132995605469;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone012_rotateZ";
	rename -uid "03C13E28-4ACD-B0C0-04BE-7C96BE8BF98B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -61.795795440673828;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013_translateX";
	rename -uid "636CB165-4CA5-E6E3-7E1F-BCA336C39D89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.24592104554176331;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013_translateY";
	rename -uid "B4924172-4D11-7C81-7F7B-48910AECE8C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4028122425079346e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone013_translateZ";
	rename -uid "819F0210-406A-EB10-FD34-37A5A7A8731A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.4703483581542969e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013_scaleX";
	rename -uid "87023E6A-49E5-1DAC-C5EF-96B05F6508C7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013_scaleY";
	rename -uid "1D9BF29E-433F-E373-00DD-19855DF2EA5B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone013_scaleZ";
	rename -uid "E0B27F60-4EC5-F0F0-AB53-5E8AE40DF708";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013_rotateX";
	rename -uid "0C90FCE1-4E6E-12E9-726C-6F8484CBBC31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7184407711029053;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013_rotateY";
	rename -uid "DEC4024A-45C1-59E9-6D88-1A8FFEE71A13";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1536009311676025;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone013_rotateZ";
	rename -uid "0293CAE8-4B1E-96E6-59A7-2AA2030314FF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -19.071531295776367;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014_translateX";
	rename -uid "DE9ACE52-4AE5-99DC-6FBD-629B2D76DD6C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.20262244343757629;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014_translateY";
	rename -uid "70706F3C-40F3-0FD3-F8E4-88B75C81F27F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.9802322387695312e-08;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone014_translateZ";
	rename -uid "FBFDDAAE-49F9-7AD6-F4F7-2DBF68E35A7D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4901161193847656e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014_scaleX";
	rename -uid "025E20DB-4BF8-D4F0-0555-D59A47D40C83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014_scaleY";
	rename -uid "5D0D511A-43C8-DE6D-6F20-6495B5634140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone014_scaleZ";
	rename -uid "C1BB558A-4324-CB91-BCCD-33A7DBDBB8B2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014_rotateX";
	rename -uid "CBDD0B92-43B9-6A9E-11D0-06AE863D806C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.498053550720215;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014_rotateY";
	rename -uid "69805CF6-4C93-7125-ECE5-D1B8CBD96AB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.2076101303100586;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone014_rotateZ";
	rename -uid "AD053171-47FD-16FD-F3A7-9B93C484957A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.1099433898925781;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015_translateX";
	rename -uid "DA9292F1-47DF-BBBE-D5EF-C2A03E88416C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.21605899930000305;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015_translateY";
	rename -uid "F1BAE7C2-4E67-F905-B3F8-3DA1DFA7A55F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.986060619354248e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone015_translateZ";
	rename -uid "1D7F5331-4991-9DC2-9D27-8D845EB3A63E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.7136335372924805e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015_scaleX";
	rename -uid "633B97B3-4CA2-D0F6-3E44-54AD3174688B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015_scaleY";
	rename -uid "A6E6C79E-41AA-B1CC-2E89-9D9F38ADB89A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0000001192092896;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone015_scaleZ";
	rename -uid "8543E713-4F77-3767-6E93-E99859CE6E41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999994039535522;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015_rotateX";
	rename -uid "9F3DA3C8-4A80-DF8E-2F0B-D99901941288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.4837446212768555;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015_rotateY";
	rename -uid "01897EFB-429F-4447-CB69-8D9C0A882923";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.9646739959716797;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone015_rotateZ";
	rename -uid "C787334F-4E61-CD46-37F2-E090420D99C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1868641376495361;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024_translateX";
	rename -uid "F82868B6-4044-B09C-581D-F3953EFF8F97";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.21425975859165192;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024_translateY";
	rename -uid "78C9421B-4F67-0A7D-78CE-33813F3E4A87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.9802322387695312e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Bone024_translateZ";
	rename -uid "4F396916-4566-DE90-E269-4295CAC4F85E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.644956111907959e-07;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024_scaleX";
	rename -uid "06366DA4-4B9B-4F97-D93A-D09A2A00C887";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024_scaleY";
	rename -uid "F48195CF-4786-6D65-CDFC-1D84B9B6C75B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999988079071045;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Bone024_scaleZ";
	rename -uid "32689725-47EE-FF51-40CC-ACB8480FDA66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024_rotateX";
	rename -uid "86119A72-4264-00E3-A9DA-AE8AD49FB8BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.96047836542129517;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024_rotateY";
	rename -uid "C598889E-496A-67F9-A990-DD8043D8ABA0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8829153776168823;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Bone024_rotateZ";
	rename -uid "1C2A910D-485D-08B4-DC12-F4837CF8CFDC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.4829082489013672;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "CameraShape_focalLength";
	rename -uid "4630CCB9-4185-BF1E-F2C0-FC8C7BF1CE9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 50;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "CameraShape_focusDistance";
	rename -uid "63AA407C-4092-5E96-1EDF-9FA77FDDD964";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9999.9990234375;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.041666666666666664;
	setAttr ".koy[0]"  0;
createNode skinCluster -n "skinCluster1";
	rename -uid "51856578-47BA-DECD-30B1-AE881FE5E8F9";
	setAttr ".ip[0].gtg" -type "string" "skinCluster1";
	setAttr ".skm" -1;
	setAttr -s 800 ".wl";
	setAttr ".wl[0:179].w"
		2 20 0.016264717359424044 21 0.98373528264057597
		3 19 0.072819960801226102 20 0.88908762072274383 21 0.038092418476030052
		2 20 0.02089001207217556 21 0.97910998792782444
		3 19 0.10717713726622684 20 0.86148922809894257 21 0.031333634634830632
		3 20 0.0042490232221434809 21 0.98558281658908664 22 0.010168160188769844
		3 19 0.032313267073179809 20 0.80754666975080991 21 0.16014006317601032
		3 18 0.083723060474831384 19 0.89556550645990107 20 0.020711433065267529
		3 18 0.087451404562505664 19 0.90257913302258974 20 0.0099694624149046316
		3 18 0.0077177302330706009 19 0.72507224171193674 20 0.26721002805499272
		2 18 0.22466285743236547 19 0.77533714256763453
		2 18 0.48031647562037483 19 0.51968352437962517
		2 18 0.64547854661941528 19 0.35452145338058472
		2 18 0.79214389312481726 19 0.2078561068751828
		2 18 0.86141035373776098 19 0.13858964626223902
		2 18 0.85219860957869231 19 0.14780139042130766
		4 1 0.012386445509781487 2 0.01247271578636985 18 0.9133930614617346 
		19 0.061747777242114124
		2 2 0.08696486901175253 18 0.91303513098824751
		3 1 0.054517526788832919 2 0.33508429305722148 18 0.61039818015394565
		2 18 0.99394789458928112 19 0.0060521054107188542
		2 1 0.12697636625489808 18 0.87302363374510195
		2 18 0.84811383127318085 24 0.15188616872681909
		3 1 0.036874763942321864 18 0.47832036374748022 24 0.48480487231019787
		2 18 0.42187678813934326 24 0.57812321186065674
		2 18 0.29472543910964016 24 0.70527456089035989
		3 1 0.15159663473295065 2 0.020523643006438521 18 0.8278797222606108
		3 2 0.16935998565697208 3 0.0013450898965766734 18 0.82929492444645125
		3 2 0.20514301802856461 3 0.037404022832184858 18 0.75745295913925048
		4 2 0.40664416248616453 3 0.45569574493396481 11 0.028773449146945407 
		18 0.10888664343292531
		5 2 0.36406651613948049 3 0.49204311416354346 4 0.0092699175046559844 
		11 0.039174221966824595 18 0.095446230225495268
		3 1 0.2646681823629618 2 0.57211690333569964 18 0.16321491430133858
		5 1 0.054766790914912218 2 0.51930959773729135 3 0.3467847225109581 
		11 0.026565701660108996 18 0.052573187176729312
		5 1 0.02212920473644478 2 0.57686444837651429 3 0.10368451635284906 
		11 0.00019585216417189873 18 0.29712597837001997
		4 18 0.17772152755079376 24 0.33275031547620421 25 0.40733074534936631 
		26 0.082197411623635711
		4 18 0.26248302175720334 24 0.53342167734803603 25 0.17219641227361668 
		26 0.031898888621144005
		4 18 0.21899625963687044 24 0.35935577715123851 25 0.3973343996009111 
		26 0.024313563610979912
		2 18 0.59101384878158569 24 0.40898615121841431
		3 18 0.87327171202580256 19 0.00026353869773957994 24 0.12646474927645787
		2 18 0.95665728333102695 19 0.043342716668972991
		3 21 0.085497250732095895 22 0.70669017642683885 23 0.20781257284106525
		3 21 0.10419686449160769 22 0.70440813018107806 23 0.19139500532731429
		3 21 0.090845674276351929 22 0.79252010583877563 23 0.11663421988487244
		2 22 0.031390350896685404 23 0.9686096491033146
		2 22 0.14478610837096795 23 0.85521389162903205
		2 22 0.10701965620383364 23 0.89298034379616631
		4 2 0.4460520144074186 3 0.4460520144074186 11 0.038042978919766088 
		18 0.069852992265396707
		4 2 0.75220640856555665 3 0.12272184956227679 11 0.051949028196129746 
		18 0.07312271367603676
		5 1 0.0046699506549320669 2 0.45014344157642461 3 0.45014344157642483 
		11 0.026883364697583536 18 0.068159801494634756
		4 2 0.72667397462179362 3 0.14516527567761653 11 0.053452952172868919 
		18 0.074707797527720887
		3 18 0.039339518510150828 27 0.43440675182678279 28 0.52625372966306638
		3 18 0.054449740871431916 27 0.51867296794014639 28 0.42687729118842171
		3 18 0.0041381812262501552 28 0.75517686067349621 29 0.24068495810025367
		3 18 0.0068135796443289081 28 0.80198650842637587 29 0.19119991192929525
		3 18 0.00027663493155389419 28 0.046524110553227735 29 0.95319925451521836
		2 18 0.62389319752691963 24 0.37610680247308037
		3 18 0.88813681589188886 19 0.0009167359831051664 24 0.11094644812500598
		2 18 0.67145270109176636 24 0.32854729890823364
		3 18 0.88367239454514446 19 0.0011233860990643714 24 0.11520421935579118
		2 18 0.60643202066421509 24 0.39356797933578491
		3 18 0.58662465020814647 24 0.40682693268002346 25 0.0065484171118301085
		3 18 0.43630242347717285 24 0.44594204425811768 25 0.11775553226470947
		3 18 0.54771895950887795 24 0.45015327567719982 25 0.0021277648139223491
		3 18 0.44059898792804797 24 0.44169732270095763 25 0.11770368937099443
		3 18 0.50180098799026673 24 0.4718123096697836 25 0.026386702339949615
		3 19 0.016236838497711518 20 0.76076998877126689 21 0.22299317273102162
		3 18 0.0020588766515028914 19 0.56052499278695334 20 0.43741613056154377
		3 21 0.075382927254950868 22 0.76031555444707466 23 0.16430151829797443
		3 18 0.89881392736025911 19 0.0017866142318294339 24 0.099399458407911492
		2 20 0.020652139059309273 21 0.97934786094069071
		2 20 0.01598848745248304 21 0.98401151254751695
		3 19 0.071170063947739129 20 0.89146104131522896 21 0.037368894737031901
		3 19 0.10358376947958609 20 0.86585832602976243 21 0.030557904490651489
		3 19 0.032060449178033017 20 0.8071163827308997 21 0.16082316809106731
		3 20 0.0042692241358319857 21 0.98546546927063139 22 0.010265306593536647
		3 18 0.084677052207182871 19 0.90596364440030708 20 0.0093593033925100048
		3 18 0.077814364247637394 19 0.902825847501741 20 0.019359788250621585
		3 18 0.0074798067301806897 19 0.72302392040382002 20 0.26949627286599925
		2 18 0.63440994517773552 19 0.36559005482226448
		2 18 0.22241375189401288 19 0.77758624810598709
		2 18 0.80405973189980195 19 0.1959402681001981
		2 18 0.87184977531433105 19 0.12815022468566895
		2 18 0.85823924628256631 19 0.14176075371743371
		2 18 0.47672517667039704 19 0.52327482332960296
		4 1 0.010344779263410427 2 0.010463896353690369 18 0.91570271340714837 
		19 0.06348861097575087
		2 2 0.086269046959278492 18 0.91373095304072149
		3 1 0.091575732270425578 2 0.28594931320959377 18 0.62247495451998069
		2 18 0.99525358331909297 19 0.0047464166809070545
		2 1 0.12218573891972147 18 0.87781426108027849
		2 18 0.85262971724348391 24 0.14737028275651612
		3 1 0.033713866401991248 18 0.39661902632511065 24 0.56966710727289815
		2 18 0.22157683468953526 24 0.77842316531046474
		3 18 0.4191197337828651 24 0.57895479968875274 25 0.0019254665283821562
		3 1 0.23065638040210446 2 0.025422069401866934 18 0.74392155019602857
		3 2 0.20515425846981303 3 0.038425886718972395 18 0.75641985481121454
		4 2 0.40324856728541514 3 0.46019872185768196 11 0.028459071575620751 
		18 0.10809363928128217
		5 2 0.36106911839647765 3 0.49390775701266165 4 0.011660210962000652 
		11 0.038759455662361615 18 0.094603457966498411
		3 1 0.36461463850271453 2 0.50208352524788902 18 0.13330183624939645
		5 1 0.25254535004725448 2 0.62408380044029255 3 0.012689686974830852 
		11 0.0038541670796985164 18 0.10682699545792362
		4 18 0.16610152524407132 24 0.3117863442961471 25 0.4586128455813871 
		26 0.063499284878394457
		4 18 0.23454478033565312 24 0.60408835703002872 25 0.11793009761080001 
		26 0.043436765023518127
		2 18 0.19819291243038936 24 0.80180708756961061
		3 18 0.29055362939834595 24 0.40881147980690002 25 0.30063489079475403
		2 18 0.61674720048904419 24 0.38325279951095581
		3 18 0.88716322938839565 19 0.00019560648236699915 24 0.1126411641292373
		2 18 0.95822700625641999 19 0.041772993743580046
		2 18 0.71759526238413229 19 0.28240473761586771
		3 18 0.07472796243634694 19 0.91250231941238369 20 0.012769718151269344
		3 19 0.057334105680426503 20 0.89755289467327493 21 0.045112999646298571
		3 20 0.0013869920882421066 21 0.97131606545664595 22 0.02729694245511198
		3 18 0.1384321929808601 19 0.85958876186974786 20 0.0019790451493920816
		2 18 0.38106616622603928 19 0.61893383377396072
		3 2 0.05591617562645991 18 0.94395077542021122 19 0.00013304895332891833
		2 2 0.13407096238298691 18 0.86592903761701312
		3 2 0.18302261771066103 3 0.03625309378398571 18 0.78072428850535325
		4 2 0.36708894822319765 3 0.48050859239172578 11 0.024341084248162587 
		18 0.12806137513691396
		5 2 0.34472643911704076 3 0.50239657747451638 4 0.0099313975040724797 
		11 0.032548129164496738 18 0.11039745673987368
		3 21 0.10396450757980347 22 0.70643973350524902 23 0.18959575891494751
		3 21 0.090446153814632155 22 0.79378862963144403 23 0.11576521655392386
		3 21 0.085552073377727911 22 0.70810961195744859 23 0.20633831466482344
		2 22 0.022775908465432017 23 0.97722409153456802
		2 22 0.10597458131516656 23 0.89402541868483343
		2 22 0.12275607125497288 23 0.8772439287450271
		2 22 0.0070303765932756591 23 0.99296962340672434
		2 22 0.0050357858174726608 23 0.99496421418252734
		2 22 0.087787052516928629 23 0.91221294748307136
		3 21 0.074190817220577465 22 0.84939455353174698 23 0.076414629247675614
		2 20 0.01080413395258613 21 0.98919586604741383
		3 18 0.040480446913929956 27 0.52453492898278342 28 0.43498462410328659
		3 18 0.015869090364523875 27 0.25059110015547659 28 0.73353980947999953
		3 18 0.021811974231758329 27 0.27227308179758325 28 0.70591494397065846
		3 18 0.0016980557402188842 28 0.63115671507728799 29 0.36714522918249309
		3 18 0.003619143597777904 28 0.73562660916120037 29 0.2607542472410217
		3 18 0.077428730649612268 27 0.56861491705819722 28 0.35395635229219058
		4 18 0.0040927522905981339 27 0.00016914214206383601 28 0.74264284732482178 
		29 0.25309525824251633
		3 18 0.0071315806563580289 28 0.76383639672203818 29 0.22903202262160377
		2 28 0.012054617081833295 29 0.98794538291816669
		2 28 0.0058716183743639828 29 0.99412838162563599
		2 28 0.0057326326950986207 29 0.99426736730490139
		2 28 0.00042327870672730848 29 0.99957672129327269
		1 29 1
		3 18 0.89665720722655806 19 0.00080478386904090553 24 0.10253800890440101
		2 18 0.65299002370268033 24 0.34700997629731967
		3 18 0.44741044448488454 24 0.47042710640491037 25 0.08216244911020508
		2 18 0.94994906447941663 19 0.050050935520583345
		3 18 0.88891587799747007 19 0.0010453446786905618 24 0.11003877732383942
		2 18 0.68467529668436333 24 0.31532470331563661
		2 18 0.6214799470150455 24 0.3785200529849545
		3 18 0.57515741204773618 24 0.42365053892854082 25 0.001192049023722989
		2 18 0.70212781429290771 24 0.29787218570709229
		2 18 0.63618202913349953 24 0.36381797086650047
		3 18 0.60971342649493421 24 0.3879824144254575 25 0.0023041590796083872
		3 18 0.63700922775769453 24 0.36223460626939208 25 0.00075616597291343368
		3 18 0.53753426294008422 24 0.42107375515237011 25 0.041391981907545644
		3 18 0.52896849035047877 24 0.45363662683657852 25 0.017394882812942741
		3 18 0.44873337600429725 24 0.45090229955606759 25 0.10036432443963514
		3 18 0.45299715421363651 24 0.45682851077765541 25 0.090174335008708056
		4 18 0.26674760282311 24 0.55241318409040074 25 0.14722256856040328 
		26 0.033616644526086002
		3 18 0.037022852786736664 27 0.39570505901072395 28 0.56727208820253938
		3 18 0.0036541177130030361 28 0.72399080136786587 29 0.27235508091913108
		3 18 0.083277890457463796 27 0.52980203620646971 28 0.38692007333606643
		3 18 0.0083786325539342878 28 0.7901739654728912 29 0.20144740197317457
		2 28 0.00094862736120884144 29 0.99905137263879118
		1 29 1
		3 18 0.097624911403284803 27 0.55343037019028707 28 0.3489447184064281
		3 18 0.008142244222429474 28 0.77991308234470114 29 0.21194467343286935
		1 29 1
		1 29 1
		3 18 0.01624258669167827 27 0.27782077149290696 28 0.70593664181541471
		3 18 0.0018416672097870978 28 0.66634168724268872 29 0.33181664554752416
		2 28 0.0040551588764087187 29 0.99594484112359127
		4 18 0.19569213073069441 24 0.41240306552066203 25 0.25675622776551071 
		26 0.13514857598313285
		4 18 0.17699895627788872 24 0.36543622355432986 25 0.32667549898292864 
		26 0.1308893211848528
		3 18 0.015850860466879078 27 0.26413163647488591 28 0.72001750305823498
		3 18 0.0017474750059897029 28 0.65005126327261653 29 0.34820126172139376
		2 18 0.29281940183581706 24 0.70718059816418299
		4 18 0.24753001225348631 24 0.50049462730966288 25 0.21222951704056098 
		26 0.039745843396289837
		3 18 0.039718352554130198 27 0.44782939886919704 28 0.51245224857667271
		3 18 0.0045395836532445668 28 0.75161490234569517 29 0.24384551400106025
		3 18 0.00010926135368288248 28 0.022514747613307462 29 0.97737599103300965
		2 28 0.0049984314454489384 29 0.99500156855455102
		1 29 1;
	setAttr ".wl[180:324].w"
		1 29 1
		1 29 1
		2 28 0.012761237103280377 29 0.98723876289671963
		2 28 0.0094352911165254318 29 0.99056470888347459
		1 29 1
		1 29 1
		1 29 1
		5 2 0.12092769891023636 3 0.40596958994865417 4 0.39904698729515076 
		11 0.030886251479387283 18 0.043169472366571426
		5 2 0.13174196881440328 3 0.44709911276252401 4 0.34068285911257773 
		11 0.033548373229080837 18 0.046927686081414136
		5 2 0.13296392188508283 3 0.48524005845449703 4 0.29429121983355228 
		11 0.028860685540530302 18 0.058644114286337583
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		5 2 0.0010674074207684368 4 0.54898106617262676 5 0.44585469012170575 
		11 0.0014526592452567036 18 0.0026441770396423482
		2 5 0.60418218374252319 6 0.39581781625747681
		2 6 0.58278536796569824 7 0.41721463203430176
		2 7 0.84250105366104522 8 0.15749894633895478
		2 8 0.94959686417883515 9 0.050403135821164853
		5 2 0.0014188193671076049 4 0.73804262508926666 5 0.25509843199166821 
		11 0.0019261970937759787 18 0.0035139264581816473
		2 5 0.61270026526748345 6 0.38729973473251655
		2 6 0.68482254057064895 7 0.31517745942935105
		2 7 0.91280474998965111 8 0.087195250010348863
		2 8 0.9899092368738307 9 0.010090763126169308
		5 2 0.0012058484070621167 4 0.74831068115049382 5 0.24454964566402093 
		11 0.0014253811601587184 18 0.0045084436182644674
		2 5 0.5106631365220804 6 0.4893368634779196
		2 6 0.5958126605804962 7 0.4041873394195038
		2 7 0.74653792381286621 8 0.25346207618713379
		2 8 0.8600579628356988 9 0.13994203716430123
		5 1 0.010631708250035767 2 0.72494022823039062 3 0.17719950974956977 
		11 0.03415065946549934 18 0.053077894304504526
		5 1 0.0014419900401140475 2 0.67560446954485887 3 0.21848471686554316 
		11 0.035826184222556678 18 0.068642639326927282
		4 2 0.4397939145565033 3 0.4397939145565033 11 0.032718509435653687 
		18 0.087693661451339722
		2 18 0.29003761082999741 24 0.70996238917000265
		4 2 0.30838692368220066 3 0.14530106059568618 11 0.00074479116814477476 
		18 0.54556722455396844
		4 2 0.28709955557467137 3 0.16563952854235467 11 0.00080317880127800975 
		18 0.54645773708169598
		5 1 0.081558051687133384 2 0.61494049025779629 3 0.048098878150486316 
		11 0.0001388779706723801 18 0.25526370193391162
		5 1 0.00050998939588827689 2 0.4827554582673993 3 0.33810353690430284 
		11 0.0079988000024895419 18 0.17063221542992008
		4 2 0.40777195183550485 3 0.45174271625594131 11 0.024776993734748929 
		18 0.11570833817380488
		4 2 0.37572931502636164 3 0.47209173274586991 11 0.023349331220944597 
		18 0.12882962100682382
		4 2 0.41146155961903802 3 0.44766932475751642 11 0.025194769584416767 
		18 0.11567434603902876
		4 2 0.3441710396380715 3 0.18255181208924712 11 0.0016268264377175135 
		18 0.47165032183496386
		5 1 0.0024668045585070093 2 0.54640280707434086 3 0.14782678947591035 
		11 0.00087368714533388224 18 0.30242991174590794
		3 2 0.28897310112476948 3 0.062377377873037883 18 0.64864952100219264
		4 2 0.29328485990048941 3 0.10695900243240951 11 0.00026752717762725014 
		18 0.59948861048947377
		4 2 0.30291762332272093 3 0.10128326014504138 11 0.00026456658698058413 
		18 0.59553454994525712
		4 2 0.27596975129055562 3 0.091709810028108366 11 0.00012941898958082249 
		18 0.63219101969175517
		4 2 0.26337742780952023 3 0.50089997006496423 11 0.011252121058057882 
		18 0.22447048106745773
		4 2 0.27598153413907855 3 0.485837350248505 11 0.011543448541395612 
		18 0.22663766707102084
		4 2 0.25957009292978828 3 0.49214533154720563 11 0.011004220735297429 
		18 0.23728035478770865
		4 2 0.24298490180007673 3 0.57685795024892472 11 0.015950710294427437 
		18 0.16420643765657117
		4 2 0.25604683780783583 3 0.56079484390156897 11 0.016450589921060334 
		18 0.1667077283695349
		4 2 0.23660343144509632 3 0.58586259551283737 11 0.01747318971351576 
		18 0.16006078332855053
		4 2 0.26012952540769474 3 0.5698873708522576 11 0.01903916066910263 
		18 0.15094394307094505
		4 2 0.26565818037618283 3 0.56683149170775216 11 0.019024795665444263 
		18 0.14848553225062075
		4 2 0.25886155997835575 3 0.58075103547791995 11 0.022231980164409571 
		18 0.13815542437931488
		4 2 0.38893290402390307 3 0.4506427582688578 11 0.017276936180431794 
		18 0.14314740152680733
		4 2 0.38609199317921672 3 0.45577426632313778 11 0.017299894952397213 
		18 0.14083384554524833
		4 2 0.36523795863082142 3 0.4780180756475842 11 0.021868542355183703 
		18 0.1348754233664107
		4 2 0.27034547371081968 3 0.53719936700688109 11 0.013952215847607004 
		18 0.17850294343469222
		4 2 0.36172670193338152 3 0.4060532160216071 11 0.010082690064018015 
		18 0.22213739198099336
		5 1 0.0015991123243990699 2 0.44063217319867914 3 0.43440453077768559 
		11 0.014963948464006097 18 0.10840023523523007
		4 2 0.31478906919162097 3 0.08060813994978526 11 0.00013710121099668035 
		18 0.60446568964759706
		5 1 0.00016718608488505498 2 0.47225273768780512 3 0.33717391689747084 
		11 0.0078628325825817417 18 0.18254332674725723
		4 2 0.47470377682056092 3 0.23973041170023277 11 0.0039528262738824736 
		18 0.2816129852053238
		4 2 0.27740100000295698 3 0.52096998643039727 11 0.014172331416818937 
		18 0.18745668214982686
		4 2 0.36503897154115944 3 0.33174640882598744 11 0.0066456512573104011 
		18 0.2965689683755427
		4 2 0.3342750834238799 3 0.21829118460661234 11 0.0022358395205594791 
		18 0.44519789244894831
		5 1 0.0031880611388276168 2 0.53744009483346256 3 0.16960123840229105 
		11 0.00110806693945823 18 0.28866253868596059
		4 2 0.35062204978665201 3 0.18512974333761886 11 0.0016726532355159135 
		18 0.46257555364021319
		5 1 0.0043749388966486521 2 0.53463177132424211 3 0.19498245466944114 
		11 0.0015658073897493782 18 0.26444502771991873
		4 2 0.48008287999874472 3 0.13721013598828796 11 0.00089110423033128246 
		18 0.38181587978263604
		4 2 0.47037820655804641 3 0.12091056771267877 11 0.00059878386247012448 
		18 0.40811244186680468
		5 1 0.00042523821863038076 2 0.52187812100508846 3 0.14403311845366354 
		11 0.00089740810989718839 18 0.33276611421272051
		4 2 0.38548040499960423 3 0.099141843899732365 11 0.0003602401712939474 
		18 0.51501751092936954
		4 2 0.36120553785144377 3 0.079606023281382901 11 0.0001652070585437807 
		18 0.55902323180862956
		4 2 0.47427235777031979 3 0.12551343360886744 11 0.00068488081636811744 
		18 0.39952932780444467
		4 2 0.41402721723143432 3 0.10328578283275264 11 0.00040644384301562019 
		18 0.48228055609279741
		4 2 0.31713938683537823 3 0.15962806329165766 11 0.0009591290718325143 
		18 0.52227342080113159
		4 2 0.3573695704056894 3 0.11336953144776776 11 0.00050690449791704144 
		18 0.52875399364862585
		3 2 0.25710006755375325 3 0.044812921313627505 18 0.69808701113261917
		4 2 0.32444680191415842 3 0.076863670325537731 11 0.00013263857240066335 
		18 0.59855688918790317
		4 2 0.38783174101906726 3 0.094209453371619609 11 0.00032108465718146627 
		18 0.51763772095213167
		4 2 0.43312018595423329 3 0.22188408409336388 11 0.0032843618729378899 
		18 0.34171136807946495
		4 2 0.51008128847755396 3 0.16917688617045878 11 0.0016980645955160299 
		18 0.31904376075647117
		3 2 0.31012661964990346 3 0.052196336527199044 18 0.63767704382289747
		3 2 0.34035450296385278 3 0.061624989265020448 18 0.59802050777112681
		3 2 0.16836669500111512 3 0.0013616703944489092 18 0.83027163460443598
		3 2 0.37373826036995555 3 0.062081619490775682 18 0.56418012013926877
		3 2 0.0037922695698329166 18 0.86025904447421786 19 0.13594868595594917
		4 1 0.068481659163033906 2 0.11748464025315712 18 0.81119075772456939 
		19 0.0028429428592396302
		3 1 0.34891697764396667 2 0.34891054034233093 18 0.30217248201370239
		3 2 0.0036976196598061837 18 0.86018774249945251 19 0.13611463784074126
		4 1 0.063762276800589976 2 0.092646165862550423 18 0.83788876984273708 
		19 0.0057027874941225336
		3 1 0.38449347476602863 2 0.36752611704404209 18 0.24798040818992925
		3 2 0.00069222329491554799 18 0.83083759338361274 19 0.16847018332147173
		5 1 0.0019391720173343792 2 0.54113655605211619 3 0.11755993070107738 
		11 0.00044962326666171415 18 0.33891471796281031
		2 2 0.13068512988007977 18 0.86931487011992026
		2 2 0.097928259598901141 18 0.90207174040109883
		2 2 0.1353277225694739 18 0.8646722774305261
		3 2 0.29455284655805897 3 0.011392457941195831 18 0.69405469550074528
		3 2 0.31653490131941792 3 0.029381082832012798 18 0.65408401584856934
		3 1 0.19709030674801647 18 0.16614495960525988 24 0.63676473364672359
		2 18 0.30810469614523384 24 0.69189530385476616
		3 1 0.59763773410602838 18 0.38012470160120976 24 0.02223756429276191
		3 1 0.56791533732161936 2 0.099872532483116755 18 0.33221213019526391
		3 1 0.14748006008506001 18 0.14825545693205169 24 0.70426448298288835
		3 1 0.0056059307897862367 18 0.13527115845616375 24 0.85912291075405001
		3 1 0.6145024940597632 18 0.33670187528301965 24 0.048795630657217128
		3 1 0.65038242863338125 2 0.077402282241088846 18 0.27221528912552995
		3 1 0.00023029997722965207 18 0.11575271713365706 24 0.88401698288911335
		2 18 0.30232981748371773 24 0.69767018251628232
		2 18 0.29995886385318232 24 0.70004113614681773
		3 1 0.47228894693305223 2 0.44569970173462559 18 0.082011351332322166
		3 1 0.5310244300492678 2 0.41002341721355207 18 0.05895215273718013
		3 18 0.4202118328118995 24 0.49219224636887404 25 0.087595920819226472
		3 18 0.26521028273747638 24 0.59271582630496444 25 0.14207389095755923
		3 18 0.28188622352795456 24 0.67593204640484916 25 0.042181730067196298
		3 18 0.28471178134581204 24 0.68133241699634961 25 0.033955801657838396
		3 18 0.28160024423599878 24 0.69115163698070292 25 0.027248118783298251
		3 18 0.43306179544145479 24 0.49180425727950761 25 0.075133947279037619
		3 18 0.23224978495016374 24 0.45065421537539685 25 0.31709599967443941
		3 18 0.22246796887224773 24 0.62369087146330793 25 0.15384115966444431
		3 18 0.22154501075971944 24 0.67269448976405266 25 0.10576049947622787
		3 18 0.21770460214283646 24 0.76026633954694911 25 0.022029058310214445
		4 18 0.36847293925990071 24 0.33650729561607978 25 0.21458816848081602 
		26 0.080431596643203443
		3 18 0.27436335689084063 24 0.36896801952600894 25 0.35666862358315043
		3 18 0.40130470987246303 24 0.4475095138695982 25 0.15118577625793886
		4 18 0.41113016845352068 24 0.36920596223740476 25 0.16365509371768194 
		26 0.056008775591392598
		4 18 0.44253341530312756 24 0.36202417320659047 25 0.15351886418198232 
		26 0.041923547308299614
		2 18 0.64407537448181584 24 0.35592462551818416
		4 18 0.29028478048529638 24 0.24100336252895471 25 0.079719967546165227 
		26 0.38899188943958363
		5 18 0.19690864636394884 24 0.15934480207313964 25 0.054499140095459385 
		26 0.58185265551801502 27 0.0073947559494371914
		5 18 0.20978731385888116 24 0.22659887879935381 25 0.024462793569180227 
		26 0.50009788200477989 27 0.039053131767804887
		5 18 0.15621113253422009 24 0.14816025892852869 25 0.047391237964774888 
		26 0.6235733419203755 27 0.024664028652100795
		5 18 0.1594478260253232 24 0.15628135923025008 25 0.065159950914348105 
		26 0.60804036238590331 27 0.011070501444175302
		5 18 0.10515463803462764 24 0.12983056540143029 25 0.01855148881995616 
		26 0.59441678055328928 27 0.15204652719069661
		5 18 0.17316822040041838 24 0.24364280367808694 25 0.013038893849573643 
		26 0.44677057004095899 27 0.12337951203096204
		5 18 0.21745134080010128 24 0.24337405549831481 25 0.01958461405394174 
		26 0.47071121369633029 27 0.04887877595131189
		5 18 0.098962725499158868 24 0.12025866814294955 25 0.02642296475350997 
		26 0.63978500008302741 27 0.11457064152135418
		5 18 0.19031059919214435 24 0.19932742602496806 25 0.02757652315848063 
		26 0.54577333243352666 27 0.037012119190880273
		4 18 0.10694567612119374 24 0.026275701181762905 26 0.14620611752411897 
		27 0.72057250517292437
		5 18 0.058726285309265762 24 0.019366651989891962 26 0.077493482204081296 
		27 0.80479390328519684 28 0.039619677211564154
		4 18 0.21299370029929468 24 0.037812051136271119 26 0.1715404721263884 
		27 0.57765377643804583
		4 18 0.11651130338830802 24 0.03570602102554378 26 0.085343858956231949 
		27 0.76243881662991619
		3 18 0.10040866858071397 24 0.029237150088954073 26 0.23365497927431825;
	setAttr ".wl[324:480].w"
		1 27 0.63669920205601371
		5 18 0.070932819448418644 24 0.027694057286334357 26 0.048294916074328363 
		27 0.84342097057838505 28 0.0096572366125336397
		4 18 0.11309023285724396 24 0.035664432016495107 26 0.069649860781802686 
		27 0.7815954743444582
		5 18 0.061445472106709358 24 0.020356345087588594 26 0.11108327201785149 
		27 0.7791949191274341 28 0.02791999166041647
		4 18 0.11106915771961212 24 0.033023081719875336 26 0.097292505204677582 
		27 0.75861525535583496
		4 18 0.30751141445804803 24 0.056616422703718021 26 0.20559674696299596 
		27 0.43027541587523799
		4 18 0.28868871066901952 24 0.064036725043155995 26 0.27972512603625277 
		27 0.36754943825157171
		5 18 0.31553023604518138 24 0.18873890965788956 25 0.041013206702905647 
		26 0.45444806763479995 27 0.00026957995922349511
		4 18 0.41862874755305707 24 0.24377816643068753 25 0.037462036638013611 
		26 0.30013104937824181
		4 18 0.39079727926090058 24 0.24549597383454297 25 0.039174070908170433 
		26 0.32453267599638602
		5 18 0.1300235332538098 24 0.14494139798247524 25 0.055023213251387482 
		26 0.62020161955647379 27 0.049810235955853641
		5 18 0.065334837687593503 24 0.021597949091979346 26 0.13671491288530169 
		27 0.75843481345960795 28 0.017917486875517516
		2 18 0.19965175389205675 24 0.8003482461079432
		3 1 0.00021314697578351285 18 0.15023877386878445 24 0.84954807915543207
		5 18 0.12218676888386104 24 0.1400776463723884 25 0.049346214552336495 
		26 0.62314508488341913 27 0.06524428530799492
		4 18 0.15730947574157447 24 0.30364868762726427 25 0.46368011357783423 
		26 0.075361723053326973
		3 18 0.21783536156275995 24 0.44536622369436429 25 0.33679841474287575
		3 0 0.0011535351161309005 18 0.19296526835488309 24 0.80588119652898604
		2 18 0.18495841048719866 24 0.81504158951280137
		3 0 0.00070124591194084833 18 0.18404632857128614 24 0.81525242551677302
		3 0 0.00045564727255880853 18 0.17044558112141933 24 0.82909877160602186
		3 0 0.00051199312808740004 18 0.17142178047384679 24 0.82806622639806582
		3 1 0.00017677510494204477 18 0.11600906759278991 24 0.88381415730226809
		2 18 0.14026051314625987 24 0.85973948685374013
		3 1 0.00026704371218339267 18 0.11681208733140511 24 0.88292086895641153
		4 0 0.12394758007489894 1 0.48295153896525361 18 0.016527930859533486 
		24 0.37657295010031394
		5 0 0.0021754387169096051 1 0.79829205309210238 18 0.033135369929236921 
		24 0.11000354757072267 30 0.056393590691028395
		3 1 0.82550714709770623 2 0.13109046934160523 18 0.043402383560688561
		4 0 0.12099842862410577 1 0.063349761776809718 18 0.058150616193010839 
		24 0.75750119340607369
		4 0 0.091022531908099141 1 0.0024433977363987496 18 0.090391184587280474 
		24 0.81614288576822158
		3 0 0.24704748392105103 18 0.28717312216758728 24 0.46577939391136169
		3 0 0.23268532996515409 18 0.30314328544909397 24 0.46417138458575191
		4 0 0.026748744870531353 1 0.393088968072418 18 0.021881578571653286 
		24 0.55828070848539735
		5 0 0.0052236474140101088 1 0.73853095425640758 18 0.024895674158769261 
		24 0.16839320063738858 30 0.062956523533424513
		5 1 0.86605835759291905 2 0.077795135808280957 18 0.03815814252745256 
		24 0.0089941978681565594 30 0.0089941662031909099
		3 0 0.22695409374417877 18 0.29244419862166954 24 0.48060170763415166
		4 0 0.14649694036265593 1 0.012274493771988276 18 0.086485268860219289 
		24 0.75474329700513654
		3 0 0.30822291286460407 18 0.14726149642925682 24 0.54451559070613909
		3 0 0.23860285177499113 18 0.13505247316707206 24 0.62634467505793678
		3 0 0.27435637746854324 18 0.14428003777325321 24 0.58136358475820349
		3 0 0.24462056524486192 18 0.13525240324813728 24 0.62012703150700077
		4 0 0.11171724466668491 1 0.0019503327606297585 18 0.090254475266025661 
		24 0.79607794730665971
		4 0 0.089689537386087689 1 0.0025052846954809046 18 0.091362923016737527 
		24 0.81644225490169386
		2 22 0.1263061220715849 23 0.87369387792841513
		2 22 0.056200465627778778 23 0.94379953437222119
		2 22 0.047752506675179995 23 0.95224749332481995
		2 22 0.12543220631134203 23 0.874567793688658
		2 22 0.14407870474189671 23 0.85592129525810323
		2 22 0.037409116000783997 23 0.962590883999216
		2 22 0.048170177693063684 23 0.95182982230693636
		2 22 0.0011038209244115364 23 0.99889617907558848
		2 13 0.020656589341697881 14 0.9793434106583021
		2 13 0.016065057426933413 14 0.98393494257306657
		3 12 0.072411619396551025 13 0.88918656442011357 14 0.038401816183335394
		3 12 0.10667959570971401 13 0.86170923527615606 14 0.031611169014129942
		3 12 0.032066998215775876 13 0.80709811770872419 14 0.16083488407549992
		3 13 0.0041659338768515351 14 0.98545108894906874 15 0.01038297717407982
		3 11 0.08707998499408269 12 0.90280490870655872 13 0.010115106299358632
		3 11 0.083350607813665462 12 0.89570515968502307 13 0.020944232501311534
		3 11 0.0076349465432278881 12 0.72427260234897051 13 0.26809245110780161
		2 11 0.64483148054795136 12 0.35516851945204858
		2 11 0.22410027758341275 12 0.77589972241658722
		2 11 0.7915034294128418 12 0.2084965705871582
		2 11 0.86088719095793997 12 0.13911280904205997
		2 11 0.85167146998154331 12 0.14832853001845672
		2 11 0.47911633613358928 12 0.52088366386641072
		4 1 0.0117439472056913 2 0.011821419275864477 11 0.91427519065968665 
		12 0.062159442858757519
		2 2 0.084158809027364584 11 0.91584119097263539
		3 2 0.0034434802853624095 11 0.86008311539540772 12 0.13647340431922991
		4 1 0.067015805114939445 2 0.11495184284463532 11 0.81513113713390795 
		12 0.002901214906517307
		3 1 0.053839620403347985 2 0.33080291871280565 11 0.61535746088384635
		2 11 0.99386581667684049 12 0.0061341833231595188
		2 1 0.12514004369549564 11 0.8748599563045043
		2 11 0.84940611418522083 30 0.15059388581477914
		3 1 0.036299053444344351 11 0.48028814613711779 30 0.48341280041853785
		3 1 0.14920612808376613 2 0.019812041413864979 11 0.83098183050236885
		3 1 0.59528956828717972 11 0.38305806702019723 30 0.021652364692623036
		3 1 0.56575215284341684 2 0.098820172986538501 11 0.3354276741700446
		2 2 0.12734433629082631 11 0.87265566370917369
		5 1 0.022124379914959823 2 0.57602251795493997 3 0.099685981115560443 
		11 0.3019747187504398 18 0.00019240226409998715
		4 2 0.40548996984521013 3 0.45640598452447023 11 0.10944554648979903 
		18 0.028658499140520603
		4 2 0.42156264814082756 3 0.45913342325588202 11 0.059781846549836495 
		18 0.059522082053453954
		5 2 0.36303925789600178 3 0.48701318450173853 4 0.025748951304782084 
		11 0.062234892529629729 18 0.061963713767847886
		5 2 0.36423587595539608 3 0.49364459238772518 4 0.0068976822855080534 
		11 0.096120990275660581 18 0.039100859095710185
		3 1 0.2646057334972064 2 0.57025602309660417 11 0.16513824340618943
		3 1 0.34711599349975586 2 0.34710446000099182 11 0.30577954649925232
		3 1 0.47183862144837085 2 0.44515436882980675 11 0.083007009721822386
		4 1 0.41117182374000549 2 0.54897570610046387 11 0.019988995045423508 
		18 0.019863475114107132
		5 1 0.091315509216192497 2 0.58197023542424953 3 0.24944887872755594 
		11 0.038734049732935073 18 0.038531326899066999
		5 1 0.054820246230414399 2 0.52058276365865053 3 0.34517588095758212 
		11 0.05294334429382716 18 0.026477764859525823
		5 1 0.010874124102073035 2 0.76205604274870398 3 0.14077015037575541 
		11 0.043264444353336262 18 0.043035238420131301
		5 1 0.01062375571638687 2 0.72546004235567474 3 0.17656099549642304 
		11 0.053371931611952396 18 0.033983274819563029
		2 11 0.29448195414298911 30 0.70551804585701094
		2 11 0.2926201783973138 30 0.7073798216026862
		3 11 0.28150189761823113 30 0.67552884446170458 31 0.042969257920064272
		3 11 0.28431110938688126 30 0.68099670080102903 31 0.034692189812089727
		3 11 0.28119346551819419 30 0.69088894257487543 31 0.027917591906930491
		2 11 0.28976438702557167 30 0.71023561297442839
		3 11 0.26552271842956543 30 0.5919005274772644 31 0.14257675409317017
		2 11 0.42297768592834473 30 0.57702231407165527
		2 11 0.59196722507476807 30 0.40803277492523193
		3 11 0.42104029498519491 30 0.49215013108664141 31 0.086809573928163686
		3 11 0.87418758683443032 12 0.00027363214700089458 30 0.1255387810185688
		2 11 0.95636291024359243 12 0.04363708975640751
		2 11 0.71690098744040653 12 0.28309901255959347
		3 11 0.07438843399407094 12 0.91267510573842603 13 0.012936460267503008
		3 12 0.056979155427931076 13 0.89757803445972628 14 0.045442810112342615
		3 12 0.016082033275335531 13 0.76012783109951276 14 0.22379013562515176
		3 13 0.0013476113358560878 14 0.97094162251230076 15 0.027710766151843244
		3 11 0.13795662562256025 12 0.86001584918311291 13 0.0020275251943268784
		3 11 0.002027538438766012 12 0.5589509789860081 13 0.43902148257522589
		2 11 0.38047043622942078 12 0.61952956377057922
		3 2 0.05374370977684869 11 0.9461180070034374 12 0.00013828321971386557
		3 2 0.00058287945542505196 11 0.83043132506181383 12 0.16898579548276113
		2 2 0.095072270515185339 11 0.9049277294848147
		3 2 0.18049198321814841 3 0.034085217736343973 11 0.7854227990455076
		2 2 0.13129953667689695 11 0.86870046332310302
		3 2 0.1663220285239225 3 0.0010948127986203722 11 0.83258315867745714
		3 2 0.2024532564075785 3 0.035259362441522488 11 0.762287381150899
		4 2 0.30685022005376189 3 0.14072169148892377 11 0.55169319265151762 
		18 0.00073489580579668388
		4 2 0.28576626600224331 3 0.16078736942924288 11 0.5526535957478963 
		18 0.00079276882061749335
		5 2 0.34495743072584695 3 0.5046023414735139 4 0.0066426581720642926 
		11 0.11128517867322388 18 0.032512390955350967
		4 2 0.36578720348724447 3 0.48127338626815991 11 0.12870472066490848 
		18 0.024234689579687108
		3 14 0.10350828284490289 15 0.70355417246604401 16 0.19293754468905308
		3 14 0.090288620080374929 15 0.7923263010504209 16 0.11738507886920418
		3 14 0.084871758339116032 15 0.70559618228688159 16 0.20953205937400238
		2 15 0.14375838979779132 16 0.85624161020220868
		2 15 0.055577397346496582 16 0.94442260265350342
		2 15 0.03095279864615192 16 0.96904720135384803
		2 15 0.1253405604359257 16 0.87465943956407433
		2 15 0.047186402323386153 16 0.95281359767661389
		2 15 0.10612873225201813 16 0.89387126774798187
		3 14 0.074831693046902292 15 0.75944823290355923 16 0.16572007404953848
		2 15 0.12180152898435381 16 0.87819847101564619
		2 15 0.006864043606900877 16 0.99313595639309915
		2 15 0.0010553616381679958 16 0.998944638361832
		2 15 0.087161627794455659 16 0.91283837220554431
		3 14 0.073719663760371576 15 0.84947858342203686 16 0.076801752817591593
		2 13 0.010651157672928754 14 0.98934884232707121
		4 2 0.43972409130787304 3 0.43972409130787304 11 0.0880091957444432 
		18 0.032542621639810705
		4 2 0.44554085044696129 3 0.44554085044696129 11 0.05457883382646557 
		18 0.054339465279611837
		4 2 0.44601035711644854 3 0.44601035711644854 11 0.070127025828175746 
		18 0.037852259938927151
		4 2 0.72677541129040013 3 0.1448558050044402 11 0.075135826471135855 
		18 0.05323295723402386
		4 2 0.73219232155038849 3 0.12515174598406231 11 0.071503531724425057 
		18 0.071152400741124194
		4 2 0.44799171074994903 3 0.44799171074994903 11 0.052123481054071955 
		18 0.051893097446029955
		4 2 0.77114857177274576 3 0.094694324853508913 11 0.067248536698389358 
		18 0.066908566675356038
		4 2 0.75228990815690333 3 0.12243724321925108 11 0.07354551320929871 
		18 0.051727335414546861
		4 11 0.26167320815215694 30 0.5323319355795989 31 0.17389452198304947 
		32 0.032100334285194661
		4 11 0.24676069249569338 30 0.49939697236721259 31 0.21396658995797352 
		32 0.039875745179120521
		5 11 0.18944472717740862 30 0.19869563585390287 31 0.028042277930277082 
		32 0.54746744569536543 33 0.036349913343046006
		5 11 0.20880256437657352 30 0.22588419745948762 31 0.024944033287882555 
		32 0.50198119504763794 33 0.038388009828418418
		4 11 0.23382786274044881 30 0.60309603869822437 31 0.11937031316826466 
		32 0.043705785393062198
		4 11 0.26592606405141228 30 0.5513494631325806 31 0.14885264690537992 
		32 0.033871825910627193
		5 11 0.21643727253353393 30 0.24264516749905984 31 0.020033397452162864 
		32 0.47278384959345554 33 0.048100312921787861
		5 11 0.1725717397012991 30 0.24328746762585246 31 0.013398172808001346 
		32 0.4490632871765689 33 0.12167933268827819
		3 11 0.0041969552116005934 34 0.7573502046081394 35 0.23845284018026003
		3 11 0.0036823771642129754 34 0.72810909792802869 35 0.26820852490775837;
	setAttr ".wl[481:650].w"
		3 11 0.037198309825316703 33 0.40023265332590258 34 0.56256903684878068
		3 11 0.039513013328415357 33 0.43905449040992306 34 0.52143249626166166
		5 11 0.19725648645472624 30 0.15955234729691611 31 0.054851817680368294 
		32 0.58121393893164242 33 0.0071254096363468867
		4 11 0.2147716038776217 30 0.03821052440059821 32 0.17325685143812664 
		33 0.57376102028365339
		4 11 0.10707847235515947 30 0.026395787088784851 32 0.14777720721441395 
		33 0.71874853334164168
		5 11 0.15650411011893042 30 0.14851123229218577 31 0.048014271347412291 
		32 0.62276697435307926 33 0.024203411888392302
		3 11 0.039903570412511795 33 0.45251590519229962 34 0.50758052439518864
		3 11 0.0046033957277598573 34 0.7539458313460482 35 0.24145077292619202
		3 11 0.054810653759420062 33 0.52305369984671068 34 0.4221356463938693
		3 11 0.083949680773529434 33 0.53364207348384241 34 0.38240824574262822
		3 11 0.0084669278551053606 34 0.7933859716760685 35 0.19814710046882614
		3 11 0.0069008983926982749 34 0.80440989157725995 35 0.18868921003004183
		3 11 0.00011372719961407241 34 0.023145178771615541 35 0.97674109402877041
		2 34 0.013212705624263254 35 0.98678729437573676
		2 34 0.0098159489021532008 35 0.9901840510978468
		3 11 0.00028469965697899835 34 0.047466634380601003 35 0.95224866596241997
		2 34 0.0010223953397671117 35 0.99897760466023289
		3 11 0.88894878198387051 12 0.00093992384533653011 30 0.11011129417079296
		2 11 0.62485979125321534 30 0.37514020874678466
		2 11 0.94962800610394782 12 0.050371993896052174
		4 11 0.21945598740053263 30 0.359452908969848 31 0.39720669705524847 
		32 0.023884406574371016
		3 11 0.27560193426282881 30 0.3698215908358351 31 0.35457647490133609
		4 11 0.36988973566303335 30 0.33699742177894981 31 0.21417799326808806 
		32 0.078934849289928805
		3 11 0.89953063284899359 12 0.0018225568015688494 30 0.098646810349437591
		3 11 0.88447093850360481 12 0.0011497078215881732 30 0.11437935367480702
		2 11 0.67250386908673465 30 0.3274961309132654
		2 11 0.70319044589996338 30 0.29680955410003662
		2 11 0.60761166146889378 30 0.39238833853110627
		3 11 0.54887754542943157 30 0.44909370614727895 31 0.0020287484232894841
		2 11 0.63737376443665517 30 0.36262623556334483
		3 11 0.4374839561052899 30 0.44624923674386308 31 0.11626680715084704
		3 11 0.58784409758748324 30 0.40584115838081614 31 0.0063147440317006462
		3 11 0.63814377625006125 30 0.3611586382886266 31 0.00069758546131219626
		3 11 0.53877663411655785 30 0.42055860005111023 31 0.040664765832331903
		3 11 0.50304295189116388 30 0.47107737112671799 31 0.025879676982118155
		3 11 0.44177882199820345 30 0.44199226623750526 31 0.11622891176429127
		2 13 0.020420637666380925 14 0.97957936233361909
		3 12 0.10309929577403924 13 0.86607064599430383 14 0.030830058231656989
		3 12 0.070768840347346512 13 0.89155709411368855 14 0.037674065538964921
		2 13 0.01579130335061453 14 0.98420869664938548
		3 12 0.031815642287652907 13 0.80666474734733429 14 0.16151961036501283
		3 13 0.0041858368011735078 14 0.98533267700423188 15 0.010481486194594635
		3 11 0.077462285179925816 12 0.90295653862538527 13 0.019581176194688854
		3 11 0.084315465618829258 12 0.90618604221234 13 0.0094984921688307748
		3 11 0.0073989155868156358 12 0.72221827162916374 13 0.27038281278402065
		2 11 0.63331520557403564 12 0.36668479442596436
		2 11 0.22185481897283732 12 0.77814518102716268
		2 11 0.87135326095540888 12 0.12864673904459112
		2 11 0.80344302659396871 12 0.19655697340603134
		2 11 0.8577265483818487 12 0.14227345161815133
		2 11 0.4755275562091138 12 0.5244724437908862
		4 1 0.0097796846827723685 2 0.0098879714260088538 11 0.9164330176904657 
		12 0.063899326200753129
		2 2 0.083479164803858183 11 0.9165208351961418
		3 1 0.090464209941876525 2 0.28215055359307251 11 0.62738523646505095
		4 1 0.062260070895508279 2 0.090436632772560421 11 0.84150489809961437 
		12 0.0057983982323169155
		3 2 0.0033550291296987281 11 0.86000593839229289 12 0.13663903247800838
		2 1 0.12039561802949016 11 0.87960438197050983
		2 11 0.99518431095859305 12 0.0048156890414069436
		2 11 0.85388477799811457 30 0.1461152220018854
		3 1 0.033230186499064757 11 0.39844272728093644 30 0.56832708621999883
		2 11 0.22174940012025535 30 0.77825059987974465
		3 11 0.4201988984462986 30 0.57789666954114349 31 0.0019044320125579726
		3 1 0.22780329667935659 2 0.024665505429074329 11 0.74753119789156908
		3 1 0.64850615326361005 2 0.076623549805846056 11 0.27487029693054382
		3 1 0.61256050835341025 11 0.33949708812126111 30 0.047942403525328622
		3 2 0.29092102646803242 3 0.010288676036195016 11 0.69879029749577259
		5 1 0.080954173513675259 2 0.61664129671957901 3 0.045580481259243008 
		11 0.25668964359577084 18 0.00013440491173194444
		2 2 0.13196550506301977 11 0.86803449493698026
		4 2 0.4021061265037682 3 0.46090393596218204 11 0.10864589909732207 
		18 0.02834403843672767
		5 2 0.36140547380707372 3 0.49574177092962163 4 0.008832563934046531 
		11 0.095316070444940088 18 0.03870412088431812
		5 2 0.35689204399448565 3 0.48756473529987432 4 0.033681980763644266 
		11 0.06106393693292235 18 0.060797303009073392
		4 2 0.41662021416378925 3 0.46556217929491156 11 0.059037433806906348 
		18 0.058780172734392837
		3 1 0.36433116687331102 2 0.50076450409783435 11 0.13490432902885463
		3 1 0.38306823372840881 2 0.36596852540969849 11 0.2509632408618927
		5 1 0.25161260799954949 2 0.62499482516423266 3 0.012189714448069891 
		11 0.1073876637841312 18 0.0038151886040167782
		5 1 0.31436549879199049 2 0.61748586742141731 3 0.010144954278684041 
		11 0.029086599411444623 18 0.028917080096463512
		4 1 0.4880819045383572 2 0.4880819045383572 11 0.011960675064291224 
		18 0.011875515858994405
		3 11 0.22215080261230469 30 0.62283873558044434 31 0.15501046180725098
		4 11 0.17648383186084785 30 0.36467523732743096 31 0.32848642788143034 
		32 0.13035450293029086
		4 11 0.15767957622586734 30 0.30430186474997994 31 0.46349133096988493 
		32 0.0745272280542678
		3 11 0.21832750412333751 30 0.44552459648959941 31 0.33614789938706308
		3 11 0.21733043447870598 30 0.76008239381337594 31 0.022587171707918133
		4 11 0.19505400374370802 30 0.41149379576761141 31 0.25853689734527774 
		32 0.13491530314340283
		3 11 0.22116373644146126 30 0.67190933728150526 31 0.10692692627703343
		3 11 0.2918271509357438 30 0.40942077068748389 31 0.29875207837677237
		3 11 0.43401253870148271 30 0.49192101496340357 31 0.074066446335113736
		3 11 0.23287998037814978 30 0.45091473763672935 31 0.31620528198512088
		4 11 0.16649338229328722 30 0.31238450714543881 31 0.45846179221686828 
		32 0.062660318344405774
		2 11 0.61764671259065607 30 0.38235328740934393
		3 11 0.88800321580823627 12 0.00020386391719440518 30 0.11179292027456936
		2 11 0.95794042713394822 12 0.04205957286605181
		3 2 0.20247547856468093 3 0.036237050792796002 11 0.76128747064252311
		3 2 0.16534124343657386 3 0.0011095536193627986 11 0.83354920294406332
		4 2 0.31579703263525877 3 0.15484623694796465 11 0.52840805339754726 
		18 0.00094867701922933122
		3 14 0.089891343639110444 15 0.79359590415957637 16 0.11651275220131313
		3 14 0.10327844528146746 15 0.70559182063383796 16 0.19112973408469455
		3 14 0.084926948441591613 15 0.70702219175365488 16 0.20805085980475352
		2 15 0.12447112888276696 16 0.87552887111723299
		2 15 0.14305415911898006 16 0.85694584088101999
		2 15 0.10508964486019411 16 0.89491035513980588
		2 15 0.04760209222590419 16 0.95239790777409583
		2 15 0.02241881838216481 16 0.97758118161783514
		5 11 0.099295999511122723 30 0.12086864065544663 31 0.026955763636106998 
		32 0.63960543634124178 33 0.11327415985608191
		5 11 0.12252523521845722 30 0.14060656464460186 31 0.049990217201593939 
		32 0.62278949054350163 33 0.064088492391845359
		5 11 0.10492456824037026 30 0.12980266631825768 31 0.018906800812077473 
		32 0.59659549018171487 33 0.14977047444757971
		3 11 0.0017192581061388755 34 0.63574467705513182 35 0.3625360648387293
		3 11 0.015928558665940163 33 0.2529498205129761 34 0.73112162082108378
		3 11 0.021981641322647908 33 0.27608593886962624 34 0.7019324198077258
		3 11 0.0036733562173334755 34 0.73801451079484282 35 0.25831213298782368
		5 11 0.1597569561040855 30 0.1565961367399076 31 0.06558354101205556 
		32 0.60738342095340159 33 0.010679945190549713
		4 11 0.10119377420914451 30 0.029564363754831586 32 0.23641677015673182 
		33 0.63282509187929203
		4 11 0.29073976603925927 30 0.064609823685591705 32 0.28110607620757588 
		33 0.36354433406757314
		4 11 0.2920707675197492 30 0.24224490695461909 31 0.080163580770385837 
		32 0.38552074475524589
		3 11 0.016300338107758515 33 0.28012232998964293 34 0.70357733190259852
		3 11 0.0018635514521552622 34 0.67076129869330492 35 0.3273751498545398
		4 11 0.0041413156877228088 33 0.00019191366424869047 34 0.74629888574040826 
		35 0.24936788490762027
		3 11 0.040808937908200962 33 0.52861421892453753 34 0.43057684316726152
		3 11 0.007217121471731135 34 0.76727639214272048 35 0.22550648638554843
		3 11 0.078077992541834881 33 0.57218365582413255 34 0.34973835163403261
		2 34 0.0061363703770219444 35 0.99386362962297803
		2 34 0.012447395867781617 35 0.98755260413221835
		2 34 0.0060011764909398335 35 0.99399882350906021
		2 34 0.0042684850458975737 35 0.99573151495410239
		2 34 0.0004662016410997446 35 0.99953379835890022
		1 35 1
		2 11 0.65391510725021362 30 0.34608489274978638
		3 11 0.89742218241418459 12 0.00082598479983848005 30 0.10175183278597696
		3 11 0.88968680828741753 12 0.0010703891572862781 30 0.1092428025552962
		2 11 0.68569876807030339 30 0.31430123192969656
		3 11 0.57623825676232043 30 0.42264255966366204 31 0.0011191835740175292
		2 11 0.62262864776339077 30 0.37737135223660923
		2 11 0.6452622221332126 30 0.3547377778667874
		3 11 0.45469169792476971 30 0.45630012922808239 31 0.08900817284714789
		3 11 0.61083505772900348 30 0.386981811877255 31 0.0021831303937415282
		3 11 0.44846014497950132 30 0.47060347830491223 31 0.080936376715586456
		3 11 0.53011990087218486 30 0.45290583793917522 31 0.016974261188639896
		3 11 0.45045682828211375 30 0.45040696899341581 31 0.099136202724470379
		2 11 0.19792739230079384 30 0.80207260769920619
		4 11 0.41253506001241774 30 0.36962066753003003 31 0.16313052906679493 
		32 0.054713743390757297
		4 11 0.44398843412045258 30 0.36226959790849972 31 0.15288469935767759 
		32 0.040857268613370107
		3 11 0.098456113681979651 33 0.55691991010516284 34 0.34462397621285756
		3 11 0.0082340636422766796 34 0.78320898282404061 35 0.20855695353368273
		1 35 1
		1 35 1
		1 35 1
		4 11 0.30984949834756925 30 0.057148612609888516 32 0.20687526310328197 
		33 0.42612662593926021
		3 11 0.015908792008012481 33 0.26648612168891589 34 0.71760508630307163
		3 11 0.0017686325335658317 34 0.65455338094124904 35 0.34367798652518511
		2 34 0.0052408640862572483 35 0.99475913591374276
		4 11 0.17732199989663064 30 0.3319854710388197 31 0.4090203083993747 
		32 0.081672220665174933
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		5 1 0.00050322724884350979 2 0.48745228579477901 3 0.33121944642154177 
		11 0.17281705750659671 18 0.0080079830282389717
		5 1 0.00056751050726097793 2 0.4499196671794975 3 0.4499196671794975 
		11 0.049908500180279675 18 0.049684654953464379
		5 1 0.017367449776360122 2 0.45189059824965205 3 0.45189059824965194 
		11 0.039521055465593417 18 0.039330298258742576
		5 2 0.13349603663554938 3 0.4349713801767125 4 0.35181499969201163 
		11 0.039950562415481311 18 0.039767021080245199
		5 2 0.12462180806464773 3 0.41875654303000664 4 0.38019519902693033 
		11 0.044723424893902894 18 0.031703024984512385
		5 2 0.13817374433981952 3 0.50522208307911098 4 0.26540318180882033 
		11 0.061311200375317038 18 0.029889790396932122
		5 2 0.13485090535022992 3 0.45807177169674462 4 0.32458490375120119 
		11 0.048289463283788137 18 0.034202955918036071
		2 5 0.61194751823104865 6 0.38805248176895135
		2 6 0.65662409831953339 7 0.34337590168046656
		2 6 0.63219527198048064 7 0.36780472801951936
		2 5 0.51066760687030532 6 0.48933239312969468
		2 5 0.61189541887613652 6 0.38810458112386353
		2 6 0.70426515626117125 7 0.2957348437388288
		2 6 0.71514429793191847 7 0.28485570206808158;
	setAttr ".wl[651:797].w"
		2 5 0.64478621749795784 6 0.35521378250204222
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		5 2 0.001186774567583565 4 0.61176126661220398 5 0.38247793578940381 
		11 0.0029738764018937096 18 0.0016001466289149834
		5 2 0.0011419800315252404 4 0.52868418679315354 5 0.4661069107990532 
		11 0.0020437407772320795 18 0.0020231815990359066
		2 5 0.60803061723709106 6 0.39196938276290894
		2 8 0.98078085750721444 9 0.019219142492785533
		2 8 0.95191116136775811 9 0.048088838632241858
		2 7 0.88158652539293392 8 0.11841347460706608
		2 7 0.79017975301086163 8 0.20982024698913834
		5 2 0.0014469288385560437 4 0.80158752734894967 5 0.18978749341539655 
		11 0.0054835249102396103 18 0.0016945254868580904
		2 8 0.99838122846537947 9 0.001618771534620575
		2 8 0.97947096277323942 9 0.020529037226760551
		2 7 0.927944978951178 8 0.072055021048821985
		2 7 0.90921778027905342 8 0.090782219720946564
		5 2 0.0014976280509046672 4 0.78081578127864537 5 0.2119201586538304 
		11 0.0037521510974547049 18 0.0020142809191648447
		5 1 0.0014380911921707705 2 0.67645837883673299 3 0.21739895861429662 
		11 0.069029580492893067 18 0.035674990863906519
		5 1 0.0046520492884803725 2 0.45009409375278442 3 0.45009409375278442 
		11 0.068427434524280545 18 0.026732328681670234
		5 1 0.0015978935005345467 2 0.4450035553084461 3 0.4285341975249124 
		11 0.10985305573601824 18 0.015011297930088726
		3 0 0.0011455669043335941 11 0.19256880913707314 30 0.80628562395859327
		3 0 0.00069649149007602364 11 0.1836778622544743 30 0.81562564625544964
		3 0 0.2723346190253127 11 0.14418315028052625 30 0.58348223069416105
		3 0 0.30599733731154594 11 0.14720044810771274 30 0.5468022145807413
		4 2 0.40644045859198474 3 0.45256085949383101 11 0.1163207631259446 
		18 0.024677918788239474
		4 2 0.37436254748510617 3 0.4728992368501504 11 0.12948942275645858 
		18 0.023248792908284834
		4 2 0.41012729972221557 3 0.44848810289835622 11 0.11628924708696463 
		18 0.02509535029246359
		4 2 0.38439324757653587 3 0.45677861318441609 11 0.14160363863978859 
		18 0.017224500599259469
		4 2 0.36382306096472111 3 0.47884315876644495 11 0.13556239185656746 
		18 0.021771388412266446
		4 2 0.38719846211678133 3 0.45166186627641125 11 0.14393704539795407 
		18 0.017202626208853392
		5 1 0.001913458536335261 2 0.54000099719738914 3 0.11325940952567067 
		11 0.34438101864393539 18 0.00044511609666931325
		5 1 0.0031439599902312503 2 0.54114241762385018 3 0.16319148650930373 
		11 0.29142541422700324 18 0.0010967216496117361
		5 1 0.0024249293303246311 2 0.54971779966359591 3 0.14193253576583773 
		11 0.30506200144067386 18 0.00086273379956790946
		4 2 0.34320488412662503 3 0.17755576937393905 11 0.47762323371158016 
		18 0.0016161127878557458
		4 2 0.33370804382655345 3 0.21298068503965725 11 0.451085353396731 
		18 0.0022259177370584286
		4 2 0.34971171617636265 3 0.18008528605308041 11 0.46854053915342392 
		18 0.0016624586171331225
		3 2 0.28626473321212687 3 0.059406058516439944 11 0.65432920827143315
		4 2 0.31231535854937581 3 0.077158566233270484 11 0.61039313378887083 
		18 0.00013294142848290996
		4 2 0.2912413740405424 3 0.10299847149417155 11 0.60549890256649697 
		18 0.000261251898789064
		4 2 0.27374649024497866 3 0.088071858160229596 11 0.63805650624350452 
		18 0.0001251453512872693
		4 2 0.32191641528517362 3 0.073519210711405297 11 0.60443582760288128 
		18 0.00012854640053988509
		4 2 0.3008059156931982 3 0.097461051000273483 11 0.60147474069467521 
		18 0.000258292611853127
		4 2 0.26481648420376486 3 0.49574200309236743 11 0.22813563385947097 
		18 0.011305878844396752
		4 2 0.26086152928081902 3 0.48703423038280785 11 0.24105483257050755 
		18 0.01104940776586558
		4 2 0.2773639538119948 3 0.48081620358613675 11 0.23022665887535781 
		18 0.011593183726510647
		4 2 0.24464276979810229 3 0.57241840449910775 11 0.16689494625244169 
		18 0.016043879450348304
		4 2 0.23810763896666079 3 0.58177081996400282 11 0.16255862701644461 
		18 0.017562914052891822
		4 2 0.25764331605498964 3 0.55648691291342545 11 0.16933305813868429 
		18 0.016536712892900599
		4 2 0.25894496905950704 3 0.57051416589191495 11 0.15160863722747195 
		18 0.018932227821106113
		4 2 0.25781605512032096 3 0.58131237786938028 11 0.13876018393353245 
		18 0.02211138307676631
		4 2 0.26446497144775499 3 0.56747137866014941 11 0.14914482665272624 
		18 0.018918823239369432
		4 2 0.27214508868551224 3 0.53231500835649193 11 0.18150238439204566 
		18 0.01403751856595019
		4 2 0.36343245579747957 3 0.40062027241486586 11 0.22581228280409757 
		18 0.010134988983556996
		5 1 0.00016324367902525609 2 0.47694099812818752 3 0.33011571170447779 
		11 0.18490688837517766 18 0.0078731581131317747
		5 1 0.0043301539993387131 2 0.53874623236104657 3 0.18816064109771802 
		11 0.26720899075968502 18 0.0015539817822116388
		4 2 0.47530328873318961 3 0.23450630728523203 11 0.28622847582229616 
		18 0.0039619281592821465
		4 2 0.47890597705392979 3 0.13266284010284732 11 0.38754586998470592 
		18 0.00088531285851699997
		4 2 0.36593417660537403 3 0.32628782109826865 11 0.30111615489783372 
		18 0.0066618473985236145
		4 2 0.27901982299635797 3 0.51628403076668361 11 0.19045060216759119 
		18 0.014245544069367339
		4 2 0.43315859953293256 3 0.21671418509404944 11 0.34684346377523034 
		18 0.0032837515977876815
		5 1 0.00041390917285497253 2 0.52109124160216724 3 0.13940391344024919 
		11 0.33819786048622774 18 0.00089307529850087583
		4 2 0.46882101182982922 3 0.11656790661410957 11 0.41401815211606818 
		18 0.00059292943999301833
		4 2 0.38329709996286571 3 0.095239218127667113 11 0.5211096599049807 
		18 0.00035402200448646942
		4 2 0.35865151991250122 3 0.076130166881356931 11 0.56505745821191533 
		18 0.00016085499422651911
		4 2 0.472830065078651 3 0.1211138397735927 11 0.40537713962777738 
		18 0.00067895551997892295
		4 2 0.41195462067233846 3 0.099273974682776836 11 0.48837110930029909 
		18 0.00040029534458563504
		4 2 0.35541433205577544 3 0.10923448983751168 11 0.53485191033379831 
		18 0.00049926777291467829
		3 2 0.25420029084788931 3 0.042365243650029888 11 0.70343446550208077
		4 2 0.38557618638465263 3 0.090424522707765867 11 0.5236841601872626 
		18 0.00031513072031891926
		4 2 0.50972959871536538 3 0.16443136445203366 11 0.3241440027305757 
		18 0.0016950341020253222
		3 2 0.30712464710704707 3 0.049463493931369992 11 0.64341185896158293
		3 2 0.33746605808656283 3 0.058602157333620973 11 0.60393178457981622
		3 2 0.37081530062618595 3 0.059017244712473556 11 0.57016745466134056
		3 2 0.31340684377638617 3 0.027437393513861156 11 0.65915576270975262
		2 11 0.3018309473991394 30 0.6981690526008606
		2 11 0.30754677377780598 30 0.69245322622219407
		3 1 0.19553536143417369 11 0.16698123268643264 30 0.63748340587939367
		5 0 0.0020254803840308267 1 0.79942220523899632 11 0.033539891274217415 
		24 0.055506322584586522 30 0.10950610051816898
		3 1 0.82531592010787347 2 0.13081709662528931 11 0.043866983266837203
		3 1 0.0054726254681489546 11 0.13527089017227847 30 0.85925648435957258
		3 1 0.14635663352271119 11 0.14900605982505918 30 0.70463730665222968
		5 1 0.86619843737360358 2 0.077615585072314364 11 0.038576634559257299 
		24 0.0088046831389440167 30 0.0088046598558807997
		5 0 0.0049856526968223066 1 0.7394975771923431 11 0.0252014986171816 
		24 0.062103414688517405 30 0.16821185680513565
		2 11 0.18465686945062099 30 0.81534313054937901
		3 1 0.00020028562869748814 11 0.15011353356493484 30 0.84968618080636771
		3 0 0.0005077680988212908 11 0.17108195066123102 30 0.82841028123994764
		3 0 0.00045165648048926674 11 0.17011159112347857 30 0.82943675239603221
		2 11 0.29938274621963501 30 0.70061725378036499
		2 11 0.14009812891775753 30 0.85990187108224247
		3 1 0.00021786742976132205 11 0.11557408580629526 30 0.88420804676394338
		3 1 0.00016646274045758092 11 0.11582106082965722 30 0.88401247642988523
		4 1 0.49408317785628236 2 0.49408317785628236 11 0.0059431769433906413 
		18 0.0058904673440446304
		3 1 0.53069692652412903 2 0.40968918647732888 11 0.059613886998542073
		3 11 0.40288236158385049 30 0.44746496960311949 31 0.14965266881303005
		2 11 0.19963197710323471 30 0.80036802289676534
		4 11 0.11120601163475155 30 0.033208375927369062 32 0.09906091024408957 
		33 0.75652470219378987
		4 11 0.11658438686005577 30 0.035893318515419464 32 0.087014864322296451 
		33 0.76050743030222834
		4 11 0.1131311380953578 30 0.035850374288095191 32 0.071127746799837938 
		33 0.77989074081670906
		5 11 0.071147002611062507 30 0.027924539651370327 32 0.049468320093435797 
		33 0.8421169558638566 34 0.0093431817802748732
		5 11 0.061618285112593839 30 0.020529362015315203 32 0.11288545596093282 
		33 0.77782513884338944 34 0.027141758067768758
		5 11 0.058930247473248772 30 0.019553312849688222 32 0.079036302128468613 
		33 0.80380337681804437 34 0.038676760730550055
		5 11 0.065485932420834392 30 0.021760689256792434 32 0.13859923287182474 
		33 0.75682849255821483 34 0.017325652892333662
		5 11 0.31749050691709946 30 0.18968118059508887 31 0.041292427516798749 
		32 0.45129899582109262 33 0.00023688914992039132
		4 11 0.42080436567678786 30 0.24468746111611706 31 0.037590247907907631 
		32 0.29691792529918748
		4 11 0.39292559466800386 30 0.24652770437144902 31 0.039340455524702993 
		32 0.32120624543584414
		5 11 0.13035686119859127 30 0.14542671821375611 31 0.055650423382961403 
		32 0.61975871593119625 33 0.048807281273494943
		4 0 0.11905347777630161 1 0.062417348146761732 11 0.058264822853073904 
		30 0.76026435122386271
		4 0 0.14440007201135749 1 0.011999801784737554 11 0.086504190799192332 
		30 0.75709593540471265
		3 0 0.24277245231784739 11 0.13513438806338274 30 0.62209315961876988
		3 0 0.23679611871254092 11 0.13493130699004807 30 0.62827257429741101
		4 0 0.089857737294698481 1 0.0023724235233042613 11 0.090310717669150803 
		30 0.8174591215128465
		4 0 0.11036913876818344 1 0.0018906558570019091 11 0.090188099856508969 
		30 0.79755210551830569
		3 1 0.00025313104120607563 11 0.11663474603639945 30 0.88311212292239449
		4 0 0.088529845821384179 1 0.0024323192596790461 11 0.091279877648811347 
		30 0.81775795727012546
		3 0 0.24492019019664185 11 0.28676764458869297 30 0.46831216521466518
		3 0 0.2306639552116394 11 0.30266463756561279 30 0.4666714072227478
		4 0 0.12234442521555167 1 0.48131939141222135 11 0.016718646293449171 
		30 0.37961753707877777
		4 0 0.026140741261163818 1 0.39090465193764679 11 0.022046980461255743 
		30 0.56090762633993363
		3 0 0.22501372136196079 11 0.29197854238716575 30 0.48300773625087345
		1 0 1
		1 0 1
		4 0 0.032763073176969602 1 0.71415564787900854 24 0.12644090108410361 
		30 0.12664037785991827
		6 1 0.8626834148602367 2 0.13045006080768229 11 0.0014311027646494849 
		18 0.0014071988590396804 24 0.0020141195032678566 30 0.0020141032051239371
		7 0 0.00011805287530088924 1 0.8757352576055154 2 0.064038428193066904 
		11 0.0010934560988117379 18 0.0010732469802273771 24 0.028970810788507634 
		30 0.028970747458570076
		4 0 0.028621976770227327 1 0.7085129114610158 24 0.13117209743343314 
		30 0.13169301433532371
		4 0 0.935176279337392 1 0.064195258100023828 24 0.00028869508660137256 
		30 0.00033976747598286411
		2 0 0.99361579037134684 1 0.0063842096286531877
		1 0 1
		1 0 1
		2 0 0.99632273619886136 1 0.0036772638011386425
		2 0 0.99729442208787922 1 0.0027055779121207767
		2 0 0.99699596675841373 1 0.0030040332415862594
		4 1 0.58624430257810067 2 0.40507299915173645 11 0.0043639746863834462 
		18 0.0043187235837794415
		2 15 0.0049023756269085863 16 0.99509762437309146
		2 15 0.036921616781210961 16 0.96307838321878902
		2 6 0.57325196266174316 7 0.42674803733825684
		2 8 0.80300055737792619 9 0.19699944262207386
		2 7 0.74980121850967407 8 0.25019878149032593
		5 2 0.14658563837680688 3 0.48500837249653284 4 0.28118451487026874 
		11 0.043711433584232247 18 0.043510040672159321
		5 2 0.0017146207767916835 4 0.79432984514158589 5 0.19790210409889333 
		11 0.003042047936282012 18 0.003011382046447146
		1 0 1
		1 0 1
		3 0 0.3965555727481842 1 0.52075433731079102 24 0.040815193206071854;
	setAttr ".wl[797:799].w"
		1 30 0.041874896734952927
		4 0 0.19398937496495433 1 0.61786672254801045 24 0.093060035693349044 
		30 0.095083866793686161
		1 0 1;
	setAttr -s 36 ".pm";
	setAttr ".pm[0]" -type "matrix" -8.2759300000000002e-06 -4.6012099999999999e-07 0.01 0
		 -0.00056999700000000004 0.0099837399999999996 -1.2352899999999999e-08 0 -0.0099837399999999996 -0.00056999700000000004 -8.2887099999999998e-06 0
		 2.0624609999999999 0.057665099999999997 0.0017095299999999999 1;
	setAttr ".pm[1]" -type "matrix" -8.0158700000000002e-06 -0.01 5.0144100000000001e-08 0
		 -5.3301800000000005e-06 5.44167e-08 0.01 0 -0.0099999900000000003 8.0158500000000005e-06 -5.3302199999999999e-06 0
		 0.76321499999999998 -0.00168841 0.0145916 1;
	setAttr ".pm[2]" -type "matrix" -5.2388599999999997e-06 -0.01 -1.2434599999999999e-07 0
		 -0.00021721300000000001 -1.05212e-08 0.0099976400000000003 0 -0.0099976400000000003 5.2403199999999993e-06 -0.00021721300000000001 0
		 -0.42017199999999999 -0.00180518 0.0056900600000000003 1;
	setAttr ".pm[3]" -type "matrix" 1.4953099999999999e-05 -0.0099999900000000003 -6.5321899999999994e-07 0
		 -0.00036727199999999998 -1.2019599999999998e-06 0.0099932500000000004 0 -0.0099932400000000005 -1.4919000000000001e-05 -0.00036727299999999999 0
		 -1.4422900000000001 -0.0047165000000000002 -0.015963499999999999 1;
	setAttr ".pm[4]" -type "matrix" -4.6192099999999996e-06 -0.01 -4.5609499999999998e-07 0
		 6.8924900000000001e-05 -4.8792199999999999e-07 0.0099997599999999999 0 -0.0099997599999999999 4.6159499999999994e-06 6.8925100000000002e-05 0
		 -1.9637290000000001 -0.00087604000000000002 0.069749500000000006 1;
	setAttr ".pm[5]" -type "matrix" -7.1698500000000005e-06 -0.01 -5.3160899999999995e-07 0
		 -1.8337499999999998e-05 -5.1846099999999997e-07 0.0099999800000000003 0 -0.0099999800000000003 7.1708100000000007e-06 -1.8337100000000001e-05 0
		 -2.6256900000000001 -0.00020533300000000001 0.046839100000000002 1;
	setAttr ".pm[6]" -type "matrix" 9.5659100000000005e-07 -0.01 -5.9849299999999998e-07 0
		 -1.8342099999999998e-05 -6.0024700000000001e-07 0.0099999800000000003 0 -0.0099999800000000003 -9.5549199999999999e-07 -1.8342099999999998e-05 0
		 -3.1643180000000002 -0.0027771699999999998 0.0468376 1;
	setAttr ".pm[7]" -type "matrix" 1.07559e-05 -0.0099999900000000003 -6.8542800000000007e-07 0
		 -1.83411e-05 -7.0515499999999996e-07 0.0099999800000000003 0 -0.0099999800000000003 -1.07546e-05 -1.8341799999999998e-05 0
		 -3.6683509999999999 -0.0063723 0.0468376 1;
	setAttr ".pm[8]" -type "matrix" -1.4643399999999999e-05 -0.0099999900000000003 -7.4462000000000006e-07 0
		 -1.8337799999999999e-05 -7.1776699999999997e-07 0.0099999800000000003 0 -0.0099999700000000004 1.4644800000000001e-05 -1.83367e-05 0
		 -4.1855529999999996 0.0042584299999999997 0.046839699999999998 1;
	setAttr ".pm[9]" -type "matrix" 1.1662999999999998e-05 -0.0099999900000000003 -8.5955499999999992e-07 0
		 -1.8341799999999998e-05 -8.8094600000000001e-07 0.0099999800000000003 0 -0.0099999800000000003 -1.16614e-05 -1.83428e-05 0
		 -4.692177 -0.0080854800000000008 0.046836999999999997 1;
	setAttr ".pm[10]" -type "matrix" 0.0093590600000000006 3.8848499999999999e-09 0.00352251 0
		 -7.2021900000000001e-10 0.01 -9.1150600000000002e-09 0 -0.00352251 8.2771399999999986e-09 0.0093590600000000006 0
		 0.26982400000000001 0.0141843 -0.71384800000000004 1;
	setAttr ".pm[11]" -type "matrix" 0.0098827399999999992 0.00019162899999999999 0.00151483 0
		 -0.00020082499999999999 0.0099978800000000007 4.5430900000000006e-05 0 -0.00151363 -7.5319699999999996e-05 0.0098844999999999992 0
		 -0.60262199999999999 0.0048206500000000001 -0.60240899999999997 1;
	setAttr ".pm[12]" -type "matrix" 0.00983792 0.000216181 0.00178006 0 -0.000248578 0.0099956300000000001 0.000159896 0
		 -0.0017758299999999999 -0.00020155300000000001 0.0098389900000000006 0 -1.4874080000000001 0.0055835700000000004 -0.64220600000000005 1;
	setAttr ".pm[13]" -type "matrix" 0.00977716 2.3871000000000002e-05 0.00209917 0 -7.0914799999999994e-05 0.0099974 0.00021660900000000001 0
		 -0.0020980999999999999 -0.00022666799999999999 0.0097748000000000002 0 -2.3201309999999999 0.052654600000000003 -0.71770599999999996 1;
	setAttr ".pm[14]" -type "matrix" 0.0096584600000000007 -0.00011487199999999999 0.0025886199999999998 0
		 6.49902e-05 0.0099977599999999996 0.000201172 0 -0.0025903499999999999 -0.00017747800000000001 0.0096570500000000004 0
		 -2.938024 0.094775200000000004 -0.86680699999999999 1;
	setAttr ".pm[15]" -type "matrix" 0.0095633300000000001 1.28457e-05 0.0029227799999999998 0
		 -9.1024299999999995e-05 0.0099963599999999993 0.00025389800000000001 0 -0.0029213899999999998 -0.00026941500000000001 0.0095599699999999992 0
		 -3.6338550000000001 0.045658499999999998 -0.99342600000000003 1;
	setAttr ".pm[16]" -type "matrix" 0.0093318800000000007 -0.000105176 0.0035923399999999999 0
		 0.00013235300000000001 0.0099989899999999993 -5.1067899999999999e-05 0 -0.00359144 9.5201700000000007e-05 0.0093323399999999997 0
		 -3.9986199999999998 0.103952 -1.2814110000000001 1;
	setAttr ".pm[17]" -type "matrix" -0.0093562000000000003 -0.0035300800000000001 -2.1381399999999998e-09 0
		 -4.9157299999999999e-09 6.9718400000000006e-09 0.01 0 -0.0035300800000000001 0.0093562000000000003 -8.25829e-09 0
		 0.26841399999999999 -0.71445899999999996 0.0141856 1;
	setAttr ".pm[18]" -type "matrix" -0.0098827700000000008 0.00019157000000000001 -0.0015146599999999999 0
		 -0.00020076800000000001 -0.0099978800000000007 4.5457599999999997e-05 0 -0.00151347 7.5334300000000001e-05 0.0098845200000000008 0
		 -0.60329299999999997 -0.0048128099999999998 -0.60249900000000001 1;
	setAttr ".pm[19]" -type "matrix" -0.0098378900000000002 0.000216202 -0.0017802199999999999 0
		 -0.00024860699999999997 -0.0099956300000000001 0.000159918 0 -0.0017759799999999999 0.000201583 0.0098389700000000007 0
		 -1.488057 -0.0055615899999999999 -0.64236099999999996 1;
	setAttr ".pm[20]" -type "matrix" -0.0097771400000000001 2.38794e-05 -0.0020992599999999999 0
		 -7.0931600000000004e-05 -0.0099974 0.00021663699999999999 0 -0.0020981900000000002 0.00022669899999999999 0.0097747700000000003 0
		 -2.3207800000000001 -0.052648500000000001 -0.71786499999999998 1;
	setAttr ".pm[21]" -type "matrix" -0.0096584500000000007 -0.000114919 -0.0025886699999999999 0
		 6.5023799999999992e-05 -0.0099977699999999996 0.00020122400000000001 0 -0.0025904000000000001 0.00017751900000000001 0.0096570300000000005 0
		 -2.9386679999999998 -0.094795299999999999 -0.86699199999999998 1;
	setAttr ".pm[22]" -type "matrix" -0.0095633699999999999 1.2883500000000001e-05 -0.0029226299999999998 0
		 -9.1068899999999998e-05 -0.0099963599999999993 0.000253928 0 -0.0029212399999999999 0.00026945700000000002 0.0095600100000000007 0
		 -3.6345149999999999 -0.045638199999999997 -0.99356199999999995 1;
	setAttr ".pm[23]" -type "matrix" -0.0093320199999999999 -0.00010518699999999999 -0.0035919900000000002 0
		 0.00013234799999999999 -0.0099989899999999993 -5.1032999999999997e-05 0 -0.0035910899999999999 -9.5163399999999998e-05 0.0093324700000000007 0
		 -3.9992969999999999 -0.10396 -1.281498 1;
	setAttr ".pm[24]" -type "matrix" -0.0056456099999999997 0.0082536299999999996 -6.8917499999999999e-05 0
		 -0.000122055 5.9635199999999997e-09 0.0099992499999999995 0 0.0082530099999999999 0.0056460199999999999 0.00010073600000000001 0
		 -0.63064500000000001 -0.43001099999999998 0.0064883299999999996 1;
	setAttr ".pm[25]" -type "matrix" 0.0045465100000000001 0.0087570500000000006 -0.0016258100000000001 0
		 -0.00171999 0.0026542499999999999 0.0094866499999999992 0 0.00873904 -0.0040334799999999999 0.0027129599999999999 0
		 -1.4576819999999999 1.7163280000000001 -0.70779499999999995 1;
	setAttr ".pm[26]" -type "matrix" 0.0070580199999999999 0.0066875299999999997 -0.00233694 0
		 -0.00023529200000000001 0.00351834 0.0093576700000000002 0 0.0070801800000000002 -0.0065496699999999996 0.0026405999999999999 0
		 -1.0866420000000001 2.145537 -0.75160499999999997 1;
	setAttr ".pm[27]" -type "matrix" 0.0082575900000000004 0.0051142100000000001 -0.0023784399999999999 0
		 -0.00085188699999999996 0.0052994399999999999 0.0084374299999999992 0 0.0055755099999999997 -0.0067646700000000004 0.0048117400000000001 0
		 -0.831623 2.1040130000000001 -1.3084229999999999 1;
	setAttr ".pm[28]" -type "matrix" 0.0087955199999999994 0.0045023700000000003 -0.0015386099999999999 0
		 -0.0018639699999999999 0.0062357899999999997 0.0075921299999999999 0 0.0043777 -0.0063908899999999998 0.0063239400000000001 0
		 -0.71388099999999999 1.9828920000000001 -1.6718219999999999 1;
	setAttr ".pm[29]" -type "matrix" 0.0080813800000000009 0.0057710900000000004 -0.0011771900000000001 0
		 -0.0030113900000000001 0.0057661300000000004 0.0075949499999999996 0 0.0050618900000000003 -0.0057832700000000001 0.0063977299999999999 0
		 -1.1548970000000001 1.8527089999999999 -1.679875 1;
	setAttr ".pm[30]" -type "matrix" 0.0056515699999999999 0.0082495499999999996 6.89553e-05 0
		 -0.00012199199999999999 -6.2678100000000001e-09 0.0099992599999999994 0 0.0082489299999999998 -0.0056519999999999999 0.000100635 0
		 -0.62911600000000001 0.43224499999999999 0.0065109399999999998 1;
	setAttr ".pm[31]" -type "matrix" -0.0045464499999999996 0.0087570900000000004 0.0016258100000000001 0
		 -0.0017200099999999999 -0.00265424 0.0094866499999999992 0 0.0087390699999999998 0.0040334200000000002 0.0027129699999999999 0
		 -1.4580010000000001 -1.7157309999999999 -0.70768900000000001 1;
	setAttr ".pm[32]" -type "matrix" -0.0070579900000000001 0.0066875600000000004 0.00233695 0
		 -0.00023529399999999999 -0.00351834 0.0093576700000000002 0 0.0070802199999999999 0.0065496399999999998 0.00264059 0
		 -1.087126 -2.1450849999999999 -0.751448 1;
	setAttr ".pm[33]" -type "matrix" -0.0082575700000000005 0.0051142499999999999 0.0023784600000000002 0
		 -0.00085189399999999996 -0.0052994399999999999 0.0084374299999999992 0 0.0055755600000000002 0.0067646399999999997 0.0048117300000000002 0
		 -0.83218999999999999 -2.1036679999999999 -1.3082640000000001 1;
	setAttr ".pm[34]" -type "matrix" -0.0087955499999999992 0.0045023399999999996 0.0015386 0
		 -0.0018639399999999999 -0.0062357999999999997 0.0075921299999999999 0 0.0043776800000000001 0.0063909099999999996 0.0063239400000000001 0
		 -0.71446299999999996 -1.9825969999999999 -1.671721 1;
	setAttr ".pm[35]" -type "matrix" -0.0080813800000000009 0.0057711000000000004 0.0011771900000000001 0
		 -0.0030113900000000001 -0.0057661199999999996 0.0075949600000000004 0 0.0050619100000000002 0.00578328 0.00639772 0
		 -1.1554420000000001 -1.8523259999999999 -1.6797949999999999 1;
	setAttr ".gm" -type "matrix" 100 0 0 0 0 0 -100 0 0 100 0 0 0 0 0 1;
	setAttr -s 36 ".ma";
	setAttr -s 36 ".dpf[0:35]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 36 ".lw";
	setAttr -s 36 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 36 ".ifcl";
	setAttr -s 36 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "65423449-48CC-C3A0-E7FD-6BA1F3B8EDE8";
	setAttr -s 37 ".wm";
	setAttr ".wm[0]" -type "matrix" 100 0 0 0 0 100 -7.5497901264043406e-06 0 0 7.5497901264043406e-06 100 0
		 0 0 0 1;
	setAttr -s 37 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 100 100.00000000000028 100.00000000000028 -7.5497901264043255e-08
		 -0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000143438859 1.0000000289314532 0.99999998588617278 -1.5853369886929578
		 1.5137597621858467 -1.5853145820371495 0 0 0.05998814181556638 2.0623951003541743 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.01 0.0099999999999999707 0.0099999999999999707 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000000913071527 0.99999991815278055 1.0000001131727967 -1.5707975075971656
		 -2.7283929492606262e-05 0.056497603533655308 0 1.3012872830455331 -1.1440930793721327e-07
		 2.4141820375808178e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998565611437
		 0.99999997106854766 1.0000000141138274 no;
	setAttr ".xm[3]" -type "matrix" "xform" 0.99999993305009816 0.99999999484797786 0.99999999786407812 -8.9073861318530306e-07
		 0.021190016227440753 -0.00027757550577588543 0 1.183172291520229 1.1950908597674684e-07
		 6.6098305547684921e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.9999999086928556
		 1.0000000818472261 0.99999988682721608 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0000000119599235 1.0000000887248304 0.9999999318762588 -7.5354374715284054e-05
		 0.015012433402425137 -0.002019176018159579 0 1.0222021300906099 1.1905391573757348e-07
		 -2.9384531070528186e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000669499063
		 1.0000000051520221 1.0000000021359219 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000000273090965 1.0000000605110162 1.0000000197164234 -4.6511652809524253e-07
		 -0.043628133004100712 0.0019548176756981543 0 0.5226072555166883 5.3630963814735311e-07
		 -3.8850004734081178e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998804007662
		 0.99999991127517751 1.0000000681237458 no;
	setAttr ".xm[6]" -type "matrix" "xform" 0.9999999530688054 0.99999991237994756 0.99999998184981609 -2.7112705444010617e-06
		 0.0087262859432330232 0.00025549014590490392 0 0.66145240801194216 -5.9956435356106098e-08
		 3.3639746030433848e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999997269090424
		 0.99999993948898747 0.99999998028357706 no;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999992719074837 0.99999992663422388 0.99999994159072148 -4.8950929973597678e-06
		 4.9947335367541904e-07 -0.00081264430081333199 0 0.53862793697426303 5.9222851109047223e-08
		 -1.7699299844492478e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000469311967
		 1.0000000876200601 1.0000000181501842 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1.0000000372417652 1.0000000974842231 1.0000000599939918 -7.1785027392121248e-06
		 -4.2560442632928608e-08 -0.00097992849452574666 0 0.50403753604383317 7.5617937475916386e-10
		 9.008419449285654e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000728092568
		 1.0000000733657815 1.0000000584092819 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1.0000000162615508 1.0000000175766348 0.99999999976625431 -9.870341087567013e-06
		 -4.9878785082485208e-07 0.0025399301865379259 0 0.51719901869153118 1.2415972503593276e-10
		 6.449350564013967e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999996275823611
		 0.99999990251578641 0.99999994000601178 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000259468682 1.0000000258067132 1.0000000017260653 -7.5001408951584284e-06
		 6.040189363255635e-07 -0.0026306385553927676 0 0.50662942583810544 -6.0686462732655044e-08
		 -1.8786241589435759e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998373844945
		 0.99999998242336552 1.0000000002337457 no;
	setAttr ".xm[11]" -type "matrix" "xform" 0.99999993109482788 0.99999997111636207
		 1.0000000107036273 -2.3885096916943872e-06 -1.2116502633959978 0.057033707218872381 0 1.3013713164169309
		 4.5340145610542337e-06 3.3527555943894428e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999998565611437 0.99999997106854766 1.0000000141138274 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1.0000000822901052 1.0000000426358877 0.99999995598907754 -0.00030659774616443697
		 -0.20795403830002351 -0.020525911098876651 0 0.73489720425050908 7.2940937474036405e-09
		 2.5118093927023466e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000689051769
		 1.0000000288836388 0.99999998929637279 no;
	setAttr ".xm[13]" -type "matrix" "xform" 0.99999996758293042 0.99999994026494465
		 0.99999999886242652 -0.012111163758386712 0.026620399824838194 -0.0046643721787009143 0 0.90134710226817072
		 5.868695681591346e-08 -2.8849878208614399e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.9999999177099016 0.99999995736411407 1.0000000440109245 no;
	setAttr ".xm[14]" -type "matrix" "xform" 0.99999999239191995 0.99999997588143119
		 0.99999980932967292 -0.005894700709626062 0.032511837612971377 0.01828749927913265 0 0.85533025723149181
		 6.7441421346819963e-08 -8.5446038688985482e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000000324170706 1.0000000597350589 1.0000000011375736 no;
	setAttr ".xm[15]" -type "matrix" "xform" 1.0000000714665844 1.0000000781046734 1.0000001217021719 0.0018990020207656907
		 0.050334556609999276 0.014693535676113005 0 0.65886969660021499 -1.7284803657188763e-06
		 1.5916182194430917e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000076080802
		 1.0000000241185694 1.0000001906703635 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1.0000000859534273 0.99999983064516529 1.0000000427123166 -0.0055785101774646221
		 0.034751837740765158 -0.014910722753930737 0 0.72715694624806471 2.4976722876046686e-07
		 2.1076100353845106e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999992853342068
		 0.99999992189533271 0.99999987829784287 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1.0000000176784685 1.0000000317915154 0.999999914977723 0.031497424549073422
		 0.07031197816712742 0.024167185740038635 0 0.4469299270115199 1.9014830762512092e-06
		 -1.7166325561035478e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999991404658017
		 1.0000001693548635 0.9999999572876852 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000755554295 1.0000001309942896 1.0000000903255839 -1.5708003567934203
		 1.2091829964591378 0.057025966466617221 0 1.3012962176474203 2.5016660024773651e-07
		 5.1970819593596257e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998565611437
		 0.99999997106854766 1.0000000141138274 no;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999989229490394 0.99999988034516896
		 0.99999980981681469 -1.5662502810403303 0.020077872402925367 0.20882258615027818 0 0.73353448233641605
		 2.4023767442038491e-07 1.2402962816342178e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999992444457619 0.99999986900572757 0.9999999096744242 no;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99999992072110855 1.0000000294879694 1.0000000036650296 0.012111385142401225
		 0.026652803018669905 0.0046727162256370832 0 0.90134830260484489 -6.5817564922233257e-07
		 -2.1981975930618347e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001077051077
		 1.0000001196548454 1.0000001901832214 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1.0000001724711405 1.0000000614982396 1.0000000709397132 0.0058952771130290705
		 0.032505062145630051 -0.018288638738474142 0 0.85533041817970368 -4.4736559482935756e-09
		 -1.3802188238987156e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000792788977
		 0.99999997051203149 0.99999999633497039 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000392169826 0.99999977473022772 1.0000000320596227 -0.0018967573517400214
		 0.05033066142898146 -0.014698628563180705 0 0.65887164199887494 1.4886294699284486e-06
		 4.8452743883764526e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999982752888927
		 0.99999993850176416 0.99999992906029178 no;
	setAttr ".xm[23]" -type "matrix" "xform" 0.99999994675585469 1.0000000007044851 0.99999992920739111 0.0055763638788335632
		 0.034731356322327142 0.014918777285378257 0 0.72715756428630884 -7.3792402563443993e-08
		 3.5899131886063529e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.999999960783019
		 1.000000225269823 0.99999996794037826 no;
	setAttr ".xm[24]" -type "matrix" "xform" 0.99999999870564715 1.0000000100040896 1.0000001367791214 -0.03149660811424923
		 0.07029018575719341 -0.024170787030918375 0 0.4469303909809561 -2.013818235627185e-06
		 -7.528398121015023e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000532441482
		 0.99999999929551486 1.000000070792614 no;
	setAttr ".xm[25]" -type "matrix" "xform" 0.99999995339093195 1.0000001991745251 1.0000001335459696 1.5791623517461157
		 0.60072945262383448 -3.0697647176043175 0 1.3013186503358136 1.5616892694927942e-06
		 3.3692647664245248e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998565611437
		 0.99999997106854766 1.0000000141138274 no;
	setAttr ".xm[26]" -type "matrix" "xform" 0.99999996232108068 1.00000003998774 0.99999984929949781 0.2618965883575749
		 0.16709241616148876 1.0778229432306008 0 1.6902690538108187 1.0743929030332389e-06
		 2.0020419417166729e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000466090702
		 0.99999980082551454 0.99999986645404826 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1.0000000269837215 0.99999986387026629 1.000000017020827 0.047446013369436421
		 -0.055039320682897595 0.33285899905259314 0 0.24592239481159184 -3.6263212210840834e-07
		 1.3466824710928194e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000376789207
		 0.99999996001226155 1.0000001507005249 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1.0000001012554003 1.0000000736383097 0.99999996191513252 0.20067931454344792
		 0.12579624192739691 0.15899938577065892 0 0.20262207863546289 -5.4328012222271127e-07
		 -2.135181232931771e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.9999999730162793
		 1.0000001361297521 0.99999998297917336 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1.0000001771563853 1.000000318642976 1.0000000908283568 0.11316228690010513
		 0.15646112439888965 0.055612047811538445 0 0.21605789609894721 1.2116530756500765e-07
		 -5.9794020179637641e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999989874460993
		 0.99999992636169577 1.000000038084869 no;
	setAttr ".xm[30]" -type "matrix" "xform" 0.99999985864868512 0.99999980232972963
		 0.99999989541050627 -0.016762376736994739 0.032864266391638322 -0.14805020250201489 0 0.21425957154616082
		 -3.1621233298473328e-07 -6.3045572096243063e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999982284364608 0.99999968135712558 0.99999990917165138 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1.0000000361906416 0.99999986388848594 0.99999999659975169 1.5624544566230774
		 -0.59979527223695106 -3.0697834558139698 0 1.3013186503358136 1.5616892694927942e-06
		 3.3692647664245248e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998565611437
		 0.99999997106854766 1.0000000141138274 no;
	setAttr ".xm[32]" -type "matrix" "xform" 0.99999983699889994 1.0000000729239726 0.99999987161551052 -0.26189761641155074
		 0.16710504244717064 -1.0785400087860202 0 1.6911085452534003 -7.9638320732433598e-07
		 5.554710642147187e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999996380935974
		 1.0000001361115325 1.0000000034002483 no;
	setAttr ".xm[33]" -type "matrix" "xform" 0.99999996128764168 0.99999997060342871
		 1.0000000745851134 -0.047445788537471292 -0.055040686368509915 -0.33286105348628992 0 0.24592152576489235
		 -1.9256339167661451e-07 -1.5932850405686594e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000001630011266 0.99999992707603269 1.0000001283845059 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1.0000001071917248 1.0000000283106791 0.99999996728096896 -0.20067876785972255
		 0.12579647992916743 -0.15899858466720601 0 0.20262237708975595 -4.6775837425627742e-07
		 1.8574600413323594e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000387123598
		 1.0000000293965721 0.99999992541489213 no;
	setAttr ".xm[35]" -type "matrix" "xform" 0.99999993139437149 1.0000002196960938 0.99999997696137399 -0.11316255744553036
		 0.1564630456703418 -0.055620889553984885 0 0.21605885636284017 5.0849523924867412e-07
		 3.2772798030933359e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999989280828661
		 0.99999997168932164 1.0000000327190322 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1.0000001250962012 0.99999989924393629 0.9999999936314784 0.016763432384890909
		 0.03286311419687276 0.14805465451428371 0 0.21426000433240677 4.9617174546767728e-07
		 5.7919327778321872e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000686056332
		 0.99999978030395453 1.0000000230386266 no;
	setAttr -s 37 ".m";
	setAttr -s 37 ".p";
	setAttr -s 37 ".g[0:36]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "493A1DE6-4220-A95E-3DFA-C39DAA2E54CF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1148\n            -height 684\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1148\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1148\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "213A107E-4279-94F8-CEF7-2E9FFE1F2F08";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
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
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
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
connectAttr "Armature_scaleX.o" "Armature.sx";
connectAttr "Armature_scaleY.o" "Armature.sy";
connectAttr "Armature_scaleZ.o" "Armature.sz";
connectAttr "Armature_translateX.o" "Armature.tx";
connectAttr "Armature_translateY.o" "Armature.ty";
connectAttr "Armature_translateZ.o" "Armature.tz";
connectAttr "Armature_rotateX.o" "Armature.rx";
connectAttr "Armature_rotateY.o" "Armature.ry";
connectAttr "Armature_rotateZ.o" "Armature.rz";
connectAttr "Armature.s" "Bone001.is";
connectAttr "Bone001_scaleX.o" "Bone001.sx";
connectAttr "Bone001_scaleY.o" "Bone001.sy";
connectAttr "Bone001_scaleZ.o" "Bone001.sz";
connectAttr "Bone001_translateX.o" "Bone001.tx";
connectAttr "Bone001_translateY.o" "Bone001.ty";
connectAttr "Bone001_translateZ.o" "Bone001.tz";
connectAttr "Bone001_rotateX.o" "Bone001.rx";
connectAttr "Bone001_rotateY.o" "Bone001.ry";
connectAttr "Bone001_rotateZ.o" "Bone001.rz";
connectAttr "Bone001.s" "Bone002.is";
connectAttr "Bone002_scaleX.o" "Bone002.sx";
connectAttr "Bone002_scaleY.o" "Bone002.sy";
connectAttr "Bone002_scaleZ.o" "Bone002.sz";
connectAttr "Bone002_translateX.o" "Bone002.tx";
connectAttr "Bone002_translateY.o" "Bone002.ty";
connectAttr "Bone002_translateZ.o" "Bone002.tz";
connectAttr "Bone002_rotateX.o" "Bone002.rx";
connectAttr "Bone002_rotateY.o" "Bone002.ry";
connectAttr "Bone002_rotateZ.o" "Bone002.rz";
connectAttr "Bone002.s" "Bone003.is";
connectAttr "Bone003_scaleX.o" "Bone003.sx";
connectAttr "Bone003_scaleY.o" "Bone003.sy";
connectAttr "Bone003_scaleZ.o" "Bone003.sz";
connectAttr "Bone003_translateX.o" "Bone003.tx";
connectAttr "Bone003_translateY.o" "Bone003.ty";
connectAttr "Bone003_translateZ.o" "Bone003.tz";
connectAttr "Bone003_rotateX.o" "Bone003.rx";
connectAttr "Bone003_rotateY.o" "Bone003.ry";
connectAttr "Bone003_rotateZ.o" "Bone003.rz";
connectAttr "Bone003.s" "Bone004.is";
connectAttr "Bone004_scaleX.o" "Bone004.sx";
connectAttr "Bone004_scaleY.o" "Bone004.sy";
connectAttr "Bone004_scaleZ.o" "Bone004.sz";
connectAttr "Bone004_translateX.o" "Bone004.tx";
connectAttr "Bone004_translateY.o" "Bone004.ty";
connectAttr "Bone004_translateZ.o" "Bone004.tz";
connectAttr "Bone004_rotateX.o" "Bone004.rx";
connectAttr "Bone004_rotateY.o" "Bone004.ry";
connectAttr "Bone004_rotateZ.o" "Bone004.rz";
connectAttr "Bone004.s" "Bone005.is";
connectAttr "Bone005_scaleX.o" "Bone005.sx";
connectAttr "Bone005_scaleY.o" "Bone005.sy";
connectAttr "Bone005_scaleZ.o" "Bone005.sz";
connectAttr "Bone005_translateX.o" "Bone005.tx";
connectAttr "Bone005_translateY.o" "Bone005.ty";
connectAttr "Bone005_translateZ.o" "Bone005.tz";
connectAttr "Bone005_rotateX.o" "Bone005.rx";
connectAttr "Bone005_rotateY.o" "Bone005.ry";
connectAttr "Bone005_rotateZ.o" "Bone005.rz";
connectAttr "Bone005.s" "Bone006.is";
connectAttr "Bone006_scaleX.o" "Bone006.sx";
connectAttr "Bone006_scaleY.o" "Bone006.sy";
connectAttr "Bone006_scaleZ.o" "Bone006.sz";
connectAttr "Bone006_translateX.o" "Bone006.tx";
connectAttr "Bone006_translateY.o" "Bone006.ty";
connectAttr "Bone006_translateZ.o" "Bone006.tz";
connectAttr "Bone006_rotateX.o" "Bone006.rx";
connectAttr "Bone006_rotateY.o" "Bone006.ry";
connectAttr "Bone006_rotateZ.o" "Bone006.rz";
connectAttr "Bone006.s" "Bone007.is";
connectAttr "Bone007_scaleX.o" "Bone007.sx";
connectAttr "Bone007_scaleY.o" "Bone007.sy";
connectAttr "Bone007_scaleZ.o" "Bone007.sz";
connectAttr "Bone007_translateX.o" "Bone007.tx";
connectAttr "Bone007_translateY.o" "Bone007.ty";
connectAttr "Bone007_translateZ.o" "Bone007.tz";
connectAttr "Bone007_rotateX.o" "Bone007.rx";
connectAttr "Bone007_rotateY.o" "Bone007.ry";
connectAttr "Bone007_rotateZ.o" "Bone007.rz";
connectAttr "Bone007.s" "Bone008.is";
connectAttr "Bone008_scaleX.o" "Bone008.sx";
connectAttr "Bone008_scaleY.o" "Bone008.sy";
connectAttr "Bone008_scaleZ.o" "Bone008.sz";
connectAttr "Bone008_translateX.o" "Bone008.tx";
connectAttr "Bone008_translateY.o" "Bone008.ty";
connectAttr "Bone008_translateZ.o" "Bone008.tz";
connectAttr "Bone008_rotateX.o" "Bone008.rx";
connectAttr "Bone008_rotateY.o" "Bone008.ry";
connectAttr "Bone008_rotateZ.o" "Bone008.rz";
connectAttr "Bone008.s" "Bone009.is";
connectAttr "Bone009_scaleX.o" "Bone009.sx";
connectAttr "Bone009_scaleY.o" "Bone009.sy";
connectAttr "Bone009_scaleZ.o" "Bone009.sz";
connectAttr "Bone009_translateX.o" "Bone009.tx";
connectAttr "Bone009_translateY.o" "Bone009.ty";
connectAttr "Bone009_translateZ.o" "Bone009.tz";
connectAttr "Bone009_rotateX.o" "Bone009.rx";
connectAttr "Bone009_rotateY.o" "Bone009.ry";
connectAttr "Bone009_rotateZ.o" "Bone009.rz";
connectAttr "Bone009.s" "Bone010.is";
connectAttr "Bone010_scaleX.o" "Bone010.sx";
connectAttr "Bone010_scaleY.o" "Bone010.sy";
connectAttr "Bone010_scaleZ.o" "Bone010.sz";
connectAttr "Bone010_translateX.o" "Bone010.tx";
connectAttr "Bone010_translateY.o" "Bone010.ty";
connectAttr "Bone010_translateZ.o" "Bone010.tz";
connectAttr "Bone010_rotateX.o" "Bone010.rx";
connectAttr "Bone010_rotateY.o" "Bone010.ry";
connectAttr "Bone010_rotateZ.o" "Bone010.rz";
connectAttr "Bone010.s" "Bone010_end.is";
connectAttr "Bone001.s" "Bone016.is";
connectAttr "Bone016_scaleX.o" "Bone016.sx";
connectAttr "Bone016_scaleY.o" "Bone016.sy";
connectAttr "Bone016_scaleZ.o" "Bone016.sz";
connectAttr "Bone016_translateX.o" "Bone016.tx";
connectAttr "Bone016_translateY.o" "Bone016.ty";
connectAttr "Bone016_translateZ.o" "Bone016.tz";
connectAttr "Bone016_rotateX.o" "Bone016.rx";
connectAttr "Bone016_rotateY.o" "Bone016.ry";
connectAttr "Bone016_rotateZ.o" "Bone016.rz";
connectAttr "Bone016.s" "Bone017.is";
connectAttr "Bone017_scaleX.o" "Bone017.sx";
connectAttr "Bone017_scaleY.o" "Bone017.sy";
connectAttr "Bone017_scaleZ.o" "Bone017.sz";
connectAttr "Bone017_translateX.o" "Bone017.tx";
connectAttr "Bone017_translateY.o" "Bone017.ty";
connectAttr "Bone017_translateZ.o" "Bone017.tz";
connectAttr "Bone017_rotateX.o" "Bone017.rx";
connectAttr "Bone017_rotateY.o" "Bone017.ry";
connectAttr "Bone017_rotateZ.o" "Bone017.rz";
connectAttr "Bone017.s" "Bone018.is";
connectAttr "Bone018_scaleX.o" "Bone018.sx";
connectAttr "Bone018_scaleY.o" "Bone018.sy";
connectAttr "Bone018_scaleZ.o" "Bone018.sz";
connectAttr "Bone018_translateX.o" "Bone018.tx";
connectAttr "Bone018_translateY.o" "Bone018.ty";
connectAttr "Bone018_translateZ.o" "Bone018.tz";
connectAttr "Bone018_rotateX.o" "Bone018.rx";
connectAttr "Bone018_rotateY.o" "Bone018.ry";
connectAttr "Bone018_rotateZ.o" "Bone018.rz";
connectAttr "Bone018.s" "Bone019.is";
connectAttr "Bone019_scaleX.o" "Bone019.sx";
connectAttr "Bone019_scaleY.o" "Bone019.sy";
connectAttr "Bone019_scaleZ.o" "Bone019.sz";
connectAttr "Bone019_translateX.o" "Bone019.tx";
connectAttr "Bone019_translateY.o" "Bone019.ty";
connectAttr "Bone019_translateZ.o" "Bone019.tz";
connectAttr "Bone019_rotateX.o" "Bone019.rx";
connectAttr "Bone019_rotateY.o" "Bone019.ry";
connectAttr "Bone019_rotateZ.o" "Bone019.rz";
connectAttr "Bone019.s" "Bone020.is";
connectAttr "Bone020_scaleX.o" "Bone020.sx";
connectAttr "Bone020_scaleY.o" "Bone020.sy";
connectAttr "Bone020_scaleZ.o" "Bone020.sz";
connectAttr "Bone020_translateX.o" "Bone020.tx";
connectAttr "Bone020_translateY.o" "Bone020.ty";
connectAttr "Bone020_translateZ.o" "Bone020.tz";
connectAttr "Bone020_rotateX.o" "Bone020.rx";
connectAttr "Bone020_rotateY.o" "Bone020.ry";
connectAttr "Bone020_rotateZ.o" "Bone020.rz";
connectAttr "Bone020.s" "Bone021.is";
connectAttr "Bone021_scaleX.o" "Bone021.sx";
connectAttr "Bone021_scaleY.o" "Bone021.sy";
connectAttr "Bone021_scaleZ.o" "Bone021.sz";
connectAttr "Bone021_translateX.o" "Bone021.tx";
connectAttr "Bone021_translateY.o" "Bone021.ty";
connectAttr "Bone021_translateZ.o" "Bone021.tz";
connectAttr "Bone021_rotateX.o" "Bone021.rx";
connectAttr "Bone021_rotateY.o" "Bone021.ry";
connectAttr "Bone021_rotateZ.o" "Bone021.rz";
connectAttr "Bone021.s" "Bone023.is";
connectAttr "Bone023_scaleX.o" "Bone023.sx";
connectAttr "Bone023_scaleY.o" "Bone023.sy";
connectAttr "Bone023_scaleZ.o" "Bone023.sz";
connectAttr "Bone023_translateX.o" "Bone023.tx";
connectAttr "Bone023_translateY.o" "Bone023.ty";
connectAttr "Bone023_translateZ.o" "Bone023.tz";
connectAttr "Bone023_rotateX.o" "Bone023.rx";
connectAttr "Bone023_rotateY.o" "Bone023.ry";
connectAttr "Bone023_rotateZ.o" "Bone023.rz";
connectAttr "Bone023.s" "Bone023_end.is";
connectAttr "Bone001.s" "connectBone001.is";
connectAttr "connectBone001_scaleX.o" "connectBone001.sx";
connectAttr "connectBone001_scaleY.o" "connectBone001.sy";
connectAttr "connectBone001_scaleZ.o" "connectBone001.sz";
connectAttr "connectBone001_translateX.o" "connectBone001.tx";
connectAttr "connectBone001_translateY.o" "connectBone001.ty";
connectAttr "connectBone001_translateZ.o" "connectBone001.tz";
connectAttr "connectBone001_rotateX.o" "connectBone001.rx";
connectAttr "connectBone001_rotateY.o" "connectBone001.ry";
connectAttr "connectBone001_rotateZ.o" "connectBone001.rz";
connectAttr "connectBone001.s" "Bone017FBXASC040mirroredFBXASC041.is";
connectAttr "Bone017FBXASC040mirroredFBXASC041_scaleX.o" "Bone017FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_scaleY.o" "Bone017FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_scaleZ.o" "Bone017FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_translateX.o" "Bone017FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_translateY.o" "Bone017FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_translateZ.o" "Bone017FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_rotateX.o" "Bone017FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_rotateY.o" "Bone017FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041_rotateZ.o" "Bone017FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone017FBXASC040mirroredFBXASC041.s" "Bone018FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_scaleX.o" "Bone018FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_scaleY.o" "Bone018FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_scaleZ.o" "Bone018FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_translateX.o" "Bone018FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_translateY.o" "Bone018FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_translateZ.o" "Bone018FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_rotateX.o" "Bone018FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_rotateY.o" "Bone018FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041_rotateZ.o" "Bone018FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone018FBXASC040mirroredFBXASC041.s" "Bone019FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_scaleX.o" "Bone019FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_scaleY.o" "Bone019FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_scaleZ.o" "Bone019FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_translateX.o" "Bone019FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_translateY.o" "Bone019FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_translateZ.o" "Bone019FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_rotateX.o" "Bone019FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_rotateY.o" "Bone019FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041_rotateZ.o" "Bone019FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone019FBXASC040mirroredFBXASC041.s" "Bone020FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_scaleX.o" "Bone020FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_scaleY.o" "Bone020FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_scaleZ.o" "Bone020FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_translateX.o" "Bone020FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_translateY.o" "Bone020FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_translateZ.o" "Bone020FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_rotateX.o" "Bone020FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_rotateY.o" "Bone020FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041_rotateZ.o" "Bone020FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone020FBXASC040mirroredFBXASC041.s" "Bone021FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_scaleX.o" "Bone021FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_scaleY.o" "Bone021FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_scaleZ.o" "Bone021FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_translateX.o" "Bone021FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_translateY.o" "Bone021FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_translateZ.o" "Bone021FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_rotateX.o" "Bone021FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_rotateY.o" "Bone021FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041_rotateZ.o" "Bone021FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone021FBXASC040mirroredFBXASC041.s" "Bone023FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_scaleX.o" "Bone023FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_scaleY.o" "Bone023FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_scaleZ.o" "Bone023FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_translateX.o" "Bone023FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_translateY.o" "Bone023FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_translateZ.o" "Bone023FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_rotateX.o" "Bone023FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_rotateY.o" "Bone023FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041_rotateZ.o" "Bone023FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone023FBXASC040mirroredFBXASC041.s" "Bone023FBXASC040mirroredFBXASC041_end.is"
		;
connectAttr "Bone001.s" "connectBone002.is";
connectAttr "connectBone002_scaleX.o" "connectBone002.sx";
connectAttr "connectBone002_scaleY.o" "connectBone002.sy";
connectAttr "connectBone002_scaleZ.o" "connectBone002.sz";
connectAttr "connectBone002_translateX.o" "connectBone002.tx";
connectAttr "connectBone002_translateY.o" "connectBone002.ty";
connectAttr "connectBone002_translateZ.o" "connectBone002.tz";
connectAttr "connectBone002_rotateX.o" "connectBone002.rx";
connectAttr "connectBone002_rotateY.o" "connectBone002.ry";
connectAttr "connectBone002_rotateZ.o" "connectBone002.rz";
connectAttr "connectBone002.s" "Bone012FBXASC040mirroredFBXASC041.is";
connectAttr "Bone012FBXASC040mirroredFBXASC041_scaleX.o" "Bone012FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_scaleY.o" "Bone012FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_scaleZ.o" "Bone012FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_translateX.o" "Bone012FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_translateY.o" "Bone012FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_translateZ.o" "Bone012FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_rotateX.o" "Bone012FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_rotateY.o" "Bone012FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041_rotateZ.o" "Bone012FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone012FBXASC040mirroredFBXASC041.s" "Bone013FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_scaleX.o" "Bone013FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_scaleY.o" "Bone013FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_scaleZ.o" "Bone013FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_translateX.o" "Bone013FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_translateY.o" "Bone013FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_translateZ.o" "Bone013FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_rotateX.o" "Bone013FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_rotateY.o" "Bone013FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041_rotateZ.o" "Bone013FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone013FBXASC040mirroredFBXASC041.s" "Bone014FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_scaleX.o" "Bone014FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_scaleY.o" "Bone014FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_scaleZ.o" "Bone014FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_translateX.o" "Bone014FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_translateY.o" "Bone014FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_translateZ.o" "Bone014FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_rotateX.o" "Bone014FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_rotateY.o" "Bone014FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041_rotateZ.o" "Bone014FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone014FBXASC040mirroredFBXASC041.s" "Bone015FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_scaleX.o" "Bone015FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_scaleY.o" "Bone015FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_scaleZ.o" "Bone015FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_translateX.o" "Bone015FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_translateY.o" "Bone015FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_translateZ.o" "Bone015FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_rotateX.o" "Bone015FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_rotateY.o" "Bone015FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041_rotateZ.o" "Bone015FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone015FBXASC040mirroredFBXASC041.s" "Bone024FBXASC040mirroredFBXASC041.is"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_scaleX.o" "Bone024FBXASC040mirroredFBXASC041.sx"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_scaleY.o" "Bone024FBXASC040mirroredFBXASC041.sy"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_scaleZ.o" "Bone024FBXASC040mirroredFBXASC041.sz"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_translateX.o" "Bone024FBXASC040mirroredFBXASC041.tx"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_translateY.o" "Bone024FBXASC040mirroredFBXASC041.ty"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_translateZ.o" "Bone024FBXASC040mirroredFBXASC041.tz"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_rotateX.o" "Bone024FBXASC040mirroredFBXASC041.rx"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_rotateY.o" "Bone024FBXASC040mirroredFBXASC041.ry"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041_rotateZ.o" "Bone024FBXASC040mirroredFBXASC041.rz"
		;
connectAttr "Bone024FBXASC040mirroredFBXASC041.s" "Bone024FBXASC040mirroredFBXASC041_end.is"
		;
connectAttr "Bone001.s" "connectBone003.is";
connectAttr "connectBone003_scaleX.o" "connectBone003.sx";
connectAttr "connectBone003_scaleY.o" "connectBone003.sy";
connectAttr "connectBone003_scaleZ.o" "connectBone003.sz";
connectAttr "connectBone003_translateX.o" "connectBone003.tx";
connectAttr "connectBone003_translateY.o" "connectBone003.ty";
connectAttr "connectBone003_translateZ.o" "connectBone003.tz";
connectAttr "connectBone003_rotateX.o" "connectBone003.rx";
connectAttr "connectBone003_rotateY.o" "connectBone003.ry";
connectAttr "connectBone003_rotateZ.o" "connectBone003.rz";
connectAttr "connectBone003.s" "Bone012.is";
connectAttr "Bone012_scaleX.o" "Bone012.sx";
connectAttr "Bone012_scaleY.o" "Bone012.sy";
connectAttr "Bone012_scaleZ.o" "Bone012.sz";
connectAttr "Bone012_translateX.o" "Bone012.tx";
connectAttr "Bone012_translateY.o" "Bone012.ty";
connectAttr "Bone012_translateZ.o" "Bone012.tz";
connectAttr "Bone012_rotateX.o" "Bone012.rx";
connectAttr "Bone012_rotateY.o" "Bone012.ry";
connectAttr "Bone012_rotateZ.o" "Bone012.rz";
connectAttr "Bone012.s" "Bone013.is";
connectAttr "Bone013_scaleX.o" "Bone013.sx";
connectAttr "Bone013_scaleY.o" "Bone013.sy";
connectAttr "Bone013_scaleZ.o" "Bone013.sz";
connectAttr "Bone013_translateX.o" "Bone013.tx";
connectAttr "Bone013_translateY.o" "Bone013.ty";
connectAttr "Bone013_translateZ.o" "Bone013.tz";
connectAttr "Bone013_rotateX.o" "Bone013.rx";
connectAttr "Bone013_rotateY.o" "Bone013.ry";
connectAttr "Bone013_rotateZ.o" "Bone013.rz";
connectAttr "Bone013.s" "Bone014.is";
connectAttr "Bone014_scaleX.o" "Bone014.sx";
connectAttr "Bone014_scaleY.o" "Bone014.sy";
connectAttr "Bone014_scaleZ.o" "Bone014.sz";
connectAttr "Bone014_translateX.o" "Bone014.tx";
connectAttr "Bone014_translateY.o" "Bone014.ty";
connectAttr "Bone014_translateZ.o" "Bone014.tz";
connectAttr "Bone014_rotateX.o" "Bone014.rx";
connectAttr "Bone014_rotateY.o" "Bone014.ry";
connectAttr "Bone014_rotateZ.o" "Bone014.rz";
connectAttr "Bone014.s" "Bone015.is";
connectAttr "Bone015_scaleX.o" "Bone015.sx";
connectAttr "Bone015_scaleY.o" "Bone015.sy";
connectAttr "Bone015_scaleZ.o" "Bone015.sz";
connectAttr "Bone015_translateX.o" "Bone015.tx";
connectAttr "Bone015_translateY.o" "Bone015.ty";
connectAttr "Bone015_translateZ.o" "Bone015.tz";
connectAttr "Bone015_rotateX.o" "Bone015.rx";
connectAttr "Bone015_rotateY.o" "Bone015.ry";
connectAttr "Bone015_rotateZ.o" "Bone015.rz";
connectAttr "Bone015.s" "Bone024.is";
connectAttr "Bone024_scaleX.o" "Bone024.sx";
connectAttr "Bone024_scaleY.o" "Bone024.sy";
connectAttr "Bone024_scaleZ.o" "Bone024.sz";
connectAttr "Bone024_translateX.o" "Bone024.tx";
connectAttr "Bone024_translateY.o" "Bone024.ty";
connectAttr "Bone024_translateZ.o" "Bone024.tz";
connectAttr "Bone024_rotateX.o" "Bone024.rx";
connectAttr "Bone024_rotateY.o" "Bone024.ry";
connectAttr "Bone024_rotateZ.o" "Bone024.rz";
connectAttr "Bone024.s" "Bone024_end.is";
connectAttr "CameraShape_focalLength.o" "CameraShape.fl";
connectAttr "CameraShape_focusDistance.o" "CameraShape.fd";
connectAttr "skinCluster1.og[0]" "MantaRayBirostrisShape.i";
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
connectAttr "bump2d1.o" "MantaRay.n";
connectAttr "MantaRay.oc" "MantaRayBirostrisSG.ss";
connectAttr "MantaRayBirostrisShape.iog" "MantaRayBirostrisSG.dsm" -na;
connectAttr "MantaRayBirostrisSG.msg" "materialInfo1.sg";
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
connectAttr "MantaRayBirostrisShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "MantaRayBirostrisShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Bone001.wm" "skinCluster1.ma[0]";
connectAttr "Bone002.wm" "skinCluster1.ma[1]";
connectAttr "Bone003.wm" "skinCluster1.ma[2]";
connectAttr "Bone004.wm" "skinCluster1.ma[3]";
connectAttr "Bone005.wm" "skinCluster1.ma[4]";
connectAttr "Bone006.wm" "skinCluster1.ma[5]";
connectAttr "Bone007.wm" "skinCluster1.ma[6]";
connectAttr "Bone008.wm" "skinCluster1.ma[7]";
connectAttr "Bone009.wm" "skinCluster1.ma[8]";
connectAttr "Bone010.wm" "skinCluster1.ma[9]";
connectAttr "Bone016.wm" "skinCluster1.ma[10]";
connectAttr "Bone017.wm" "skinCluster1.ma[11]";
connectAttr "Bone018.wm" "skinCluster1.ma[12]";
connectAttr "Bone019.wm" "skinCluster1.ma[13]";
connectAttr "Bone020.wm" "skinCluster1.ma[14]";
connectAttr "Bone021.wm" "skinCluster1.ma[15]";
connectAttr "Bone023.wm" "skinCluster1.ma[16]";
connectAttr "connectBone001.wm" "skinCluster1.ma[17]";
connectAttr "Bone017FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[18]";
connectAttr "Bone018FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[19]";
connectAttr "Bone019FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[20]";
connectAttr "Bone020FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[21]";
connectAttr "Bone021FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[22]";
connectAttr "Bone023FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[23]";
connectAttr "connectBone002.wm" "skinCluster1.ma[24]";
connectAttr "Bone012FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[25]";
connectAttr "Bone013FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[26]";
connectAttr "Bone014FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[27]";
connectAttr "Bone015FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[28]";
connectAttr "Bone024FBXASC040mirroredFBXASC041.wm" "skinCluster1.ma[29]";
connectAttr "connectBone003.wm" "skinCluster1.ma[30]";
connectAttr "Bone012.wm" "skinCluster1.ma[31]";
connectAttr "Bone013.wm" "skinCluster1.ma[32]";
connectAttr "Bone014.wm" "skinCluster1.ma[33]";
connectAttr "Bone015.wm" "skinCluster1.ma[34]";
connectAttr "Bone024.wm" "skinCluster1.ma[35]";
connectAttr "Bone001.liw" "skinCluster1.lw[0]";
connectAttr "Bone002.liw" "skinCluster1.lw[1]";
connectAttr "Bone003.liw" "skinCluster1.lw[2]";
connectAttr "Bone004.liw" "skinCluster1.lw[3]";
connectAttr "Bone005.liw" "skinCluster1.lw[4]";
connectAttr "Bone006.liw" "skinCluster1.lw[5]";
connectAttr "Bone007.liw" "skinCluster1.lw[6]";
connectAttr "Bone008.liw" "skinCluster1.lw[7]";
connectAttr "Bone009.liw" "skinCluster1.lw[8]";
connectAttr "Bone010.liw" "skinCluster1.lw[9]";
connectAttr "Bone016.liw" "skinCluster1.lw[10]";
connectAttr "Bone017.liw" "skinCluster1.lw[11]";
connectAttr "Bone018.liw" "skinCluster1.lw[12]";
connectAttr "Bone019.liw" "skinCluster1.lw[13]";
connectAttr "Bone020.liw" "skinCluster1.lw[14]";
connectAttr "Bone021.liw" "skinCluster1.lw[15]";
connectAttr "Bone023.liw" "skinCluster1.lw[16]";
connectAttr "connectBone001.liw" "skinCluster1.lw[17]";
connectAttr "Bone017FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[18]";
connectAttr "Bone018FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[19]";
connectAttr "Bone019FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[20]";
connectAttr "Bone020FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[21]";
connectAttr "Bone021FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[22]";
connectAttr "Bone023FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[23]";
connectAttr "connectBone002.liw" "skinCluster1.lw[24]";
connectAttr "Bone012FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[25]";
connectAttr "Bone013FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[26]";
connectAttr "Bone014FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[27]";
connectAttr "Bone015FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[28]";
connectAttr "Bone024FBXASC040mirroredFBXASC041.liw" "skinCluster1.lw[29]";
connectAttr "connectBone003.liw" "skinCluster1.lw[30]";
connectAttr "Bone012.liw" "skinCluster1.lw[31]";
connectAttr "Bone013.liw" "skinCluster1.lw[32]";
connectAttr "Bone014.liw" "skinCluster1.lw[33]";
connectAttr "Bone015.liw" "skinCluster1.lw[34]";
connectAttr "Bone024.liw" "skinCluster1.lw[35]";
connectAttr "Bone001.obcc" "skinCluster1.ifcl[0]";
connectAttr "Bone002.obcc" "skinCluster1.ifcl[1]";
connectAttr "Bone003.obcc" "skinCluster1.ifcl[2]";
connectAttr "Bone004.obcc" "skinCluster1.ifcl[3]";
connectAttr "Bone005.obcc" "skinCluster1.ifcl[4]";
connectAttr "Bone006.obcc" "skinCluster1.ifcl[5]";
connectAttr "Bone007.obcc" "skinCluster1.ifcl[6]";
connectAttr "Bone008.obcc" "skinCluster1.ifcl[7]";
connectAttr "Bone009.obcc" "skinCluster1.ifcl[8]";
connectAttr "Bone010.obcc" "skinCluster1.ifcl[9]";
connectAttr "Bone016.obcc" "skinCluster1.ifcl[10]";
connectAttr "Bone017.obcc" "skinCluster1.ifcl[11]";
connectAttr "Bone018.obcc" "skinCluster1.ifcl[12]";
connectAttr "Bone019.obcc" "skinCluster1.ifcl[13]";
connectAttr "Bone020.obcc" "skinCluster1.ifcl[14]";
connectAttr "Bone021.obcc" "skinCluster1.ifcl[15]";
connectAttr "Bone023.obcc" "skinCluster1.ifcl[16]";
connectAttr "connectBone001.obcc" "skinCluster1.ifcl[17]";
connectAttr "Bone017FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[18]";
connectAttr "Bone018FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[19]";
connectAttr "Bone019FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[20]";
connectAttr "Bone020FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[21]";
connectAttr "Bone021FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[22]";
connectAttr "Bone023FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[23]";
connectAttr "connectBone002.obcc" "skinCluster1.ifcl[24]";
connectAttr "Bone012FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[25]";
connectAttr "Bone013FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[26]";
connectAttr "Bone014FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[27]";
connectAttr "Bone015FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[28]";
connectAttr "Bone024FBXASC040mirroredFBXASC041.obcc" "skinCluster1.ifcl[29]";
connectAttr "connectBone003.obcc" "skinCluster1.ifcl[30]";
connectAttr "Bone012.obcc" "skinCluster1.ifcl[31]";
connectAttr "Bone013.obcc" "skinCluster1.ifcl[32]";
connectAttr "Bone014.obcc" "skinCluster1.ifcl[33]";
connectAttr "Bone015.obcc" "skinCluster1.ifcl[34]";
connectAttr "Bone024.obcc" "skinCluster1.ifcl[35]";
connectAttr "Bone021.msg" "skinCluster1.ptt";
connectAttr "Armature.msg" "bindPose1.m[0]";
connectAttr "Bone001.msg" "bindPose1.m[1]";
connectAttr "Bone002.msg" "bindPose1.m[2]";
connectAttr "Bone003.msg" "bindPose1.m[3]";
connectAttr "Bone004.msg" "bindPose1.m[4]";
connectAttr "Bone005.msg" "bindPose1.m[5]";
connectAttr "Bone006.msg" "bindPose1.m[6]";
connectAttr "Bone007.msg" "bindPose1.m[7]";
connectAttr "Bone008.msg" "bindPose1.m[8]";
connectAttr "Bone009.msg" "bindPose1.m[9]";
connectAttr "Bone010.msg" "bindPose1.m[10]";
connectAttr "Bone016.msg" "bindPose1.m[11]";
connectAttr "Bone017.msg" "bindPose1.m[12]";
connectAttr "Bone018.msg" "bindPose1.m[13]";
connectAttr "Bone019.msg" "bindPose1.m[14]";
connectAttr "Bone020.msg" "bindPose1.m[15]";
connectAttr "Bone021.msg" "bindPose1.m[16]";
connectAttr "Bone023.msg" "bindPose1.m[17]";
connectAttr "connectBone001.msg" "bindPose1.m[18]";
connectAttr "Bone017FBXASC040mirroredFBXASC041.msg" "bindPose1.m[19]";
connectAttr "Bone018FBXASC040mirroredFBXASC041.msg" "bindPose1.m[20]";
connectAttr "Bone019FBXASC040mirroredFBXASC041.msg" "bindPose1.m[21]";
connectAttr "Bone020FBXASC040mirroredFBXASC041.msg" "bindPose1.m[22]";
connectAttr "Bone021FBXASC040mirroredFBXASC041.msg" "bindPose1.m[23]";
connectAttr "Bone023FBXASC040mirroredFBXASC041.msg" "bindPose1.m[24]";
connectAttr "connectBone002.msg" "bindPose1.m[25]";
connectAttr "Bone012FBXASC040mirroredFBXASC041.msg" "bindPose1.m[26]";
connectAttr "Bone013FBXASC040mirroredFBXASC041.msg" "bindPose1.m[27]";
connectAttr "Bone014FBXASC040mirroredFBXASC041.msg" "bindPose1.m[28]";
connectAttr "Bone015FBXASC040mirroredFBXASC041.msg" "bindPose1.m[29]";
connectAttr "Bone024FBXASC040mirroredFBXASC041.msg" "bindPose1.m[30]";
connectAttr "connectBone003.msg" "bindPose1.m[31]";
connectAttr "Bone012.msg" "bindPose1.m[32]";
connectAttr "Bone013.msg" "bindPose1.m[33]";
connectAttr "Bone014.msg" "bindPose1.m[34]";
connectAttr "Bone015.msg" "bindPose1.m[35]";
connectAttr "Bone024.msg" "bindPose1.m[36]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[1]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[1]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[1]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[1]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "Bone001.bps" "bindPose1.wm[1]";
connectAttr "Bone002.bps" "bindPose1.wm[2]";
connectAttr "Bone003.bps" "bindPose1.wm[3]";
connectAttr "Bone004.bps" "bindPose1.wm[4]";
connectAttr "Bone005.bps" "bindPose1.wm[5]";
connectAttr "Bone006.bps" "bindPose1.wm[6]";
connectAttr "Bone007.bps" "bindPose1.wm[7]";
connectAttr "Bone008.bps" "bindPose1.wm[8]";
connectAttr "Bone009.bps" "bindPose1.wm[9]";
connectAttr "Bone010.bps" "bindPose1.wm[10]";
connectAttr "Bone016.bps" "bindPose1.wm[11]";
connectAttr "Bone017.bps" "bindPose1.wm[12]";
connectAttr "Bone018.bps" "bindPose1.wm[13]";
connectAttr "Bone019.bps" "bindPose1.wm[14]";
connectAttr "Bone020.bps" "bindPose1.wm[15]";
connectAttr "Bone021.bps" "bindPose1.wm[16]";
connectAttr "Bone023.bps" "bindPose1.wm[17]";
connectAttr "connectBone001.bps" "bindPose1.wm[18]";
connectAttr "Bone017FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[19]";
connectAttr "Bone018FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[20]";
connectAttr "Bone019FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[21]";
connectAttr "Bone020FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[22]";
connectAttr "Bone021FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[23]";
connectAttr "Bone023FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[24]";
connectAttr "connectBone002.bps" "bindPose1.wm[25]";
connectAttr "Bone012FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[26]";
connectAttr "Bone013FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[27]";
connectAttr "Bone014FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[28]";
connectAttr "Bone015FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[29]";
connectAttr "Bone024FBXASC040mirroredFBXASC041.bps" "bindPose1.wm[30]";
connectAttr "connectBone003.bps" "bindPose1.wm[31]";
connectAttr "Bone012.bps" "bindPose1.wm[32]";
connectAttr "Bone013.bps" "bindPose1.wm[33]";
connectAttr "Bone014.bps" "bindPose1.wm[34]";
connectAttr "Bone015.bps" "bindPose1.wm[35]";
connectAttr "Bone024.bps" "bindPose1.wm[36]";
connectAttr "MantaRayBirostrisSG.pa" ":renderPartition.st" -na;
connectAttr "MantaRay.msg" ":defaultShaderList1.s" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "LightShape.ltd" ":lightList1.l" -na;
connectAttr "normalmap_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "Light.iog" ":defaultLightSet.dsm" -na;
// End of import.ma
