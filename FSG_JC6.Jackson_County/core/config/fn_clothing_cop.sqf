#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["herpCOMMAND1","Chief",10]];
		_ret set[count _ret,["A3L_PDCHIEF","Assistant Chief",10]];
		_ret set[count _ret,["A3L_PDASSTCHIEF","Deputy Chief",10]];
		_ret set[count _ret,["A3L_PDMAJOR","Superintendent",10]];
		_ret set[count _ret,["A3L_PDCPT","Patrol Captain",10]];
		_ret set[count _ret,["A3L_PDLT","Patrol Lieutenant",10]];
		_ret set[count _ret,["A3L_PDSGT","Patrol Sergeant",10]];
		_ret set[count _ret,["A3L_PDCPL","Patrol Corporal",10]];
		_ret set[count _ret,["A3L_PDOFC","Patrol Snr and Officer",10]];
		_ret set[count _ret,["A3L_CCPT","DOC Captain",10]];
		_ret set[count _ret,["A3L_CLT","DOC Lieutenant",10]];
		_ret set[count _ret,["A3L_CSGT","DOC Sergeant",10]];
		_ret set[count _ret,["A3L_CCPL","DOC Corporal",10]];
		_ret set[count _ret,["A3L_COFC","DOC Officer",10]];
		_ret set[count _ret,["cadet_uni","DOC Cadet",10]];
		_ret set[count _ret,["Eden_Patrol_Sgt","Speical Major",10]];
		_ret set[count _ret,["Eden_Traffic_Cpt","Speical Captain",10]];
		_ret set[count _ret,["Eden_Traffic_Cpl","Speical Lieutenant",10]];
		_ret set[count _ret,["Eden_Traffic_Sgt","Speical Staff Sergeant",10]];
		_ret set[count _ret,["Eden_Patrol_Cpl","Speical Sergeant",10]];
		_ret set[count _ret,["Eden_Patrol_chief","Speical Corporal",10]];
		_ret set[count _ret,["Eden_Patrol_Lt","Speical Officer",10]];
		_ret set[count _ret,["fto_uni","FTO Uniform",10]];
		_ret set[count _ret,["TCG_PDAV","Pilot Uniform",10]];
		_ret set[count _ret,["TCG_PDDTC","Detective Uniform",10]];
		_ret set[count _ret,["Swat_uni1","SWAT Uniform",10]];
		_ret set[count _ret,["crt_uniform","CERT Uniform",10]];
		_ret set[count _ret,["A3L_HPCPT","IA Cpt Uniform",10]];
		_ret set[count _ret,["sheriff_uni2","IA Command Uniform",10]];
		_ret set[count _ret,["A3L_HPLT","IA Lt Uniform",10]];
		_ret set[count _ret,["A3L_HPOFC","IA Uniform",10]];
	        _ret set[count _ret,["police_uni2","IA Uniform 2",10]];
		_ret set[count _ret,["Eden_Swat_Officer","FBI Uniform",10]];
		_ret set[count _ret,["U_B_HeliPilotCoveralls","Pilot Uniform V2",10]];
		_ret set[count _ret,["LS_Marshal_Jacket","Marshal Jacket",10]];
		_ret set[count _ret,["LS_Marshal_Jacket3","Marshal Jacket",10]];
		_ret set[count _ret,["RF_WING_3","Air Divition Command",10]];
                _ret set[count _ret,["RF_ASU_2","Air Divition",10]];
	};
	
	case 1:
	{
		_ret set[count _ret,["H_Beret_02","State Command Beret",50]];
		_ret set[count _ret,["H_Beret_Colonel","Department Command Beret",50]];
		_ret set[count _ret,["H_Beret_blk","SSgt Beret",50]];
		_ret set[count _ret,["Campaign_Hat_Dark","Campaign Hat V1",50]];
		_ret set[count _ret,["Campaign_Hat_Light","Campaign Hat V2",50]];
		_ret set[count _ret,["Campaign_Hat_Tan","Campaign Hat V3",50]];
		_ret set[count _ret,["Campaign_Hat_Washedout","Campaign Hat V4",50]];
		_ret set[count _ret,["CG_sert_H2","SWAT Helmet",50]];
		_ret set[count _ret,["TRYK_H_woolhat","SWAT Helmet",50]];
		_ret set[count _ret,["wing_helmet","Pilot Helmet",50]];
		_ret set[count _ret,["A3L_sargehat","Cadet Hat",50]];
		_ret set[count _ret,["CG_sert_H3","FBI Helmet",50]];
		_ret set[count _ret,["jamie_blackhelmet","CERT Helmet",50]];
		_ret set[count _ret,["LSMS_cap_blue","Marshal cap",50]];
		_ret set[count _ret,["LSMS_cap_blk","Marshal cap",50]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["Mask_M40",nil,55],
			["Bismarck_GasMask",nil,55],
			["G_Balaclava_TI_blk_F",nil,55],
			["G_Spectacles_Tinted",nil,55],
			["G_Bandanna_aviator",nil,55],
			["Mask_M40",nil,60]
			
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["SCommand_Vest_Fix","State Command Vest",10]];
		_ret set[count _ret,["DTU_Vest","Detective Vest",10]];
		_ret set[count _ret,["crt_vest_Fix","CERT Vest",10]];
		_ret set[count _ret,["DOC_Vest_Threat_Fix","DOC Vest V1",10]];
		_ret set[count _ret,["DOC_Vest_Threat_Tan_Fix","DOC Vest V2",10]];
		_ret set[count _ret,["DOC_Vest_Tac_Fix","DOC Vest Light",10]];
		_ret set[count _ret,["DAG_PD_Vest_DTU","DTU Vest Heavy",10]];
		_ret set[count _ret,["dtu_vest_lte","CID Vest Light",10]];
		_ret set[count _ret,["jamie_black2","PD Vest 1",10]];
		_ret set[count _ret,["HighThreatVestPolice1_Fix","PD Vest 2",10]];
		_ret set[count _ret,["HighThreatVestPolice2_Fix","PD Vest 3",10]];
		_ret set[count _ret,["jamie_blue2","Police Vest 4",10]];
		_ret set[count _ret,["TCG_policevest1","Police Vest 5",10]];
		_ret set[count _ret,["PD_DUTY_VEST","Police Vest 6",10]];
		_ret set[count _ret,["cl3_police_PlateCarrier_ETU","Code Red Vest",10]];
		_ret set[count _ret,["CRT_VEST_BLACK","CERT Vest",10]];
		_ret set[count _ret,["SWATvest1","SWAT Vest 1",10]];
		_ret set[count _ret,["TCG_swatvest1","SWAT Vest 2",10]];
		_ret set[count _ret,["SWATvest1","SERT Vest 3",10]];
		_ret set[count _ret,["DAG_FBI_BLK","FBI Vest",10]];
		_ret set[count _ret,["TRYK_V_ArmorVest_Delta","Marshal Vest",50]];
	};
	
	case 4:
	{
		_ret =
		[
			["cl3_police_tacticalbelt",nil,10],
			["cg_invisbp",nil,10]
		];
	};
};

_ret;
