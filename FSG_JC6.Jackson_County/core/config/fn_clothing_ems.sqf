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
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
			["emsoff_uni","High Command", 50],
			["fireoff_uni","Low Command", 50],
			["emt_Uni3","Senior And Para", 50],
			["emt_Uni1","Junior Para", 50],
			["DAG_ems8","EMS", 50],
			["DAG_ems7","EMS", 50],
			["DAG_ems6","EMS", 50],
			["DAG_ems5","EMS", 50],
			["DAG_ems4","EMS", 50],
			["DAG_ems3","EMS", 50],
			["DAG_ems2","EMS", 50],
			["DAG_ems1","EMS", 50],
			["DAG_ems9","EMS", 50],
			["NewEden_Clothing_blue_chief_EMS_obj","EMS", 50],
			["NewEden_Clothing_DBlue_CPT_Paramedic_obj","EMS", 50],
			["NewEden_Clothing_DBlue_LT_Paramedic_obj","EMS", 50],
			["NewEden_Clothing_DBlue_3_Paramedic_obj","EMS", 50],
			["NewEden_Clothing_DBlue_1_Paramedic_obj","EMS", 50],
			["NewEden_Clothing_Blue_EMT_obj","EMS", 50],
			["U_B_Wetsuit","Wetsuit", 50]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 20],
			["A3L_medic_helmet", nil, 20],
			["H_MilCap_blue", nil, 20],
			["H_CrewHelmetHeli_B", nil, 20],
			["H_Cap_blu", nil, 20],
			["H_Cap_red", nil, 20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil, 20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["cl3_police_vest_CG2","High Command Vest",300],
			["cl3_police_vest_mr","Low Command Vest",300],
			["cl3_police_vest_pm","EMS Vest",300],
			["NewEden_EMS_Vests_Command","EMS Vest",300],
			["NewEden_EMS_Vests_Paramedic","EMS Vest",300],
			["NewEden_EMS_Vests_RideAlong","EMS Vest",300],
			["V_RebreatherB","Rebreather",300]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cl3_emt_tacticalbelt",nil,300],
			["cg_invisbp",nil,300]
		];
	};
};
