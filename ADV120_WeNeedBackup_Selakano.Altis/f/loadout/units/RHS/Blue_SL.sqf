phx_loadout_unitLevel = 2;

// Add clothing
call phx_fnc_loadout_handleClothing; // Add clothing variables above this line!

// Add gear
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 7 do {player addItemToVest phx_loadout_rifle_mag_tracer;};
for "_i" from 1 to 5 do {player addItemToVest phx_loadout_rifle_gl_he;};
for "_i" from 1 to 4 do {player addItemToVest phx_loadout_rifle_gl_smoke;};
for "_i" from 1 to 4 do {player addItemToVest phx_loadout_rifle_gl_flare;};
player addWeapon phx_loadout_rifle_gl_weapon;
for "_i" from 1 to 6 do {player addItemToBackpack phx_loadout_rifle_mag;};
player addItem "ACE_MapTools";
for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};

// Add items
phx_loadout_addBinocular = "Binocular";
call phx_fnc_loadout_handleItems; // Add binocular/nvg variables above this line!

missionNamespace setVariable ["phx_loadoutAssigned",true]; //Place this at the end of the loadout script so other scripts can tell when the player's loadout has been set.
