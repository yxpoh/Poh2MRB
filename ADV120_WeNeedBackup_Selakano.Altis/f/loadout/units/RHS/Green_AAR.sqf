// Add clothing
call phx_fnc_loadout_handleClothing; // Add clothing variables above this line!

// Add gear
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};
for "_i" from 1 to 4 do {player addItemToVest phx_loadout_rifle_mag_tracer;};
for "_i" from 1 to 4 do {player addItemToVest phx_loadout_rifle_mag;};
for "_i" from 1 to 3 do {player addItemToBackpack phx_loadout_automaticrifle_mag;};
player addWeapon phx_loadout_rifle_weapon;
player addItemToBackpack phx_loadout_rifle_mag;
player addItemToVest phx_loadout_rifle_mag;

// Add items
phx_loadout_addBinocular = "Binocular";
call phx_fnc_loadout_handleItems;

missionNamespace setVariable ["phx_loadoutAssigned",true]; //Place this at the end of the loadout script so other scripts can tell when the player's loadout has been set.
