/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,550],
		["TRYK_U_B_Denim_T_WH",nil,550],
		["TRYK_U_B_Denim_T_BK",nil,550],
		["TRYK_U_B_Denim_T_BG_WH",nil,550],
		["TRYK_U_B_Denim_T_BG_BK",nil,550],
		["TRYK_U_B_RED_T_BR",nil,550],
		["TRYK_U_B_RED_T_BG_BR",nil,550],
		["TRYK_T_camo_tan",nil,550],
		["TRYK_U_taki_BL",nil,550],
		["TRYK_U_taki_BLK",nil,550],
		["TRYK_U_taki_COY",nil,550],
		["TRYK_U_taki_wh",nil,550],
		["TRYK_U_taki_G_BL",nil,550],
		["TRYK_U_taki_G_BLK",nil,550],
		["TRYK_U_taki_G_COY",nil,550],
		["TRYK_U_taki_G_WH",nil,550],
		["TRYK_U_pad_j",nil,550],
		["TRYK_U_pad_j_blk",nil,550],
		["TRYK_U_denim_jersey_blu",nil,550],
		["TRYK_U_denim_jersey_blk",nil,550],
		["TRYK_U_denim_hood_nc",nil,550],
		["TRYK_U_denim_hood_mc",nil,550],
		["TRYK_U_denim_hood_blk",nil,550],
		["TRYK_U_denim_hood_3c",nil,550],
		["TRYK_T_TAN_PAD",nil,550],
		["TRYK_T_OD_PAD",nil,550],
		["TRYK_T_BLK_PAD",nil,550],
		["TRYK_U_hood_nc",nil,550],
		["TRYK_U_hood_mc",nil,550],
		["TRYK_hoodie_Wood",nil,550],
		["TRYK_hoodie_FR",nil,550],
		["TRYK_U_pad_hood_tan",nil,550],
		["TRYK_U_pad_hood_Cl",nil,550],
		["TRYK_U_pad_hood_odBK",nil,550],
		["TRYK_U_nohoodPcu_gry",nil,550],
		["TRYK_U_pad_hood_BKT2",nil,550],
		["TRYK_U_pad_hood_Blk",nil,550],
		["TRYK_U_pad_hood_Blod",nil,550],
		["TRYK_shirts_TAN_PAD_YEL",nil,550],
		["TRYK_shirts_OD_PAD_YEL",nil,550],
		["TRYK_shirts_BLK_PAD_YEL",nil,550],
		["TRYK_shirts_PAD_YEL",nil,550],
		["TRYK_shirts_TAN_PAD_RED2",nil,550],
		["TRYK_shirts_OD_PAD_RED2",nil,550],
		["TRYK_shirts_BLK_PAD_RED2",nil,550],
		["TRYK_shirts_TAN_PAD",nil,550],
		["TRYK_shirts_OD_PAD",nil,550],
		["TRYK_shirts_BLK_PAD",nil,550],
		["TRYK_shirts_TAN_PAD_BLU3",nil,550],
		["TRYK_shirts_OD_PAD_BLU3",nil,550],
		["TRYK_shirts_BLK_PAD_BLU3",nil,550],
		["TRYK_shirts_TAN_PAD_BLW",nil,550],
		["TRYK_shirts_OD_PAD_BLW",nil,550],
		["TRYK_shirts_BLK_PAD_BLW",nil,550],
		["TRYK_shirts_TAN_PAD_BL",nil,550],
		["TRYK_shirts_TAN_PAD_BK",nil,550],
		["TRYK_shirts_BLK_PAD_BK",nil,550],
		["TRYK_shirts_DENIM_WHB_Sleeve",nil,550],
		["TRYK_shirts_DENIM_WH_Sleeve",nil,550],
		["TRYK_shirts_DENIM_RED2_Sleeve",nil,550],
		["TRYK_shirts_DENIM_R_Sleeve",nil,550],
		["TRYK_shirts_DENIM_BWH_Sleeve",nil,550],
		["TRYK_shirts_DENIM_BL_Sleeve",nil,550],
		["TRYK_shirts_DENIM_BK_Sleeve",nil,550],
		["TRYK_shirts_DENIM_ylb_Sleeve",nil,550],
		["TRYK_shirts_DENIM_od_Sleeve",nil,550],
		["TRYK_shirts_DENIM_ylb",nil,550],
		["TRYK_shirts_DENIM_WHB",nil,550],
		["TRYK_shirts_DENIM_WH",nil,550],
		["TRYK_shirts_DENIM_RED2",nil,550],
		["TRYK_shirts_DENIM_R",nil,550],
		["TRYK_shirts_DENIM_od",nil,550],
		["TRYK_shirts_DENIM_BWH",nil,550],
		["TRYK_shirts_DENIM_BL",nil,550],
		["TRYK_U_B_wh_tan_Rollup_CombatUniform",nil,550],
		["TRYK_U_B_wh_OD_Rollup_CombatUniform",nil,550],
		["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,550],
		["TRYK_U_B_BLK_tan_Rollup_CombatUniform",nil,500],
		["TRYK_U_B_BLK_OD_Rollup_CombatUniform",nil,550],
		["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,550],
		["TRYK_U_B_PCUODs",nil,550],
		["TRYK_U_B_Wood_PCUs",nil,550],
		["TRYK_U_B_Wood_PCUs_R",nil,550],
		["TRYK_U_B_UCP_PCUs",nil,550],
		["TRYK_U_B_UCP_PCUs_R",nil,550],
		["TRYK_U_B_GRY_PCUs",nil,550],
		["TRYK_U_B_GRY_PCUs_R",nil,550],
		["TRYK_U_B_PCUGs_gry",nil,550],
		["TRYK_U_B_PCUGs_BLK",nil,550],
		["TRYK_U_B_PCUGs_OD_R",nil,550],
		["TRYK_U_B_PCUGs_gry_R",nil,550],
		["TRYK_U_B_PCUGs_BLK_R",nil,550],
		["TRYK_U_B_PCUODHs",nil,550],
		["TRYK_U_B_PCUGHs",nil,550],
		["TRYK_U_B_PCUHs",nil,550],
		["TRYK_U_Bts_GRYGRY_PCUs",nil,550],
		["TRYK_U_Bts_PCUGs",nil,550],
		["TRYK_U_Bts_PCUs",nil,550],
		["TRYK_U_B_ODTANR_CombatUniformTshirt",nil,550],
		["TRYK_U_B_ODTAN_CombatUniform",nil,550],
		["TRYK_U_B_OD_OD_R_CombatUniform",nil,550],
		["TRYK_U_B_OD_OD_CombatUniform",nil,550],
		["TRYK_U_B_NATO_OCP_BLK_R_CombatUniform",nil,550],
		["TRYK_OVERALL_SAGE_BLKboots",nil,550],
		["TRYK_OVERALL_flesh",nil,550],
		["TRYK_OVERALL_SAGE_BLKboots_nk_blk",nil,550],
		["TRYK_OVERALL_nok_flesh",nil,550],
		["TRYK_HRP_USMC",nil,550],
		["TRYK_HRP_khk",nil,550],
		["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,550],
		["TRYK_U_B_GRTAN_CombatUniform",nil,550],
		["TRYK_U_B_fleece_UCP",nil,550],
		["TRYK_U_B_fleece",nil,550],
		["TRYK_U_B_3CD_BLK_BDUTshirt2",nil,550],
		["TRYK_U_B_3CD_BLK_BDUTshirt",nil,550],
		["TRYK_U_B_BLK_TAN_1",nil,550],
		["TRYK_U_B_BLK_TAN_2",nil,550],
		["TRYK_U_B_ODTAN_Tshirt",nil,550],
		["TRYK_U_B_ODTAN",nil,550],
		["TRYK_U_B_OD_BLK",nil,550],
		["TRYK_U_B_OD_BLK_2",nil,550],
		["TRYK_U_B_BLK_OD",nil,550],
		["TRYK_U_B_BLK",nil,550],
		["TRYK_U_B_BLK_Tshirt",nil,550],
		["TRYK_U_B_BLKTAN",nil,550],
		["TRYK_U_B_BLKTAN_Tshirt",nil,550],
		["TRYK_U_B_C02_Tsirt",nil,550],
		["TRYK_U_B_BLTAN_T",nil,550],
		["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,550],
		["TRYK_U_B_BLKTAN_CombatUniform",nil,550],
		["TRYK_U_B_BLOD_T",nil,550],
		["TRYK_U_B_BLKBLK_R_CombatUniform",nil,550],
		["A3L_Priest_Uniform","Priest Uniform",10000],
		["A3L_Suit_Uniform","Suit",17500],
		["A3L_Character_Uniform","Life Uniform",15000],
		["A3L_Dude_Outfit","Dude outfit",20000],
		["A3L_Farmer_Outfit","Farmer Outfit",20000],
		["A3L_Worker_Outfit","Worker Outfit",20000],
		["A3LShirt","ArmA 3 Life Shirt",250],
		["A3L_Poop2day","I Pooped Today!",275],
		["A3L_A3LogoPants","A3L Logo Pants",150],
		["pervt_uni","Pervert Shirt",175],
		["BluePlaid_uni","A3L Plaid (Blue)",125],
		["OrangePlaid_uni","A3L Plaid (Orange)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",350],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",350],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",350],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",350],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",350],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",350],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",350],
		["sohoku_uni","A3L Polo (Sohoku)",350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",350],
		["walkingdead","The Walking Dead",350]


		];
	};

	//Hats
	case 1:
	{
		[
		["TRYK_H_woolhat_WH",nil,150],
		["TRYK_H_woolhat_tan",nil,150],
		["TRYK_H_woolhat_CW",nil,150],
		["TRYK_H_woolhat_cu",nil,150],
		["TRYK_H_woolhat_br",nil,150],
		["TRYK_H_woolhat",nil,150],
		["A3L_Legoman","Lego Helmet",10000],
		["A3L_soa_helmet","Biker Helmet",4000],
		["A3L_gangster_hat","Gangster Mask",1000],
		["A3L_Mask","Mask",1000],
		["A3L_longhairblack","Long Hair Black",120],
		["A3L_longhairblond","Long Hair Blond",120],
		["A3L_longhairbrown","Long Hair Brown",120],
		["A3L_Crown","Crown",120],
		["cowboyhat","Cowboyhat",120],
		["A3L_mexicanhat","Mexican Hat",120],
		["santahat","Santa hat",120],
		["A3L_Sombrero","Sombrero",120],
		["turban","Turban",120],
		["A3L_russianhat","Russianhat",120],
		["H_Cap_tan",nil,120],
		["H_Cap_blk",nil,120],
		["H_Cap_blk_CMMG",nil,120],
		["H_Cap_brn_SPECOPS",nil,120],
		["H_Cap_tan_specops_US",nil,120],
		["H_Cap_khaki_specops_UK",nil,120],
		["H_Cap_grn",nil,120],
		["H_Cap_grn_BI",nil,120],
		["H_Cap_blk_Raven",nil,120],
		["H_Cap_blk_ION",nil,120]

		];
	};

	//Glasses
	case 2:
	{
		[
		["G_Shades_Black",nil,25],
		["G_Shades_Blue",nil,20],
		["G_Sport_Blackred",nil,20],
		["G_Sport_Checkered",nil,20],
		["G_Sport_Blackyellow",nil,20],
		["G_Sport_BlackWhite",nil,20],
		["G_Squares",nil,10],
		["G_Aviator",nil,100],
		["G_Lady_Mirror",nil,150],
		["G_Lady_Dark",nil,150],
		["G_Lady_Blue",nil,150],
		["G_Lowprofile",nil,30],
		["G_Combat",nil,55]
		];
	};

	//Vest
	case 3:
	{
		[
		["V_Press_F",nil,350]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};
