#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											["Chemlight_red",nil,200],
											["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
	
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Cop Basic",
                                        [
												["FirstAidKit",nil,1],
												["Medikit",nil,1],
												["ToolKit",nil,1],
												
                                                ["Taser_26","Taser",1],
												["26_cartridge",nil,1],
                                                
												["Chemlight_red",nil,1],
                                                ["Binocular",nil,1],
                                                ["ItemGPS",nil,1],
                                                ["NVGoggles",nil,1],
                                                ["tf_anprc152",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_cadet":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not at a cadet!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
                                                ["RH_g19",nil,500],
												["RH_17Rnd_9x19_g17",nil,100],
												["Taser_26","Taser",500],
												["26_cartridge",nil,100]
                                        ]
                                ];
                        };
                };
        };
	
        case "cop_marshals":
         {
                 switch(true) do
                 {
                         case (playerSide != west): {"You are not a cop!"};
                         case (__GETC__(life_coplevel) < 7): {"You are not a Marshal"};
                         default
                         {
                                 ["Only Marshal Shop",
                                         [
 												["FHQ_srifle_M2010_BLK",nil,500],
 												["FHQ_rem_5Rnd_300Win_M2010",nil,100],
 												["RH_M4A6",nil,500],
 												["RH_30Rnd_68x43_FMJ",nil,100],
 												["hlc_rifle_bcmjack",nil,500],
 												["hlc_30rnd_556x45_EPR",nil,100],
 												["hlc_50rnd_556x45_EPR",nil,100],
 												["hlc_rifle_Bushmaster300",nil,500],
 												["29rnd_300BLK_STANAG",nil,100],
 												["hlc_rifle_samr2",nil,500],
 												["hlc_30rnd_556x45_EPR",nil,100],
 												["hlc_smg_mp510",nil,500],
 												["hlc_30Rnd_10mm_B_MP5",nil,50],
 												["RH_M16A6",nil,50],
 												["RH_M27IAR",nil,50],
 												["RH_60Rnd_556x45_M855A1",nil,50],
 												["RH_30Rnd_68x43_FMJ",nil,50],
 												["optic_DMS",nil,1],
 												["RH_ta648",nil,1],
 												["optic_AMS",nil,1],
 												["RH_barska_rds",nil,1],
 												["KA_M7A3","Teargas",500],
 												["optic_Hamr",nil,1],
 												["RH_ta31rmr_2D",nil,1],
 												["SMA_ELCAN_SPECTER_GREEN_RDS",nil,250],
 												["SMA_SFFL_BLK",nil,1],
 												["RH_qdss_nt4",nil,1],
 												["SMA_supp2b_556",nil,1],
 												["muzzle_snds_B",nil,1],
 												["hlc_muzzle_556NATO_KAC",nil,1]
                                         ]
                                 ];
                         };
                 };
         };
 
		case "cop_officer":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a officer"};
                        default
                        {
                                ["Officer Shop",
                                        [
                                                ["KA_UMP45",nil,500],
												["KA_25Rnd_45ACP_FMJ_Mag",nil,100],
												["RH_cz75",nil,500],
												["RH_16Rnd_9x19_CZ",nil,100],
												["RH_M16A2",nil,500],
												["30Rnd_556x45_Stanag",nil,100],
												["optic_ACO_grn",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_seniorofc":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a senior officer!"};
                        default
                        {
                                ["Senior Officer Shop",
                                        [
                                                ["RH_M16A3",nil,500],
												["30Rnd_556x45_Stanag",nil,100],
												["RH_p226",nil,500],
												["RH_15Rnd_9x19_SIG",nil,100],
												["optic_ACO_grn",nil,1],
												["optic_Arco_blk_F",nil,1]
                                        ]
                                ];
                        };
                };
        };
      
	    case "cop_corp":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a corporal!"};
                        default
                        {
                                ["Corporal Shop",
                                        [
                                                ["SMA_M4MOE_BLK1",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["RH_usp",nil,100],
												["RH_12Rnd_45cal_usp",nil,100],
												["SMA_MK18MOEODBLK",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["optic_ACO_grn",nil,250],
												["optic_Arco_blk_F",nil,250]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_sgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["SMA_HK417vfg",nil,500],
												["SMA_20Rnd_762x51mm_M80A1_EPR",nil,100],
												["RH_bull",nil,500],
												["RH_6Rnd_454_Mag",nil,100],
												["SMA_AAC_MPW_12_Black",nil,500],
												["SMA_30Rnd_762x35_BLK_EPR",nil,100],
												["optic_ACO_grn",nil,1],
												["optic_Arco_blk_F",nil,1],
												["optic_AMS",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_csgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not at a Chief Sergeant!"};
                        default
                        {
                                ["Staff Sergeant Shop",
                                        [
                                                ["SMA_CTARBLK_F",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["RH_deagle",nil,500],
												["RH_7Rnd_50_AE",nil,100],
												["SMA_Steyr_AUG_BLACK_F",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["optic_ACO_grn",nil,1],
												["optic_Arco_blk_F",nil,1],
												["optic_AMS",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_deptcommand":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 6): {"Youre not Department Command"};
                        default
                        {
                                ["Department Command Shop",
                                        [
                                                ["launch_B_Titan_F",nil,5000],
												["Titan_AA",nil,100],
												["FHQ_srifle_M2010_BLK",nil,500],
												["FHQ_rem_5Rnd_300Win_M2010",nil,100],
												["arifle_MX_Black_F",nil,500],
												["30Rnd_65x39_caseless_mag",nil,100],
												["RH_Mk12mod1",nil,500],
												["RH_30Rnd_556x45_Mk262",nil,100],
												["SMA_HK416CUSTOMvfgB",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["SMA_AAC_MPW_9_Black",nil,500],
												["SMA_30Rnd_762x35_BLK_EPR",nil,100],
												["optic_ACO_grn",nil,1],
												["optic_Arco_blk_F",nil,1],
												["optic_AMS",nil,1]
											        ["RH_M16A6",nil,50],											["RH_M16A6",nil,50],
												["RH_M27IAR",nil,50],
												["RH_60Rnd_556x45_M855A1",nil,50],
												["RH_30Rnd_68x43_FMJ",nil,50],
												["hlc_muzzle_556NATO_KAC",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_statecommand":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not at a State Command Member"};
                        default
                        {
                                ["State Command Shop",
                                        [
                                                ["launch_B_Titan_F",nil,5000],
												["Titan_AA",nil,100],
												["FHQ_srifle_M2010_BLK",nil,500],
												["FHQ_rem_5Rnd_300Win_M2010",nil,100],
												["arifle_MX_Black_F",nil,500],
												["30Rnd_65x39_caseless_mag",nil,100],
												["RH_Mk12mod1",nil,500],
												["RH_30Rnd_556x45_Mk262",nil,100],
												["SMA_HK416CUSTOMvfgB",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,100],
												["SMA_AAC_MPW_9_Black",nil,500],
												["SMA_30Rnd_762x35_BLK_EPR",nil,100],
												["KPFS_G22",nil,500],
												["kpfs_5Rnd_86x70_G22",nil,100],
												["hlc_rifle_slr107u",nil,500],
												["hlc_30Rnd_762x39_b_ak",nil,100],
												["hlc_rifle_ak12",nil,500],
												["hlc_30Rnd_545x39_B_AK",nil,100],
												["srifle_LRR_F",nil,500],
												["7Rnd_408_Mag",nil,100],
												["optic_ACO_grn",nil,1],
												["optic_Arco_blk_F",nil,1],
												["optic_AMS",nil,1],
												["SMA_eotech552_3XDOWN",nil,1],
												["SMA_ELCAN_SPECTER",nil,1],
												["optic_ERCO_blk_F",nil,1],
												["SMA_MICRO_T2",nil,1],
												["optic_Holosight_blk_F",nil,1],
												["SMA_BARSKA",nil,1],
												["SMA_ANPEQ15_BLK",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_sertcert":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not at a sert/cert officer!"};
                        default
                        {
                                ["SERT And CERT Shop",
                                        [
                                                ["launch_B_Titan_F",nil,5000],
												["Titan_AA",nil,100],
												["FHQ_srifle_M2010_BLK",nil,500],
												["FHQ_rem_5Rnd_300Win_M2010",nil,50],
												["arifle_MX_Black_F",nil,500],
												["30Rnd_65x39_caseless_mag",nil,50],
												["RH_Mk12mod1",nil,500],
												["RH_30Rnd_556x45_Mk262",nil,50],
												["hlc_smg_mp510",nil,500],
												["hlc_30Rnd_10mm_B_MP5",nil,50],
												["SMA_HK416CUSTOMvfgB",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_AAC_MPW_9_Black",nil,500],
												["SMA_30Rnd_762x35_BLK_EPR",nil,50],
												["KPFS_G22",nil,500],
												["kpfs_5Rnd_86x70_G22",nil,50],
												["hlc_rifle_slr107u",nil,500],
												["hlc_30Rnd_762x39_b_ak",nil,50],
												["hlc_rifle_ak12",nil,500],
												["hlc_30Rnd_545x39_B_AK",nil,50],
												["srifle_LRR_F",nil,500],
												["30Rnd_556x45_Stanag",nil,50],
												["RH_m4",nil,500],
												["30Rnd_556x45_Stanag",nil,50],
												["RH_M4A1_ris",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_M4MOE",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_ACRblk",nil,500],
												["30Rnd_45ACP_Mag_SMG_01",nil,50],
												["SMG_01_F",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_L85RIS",nil,500],
												["SMA_30Rnd_68x43_SPC_FMJ",nil,50],
												["SMA_ACRREMAFGblk",nil,500],
												["SMA_30Rnd_762x35_BLK_EPR",nil,50],
												["SMA_AAC_MPW_12_Black",nil,500],
												["SMA_30Rnd_68x43_SPC_FMJ",nil,200],
												["SMA_ACRREMblk",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_M4MOE_Tan",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_Mk16_blackQCB",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_HK416vfg",nil,500],
												["SMA_30Rnd_556x45_M855A1",nil,50],
												["SMA_L85RIS",nil,500],
												["SMA_20Rnd_762x51mm_M80A1_EPR",nil,50],
												["SMA_HK417_16in",nil,500],
												["kpfs_5Rnd_86x70_G22",nil,50],
												["KPFS_G22",nil,500],
												["7Rnd_408_Mag",nil,50],
												["srifle_LRR_F",nil,500],
												["RH_30Rnd_68x43_FMJ",nil,50],
												["RH_M4A6",nil,500],
												["KA_M7A3","Teargas",500],
												["KA_M814","EMP Granade",500],
												["KA_M7290","Flashbang",500],
												["KA_M84","StunGranade",500],
												["RH_ta648",nil,250],
												["RH_ta31rmr_2D",nil,250],
												["optic_DMS",nil,250],
												["RH_barska_rds",nil,250],
												["optic_Hamr",nil,250],
												["optic_AMS",nil,250],
												["optic_LRPS",nil,250],
												["SMA_ELCAN_SPECTER_GREEN_RDS",nil,250],
												["optic_ACO_grn",nil,250],
												["optic_Arco_blk_F",nil,250],
												["optic_AMS",nil,250],
												["SMA_eotech552_3XDOWN",nil,250],
												["SMA_ELCAN_SPECTER",nil,250],
												["optic_ERCO_blk_F",nil,250],
												["SMA_MICRO_T2",nil,250],
												["optic_Holosight_blk_F",nil,250],
												["SMA_BARSKA",nil,250],
												["SMA_ANPEQ15_BLK",nil,250],
												["SMA_AAC_762_sdn6",nil,250],
												["SMA_supp2b_556",nil,250],
												["SMA_supp_762",nil,250]
                                        ]
                                ];
                        };
                };
        };	    

        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["hgun_PDW2000_F",nil,20000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,30000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,30000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,30000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,30000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_rpk",nil,30000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["RH_tec9",nil,20000],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,20000],
											["Katana_swing",nil,200],
											["RH_g18",nil,20000],
											["RH_fnp45t",nil,15000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,20000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_ar10",nil,170000],
											["RH_20Rnd_762x51_AR10",nil,200],
											["hlc_rifle_RK62",nil,140000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["SMA_Mk17_black",nil,180000],
											["SMA_20Rnd_762x51mm_M80A1_EPR",nil,200],
											["FHQ_arifle_ACR_tan",nil,300000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "lsmo":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_LSMO): {"You don't have a LSMO license!"};
                        default
                        {
                                ["LSMO Weapon Shop",
                                        [
											["RH_fn57"]
											["RH_20Rnd_57x28_FN"]
											["RH_m9"]
											["RH_15Rnd_9x19_M9"]								
											["RH_M4_ris_m",nil,15],
											["RH_30Rnd_556x45_M855A1",nil,15],
											["RH_barska_rds",nil,15],
											["SMA_M4afgSTOCK",nil,15],
											["SMA_30Rnd_556x45_M855A1",nil,15],
											["RH_ta31rmr",nil,15],
											["FHQ_arifle_ACR_blk",nil,15],
											["FHQ_rem_30Rnd_680x43_ACR",nil,15],
											["KA_UMP40",nil,15],
											["KA_30Rnd_40SW_FMJ_Mag",nil,15],
											["RH_barska_rds",nil,15],
											["FHQ_srifle_M2010_BLK",nil,15],
											["FHQ_rem_5Rnd_300Win_M2010",nil,15],
											["RH_accupoint",nil,15],
											["RH_m3lr",nil,15],
											["RH_sbr9",nil,15],
											["RH_32Rnd_9mm_M822",nil,15],
											["RH_barska_rds",nil,15],
											["H_Cap_blk",nil,15],
											["A3L_SSTie",nil,15],
											["CG_SERT_Vests",nil,15],
											["cg_invisbp",nil,15]
										]
                                ];
                        };
                };
        };
		
		case "supporter1":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["hgun_PDW2000_F",nil,80000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,140000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_rpk",nil,190000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["RH_tec9",nil,20000],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,20000],
											["Katana_swing",nil,200],
											["RH_g18",nil,20000],
											["RH_fnp45t",nil,15000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,20000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_ar10",nil,170000],
											["RH_20Rnd_762x51_AR10",nil,200],
											["hlc_rifle_RK62",nil,140000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["SMA_Mk17_black",nil,180000],
											["SMA_20Rnd_762x51mm_M80A1_EPR",nil,200],
											["FHQ_arifle_ACR_tan",nil,300000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "supporter2":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["hgun_PDW2000_F",nil,80000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,140000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,160000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_rpk",nil,190000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["RH_tec9",nil,20000],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,20000],
											["Katana_swing",nil,200],
											["RH_g18",nil,20000],
											["RH_fnp45t",nil,15000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,20000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_ar10",nil,170000],
											["RH_20Rnd_762x51_AR10",nil,200],
											["hlc_rifle_RK62",nil,140000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["SMA_Mk17_black",nil,180000],
											["SMA_20Rnd_762x51mm_M80A1_EPR",nil,200],
											["FHQ_arifle_ACR_tan",nil,300000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
       
	   case "blackwatch":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_blackwatch): {"You don't have a apart of Blackwatch!"};
                        default
                        {
                                ["Blackwatch Shop",
                                        [
											["SMA_Mk16_blackQCB",nil,80000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["RH_M4A6",nil,87000],
											["RH_30Rnd_68x43_FMJ",nil,200],
											["RH_M16A6",nil,50000],
											["RH_30Rnd_68x43_FMJ",nil,200],
											["RH_M27IAR",nil,100000],
											["RH_60Rnd_556x45_M855A1",nil,200],
											["RH_uspm",nil,10000],
											["RH_16Rnd_40cal_usp",nil,200],
											["RH_bullb",nil,10000],
											["RH_6Rnd_454_Mag",nil,200],
											["RH_ta648",nil,200],
											["RH_ta31rmr_2D",nil,200],
											["RH_barska_rds",nil,200],
											["optic_AMS",nil,200],
											["RH_fa762_des",nil,200],
											["RH_hbsd",nil,200],
											["RH_qdss_nt4",nil,200],
											["muzzle_snds_B",nil,200],
											["RH_matchsd",nil,200],
											["SMA_supp2b_556",nil,200],
											["TRYK_U_B_Snow_CombatUniform",nil,50],
											["TRYK_U_denim_hood_blk",nil,50],
											["gavin_gang_blackwatch",nil,50],
											["cg_invisbp",nil,50],
											["TRYK_H_Helmet_Snow",nil,50],
											["TRYK_H_PASGT_BLK",nil,50],
											["G_Bandanna_aviator",nil,50]
										]
                                ];
                        };
                };
        };
		
		case "warriors":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_warriors): {"You are not apart of the Warrios!"};
                        default
                        {
                                ["Warriors Shop",
                                        [
											["hgun_PDW2000_F",nil,45000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,65000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_ar10",nil,56000],
											["RH_20Rnd_762x51_AR10",nil,200],
											["hlc_rifle_RK62",nil,67000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["SMA_Mk17_black",nil,55000],
											["SMA_20Rnd_762x51mm_M80A1_EPR",nil,200],
											["FHQ_arifle_ACR_tan",nil,68000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200],
											["gavin_gang_warriors",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "rangers":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rangers): {"You are not apart of the Rangers!"};
                        default
                        {
                                ["Rangers Shop",
                                        [
											["hgun_PDW2000_F",nil,45000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,65000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["hlc_rifle_RK62",nil,67000],
											["hlc_30Rnd_762x39_b_ak",nil,200],
											["FHQ_arifle_ACR_tan",nil,68000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["AN94_MTK83",nil,15000],
											["KA_30Rnd_545x39_7N24_AP",nil,200],
											["RH_barska_rds",nil,10],
											["hlc_rifle_awcovert_BL",nil,55000],
											["hlc_5rnd_300WM_FMJ_AWM",nil,50],
											["RH_leu_mk4",nil,50],
											["RH_M4_moe_b",nil,15000],
											["RH_60Rnd_556x45_Mk262",nil,50],
											["RH_eotech553",nil,50],
											["KA_M98B",nil,55000],
											["KA_M98B_10Rnd_338_API526_Mag",nil,50],
											["RH_leu_mk4",nil,50],
											["RHARD_M4DDR_F",nil,15000],
											["30Rnd_556x45_Stanag",nil,50],
											["RH_eotech553mag",nil,50],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "outlaws":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_outlaws): {"You are not a Outlaw!"};
                        default
                        {
                                ["Outlaws Shop",
                                        [
											// Clothing
											["A3LCRTUniformBlack",nil,50],
											["TRYK_V_ArmorVest_Delta2",nil,50],
											["G_Bandanna_beast",nil,50],
											["max_sheriff_Hat",nil,50],
											["cg_invisbp",nil,50],
											
											["SMA_AUG_A3_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["SMA_HK416CUSTOMCQBafg",nil,100000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["SMA_ACRREMblk",nil,78000],
											["SMA_30Rnd_68x43_SPC_FMJ",nil,200],
											["RH_M27IAR",nil,80000],
											["RH_60Rnd_556x45_M855A1",nil,200],
											["RH_M4A1_ris",nil,67000],
											["RH_30Rnd_556x45_M855A1",nil,200],
											["RH_fn57",nil,10000],
											["RH_20Rnd_57x28_FN",nil,200],
											["RH_Deaglem",nil,10000],
											["RH_7Rnd_50_AE",nil,200],
											["RH_bullb",nil,10000],
											["RH_6Rnd_454_Mag",nil,200],
											["hlc_rifle_ak12",nil,200],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_ta31rmr_2D",nil,200],
											["RH_compM2",nil,200],
											["optic_AMS",nil,200],
											["SMA_ELCAN_SPECTER",nil,200],
											["optic_DMS",nil,200],
											["acc_flashlight",nil,200],
											["SMA_SFFL_BLK",nil,200],
											["acc_pointer_IR",nil,200]
										]	
                                ];
                        };
                };
        };
		
		case "disney":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_disney): {"You cannot go into the mickey mouse clubhouse!"};
                        default
                        {
                                ["Mickey Mouse Clubehouse Shop",
                                        [
											// Clothing
											["TRYK_V_ArmorVest_Delta2",nil,50],
											["Cg_invisbp",nil,50],
											["H_MickeyMask",nil,50],
											["G_Balaclava_blk",nil,50],
											
											
											
											["hgun_PDW2000_F",nil,45000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,65000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["FHQ_arifle_ACR_tan",nil,68000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "ocean":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_ocean): {"You cannot go into the Ocean Family Shit"};
                        default
                        {
                                ["Ocean Shop",
                                        [
											// Clothing
											["TRYK_U_pad_j",nil,50],
											["Cg_invisbp",nil,50],
											["G_Balaclava_blk",nil,50],
											["gavin_gang_ocean",nil,50],
											
											
											
											["hgun_PDW2000_F",nil,45000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,65000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["FHQ_arifle_ACR_tan",nil,68000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "gs9":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gs9): {"You cannot go into the GS9 SO GET THE FUCK OUT!"};
                        default
                        {
                                ["GS9 Gang Shop",
                                        [
											// Clothing
											["U_B_GEN_Commander_F",nil,50],
											["Cg_invisbp",nil,50],
											["TRYK_V_ArmorVest_Delta2",nil,50],
											["TRYK_H_PASGT_BLK",nil,50],
											["G_Balaclava_TI_G_blk_F",nil,50],
											
											
											
											["SMA_HK416vfg",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["RH_PDW",nil,45000],
											["RH_30Rnd_6x35_mag",nil,200],
											["RH_m110",nil,65000],
											["RH_20Rnd_762x51_M80A1",nil,200],
											["SMA_ACRMOE",nil,68000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["SMA_STG_E4_BLACK_F",nil,68000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_compM2l",nil,200],
											["RH_ta31rmr_2D",nil,200],
											["RH_leu_mk4",nil,200],
											["SMA_BARSKA",nil,200],
											["optic_DMS",nil,200],
											["RH_pdwsd",nil,200],
											["RH_m110sd",nil,200],
											["SMA_supp2b_556",nil,200],
											["optic_AMS",nil,200]
										]
                                ];
                        };
                };
        };

        		case "cadegun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_cadenunley): {"YOU CANNOT GET IN TO CADES DENK ARMOURY NIGGER"};
                        default
                        {
                                ["Cades Trash Shop",
                                        [
											// Clothing
											["U_O_T_Soldier_F",nil,50],
											["Cg_invisbp",nil,50],
											["V_PlateCarrier1_tna_F",nil,50],
											["H_HelmetLeaderO_ghex_F",nil,50],
											["G_Balaclava_TI_G_blk_F",nil,50],
											
											
											
											["RH_M4A6",nil,30000],
											["RH_30Rnd_68x43_FMJ",nil,100],
											["RH_qdss_nt4",nil,100],
											["SMA_ELCAN_SPECTER_ARDRDS",nil,100],
											["FHQ_arifle_ACR_blk",nil,50000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["RH_fnp45t",nil,5000],
											["RH_15Rnd_45cal_fnp",nil,100],
											["RH_g18",nil,200],
											["RH_33Rnd_9x19_g18",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["RH_compM2l",nil,200],
											["RH_ta31rmr_2D",nil,200],
											["RH_leu_mk4",nil,200],
											["SMA_BARSKA",nil,200],
											["optic_DMS",nil,200],
											["RH_pdwsd",nil,200],
											["RH_m110sd",nil,200],
											["SMA_supp2b_556",nil,200],
											["optic_AMS",nil,200]
										]
                                ];
                        };
                };
        };
		
		case "narco":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_narco): {"You are not a Narco!"};
                        default
                        {
                                ["Firestorm Gaming Gang Shop",
                                        [
											["hgun_PDW2000_F",nil,45000],
											["30Rnd_9x21_Mag",nil,200],
											["SMA_SAR21MMS_F",nil,60000],
											["SMA_30Rnd_556x45_M855A1",nil,200],
											["hlc_rifle_aek971",nil,65000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74u_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["hlc_rifle_aks74_MTK",nil,68000],
											["hlc_30Rnd_545x39_B_AK",nil,200],
											["RH_tec9",nil,200],
											["RH_32Rnd_9x19_tec",nil,200],
											["Hatchet",nil,80000],
											["Katana_swing",nil,200],
											["RH_g18",nil,80000],
											["RH_fnp45t",nil,6000],
											["RH_15Rnd_45cal_fnp",nil,200],
											["RH_m1911",nil,6000],
											["RH_7Rnd_45cal_m1911",nil,200],
											["SMA_Mk17_black",nil,55000],
											["SMA_20Rnd_762x51mm_M80A1_EPR",nil,200],
											["FHQ_arifle_ACR_tan",nil,68000],
											["FHQ_rem_30Rnd_680x43_ACR",nil,200],
											["optic_ACO_grn",nil,200],
											["optic_AMS",nil,200],
											["optic_Arco_blk_F",nil,200],
											["SMA_ELCAN_SPECTER_GREEN_ARDRDS",nil,200],
											["hlc_optic_kobra",nil,200],
											["RH_Delft",nil,200]
										]
                                ];
                        };
                };
        };
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["RH_g17",nil,17600],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fn57",nil,17600],
												["RH_20Rnd_57x28_FN",nil,200],
												["RH_gsh18",nil,17600],
												["RH_18Rnd_9x19_gsh",nil,970]
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
                                                ["A3L_CZ550",nil,75000],
                                                ["A3L_CZ550mag",nil,50],
                                                ["A3L_CZ550Scope",nil,36000],
												["arifle_SDAR_F","Turtle Harpoon",30000],
												["20Rnd_556x45_UW_mag","Underwater magazine",1200]
                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												["A3L_UZI",nil,37250],
												["A3L_UZImag",nil,950]												
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["General Store",
                        [
								["ItemMap",nil,69],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,900],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200]
                        ]
                ];
        };
};
