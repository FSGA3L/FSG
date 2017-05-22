private["_sleeptime"];
_sleeptime = 112;
//Pre-Checks
if(playerSide != west) exitWith {}; 
//if(!([false,"panicbutton",1] call life_fnc_handleInv)) exitWith {hint "You cannot do that without a panic button in your inventory.";}; 
//Stops people pressing the key binding while being took hostage.
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
closeDialog 0;
sleep 3;
closeDialog 0;
_Pos = position player; 
_marker = createMarker ["MarkerPanicButton", _Pos]; 
"MarkerPanicButton" setMarkerColor "ColorRed";  
"MarkerPanicButton" setMarkerText format ["***PANIC BUTTON PUSHED BY %1***",name player]; 
"MarkerPanicButton" setMarkerType "mil_warning";	
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
sleep _sleeptime;
deleteMarker "MarkerPanicButton"; 
