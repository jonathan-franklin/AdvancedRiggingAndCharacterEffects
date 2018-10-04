//Maya ASCII 2018ff09 scene
//Name: StretchyIK Rig 001.ma
//Last modified: Wed, Oct 03, 2018 02:17:46 PM
//Codeset: 1252
requires maya "2018ff09";
requires -nodeType "floatConstant" "lookdevKit" "1.0";
requires "mtoa" "3.0.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201807191615-2c29512b8a";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "561315E1-4EDE-2332-E3D3-AF9FCC43AE53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.89555034224699 5.2857308241962775 19.036590210835278 ;
	setAttr ".r" -type "double3" 24.261647270342309 13.000000000000732 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C83197D5-4C8E-4931-A9AE-D5B1A9F73A67";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 78.533371549795817;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "BE8AB293-45D1-4C07-44B9-C39975D3A543";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CD708C25-4770-F892-20B4-51A7FF319B06";
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
	rename -uid "B433A248-4D6B-FEBA-EC00-A09CB8C39914";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "16809437-4168-7D23-15C6-DABE4E2FEF3C";
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
	rename -uid "FA74987A-4917-96B5-D774-B3816DACF78A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "ED332D46-47DE-A723-FE74-35AE00D80F62";
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
createNode transform -n "IK_Stretch";
	rename -uid "A79C699C-4DEF-A3C1-EC50-298A0111536F";
createNode transform -n "Skeleton" -p "IK_Stretch";
	rename -uid "56241F2E-4557-DDF4-415F-A98252B134C7";
createNode joint -n "COG_Jnt" -p "Skeleton";
	rename -uid "DA66F3BA-4C52-4469-033E-23B5026DB3F2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
createNode parentConstraint -n "COG_Jnt_parentConstraint1" -p "COG_Jnt";
	rename -uid "6E5F777B-4FF5-5E50-8CA5-62A16284B754";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode scaleConstraint -n "COG_Jnt_scaleConstraint1" -p "COG_Jnt";
	rename -uid "71522FE4-4164-8371-0280-CABD6DD9968F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "L_Arm_01_Jnt" -p "Skeleton";
	rename -uid "83540294-4AA5-BCF9-523E-CB99F503F4F9";
	setAttr ".t" -type "double3" 1.9999999999999998 1.9999999999999998 0 ;
	setAttr ".r" -type "double3" -7.1245060544921532 15.194963468866044 -10.838543194615491 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -9.4623222080256131 ;
	setAttr ".radi" 0.76290151018783892;
createNode joint -n "L_Arm_02_Jnt" -p "L_Arm_01_Jnt";
	rename -uid "5591560C-48A6-C26A-453D-C8AEF39FDD04";
	setAttr ".t" -type "double3" 6.0827631950378418 -4.8619786227758785e-17 0 ;
	setAttr ".r" -type "double3" 0 0 24.524703793344731 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 31.26373169437743 ;
	setAttr ".radi" 0.72681886933454332;
createNode joint -n "L_Arm_03_Jnt" -p "L_Arm_02_Jnt";
	rename -uid "1A2E8976-4649-EA17-0B82-F8953B1EE7ED";
	setAttr ".t" -type "double3" 5.3850002288818359 -8.8817841970012523e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72681886933454332;
createNode ikEffector -n "effector1" -p "L_Arm_02_Jnt";
	rename -uid "AA4CC47D-48CF-13CE-AF6B-F9B99A3F78DB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Arm_01_Jnt" -p "Skeleton";
	rename -uid "A1AF82A0-4B44-C7B2-C5BB-EBA42E9237FA";
	setAttr ".t" -type "double3" -2 2 0 ;
	setAttr ".r" -type "double3" 1.3576757440796275e-14 3.5508442537467193e-15 -1.4150541771523123e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -180 0 9.4623222080256131 ;
	setAttr ".radi" 0.76290151018783892;
createNode joint -n "R_Arm_02_Jnt" -p "R_Arm_01_Jnt";
	rename -uid "C7AA5558-4D72-AB2B-FC07-C4A3BAEB9E9C";
	setAttr ".t" -type "double3" -6.0827625302982202 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" -2.9681594533837824e-30 5.11374785521035e-30 -4.6701122141187143e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0189137922070483e-15 3.6415187002704668e-15 31.26373169437743 ;
	setAttr ".radi" 0.72681886933454332;
createNode joint -n "R_Arm_03_Jnt" -p "R_Arm_02_Jnt";
	rename -uid "C5DE585A-4524-54AB-C2F9-D486EB909B72";
	setAttr ".t" -type "double3" -5.3851648071345046 -8.8817841970012523e-16 3.4226217909717267e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72681886933454332;
createNode ikEffector -n "effector2" -p "R_Arm_02_Jnt";
	rename -uid "FBFC5DC4-4FAD-12F7-7CD0-BB8431E86433";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Controls" -p "IK_Stretch";
	rename -uid "9D482B95-4D6F-4A37-DE9A-7BA531A17776";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "96BC234A-47BE-0E02-B54A-1DB66E062792";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "37A24BB6-426B-3E02-9863-D9ABE50248BA";
	addAttr -ci true -sn "GlobalScale" -ln "GlobalScale" -dv 1 -min 0 -at "double";
	setAttr -k on ".GlobalScale";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "B34867F3-4612-C647-382C-32A1160553B1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.053721295035468 7.3807756008897385e-16 -12.053721295035469
		1.0437992955610693e-15 1.0437992955610693e-15 -17.046536132504539
		-12.053721295035468 7.3807756008897365e-16 -12.053721295035466
		-17.046536132504546 5.4110739803028891e-32 -8.8369544330174041e-16
		-12.053721295035468 -7.3807756008897375e-16 12.053721295035468
		-1.7075631830528725e-15 -1.0437992955610701e-15 17.046536132504549
		12.053721295035468 -7.3807756008897365e-16 12.053721295035466
		17.046536132504546 -1.4234254139327562e-31 2.3246301136357038e-15
		12.053721295035468 7.3807756008897385e-16 -12.053721295035469
		1.0437992955610693e-15 1.0437992955610693e-15 -17.046536132504539
		-12.053721295035468 7.3807756008897365e-16 -12.053721295035466
		;
createNode transform -n "COG_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "26828D49-4068-3F92-7836-108EF06841DF";
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "EB7AE422-4B4A-0017-2C54-F4A947159A41";
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "AD223EF0-4EF9-CB21-38EF-DCBEB23C348B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Arm_IK_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "121F2431-4C3A-1932-2196-ED8A4E91ABAC";
	setAttr ".t" -type "double3" 13 2.9999999999999991 0 ;
	setAttr ".r" -type "double3" 0 0 21.801409486351812 ;
createNode transform -n "L_Arm_IK_Ctrl" -p "L_Arm_IK_Ctrl_Grp";
	rename -uid "C530D693-4F68-8A7C-E660-F8B398A87C67";
	addAttr -ci true -sn "Blender" -ln "Blender" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Length01" -ln "Length01" -dv 1 -at "double";
	addAttr -ci true -sn "Length02" -ln "Length02" -dv 1 -at "double";
	setAttr ".t" -type "double3" -1.2062085343406941 0.63779680609869382 -2.9209019472429301 ;
	setAttr -k on ".Blender" 1;
	setAttr -k on ".Length01";
	setAttr -k on ".Length02";
createNode nurbsCurve -n "L_Arm_IK_CtrlShape" -p "L_Arm_IK_Ctrl";
	rename -uid "6954438A-4FAF-8C8C-D3EA-ABB56DC74632";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2601436025374905e-16 0.78361162489122449 -0.7836116248912246
		-6.7857323231109109e-17 6.7857323231109134e-17 -1.1081941875543877
		-2.219791070735185e-16 -0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 -1.1081941875543881 -5.7448982375248304e-17
		-1.2601436025374905e-16 -0.78361162489122449 0.78361162489122449
		6.7857323231109146e-17 -1.1100856969603226e-16 1.1081941875543884
		2.219791070735185e-16 0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 1.1081941875543881 1.511240500779959e-16
		1.2601436025374905e-16 0.78361162489122449 -0.7836116248912246
		-6.7857323231109109e-17 6.7857323231109134e-17 -1.1081941875543877
		-2.219791070735185e-16 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "R_Arm_IK_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "3AAE32F8-4ADA-7198-224B-0FA5F7620027";
	setAttr ".t" -type "double3" -13 3.0000000000000009 3.4850390613392426e-32 ;
	setAttr ".r" -type "double3" 180 0 -21.801409486351812 ;
createNode transform -n "R_Arm_IK_Ctrl" -p "R_Arm_IK_Ctrl_Grp";
	rename -uid "3BE4F072-4274-8B38-5FF3-8C92FFB74940";
createNode nurbsCurve -n "R_Arm_IK_CtrlShape" -p "R_Arm_IK_Ctrl";
	rename -uid "86805AB4-4F17-5574-51EA-E6AFB43E78E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2601436025374905e-16 0.78361162489122449 -0.7836116248912246
		-6.7857323231109109e-17 6.7857323231109134e-17 -1.1081941875543877
		-2.219791070735185e-16 -0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 -1.1081941875543881 -5.7448982375248304e-17
		-1.2601436025374905e-16 -0.78361162489122449 0.78361162489122449
		6.7857323231109146e-17 -1.1100856969603226e-16 1.1081941875543884
		2.219791070735185e-16 0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 1.1081941875543881 1.511240500779959e-16
		1.2601436025374905e-16 0.78361162489122449 -0.7836116248912246
		-6.7857323231109109e-17 6.7857323231109134e-17 -1.1081941875543877
		-2.219791070735185e-16 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "Deformers" -p "IK_Stretch";
	rename -uid "2ACAC1F6-430E-EA91-9C08-B4AA9B62153A";
createNode ikHandle -n "L_Arm_IK_Handle" -p "Deformers";
	rename -uid "E921BF4D-4D35-802A-E2EA-01A72D1D9CC5";
	setAttr ".pv" -type "double3" 0.18107149408104023 -1.9917864127539529 2.9530196344179705e-08 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "L_Arm_IK_Handle_parentConstraint1" -p "L_Arm_IK_Handle";
	rename -uid "0AAB84B4-49C8-55D0-9629-FA9EE78C813F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -21.801409486351812 ;
	setAttr ".rst" -type "double3" 13 2.9999999999999996 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_IK_Handle_scaleConstraint1" -p "L_Arm_IK_Handle";
	rename -uid "CA7F3519-4635-97E5-841F-088E49CE3D59";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode ikHandle -n "R_Arm_IK_Handle" -p "Deformers";
	rename -uid "1D3E3A03-4306-2715-9E51-3AA2819C25D8";
	setAttr ".pv" -type "double3" -0.18107149208503692 -1.9917864129354086 -4.8845425921450201e-16 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "R_Arm_IK_Handle_parentConstraint1" -p "R_Arm_IK_Handle";
	rename -uid "721EA0FA-4594-3771-F622-37A24C1B0EAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 
		-9.8607613152626476e-32 ;
	setAttr ".tg[0].tor" -type "double3" -180 2.6059404121629965e-15 -21.801409486351812 ;
	setAttr ".lr" -type "double3" 5.0185826812738527e-16 2.6059404121629965e-15 1.1412819174514187e-32 ;
	setAttr ".rst" -type "double3" -13.000000000000002 3.0000000000000018 7.9072760828143259e-32 ;
	setAttr ".rsrr" -type "double3" 5.0185826812738527e-16 2.6059404121629965e-15 1.1412819174514187e-32 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_IK_Handle_scaleConstraint1" -p "R_Arm_IK_Handle";
	rename -uid "83213B10-4FFF-4FB0-33A2-078C38679746";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "L_Arm_IK_Dist_Loc_Grp" -p "Deformers";
	rename -uid "F7C6B4D0-434B-22D3-27BE-55A39E3D42DE";
createNode transform -n "L_Arm_IK_Dist_01_Loc" -p "L_Arm_IK_Dist_Loc_Grp";
	rename -uid "2BB9AD1B-4BDB-ABDB-02BA-9DB56577BEA4";
createNode locator -n "L_Arm_IK_Dist_01_LocShape" -p "L_Arm_IK_Dist_01_Loc";
	rename -uid "BDD6D15B-4BF6-C851-E394-E0B9966B9C37";
	setAttr -k off ".v";
createNode pointConstraint -n "L_Arm_IK_Dist_01_Loc_pointConstraint1" -p "L_Arm_IK_Dist_01_Loc";
	rename -uid "9619088E-4B4E-2625-864A-81AAAEB0D7A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.9999999999999998 1.9999999999999998 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_IK_Dist_03_Loc" -p "L_Arm_IK_Dist_Loc_Grp";
	rename -uid "0A23C4B8-4EDA-F277-997A-25BA0CC42EF6";
createNode locator -n "L_Arm_IK_Dist_03_LocShape" -p "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc";
	rename -uid "C5AF5231-486D-F77F-3BE4-BDA42D2A00C2";
	setAttr -k off ".v";
createNode pointConstraint -n "L_Arm_IK_Dist_03_Loc_pointConstraint3" -p "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc";
	rename -uid "6356D709-4497-1C6E-A453-43BBED605DD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 9.2584530861005128 3.7720802418497357 -1.7415637067586562 ;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_IK_Dist_Loc_Grp" -p "Deformers";
	rename -uid "BC25E5C9-4B6B-8DBC-83BF-D993D476C182";
createNode transform -n "R_Arm_IK_Dist_01_Loc" -p "R_Arm_IK_Dist_Loc_Grp";
	rename -uid "94486F27-4804-86FF-E7C1-B287D8FAF285";
createNode locator -n "R_Arm_IK_Dist_01_LocShape" -p "R_Arm_IK_Dist_01_Loc";
	rename -uid "D21644B7-4EE6-6A22-0C51-BF9A17A85849";
	setAttr -k off ".v";
createNode pointConstraint -n "R_Arm_IK_Dist_01_Loc_pointConstraint1" -p "R_Arm_IK_Dist_01_Loc";
	rename -uid "2C012884-4C93-A906-9304-32B00CC9297F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -2 2 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_IK_Dist_03_Loc" -p "R_Arm_IK_Dist_Loc_Grp";
	rename -uid "C2E3CEEA-4AE1-EFBE-24FA-10BE41221EB2";
createNode locator -n "L_Arm_IK_Dist_03_LocShape" -p "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc";
	rename -uid "02E11CE0-4B1D-B2D4-2965-EA93C46F3A77";
	setAttr -k off ".v";
createNode pointConstraint -n "L_Arm_IK_Dist_03_Loc_pointConstraint2" -p "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc";
	rename -uid "37FDF650-455E-4807-41B9-C687E9E2AB18";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -13 3.0000000000000009 3.4850390613392426e-32 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "92EEF3F9-4427-0FC1-00D9-FD93EE5C4DB6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7679F7D7-43E9-477D-4780-AEB94FADB6AD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D3998CF7-473C-F776-FB58-46A67018DE89";
createNode displayLayerManager -n "layerManager";
	rename -uid "E0BCCD9A-4F1C-0BC0-7267-C5B0ED842670";
createNode displayLayer -n "defaultLayer";
	rename -uid "AF08A372-4A27-9E1B-2936-8C9FC9954F11";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C109AC12-40CD-939D-155B-11858643C264";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "35D00C13-435A-1E82-D78C-FB829C49FF5E";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "CC4A4686-4DBD-1D92-36AE-8883D9F1A23C";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "39296D1E-457C-A998-CC20-A99E5B0DAF04";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 256\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"sshape\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"sshape\" \n"
		+ "                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 256\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 256\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CC57A137-40AD-C861-9919-068F496BF74D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "EEBA5621-4940-A0F8-C241-448B174236A0";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "D567CD76-4F7A-0337-D169-5283605430B3";
	setAttr ".txf" -type "matrix" 1.821694174650311 0 0 0 0 1.821694174650311 0 0 0 0 1.821694174650311 0
		 0 0 0 1;
createNode multiplyDivide -n "L_Arm_Joint_02_Length_MD";
	rename -uid "F98899C7-4041-B04F-27B2-F9B7315E4515";
	setAttr ".i1" -type "float3" 6.0827632 0 0 ;
createNode multiplyDivide -n "L_Arm_Joint_03_Length_MD";
	rename -uid "F3AEF1DC-4E88-7774-4408-BFBEAA575537";
	setAttr ".i1" -type "float3" 5.3850002 0 0 ;
createNode plusMinusAverage -n "L_Arm_Joint_Length_PMA";
	rename -uid "B9539756-420D-E113-724A-078DB68481F8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "L_Arm_Distance_DB";
	rename -uid "41057AB3-4453-1EEF-C27D-31B7942707D4";
createNode multiplyDivide -n "L_Arm_Stretch_Scalar_MD";
	rename -uid "38D98180-42B6-9292-88F6-CEBE6C87F81A";
	setAttr ".op" 2;
createNode multiplyDivide -n "L_Arm_Joint_02_Scaled_Length_MD";
	rename -uid "A3FF44BB-4FE7-E736-8EAF-219835AC58B0";
createNode multiplyDivide -n "L_Arm_Joint_03_Scaled_Length_MD";
	rename -uid "D44BB337-4F55-2FA7-C33E-F8840A051605";
createNode condition -n "L_Arm_Stretch_Cond";
	rename -uid "08BB6B41-40E7-47F2-428B-B79120C97547";
	setAttr ".op" 3;
createNode blendColors -n "L_Arm_Stretch_BC";
	rename -uid "4D82D1F3-431F-6D83-82DC-5DB0FF2828F3";
createNode floatConstant -n "floatConstant1";
	rename -uid "A1F73F19-4A55-5B14-65B5-7E908F7A1BC2";
createNode multiplyDivide -n "L_Arm_Global_Scale_MD";
	rename -uid "8A9C2C0E-4427-C68C-FFA0-90AF2F67F9ED";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "E216FCBD-49F5-1BB5-BC34-769DDD072594";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1030.4817193698261 -184.50571983605187 ;
	setAttr ".tgi[0].vh" -type "double2" 1391.4344436800718 3660.6599414999623 ;
	setAttr -s 18 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 448.57144165039063;
	setAttr ".tgi[0].ni[0].y" 1098.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" -237.14285278320313;
	setAttr ".tgi[0].ni[1].y" 884.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" -471.42855834960938;
	setAttr ".tgi[0].ni[2].y" 771.4285888671875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -471.42855834960938;
	setAttr ".tgi[0].ni[3].y" 1114.2857666015625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1371.4285888671875;
	setAttr ".tgi[0].ni[4].y" 1285.7142333984375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -471.42855834960938;
	setAttr ".tgi[0].ni[5].y" 900;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -471.42855834960938;
	setAttr ".tgi[0].ni[6].y" 1028.5714111328125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 128.57142639160156;
	setAttr ".tgi[0].ni[7].y" 900;
	setAttr ".tgi[0].ni[7].nvs" 18306;
	setAttr ".tgi[0].ni[8].x" -171.42857360839844;
	setAttr ".tgi[0].ni[8].y" 1071.4285888671875;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 1371.4285888671875;
	setAttr ".tgi[0].ni[9].y" 1414.2857666015625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1757.142822265625;
	setAttr ".tgi[0].ni[10].y" 1328.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1028.5714111328125;
	setAttr ".tgi[0].ni[11].y" 1500;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 728.5714111328125;
	setAttr ".tgi[0].ni[12].y" 1028.5714111328125;
	setAttr ".tgi[0].ni[12].nvs" 18306;
	setAttr ".tgi[0].ni[13].x" -880;
	setAttr ".tgi[0].ni[13].y" 1012.8571166992188;
	setAttr ".tgi[0].ni[13].nvs" 18306;
	setAttr ".tgi[0].ni[14].x" -1242.857177734375;
	setAttr ".tgi[0].ni[14].y" 1542.857177734375;
	setAttr ".tgi[0].ni[14].nvs" 18306;
	setAttr ".tgi[0].ni[15].x" 428.57144165039063;
	setAttr ".tgi[0].ni[15].y" 814.28570556640625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -1608.5714111328125;
	setAttr ".tgi[0].ni[16].y" 1484.2857666015625;
	setAttr ".tgi[0].ni[16].nvs" 18305;
	setAttr ".tgi[0].ni[17].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[17].y" 927.14288330078125;
	setAttr ".tgi[0].ni[17].nvs" 18305;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 11 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sx";
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sy";
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sz";
connectAttr "COG_Jnt_scaleConstraint1.csx" "COG_Jnt.sx";
connectAttr "COG_Jnt_scaleConstraint1.csy" "COG_Jnt.sy";
connectAttr "COG_Jnt_scaleConstraint1.csz" "COG_Jnt.sz";
connectAttr "COG_Jnt_parentConstraint1.ctx" "COG_Jnt.tx";
connectAttr "COG_Jnt_parentConstraint1.cty" "COG_Jnt.ty";
connectAttr "COG_Jnt_parentConstraint1.ctz" "COG_Jnt.tz";
connectAttr "COG_Jnt_parentConstraint1.crx" "COG_Jnt.rx";
connectAttr "COG_Jnt_parentConstraint1.cry" "COG_Jnt.ry";
connectAttr "COG_Jnt_parentConstraint1.crz" "COG_Jnt.rz";
connectAttr "COG_Jnt.ro" "COG_Jnt_parentConstraint1.cro";
connectAttr "COG_Jnt.pim" "COG_Jnt_parentConstraint1.cpim";
connectAttr "COG_Jnt.rp" "COG_Jnt_parentConstraint1.crp";
connectAttr "COG_Jnt.rpt" "COG_Jnt_parentConstraint1.crt";
connectAttr "COG_Jnt.jo" "COG_Jnt_parentConstraint1.cjo";
connectAttr "COG_Ctrl.t" "COG_Jnt_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "COG_Jnt_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "COG_Jnt_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "COG_Jnt_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "COG_Jnt_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "COG_Jnt_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_parentConstraint1.w0" "COG_Jnt_parentConstraint1.tg[0].tw";
connectAttr "COG_Jnt.pim" "COG_Jnt_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "COG_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_scaleConstraint1.w0" "COG_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "L_Arm_01_Jnt.s" "L_Arm_02_Jnt.is";
connectAttr "L_Arm_Joint_02_Scaled_Length_MD.ox" "L_Arm_02_Jnt.tx";
connectAttr "L_Arm_02_Jnt.s" "L_Arm_03_Jnt.is";
connectAttr "L_Arm_Joint_03_Scaled_Length_MD.ox" "L_Arm_03_Jnt.tx";
connectAttr "L_Arm_03_Jnt.tx" "effector1.tx";
connectAttr "L_Arm_03_Jnt.ty" "effector1.ty";
connectAttr "L_Arm_03_Jnt.tz" "effector1.tz";
connectAttr "R_Arm_01_Jnt.s" "R_Arm_02_Jnt.is";
connectAttr "R_Arm_02_Jnt.s" "R_Arm_03_Jnt.is";
connectAttr "R_Arm_03_Jnt.tx" "effector2.tx";
connectAttr "R_Arm_03_Jnt.ty" "effector2.ty";
connectAttr "R_Arm_03_Jnt.tz" "effector2.tz";
connectAttr "transformGeometry1.og" "COG_CtrlShape.cr";
connectAttr "L_Arm_01_Jnt.msg" "L_Arm_IK_Handle.hsj";
connectAttr "effector1.hp" "L_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Arm_IK_Handle.hsv";
connectAttr "L_Arm_IK_Handle_parentConstraint1.ctx" "L_Arm_IK_Handle.tx";
connectAttr "L_Arm_IK_Handle_parentConstraint1.cty" "L_Arm_IK_Handle.ty";
connectAttr "L_Arm_IK_Handle_parentConstraint1.ctz" "L_Arm_IK_Handle.tz";
connectAttr "L_Arm_IK_Handle_parentConstraint1.crx" "L_Arm_IK_Handle.rx";
connectAttr "L_Arm_IK_Handle_parentConstraint1.cry" "L_Arm_IK_Handle.ry";
connectAttr "L_Arm_IK_Handle_parentConstraint1.crz" "L_Arm_IK_Handle.rz";
connectAttr "L_Arm_IK_Handle_scaleConstraint1.csx" "L_Arm_IK_Handle.sx";
connectAttr "L_Arm_IK_Handle_scaleConstraint1.csy" "L_Arm_IK_Handle.sy";
connectAttr "L_Arm_IK_Handle_scaleConstraint1.csz" "L_Arm_IK_Handle.sz";
connectAttr "L_Arm_IK_Handle.ro" "L_Arm_IK_Handle_parentConstraint1.cro";
connectAttr "L_Arm_IK_Handle.pim" "L_Arm_IK_Handle_parentConstraint1.cpim";
connectAttr "L_Arm_IK_Handle.rp" "L_Arm_IK_Handle_parentConstraint1.crp";
connectAttr "L_Arm_IK_Handle.rpt" "L_Arm_IK_Handle_parentConstraint1.crt";
connectAttr "L_Arm_IK_Ctrl.t" "L_Arm_IK_Handle_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_IK_Ctrl.rp" "L_Arm_IK_Handle_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_IK_Ctrl.rpt" "L_Arm_IK_Handle_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_IK_Ctrl.r" "L_Arm_IK_Handle_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_IK_Ctrl.ro" "L_Arm_IK_Handle_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_IK_Ctrl.s" "L_Arm_IK_Handle_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_IK_Ctrl.pm" "L_Arm_IK_Handle_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_IK_Handle_parentConstraint1.w0" "L_Arm_IK_Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Handle.pim" "L_Arm_IK_Handle_scaleConstraint1.cpim";
connectAttr "L_Arm_IK_Ctrl.s" "L_Arm_IK_Handle_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_IK_Ctrl.pm" "L_Arm_IK_Handle_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_IK_Handle_scaleConstraint1.w0" "L_Arm_IK_Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Jnt.msg" "R_Arm_IK_Handle.hsj";
connectAttr "effector2.hp" "R_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Arm_IK_Handle.hsv";
connectAttr "R_Arm_IK_Handle_parentConstraint1.ctx" "R_Arm_IK_Handle.tx";
connectAttr "R_Arm_IK_Handle_parentConstraint1.cty" "R_Arm_IK_Handle.ty";
connectAttr "R_Arm_IK_Handle_parentConstraint1.ctz" "R_Arm_IK_Handle.tz";
connectAttr "R_Arm_IK_Handle_parentConstraint1.crx" "R_Arm_IK_Handle.rx";
connectAttr "R_Arm_IK_Handle_parentConstraint1.cry" "R_Arm_IK_Handle.ry";
connectAttr "R_Arm_IK_Handle_parentConstraint1.crz" "R_Arm_IK_Handle.rz";
connectAttr "R_Arm_IK_Handle_scaleConstraint1.csx" "R_Arm_IK_Handle.sx";
connectAttr "R_Arm_IK_Handle_scaleConstraint1.csy" "R_Arm_IK_Handle.sy";
connectAttr "R_Arm_IK_Handle_scaleConstraint1.csz" "R_Arm_IK_Handle.sz";
connectAttr "R_Arm_IK_Handle.ro" "R_Arm_IK_Handle_parentConstraint1.cro";
connectAttr "R_Arm_IK_Handle.pim" "R_Arm_IK_Handle_parentConstraint1.cpim";
connectAttr "R_Arm_IK_Handle.rp" "R_Arm_IK_Handle_parentConstraint1.crp";
connectAttr "R_Arm_IK_Handle.rpt" "R_Arm_IK_Handle_parentConstraint1.crt";
connectAttr "R_Arm_IK_Ctrl.t" "R_Arm_IK_Handle_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_IK_Ctrl.rp" "R_Arm_IK_Handle_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_IK_Ctrl.rpt" "R_Arm_IK_Handle_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_IK_Ctrl.r" "R_Arm_IK_Handle_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_IK_Ctrl.ro" "R_Arm_IK_Handle_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_IK_Ctrl.s" "R_Arm_IK_Handle_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_IK_Ctrl.pm" "R_Arm_IK_Handle_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_IK_Handle_parentConstraint1.w0" "R_Arm_IK_Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Handle.pim" "R_Arm_IK_Handle_scaleConstraint1.cpim";
connectAttr "R_Arm_IK_Ctrl.s" "R_Arm_IK_Handle_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_IK_Ctrl.pm" "R_Arm_IK_Handle_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_IK_Handle_scaleConstraint1.w0" "R_Arm_IK_Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Dist_01_Loc_pointConstraint1.ctx" "L_Arm_IK_Dist_01_Loc.tx"
		;
connectAttr "L_Arm_IK_Dist_01_Loc_pointConstraint1.cty" "L_Arm_IK_Dist_01_Loc.ty"
		;
connectAttr "L_Arm_IK_Dist_01_Loc_pointConstraint1.ctz" "L_Arm_IK_Dist_01_Loc.tz"
		;
connectAttr "L_Arm_IK_Dist_01_Loc.pim" "L_Arm_IK_Dist_01_Loc_pointConstraint1.cpim"
		;
connectAttr "L_Arm_IK_Dist_01_Loc.rp" "L_Arm_IK_Dist_01_Loc_pointConstraint1.crp"
		;
connectAttr "L_Arm_IK_Dist_01_Loc.rpt" "L_Arm_IK_Dist_01_Loc_pointConstraint1.crt"
		;
connectAttr "L_Arm_01_Jnt.t" "L_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_01_Jnt.rp" "L_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].trp";
connectAttr "L_Arm_01_Jnt.rpt" "L_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_01_Jnt.pm" "L_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tpm";
connectAttr "L_Arm_IK_Dist_01_Loc_pointConstraint1.w0" "L_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint3.ctx" "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.tx"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint3.cty" "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.ty"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint3.ctz" "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.tz"
		;
connectAttr "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.pim" "L_Arm_IK_Dist_03_Loc_pointConstraint3.cpim"
		;
connectAttr "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.rp" "L_Arm_IK_Dist_03_Loc_pointConstraint3.crp"
		;
connectAttr "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.rpt" "L_Arm_IK_Dist_03_Loc_pointConstraint3.crt"
		;
connectAttr "L_Arm_IK_Ctrl.t" "L_Arm_IK_Dist_03_Loc_pointConstraint3.tg[0].tt";
connectAttr "L_Arm_IK_Ctrl.rp" "L_Arm_IK_Dist_03_Loc_pointConstraint3.tg[0].trp"
		;
connectAttr "L_Arm_IK_Ctrl.rpt" "L_Arm_IK_Dist_03_Loc_pointConstraint3.tg[0].trt"
		;
connectAttr "L_Arm_IK_Ctrl.pm" "L_Arm_IK_Dist_03_Loc_pointConstraint3.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint3.w0" "L_Arm_IK_Dist_03_Loc_pointConstraint3.tg[0].tw"
		;
connectAttr "R_Arm_IK_Dist_01_Loc_pointConstraint1.ctx" "R_Arm_IK_Dist_01_Loc.tx"
		;
connectAttr "R_Arm_IK_Dist_01_Loc_pointConstraint1.cty" "R_Arm_IK_Dist_01_Loc.ty"
		;
connectAttr "R_Arm_IK_Dist_01_Loc_pointConstraint1.ctz" "R_Arm_IK_Dist_01_Loc.tz"
		;
connectAttr "R_Arm_IK_Dist_01_Loc.pim" "R_Arm_IK_Dist_01_Loc_pointConstraint1.cpim"
		;
connectAttr "R_Arm_IK_Dist_01_Loc.rp" "R_Arm_IK_Dist_01_Loc_pointConstraint1.crp"
		;
connectAttr "R_Arm_IK_Dist_01_Loc.rpt" "R_Arm_IK_Dist_01_Loc_pointConstraint1.crt"
		;
connectAttr "R_Arm_01_Jnt.t" "R_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_01_Jnt.rp" "R_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].trp";
connectAttr "R_Arm_01_Jnt.rpt" "R_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_01_Jnt.pm" "R_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tpm";
connectAttr "R_Arm_IK_Dist_01_Loc_pointConstraint1.w0" "R_Arm_IK_Dist_01_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint2.ctx" "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.tx"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint2.cty" "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.ty"
		;
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint2.ctz" "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.tz"
		;
connectAttr "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.pim" "L_Arm_IK_Dist_03_Loc_pointConstraint2.cpim"
		;
connectAttr "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.rp" "L_Arm_IK_Dist_03_Loc_pointConstraint2.crp"
		;
connectAttr "|IK_Stretch|Deformers|R_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc.rpt" "L_Arm_IK_Dist_03_Loc_pointConstraint2.crt"
		;
connectAttr "R_Arm_03_Jnt.t" "L_Arm_IK_Dist_03_Loc_pointConstraint2.tg[0].tt";
connectAttr "R_Arm_03_Jnt.rp" "L_Arm_IK_Dist_03_Loc_pointConstraint2.tg[0].trp";
connectAttr "R_Arm_03_Jnt.rpt" "L_Arm_IK_Dist_03_Loc_pointConstraint2.tg[0].trt"
		;
connectAttr "R_Arm_03_Jnt.pm" "L_Arm_IK_Dist_03_Loc_pointConstraint2.tg[0].tpm";
connectAttr "L_Arm_IK_Dist_03_Loc_pointConstraint2.w0" "L_Arm_IK_Dist_03_Loc_pointConstraint2.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "L_Arm_IK_Ctrl.Length01" "L_Arm_Joint_02_Length_MD.i2x";
connectAttr "L_Arm_IK_Ctrl.Length02" "L_Arm_Joint_03_Length_MD.i2x";
connectAttr "L_Arm_Joint_02_Length_MD.ox" "L_Arm_Joint_Length_PMA.i1[0]";
connectAttr "L_Arm_Joint_03_Length_MD.ox" "L_Arm_Joint_Length_PMA.i1[1]";
connectAttr "L_Arm_IK_Dist_01_LocShape.wp" "L_Arm_Distance_DB.p1";
connectAttr "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc|L_Arm_IK_Dist_03_LocShape.wp" "L_Arm_Distance_DB.p2"
		;
connectAttr "L_Arm_Distance_DB.d" "L_Arm_Stretch_Scalar_MD.i1x";
connectAttr "L_Arm_Global_Scale_MD.ox" "L_Arm_Stretch_Scalar_MD.i2x";
connectAttr "L_Arm_Joint_02_Length_MD.i1x" "L_Arm_Joint_02_Scaled_Length_MD.i1x"
		;
connectAttr "L_Arm_Stretch_BC.opr" "L_Arm_Joint_02_Scaled_Length_MD.i2x";
connectAttr "L_Arm_Joint_03_Length_MD.i1x" "L_Arm_Joint_03_Scaled_Length_MD.i1x"
		;
connectAttr "L_Arm_Stretch_BC.opr" "L_Arm_Joint_03_Scaled_Length_MD.i2x";
connectAttr "L_Arm_Distance_DB.d" "L_Arm_Stretch_Cond.ft";
connectAttr "L_Arm_Global_Scale_MD.ox" "L_Arm_Stretch_Cond.st";
connectAttr "L_Arm_Stretch_Scalar_MD.ox" "L_Arm_Stretch_Cond.ctr";
connectAttr "L_Arm_Stretch_Cond.ocr" "L_Arm_Stretch_BC.c1r";
connectAttr "floatConstant1.of" "L_Arm_Stretch_BC.c2r";
connectAttr "L_Arm_IK_Ctrl.Blender" "L_Arm_Stretch_BC.b";
connectAttr "Transform_Ctrl.GlobalScale" "L_Arm_Global_Scale_MD.i2x";
connectAttr "L_Arm_Joint_Length_PMA.o1" "L_Arm_Global_Scale_MD.i1x";
connectAttr "L_Arm_Stretch_Cond.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "L_Arm_Joint_Length_PMA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "|IK_Stretch|Deformers|L_Arm_IK_Dist_Loc_Grp|L_Arm_IK_Dist_03_Loc|L_Arm_IK_Dist_03_LocShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "L_Arm_Joint_02_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "L_Arm_Joint_03_Scaled_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "L_Arm_Joint_03_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "L_Arm_IK_Dist_01_LocShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "L_Arm_Stretch_Scalar_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "L_Arm_Distance_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "L_Arm_02_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "L_Arm_03_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "L_Arm_Joint_02_Scaled_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "L_Arm_Stretch_BC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "L_Arm_IK_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "IK_Stretch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "floatConstant1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "Transform_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "L_Arm_Global_Scale_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "L_Arm_Joint_02_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Joint_03_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Joint_Length_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Distance_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Stretch_Scalar_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Joint_02_Scaled_Length_MD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_Arm_Joint_03_Scaled_Length_MD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_Arm_Stretch_Cond.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Stretch_BC.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatConstant1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Global_Scale_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of StretchyIK Rig 001.ma
