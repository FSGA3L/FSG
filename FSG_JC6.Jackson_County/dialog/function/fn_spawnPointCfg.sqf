/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Lakeside HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Morrison Town HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_6","Los Diablos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Department Of Corrections HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_7","Speciallized Operations HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_8","SWAT HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_9","Training Grounds","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["gangciv_spawn","Private Gang Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		//Ocean House Spawn
		if(license_civ_ocean && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["ocean_spawn","Ocean House Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	//SS Spawn
		if(license_civ_LSMO && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["SS_Spawn","Secret Service Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
		
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_15","Lakeside Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Los Diablos Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1","Morrison Station","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_5","Coast Gaurd Station","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","EMS Air HQ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
