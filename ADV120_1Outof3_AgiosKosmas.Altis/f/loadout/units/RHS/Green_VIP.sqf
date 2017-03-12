/*
    Sets the default clothing items for a side. If you want to have a certain class of unit have a unique clothing item, redefine these variables in that class's loadout script above the call to 'phx_fnc_loadout_handleClothing'.
    
    If the values are not redefined, the values in this file will be used.
*/

// Add clothing
call phx_fnc_loadout_handleClothing; // Add clothing variables above this line!

player addWeapon "rhs_weap_makarov_pm"; // Give VIP hand gun
for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_9x18_8_57N181S";}; // Give two mag

// Add items
call phx_fnc_loadout_handleItems;

missionNamespace setVariable ["phx_loadoutAssigned",true]; //Place this at the end of the loadout script so other scripts can tell when the player's loadout has been set.