class Params {
    // Radios
    // ============================================================================================

    // F3 - Radio Systems Support
    // Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

    class phx_param_radios {
      title = "Radio System";
      values[] = {0,1,2};
      texts[] = {"Off","TFAR","ACRE2"};
      default = 1;
    };

    // Equipment
    class phx_loadout_blufor_uniform {
      title = "BLUFOR Uniform:";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14};
      texts[] = { "0 MARPAT WD",
                  "1 OCP",
                  "2 UCP",
                  "3 MARPAT D",
                  "4 G3 Black",
                  "5 Police",
                  "6 TTsKO Forest",
                  "7 VDV Flora",
                  "8 Flora",
                  "9 EMR Desert",
                  "10 MSV EMR",
                  "11 TTsKO Mountain",
                  "12 Specter-S Flora",
                  "13 Cold War Era 1",
                  "14 Cold War Era 2"
      };
      default = 0;
    };
    class phx_loadout_opfor_uniform {
      title = "OPFOR Uniform:";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14};
      texts[] = { "0 MARPAT WD",
                  "1 OCP",
                  "2 UCP",
                  "3 MARPAT D",
                  "4 G3 Black",
                  "5 Police",
                  "6 TTsKO Forest",
                  "7 VDV Flora",
                  "8 Flora",
                  "9 EMR Desert",
                  "10 MSV EMR",
                  "11 TTsKO Mountain",
                  "12 Specter-S Flora",
                  "13 Cold War Era 1",
                  "14 Cold War Era 2"
      };
      default = 6;
    };
    class phx_loadout_indfor_uniform {
      title = "INDFOR Uniform:";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14};
      texts[] = { "0 MARPAT WD",
                  "1 OCP",
                  "2 UCP",
                  "3 MARPAT D",
                  "4 G3 Black",
                  "5 Police",
                  "6 TTsKO Forest",
                  "7 VDV Flora",
                  "8 Flora",
                  "9 EMR Desert",
                  "10 MSV EMR",
                  "11 TTsKO Mountain",
                  "12 Specter-S Flora",
                  "13 Cold War Era 1",
                  "14 Cold War Era 2"
      };
      default = 12;
    };
    class phx_loadout_blufor_weapons {
      title = "BLUFOR Weapons (R, LMG, HMG, AT):";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11};
      texts[] = {"0 M16A4, M249, M240G, M136 / SMAW",
        "1 M16A4 (All Tracer), M249, M240G, M136 / SMAW",
        "2 M4A1, M249, M240G, M136 / SMAW",
        "3 HK416 D10, M249, M240G, M136 / SMAW",
        "4 AK74M, PKM, PKP, RPG7",
        "5 AK74M (All Tracer), PKM, PKP, RPG7",
        "6 AK74M (Wood Camo), PKM, PKP, RPG7",
        "7 M70B1 / AKMS (GP25), PKM, PKP, RPG7",
        "8 AKM (7.62), PKM, PKP, RPG7",
        "9 Mosin, PKM, RShG-2 / RPG7",
        "10 Kar98k, PKM, RShG-2 / RPG7",
        "11 Unarmed"
      };
      default = 0;
    };
    class phx_loadout_opfor_weapons {
      title = "OPFOR Weapons (R, LMG, HMG, AT):";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11};
      texts[] = {"0 M16A4, M249, M240G, M136 / SMAW",
        "1 M16A4 (All Tracer), M249, M240G, M136 / SMAW",
        "2 M4A1, M249, M240G, M136 / SMAW",
        "3 HK416 D10, M249, M240G, M136 / SMAW",
        "4 AK74M, PKM, PKP, RPG7",
        "5 AK74M (All Tracer), PKM, PKP, RPG7",
        "6 AK74M (Wood Camo), PKM, PKP, RPG7",
        "7 M70B1 / AKMS (GP25), PKM, PKP, RPG7",
        "8 AKM (7.62), PKM, PKP, RPG7",
        "9 Mosin, PKM, RShG-2 / RPG7",
        "10 Kar98k, PKM, RShG-2 / RPG7",
        "11 Unarmed"
      };
      default = 4;
    };
    class phx_loadout_indfor_weapons {
      title = "INDFOR Weapons (R, LMG, HMG, AT):";
      values[] = {0,1,2,3,4,5,6,7,8,9,10,11};
      texts[] = {"0 M16A4, M249, M240G, M136 / SMAW",
        "1 M16A4 (All Tracer), M249, M240G, M136 / SMAW",
        "2 M4A1, M249, M240G, M136 / SMAW",
        "3 HK416 D10, M249, M240G, M136 / SMAW",
        "4 AK74M, PKM, PKP, RPG7",
        "5 AK74M (All Tracer), PKM, PKP, RPG7",
        "6 AK74M (Wood Camo), PKM, PKP, RPG7",
        "7 M70B1 / AKMS (GP25), PKM, PKP, RPG7",
        "8 AKM (7.62), PKM, PKP, RPG7",
        "9 Mosin, PKM, RShG-2 / RPG7",
        "10 Kar98k, PKM, RShG-2 / RPG7",
        "11 Unarmed"
      };
      default = 4;
    };
    // Environment
    class phx_core_timeOfDay {
        title = "Time of Day:";
        values[] = {-1, 0, 1, 2, 3};
        texts[] = {"Mission Time (DEFAULT)", "Sunrise", "Noon", "Sunset", "Midnight"};
        default = -1;
    };
    class phx_core_weatherSettings {
        title = "Weather:";
        values[] = {-1, 0, 1, 2, 3, 4};
        texts[] = {"Mission Weather (DEFAULT)", "Light Fog", "Fog", "Light Rain", "Rain", "Clear"};
        default = -1;
    };
    // Safestart
    class f_param_mission_timer {
        title = "Safe Start (Minutes)";
        values[] = {0,1,2,3,4,5,6,7,8,9,10,15};
        texts[] = {"Off","1","2","3","4","5","6","7","8","9","10 (default)","15"};
        default = 10;
        code = "f_param_mission_timer = %1";
    };
    class phx_missionTimelimit {
        title = "Time Limit:";
        values[] = {5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90};
        texts[] = {"5 minutes","10 minutes","15 minutes","20 minutes","25 minutes","30 minutes","35 minutes","40 minutes","45 minutes (default)","50 minutes","55 minutes","60 minutes","65 minutes","70 minutes","75 minutes","80 minutes","85 minutes","90 minutes",};
        default = 45;
    };
    // Other Template Scripts
    class phx_gps_markersEnabledParam {
        title = "GPS Map Markers:";
        values[] = {0,1};
        texts[] = {"Disabled","Enabled (default)"};
        default = 1;
    };
    class phx_param_enableRadioPreset {
        title = "Enable Preset Radios:";
        values[] = {true,false};
        texts[] = {"Enabled","Disabled"};
        default = true;
    };
    // Loadout Stuff
    class phx_loadout_modset{
      title = "Loadout Modset:";
        values[] = {0, 1};
        texts[] = {"Vanilla", "RHS"};
        default = 1;
    };
    class phx_loadout_radio {
        title = "Radio Deployment:";
        values[] = {0,1,2,3};
        texts[] = {"All Players (default)","Team Leaders and above","Squad Leaders and above","No Radios"};
        default = 0;
    };
    class phx_loadout_map {
        title = "Map Deployment:";
        values[] = {0,1,2,3};
        texts[] = {"All Players (default)","Team Leaders and above","Squad Leaders and above","No Maps"};
        default = 0;
    };
    class phx_loadout_gps {
        title = "GPS Deployment (Requires Map):";
        values[] = {0,1,2,3};
        texts[] = {"All Players (default)","Team Leaders and above","Squad Leaders and above","No GPS"};
        default = 0;
    };
};
