if (isServer) then {phx_fnc_init_server call CBA_fnc_directCall;};

if (hasInterface) then {
    // Make sure init isn't called until player is ready
    [{!isNull player}, {call phx_fnc_init_client;}, []] call CBA_fnc_waitUntilAndExecute;
};

// Random Start
[] execVM "scripts\randomstart\server.sqf";
[] execVM "scripts\randomstart\client.sqf";

// Bomb the Convoy
if (isServer) then {

	//Clean all Vehicles
	{
		_x disableTIEquipment true; 
		_x disableNVGEquipment true; 
		[_x] call phx_fnc__clearContainer;
	} foreach vehicles;
	
	convoy_1 setDamage 0.9;
	convoy_2 setDamage 0.5;
	convoy_3 setDamage 0.9;
	convoy_4 setDamage 0.5;
	convoy_5 setDamage 0.9;

	convoy_2 setHit ["wheel_1", 1];
	convoy_2 setHit ["wheel_3", 1];
	convoy_4 setHit ["wheel_2", 1];
	convoy_4 setHit ["wheel_4", 1];
	
	_bombConvoy = "APERSMine_Range_Ammo" createVehicle (getPos convoy_1);
	_bombConvoy setDamage 1;
	_bombConvoy = "APERSMine_Range_Ammo" createVehicle (getPos convoy_3);
	_bombConvoy setDamage 1;
	_bombConvoy = "APERSMine_Range_Ammo" createVehicle (getPos convoy_5);
	_bombConvoy setDamage 1;
	
	convoy_2 addItemCargo ["tf_anprc152",1];
	convoy_4 addItemCargo ["tf_anprc152",1];
	
	waitUntil {!isNil "f_var_mission_timer"};
	waitUntil {f_var_mission_timer <= 0};
	
	startIND = {side _x == INDEPENDENT} count allPlayers;
	msgIND = "No. of INDEPENDENT: " + str startIND + "\nNo. Required to Survive: " + str (startIND/2);
	msgIND remoteExec ["hint",0];
	
	publicVariable "startIND";
};

player createDiaryRecord ["Diary", ["Quick Brief", "1. Blufor are not to load up on their vehicles until Safe Start.<br />2. IND must stay in the town until extraction from Blufor. <br />3. Opfor can only load up on their vehicles before SafeStart.<br />4. This is supposed to kinda create the 'IND in panic', 'Blufor rushing to vehicles' and 'Opfor ready to roll' situations.<br />5. IND, Prepared for loud sound after loading into the map.<br />6. Just in case more than half of the IND end up dying, Blufor have a chance at getting a draw by wiping the Opfor, but only before time limit(if not lengthened)."]];

switch (side player) do {
	case WEST:{
		player createDiaryRecord ["Diary", ["Extract Ambushed Convoy", "Double-Time down to Rodopoli and extract all friendly units. Godspeed! \n(At least half of the them must survive.)"]];
		
		"Blufor_4" setMarkerAlphaLocal 0;
	};
	
	case EAST:{
		player createDiaryRecord ["Diary", ["Eliminate The Remnants of the Convoy", "The Ambush was a success. Eliminate all remaining units, and if possible, any reinforcements."]];

		"Blufor_3" setMarkerAlphaLocal 0;
		"Blufor_4" setMarkerAlphaLocal 0;
		"obj_1mark" setMarkerTextLocal "Eliminate The Convoy and/or Possible Reinforcements";
	};
	
	case INDEPENDENT: {
		_msgRadio = "Radio for HQ is " + str phx_bluforBaseChannel + "\nCheck the convoys for spare SR, while the vehicles should be equipped with LR.";
		
		player createDiaryRecord ["Diary", ["Emergency Radio", _msgRadio]];
		player createDiaryRecord ["Diary", ["Assets", "It seems like 2 M2 jeeps, though damaged, still can be used to a certain degree and the LR in it seems useful. Make use of it well."]];
		player createDiaryRecord ["Diary", ["Get Extracted!", "Reinforcements are on the way. Just Stay Down and Hold on Tight!"]];
		
		"Blufor_3" setMarkerAlphaLocal 0;
		"obj_1mark" setMarkerTextLocal "Hang Tight and Get Extracted.";
	};
};