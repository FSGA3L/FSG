#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",25000],
			["IVORY_R8",130000],
			["IVORY_R8SPYDER",130000],
			["IVORY_REV",200000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["DAR_TahoeEMS",10],
			["A3L_CVPILBFD",10],
			["A3L_AmberLamps",10],
			["cg_evoems1",10],
			["cg_evoems2",10],
			["cg_evoems3",10],
			["Jonzie_AmbulanceExtended",10],
			["cg_mercedes_sprinter_ems",10],
			["B_MRAP_01_SR",10],
			["red_suburban_15_e_ems",10],
			["EvoX_EMS",10],
			["a3l_subaru_ems",10],
			["A3L_Charger_EMS_Fast",10],
			["AM_Holden_EMS",10],
			["BMWX5EMS_01",10],
			["F150_EMS",10],
			["LandRover_EMS",10],
			["GTR_EMS",10],
			["GTR_EMS2",10]
		];
	};
	case "med_air": {
		_return = [
			["ivory_b206_rescue",10],
			["IVORY_BELL512_RESCUE",10],
			["C_Heli_Light_01_civil_F",10],
			["O_Heli_Light_02_unarmed_F",10],
			["O_Heli_Transport_04_medevac_F",10]
		];
	};
	case "exo_car":
	{
		_return = [
			["DAR_MF1Civ",50000],
			["red_panamera_10_black",90000],
			["red_venomgt_11_black",90000],
			["red_xkrs_12_black",130000],
			["red_s65_12_black",130000],
			["red_porsche_12_black",130000],
			["red_vanquish_13_black",130000],
			["red_gs350_13_black",130000],
			["JM_Koenigsegg_Black",130000],
			["red_genesis_16_black",130000],
			["ivory_c",130000],
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			
			
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",70000],
			["A3L_VolvoS60Rred",70000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["red_venomgt_11_orange",850000],
			["red_panamera_10_black",85000],
			
			["red_vanquish_13_black",150000],
			["EVO_pagani_huayra",150000],
			["EVO_lykan_red",15000],
			["A3L_Veyron_white",150000],
			["A3L_Veyron_orange",150000]
		];
	};
	case "chev_car":
	{
		_return = [
			["red_suburban_15_darkblue",30000],
			["D_Cobalt_White",30000],
			["red_camaro_12_black",30000],
			["red_corvette_14_black",30000],
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_TahoeWhite",105000],
			["A3L_TahoeRed",105000],
			["A3L_TahoeBlue",105000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["red_cvpi_06_black",25000],
			["AM_Impala_Black",25000],
			["DAR_FusionCivBlack",25000],
			["red_taurus_10_black",25000],
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[
            ["DAR_ChallengerCivBlack",45000],
			["red_charger_12_black",45000],
			["red_charger_15_black",45000],
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_ChargerBlack",115000],
			["A3L_ChargerWhit",115000],
			["A3L_ChargerCstm",115000],
			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["red_beetle_66_black",10000],
			["red_cvpi_06_black",10000],
			["DAR_M3CivBlack",10000],
			["red_suburban_15_black",10000],
			["F150_01",10000],
			["EvoX_01",10000],
			["GTR_01",10000],
			["LandRover_01",10000],
			["BMWX5_01",10000],
			["Tahoe_01",10000],
			["Mustang_01",10000],
			["A3L_GMC_Van_Black",10000],
			["ivory_gt500",10000],
			["ivory_supra_tuned",10000],
			["EVO_Sexcalade_Black",10000],
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["M1030",14000],
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_lsmo":
	{
		_return =
		[
			["red_camaro_12_p_u_black",10000],
			["red_panamera_10_p_u_black",10000],
			["red_suburban_15_p_unmarked",10000],
			["EVO_limo_black",10000],
			["Nhz_audi8limo",10000],
			["GTRUC_01",10000],
			["LandRoverUC_01",10000],
			["MustangPDUC_01",10000],
			["TahoePDUC_01",10000]
		];
	};
	case "civ_supporter1":
	{
		_return =
		[
			["red_beetle_66_black",10000],
			["red_cvpi_06_black",10000],
			["DAR_M3CivBlack",10000],
			["red_suburban_15_black",10000],
			["F150_01",10000],
			["EvoX_01",10000],
			["GTR_01",10000],
			["LandRover_01",10000],
			["BMWX5_01",10000],
			["Tahoe_01",10000],
			["Mustang_01",10000],
			["A3L_GMC_Van_Black",10000],
			["ivory_gt500",10000],
			["ivory_supra_tuned",10000],
			["EVO_Sexcalade_Black",10000],
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["M1030",14000],
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_supporter2":
	{
		_return =
		[
			["red_beetle_66_black",10000],
			["red_cvpi_06_black",10000],
			["DAR_M3CivBlack",10000],
			["red_suburban_15_black",10000],
			["F150_01",10000],
			["EvoX_01",10000],
			["GTR_01",10000],
			["LandRover_01",10000],
			["BMWX5_01",10000],
			["Tahoe_01",10000],
			["Mustang_01",10000],
			["A3L_GMC_Van_Black",10000],
			["ivory_gt500",10000],
			["ivory_supra_tuned",10000],
			["EVO_Sexcalade_Black",10000],
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["M1030",14000],
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_gangciv":
	{
		_return =
		[
			["DAR_H1A",500000],
			["F150_Carleones",50],
			["DAR_H1A",500000],
			["ALRP_Goodwins_EVOX",50],
			["ALRP_EVOX_Generations",50],
			["ALRP_EVOX_Starks",50],
			["ALRP_EVOX_TPS",50],
			["ALRP_EVOX_Mafia",50],
			["ALRP_EVOX_Academi",50],
			["ALRP_EVOX_NSA",50],
			["ALRP_EVOX_Supernova",50],
			["ALRP_EVOX_KirbyFamily",50],
			["ALRP_EVOX_HouseTar",50],
			["ALRP_EVOX_Nemesis",50],
			["ALRP_LandRover_BombSquad",50],
			["ALRP_LandRover_TNS",50],
			["ALRP_LandRover_Lan1",50],
			["ALRP_LandRover_Lan2",50],
			["ALRP_LandRover_Outsiders",50],
			["ALRP_LandRover_LRF",50],
			["ALRP_LandRover_SWIFT",50],
			["ALRP_LandRover_MNRTF",50],
			["ALRP_LandRover_Blackwatch",50],
			["ALRP_LandRover_Accardo",50],
			["ALRP_LandRover_Hughes",50],
			["ALRPHoodedHooligansRangeRover",50],
			["GTR_Brotherhood",50],
			["GTR_Tar",50],
			["GTR_FOX",50],
			["GTR_Invictus",50],
			["GTR_Supernova",50]
		];
	};
	case "civ_cadenunley":
	{
		_return =
		[
			["Red_venomgt_11_black",20000],
			["ivory_lfa",5000],
			["Jonzie_Superliner",50000],
			["Jonzie_Curtain",5000],
			["EVO_monster",5000],
			["C_Sal_nissan_gtr_2017_Black_F",5000],
			["A3L_Atom",25000],
			["A3L_MonsterTruck",200000],
			["EVO_yahamaR6",5000],
			["red_corvette_14_black",5000],
			["EVO_buggy",5000],
			["EVO_Hearse_pink",5000],
			["ivory_elise",5000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["red_f350_08_black",45000],
			["red_f350_08_blue",45000],
			["red_f350_08_aqua",45000],
			["red_ram_06_black",55000],
			["red_ram_06_aqua",55000],
			["red_ram_06_green",55000],
			["red_towtruck_08_blue",70000],
			["Nhz_audia8limo",65000],
			["A3L_F350Black",105000],
			["A3L_F350Blue",105000],
			["A3L_F350Red",105000],
			["A3L_F350White",105000],
			["A3L_Dumptruck",120000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",85000],
			["A3L_Bus",200000],
			["A3L_Towtruck",40000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_Heli_Light_01_F",800000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["red_camaro_12_p_u_black",10],
			["red_panamera_10_p_u_black",10],
			["LandRoverUC_01",10],
			["EvoX_Marshals",10],
			["A3L_TaurusFPBLBCSO",10],
			["A3L_CVPIFPBCSO",10],
			["A3L_CVPIFPBLBCSO",10],
			["A3L_EvoXFPBLBSO",10],
			["A3L_GrandCaravanUC",10],
			["A3L_GrandCaravanUCBlack",50],
			["A3L_SuburbanCSO",50],
			["A3L_TaurusUCBlack",50],
			["A3L_TaurusUCGrey",50],
			["A3L_TaurusUCWhite",50],
			["A3L_TaurusUCBlue",50],
			["A3L_TaurusUCRed",50],
			["A3L_CVPIUC",50],
			["A3L_CVPIUCWhite",50],
			["A3L_CVPIUCBlack",50],
			["A3L_CVPIGrey",50],
			["A3L_CVPIUCRed",50],
			["A3L_CVPIUCPink",50],
			["A3L_CVPIUCBlue",50],
			["A3L_ChargerUC",50],
			["A3L_ChargerUCWhite",50],
			["EVO_ducati_pol",50],
			["EVO_evox_pol",50],
			["EVO_308_pol",50],
			["EVO_308_pol3",50],
			["EVO_sert_ladder",50],
			["EVO_Subaru08_pol",50],
			["EVO_touareg_pol",50],
			["red_towtruck_08_p_ecsd",50],
			["ivory_m3_marked",50],
			["ivory_m3_slicktop",50],
			["ivory_m3_unmarked",50],
			["ivory_isf_marked",50],
			["ivory_isf_slicktop",50],
			["ivory_isf_unmarked",50],
			["ivory_evox_marked",50],
			["ivory_evox_slicktop",50],
			["ivory_evox_unmarked",50],
			["ivory_wrx_marked",50],
			["ivory_wrx_slicktop",50],
			["ivory_wrx_unmarked",50],
			["cg_evoblack",50],
			["A3L_jailBus",50]
			

		];
	};
	case "cop_PD":
	{
		_return =
		[
			["red_cvpi_06_p_trooper",50],
			["DAR_TahoePoliceSlick",50],
			["red_taurus_10_p_trooper",50],
			["red_taurus_10_p_u_trooper",50],
			["red_kawasaki_10_p_trooper",50],
			["red_charger_15_p_statetrooper",50],
			["red_charger_15_p_u_statetrooper",50],
			["A3L_ChargerLB",50],
			["A3L_Suburban",50],
			["A3L_SuburbanFG",50],
			["TahoePD_01",50],
			["A3L_CVPIFPBPD",50],
			["A3L_CVPIFPBLBPD",50],
			["A3L_EvoXFPBLBPD",50],
			["A3L_TaurusFPBPD",50],
			["A3L_TaurusFPBLBPD",50],
			["A3L_TaurusFPBPDGM",50],
			["EvoX_Patrol",50],
			["F150_Patrol",50],
			["MustangPD_01",50],
			["LandRoverPD_01",50],
			["GTR_Patrol",50],
			["BMWX5PD_01",50],
			["TahoePD_01",50]
			

		];
	};
	case "cop_SWAT":
	{
		_return =
		[
			["red_swat_08_p_swat",50],
			["EvoX_SWAT",50],
			["F150_SWAT",50],
			["MustangPD_03",50],
			["LandRoverPD_03",50],
			["GTR_SWAT",50],
			["SWATBearcat_01",50],
			["TahoePD_03",50]
			

		];
	};
	case "cop_DOC":
	{
		_return =
		[
			["red_cvpi_06_p_custom1",50],
			["red_f350_08_p_ecsd",50],
			["A3L_TaurusCO1f",50],
			["cg_evocor1",50],
			["A3L_CVPIFPBCSO",50],
			["A3L_CVPIFPBLBCSO",50],
			["A3L_TaurusFPBCSO",50],
			["A3L_TaurusFPBLBCSO",50],
			["red_suburban_15_p_f_ecsd",50],
			["F150_DOC",50],
			["MustangPD_04",50],
			["LandRoverPD_04",50],
			["BMWX5PD_02",50],
			["TahoePD_02",50],
			["A3L_jailBus",50]
			

		];
	};
	case "cop_IAnHR":
	{
		_return =
		[
			["red_suburban_15_p_f_ia",50],
			["red_cvpi_06_p_unmarked",50],
			["red_cvpi_06_p_unmarked_2",50],
			["DAR_TahoePoliceDet",50],
			["red_taurus_10_p_u_black",50],
			["red_panamera_10_p_u_black",50],
			["red_camaro_12_p_u_black",50]
			

		];
	};
	case "cop_CID":
	{
		_return =
		[
			["DAR_MF1Civ",10],
			["red_panamera_10_black",10],
			["red_venomgt_11_black",10],
			["red_xkrs_12_black",10],
			["red_s65_12_black",10],
			["red_porsche_12_black",10],
			["red_vanquish_13_black",10],
			["red_gs350_13_black",10],
			["JM_Koenigsegg_Black",10],
			["red_genesis_16_black",10],
			["ivory_c",10],
			["A3L_Cooper_concept_blue",10],
			["A3L_Cooper_concept_black",10],
			["A3L_Cooper_concept_red",10],
			["A3L_Cooper_concept_white",10],
			
			["A3L_RX7_Blue",10],
			["A3L_RX7_Red",10],
			["A3L_RX7_White",10],
			["A3L_RX7_Black",10],
			
			
			["A3L_AMC",10],
			["A3L_AMXRed",10],
			["A3L_AMXWhite",10],
			["A3L_AMXBlue",10],
			["A3L_AMXGL",10],
			["A3L_VolvoS60RBlack",10],
			["A3L_VolvoS60Rred",10],
			["S_Skyline_Red",10],
			["S_Skyline_Blue",10],
			["S_Skyline_Black",10],
			["S_Skyline_Yellow",10],
			["S_Skyline_Purple",10],
			["S_Skyline_White",10],
			["S_Vantage_Red",10],
			["S_Vantage_Blue",10],
			["S_Vantage_Black",10],
			["S_Vantage_Yellow",10],
			["S_Vantage_LightBlue",10],
			["S_Vantage_Purple",10],
			["S_Vantage_White",10],
			["A3L_Ferrari458black",10],
			["A3L_Ferrari458white",10],
			["A3L_Ferrari458blue",10],
			["S_PorscheRS_Black",10],
			["S_PorscheRS_Yellow",10],
			["S_PorscheRS_White",10],
			["S_McLarenP1_Black",10],
			["S_McLarenP1_Blue",10],
			["S_McLarenP1_Orange",10],
			["S_McLarenP1_White",10],
			["red_venomgt_11_orange",10],
			["red_panamera_10_black",10],
			
			["red_vanquish_13_black",10],
			["EVO_pagani_huayra",10],
			["EVO_lykan_red",10],
			["A3L_Veyron_white",10],
			["A3L_Veyron_orange",10],
			["red_suburban_15_darkblue",10],
			["D_Cobalt_White",10],
			["red_camaro_12_black",10],
			["red_corvette_14_black",10],
			["A3L_SuburbanWhite",10],
			["A3L_SuburbanBlue",10],
			["A3L_SuburbanRed",10],
			["A3L_SuburbanBlack",10],
			["A3L_SuburbanGrey",10],
			["A3L_SuburbanOrange",10],
			["A3L_TahoeWhite",10],
			["A3L_TahoeRed",10],
			["A3L_TahoeBlue",10],
			["A3L_Camaro",10],
			["red_cvpi_06_black",10],
			["AM_Impala_Black",10],
			["DAR_FusionCivBlack",10],
			["red_taurus_10_black",10],
			["A3L_FordKaBlue",10],
			["A3L_FordKaRed",10],
			["A3L_FordKaBlack",10],
			["A3L_FordKaWhite",10],
			["A3L_FordKaGrey",10],
			["A3L_CVWhite",10],
			["A3L_CVBlack",10],
			["A3L_CVGrey",10],
			["A3L_CVRed",10],
			["A3L_CVPink",10],
			["A3L_CVBlue",10],
			["A3L_Taurus",10],
			["A3L_TaurusBlack",10],
			["A3L_TaurusBlue",10],
			["A3L_TaurusRed",10],
			["A3L_TaurusWhite",10],
			["DAR_ChallengerCivBlack",10],
			["red_charger_12_black",10],
			["red_charger_15_black",10],
			["A3L_GrandCaravan",10],
			["A3L_GrandCaravanBlk",10],
			["A3L_GrandCaravanBlue",10],
			["A3L_GrandCaravanGreen",10],
			["A3L_GrandCaravanRed",10],
			["A3L_GrandCaravanPurple",10],
			["A3L_Challenger",10],
			["A3L_ChallengerGreen",10],
			["A3L_ChallengerRed",10],
			["A3L_ChallengerWhite",10],
			["A3L_ChallengerBlack",10],
			["A3L_ChallengerBlue",10],
			["A3L_ChargerBlack",10],
			["A3L_ChargerWhit",10],
			["A3L_ChargerCstm",10],
			["Jonzie_Viper",10],
			["red_beetle_66_black",10],
			["red_cvpi_06_black",10],
			["DAR_M3CivBlack",10],
			["red_suburban_15_black",10],
			["F150_01",10],
			["EvoX_01",10],
			["GTR_01",10],
			["LandRover_01",10],
			["BMWX5_01",10],
			["Tahoe_01",10],
			["Mustang_01",10],
			["A3L_GMC_Van_Black",10],
			["ivory_gt500",10],
			["ivory_supra_tuned",10],
			["EVO_Sexcalade_Black",10],
			["Jonzie_Mini_Cooper",10],
			["B_Quadbike_01_F",10],
			["A3L_Escort",10],
			["A3L_EscortTaxi",10],
			["A3L_EscortBlack",10],
			["A3L_EscortBlue",10],
			["A3L_EscortWhite",10],
			["A3L_EscortPink",10],
			["M1030",10],
			["A3L_PuntoRed",10],
			["A3L_PuntoBlack",10],
			["A3L_PuntoWhite",10],
			["A3L_PuntoGrey",10],
			["A3L_RegalBlack",10],
			["A3L_RegalBlue",10],
			["A3L_RegalOrange",10],
			["A3L_RegalRed",10],
			["A3L_RegalWhite",10],
			["A3L_JeepWhiteBlack",10],
			["A3L_JeepGreenBlack",10],
			["A3L_JeepRedTan",10],
			["A3L_JeepRedBlack",10],
			["A3L_JeepGrayBlack",10],
			["A3L_VolksWagenGolfGTired",10],
			["A3L_VolksWagenGolfGTiblack",10],
			["A3L_VolksWagenGolfGTiblue",10],
			["A3L_VolksWagenGolfGTiwhite",10],
			["S_Rangerover_Black",10],
			["S_Rangerover_Red",10],
			["S_Rangerover_Blue",10],
			["S_Rangerover_Green",10],
			["S_Rangerover_Purple",10],
			["S_Rangerover_Grey",10],
			["S_Rangerover_Orange",10],
			["S_Rangerover_White",10],
			["red_f350_08_black",10],
			["red_f350_08_blue",10],
			["red_f350_08_aqua",10],
			["red_ram_06_black",10],
			["red_ram_06_aqua",10],
			["red_ram_06_green",10],
			["red_towtruck_08_blue",10],
			["Nhz_audia8limo",10],
			["A3L_F350Black",10],
			["A3L_F350Blue",10],
			["A3L_F350Red",10],
			["A3L_F350White",10],
			["A3L_Dumptruck",10],
			["C_Van_01_box_F",10],
			["C_Van_01_transport_F",10],
			["A3L_Bus",10],
			["A3L_Towtruck",10]
			
			
		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",50],
			["B_Heli_Light_01_F",50],
			["C_Heli_Light_01_civil_F",50],
			["O_Heli_Light_02_unarmed_F",50],
			["IVORY_BELL512_POLICE",50],
			["I_Heli_Transport_02_F",50],
			["I_Heli_light_03_unarmed_F",50],
			["B_Heli_Transport_01_F",50],
			["B_Heli_Transport_03_unarmed_F",50],
			["O_Heli_Transport_04_F",50],
			["O_Heli_Transport_04_covered_F",50]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",50],
			["B_Heli_Light_01_F",50],
			["C_Heli_Light_01_civil_F",50],
			["O_Heli_Light_02_unarmed_F",50],
			["IVORY_BELL512_POLICE",50],
			["I_Heli_Transport_02_F",50],
			["I_Heli_light_03_unarmed_F",50],
			["B_Heli_Transport_01_F",50],
			["B_Heli_Transport_03_unarmed_F",50],
			["O_Heli_Transport_04_F",50],
			["IVORY_T6A_1",50]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "ems_ship":
	{
		_return =
		[
			["CG_EMS_Boat",15],
			["C_Boat_Civil_01_rescue_F",15],
			["I_C_Boat_Transport_02_F",15]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
