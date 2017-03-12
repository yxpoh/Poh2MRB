if (f_cam_mapMode isEqualTo 0) exitWith {};
disableSerialization;
private _fullmapWindow = param [0];
private _camera = ([] call f_cam_GetCurrentCam);
_fullmapWindow drawIcon ["\A3\ui_f\data\GUI\Rsc\RscDisplayMissionEditor\iconCamera_ca.paa", [0,0,0,1],getpos _camera ,20,20,getDir _camera,"",0];
{
    private _isSpectator = _x getVariable ["phx_isUnitSpectator",false];
    if (alive _x && {!_isSpectator}) then {
        private _name = "";
        private _color = switch (side _x) do {
            case blufor: {f_cam_blufor_color};
            case opfor: {f_cam_opfor_color};
            case independent: {f_cam_indep_color};
            case civilian: {f_cam_civ_color};
            default {f_cam_empty_color};
        };
        if (isPlayer _x) then {
            _name = name _x
        };
        if (leader _x isEqualTo _x && {{private _isSpectator = _x getVariable ["phx_isUnitSpectator",false]; (isPlayer _x) && (!_isSpectator)} count units _x > 0}) then {
            _name = format["%1 - %2",toString(toArray(groupID (group _x)) - [45]),_name]
        };
        if ((isNull objectParent _x) || {!isNull objectParent _x && crew (vehicle _x) select 0 isEqualTo _x}) then {
            private _icon = (vehicle _x getVariable ["f_cam_icon",""]);
            if (_icon isEqualTo "") then {_icon = gettext (configfile >> "CfgVehicles" >> typeOf (vehicle _x) >> "icon");vehicle _x setVariable ["f_cam_icon",_icon]};
            _fullmapWindow drawIcon [_icon,_color,getpos _x,19,19,getDir (vehicle _x),_name,1,0.04,"TahomaB"];
        };
    };
    nil
} count allunits;

// Display sectors on spectator map
if (!isNil "phx_sector_triggerArray") then {
    {
        private _owner = _x getVariable "phx_sector_lastOwner";
        private _iconName = triggerText _x;
        private _color = f_cam_gray_color;
        switch (_owner) do {
            case 0: { _color = f_cam_blufor_color; _iconName = format["%1 - BLUFOR",_iconName]; };
            case 1: { _color = f_cam_opfor_color; _iconName = format["%1 - REDFOR",_iconName]; };
            case 2: { _color = f_cam_gray_color; _iconName = format["%1 - CONTESTED",_iconName]; };
            case 3: { _color = f_cam_gray_color; _iconName = format["%1 - Neutral",_iconName]; };
            default { _color = f_cam_gray_color; _iconName = format["%1",_iconName]; };
        };
        _color set [3,1];
        _fullmapWindow drawIcon ["\A3\ui_f\data\map\markers\military\flag_ca.paa",_color,getpos _x ,20,20,0,_iconName,2,0.04,"TahomaB"];
        nil
    } count phx_sector_triggerArray;
};

if (f_cam_tracerOn) then {
    f_cam_fired = f_cam_fired - [objNull];
    {
        if (!isNull _x) then {
            private _pos = getpos _x;
            private _newPos = [(_pos select 0) + (3 * sin(getdir _x)), (_pos select 1) + (3 * cos(getdir _x)), _pos select 2];
            _fullmapWindow drawLine [_pos,_newPos,[1,0,0,1]];
        };
        nil
    } count f_cam_fired;
};
