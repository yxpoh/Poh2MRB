// Add clothing
phx_loadout_headgear = "H_PilotHelmetHeli_B";
phx_loadout_vest = "rhsgref_6b23_ttsko_forest";
phx_loadout_backpack = "";
call phx_fnc_loadout_handleClothing; // Add clothing variables above this line!

// Add gear
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest phx_loadout_rifle_mag;};
player addWeapon phx_loadout_rifle_weapon;
player addItemToVest phx_loadout_rifle_mag;

// Add items
call phx_fnc_loadout_handleItems;

missionNamespace setVariable ["phx_loadoutAssigned",true]; //Place this at the end of the loadout script so other scripts can tell when the player's loadout has been set.
