/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["<t color = '#a7afec'>Rob</t>",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && !(cursorTarget getVariable["robbed",FALSE]) && ( animationState cursorTarget == "Incapacitated" || cursorTarget getVariable "tied" || animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" ) ']];

		//Tie person
		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Tie Person</t>",life_fnc_tieingAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (animationState cursorTarget == "Incapacitated" || animationState cursorTarget == "AmovPercMstpSsurWnonDnon" && (!life_action_inUse) ) ']];

		//Untie person
		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Untie Person</t>",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && (!life_action_inUse) ']];

		life_actions pushBack (player addAction["<t color = '#a7afec'>Pat Down</t>",{[[],"life_fnc_stripDownPlayer",cursorTarget,false] call life_fnc_MP},"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) && (!life_action_inUse) ']);

		//Blindfold person
		life_actions = life_actions + [player addAction["<t color = '#d02b2b'>Blindfold Person</t>",life_fnc_tieingActionb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied")  && (!life_action_inUse) ']];

		//Unblindfold person
		life_actions = life_actions + [player addAction["<t color = '#d02b2b'>Remove blindfold</t>",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "blindfolded")  && (!life_action_inUse) ']];


		//Throw in car
		life_actions = life_actions + [player addAction["<t color = '#6baf41'>Throw in car</t>",life_fnc_throwcar,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") ']];

		//Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Move Person</t>",life_fnc_civescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "escorting")  && (!life_action_inUse) ']];

		//Stop Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Stop Escort</t>",life_fnc_civstopescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && (cursorTarget getVariable["Escorting",false]) ']];
		
		//Remove Comms
		life_actions = life_actions + [player addAction["<t color = '#a7afec'>Destroy Radio/Gps</t>",life_fnc_destroyComms,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && ( animationState cursorTarget == "Incapacitated" || animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" || (cursorTarget getVariable "tied") || animationState cursorTarget == "AmovPercMstpSsurWnonDnon" ) ']];
		
		
	};
	case west:
	{
	// Heli Fast Rope
		life_actions = life_actions + [player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']];
		
	//place bargate
		life_actions = life_actions + [player addAction["Place BarGate",{if(!isNull life_bargate) then {{detach _x} foreach (life_bargate getvariable "bargate"); _handle = [life_bargate,"bargate"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_bargate,"bargate"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_bargate = ObjNull;};},"",999,false,false,"",'!isNull life_bargate']];

	//Packup BarGate
		life_actions = life_actions + [player addAction["Pack up BarGate",life_fnc_packupbargate,"",0,false,false,"",'
		_bargate = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_bargate" && !isNil {(_bargate getVariable "bargate")}']];

	//Pickup BarGate Briefcases
		life_actions = life_actions + [player addAction["Pickup BarGate",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "BarGate" && (player distance cursorTarget) < 3 ']];	
	
	//Unblindfold person
		life_actions = life_actions + [player addAction["Remove blindfold",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "blindfolded") ']];
	
	//Untie person
		life_actions = life_actions + [player addAction["Untie Person",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 1.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") ']];
		
	//place roadcones
		life_actions = life_actions + [player addAction["Place Roadcone",{if(!isNull life_roadcone) then {{detach _x} foreach (life_roadcone getvariable "roadcone"); _handle = [life_roadcone,"roadcone"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_roadcone,"roadcone"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_roadcone = ObjNull;};},"",999,false,false,"",'!isNull life_roadcone']];
		
	//Packup Roadcones
		life_actions = life_actions + [player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && (count (_cones getVariable "roadcone") > 1)
		']];
		life_actions = life_actions + [player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']];
		life_actions = life_actions + [player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") > 1}
		']];
		life_actions = life_actions + [player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']];
    //patdown
		life_actions pushBack (player addAction["Seize Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']);
		
	//Pickup roadcone briefcases
		life_actions = life_actions + [player addAction["Pickup Blinking Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStripB" && (player distance cursorTarget) < 3 ']];
		life_actions = life_actions + [player addAction["Pickup Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStrip" && (player distance cursorTarget) < 3 ']];
		life_actions = life_actions + [player addAction["Pickup Blinking Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeB" && (player distance cursorTarget) < 3 ']];
		life_actions = life_actions + [player addAction["Pickup Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "Roadcone" && (player distance cursorTarget) < 3 ']];
		

	//place roadblock
		life_actions = life_actions + [player addAction["Place Roadblock",{if(!isNull life_roadblock) then {{detach _x;} foreach (life_roadblock getvariable "roadblock"); 
		_handle = [life_roadblock,"roadblock"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_roadblock,"roadblock"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_roadblock = ObjNull;};},"",999,false,false,"",'!isNull life_roadblock']];

	//Packup Roadblocks
		life_actions = life_actions + [player addAction["Pack up RoadBlock (Wooden)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']];
		life_actions = life_actions + [player addAction["Pack up RoadBlock (Fortified)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']];
		life_actions = life_actions + [player addAction["Pack up RoadBlock (Wreck)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["Land_MetalBarrel_empty_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}']];


	//Pickup roadblock briefcases
		life_actions = life_actions + [player addAction["Pickup RoadBlock (Wooden)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockWood" && (player distance cursorTarget) < 3 ']];
		life_actions = life_actions + [player addAction["Pickup RoadBlock (Fortified)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockConc" && (player distance cursorTarget) < 3 ']];
		life_actions = life_actions + [player addAction["Pickup RoadBlock (Wreck)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockRebel" && (player distance cursorTarget) < 3 ']];
	};
};