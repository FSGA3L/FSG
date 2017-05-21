#include <macro.h>
tf_no_auto_long_range_radio = false;


private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
sleep 30;
hint "-- Blocked Frequencies --\n37.1 - PD\n37.2 - SO\n37.3 - EMS\n37.4 - SWAT\n37.5 - CID"
