tf_no_auto_long_range_radio = true;

private["_spawnPos"];

if(life_is_arrested) then
{
	[false,false,life_arrestMinutes,life_arrestReason] call fnc_jailsetup;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)};
};
player addRating 9999999;

[] call life_fnc_zoneCreator;

hint "You are now on welfare.";