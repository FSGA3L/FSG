/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {3000}; //Drivers License cost
	case "boat": {15000}; //Boating license cost
	case "pilot": {150000}; //Pilot/air license cost
	case "gun": {20000}; //Firearm/gun license cost
	case "dive": {4000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {45000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {150000}; //Rebel license cost
	case "truck": {10000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {50000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {75000};
	case "gangciv": {0};
	case "blackwatch": {0};
	case "warriors": {0};
	case "rangers": {0};
	case "outlaws": {0};
	case "disney": {0};
	case "narco": {0};
	case "gs9": {0};
	case "ocean": {0};
	case "cade": {0};
	case "bean": {0};
	case "free": {0};
	case "lsmo": {0};
	case "supporter50": {0};
	case "supporter100": {0};
	
	case "rifle": {35000};
};