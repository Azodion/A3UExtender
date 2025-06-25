private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

#include "..\..\script_component.hpp"

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "RAF"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "RAF"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\a3\UI_F_Enoch\Data\CfgMarkers\Russia_CA.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Russia"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["B_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate;

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["E22_O_RAF_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["E22_O_RAF_LSV_02_unarmed_F", "E22_O_RAF_MRAP_02_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["E22_O_RAF_LSV_02_armed_F", "E22_O_RAF_LSV_02_AT_F", "E22_O_RAF_MRAP_02_hmg_F", "E22_O_RAF_MRAP_02_gmg_F"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["E22_O_RAF_Truck_02_transport_F", "E22_O_RAF_Truck_02_covered_F", "E22_O_RAF_Truck_03_transport_F", "E22_O_RAF_Truck_03_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["E22_O_RAF_Truck_02_transport_F", "E22_O_RAF_Truck_02_covered_F", "E22_O_RAF_Truck_03_transport_F", "E22_O_RAF_Truck_03_covered_F"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["E22_O_RAF_Truck_02_ammo_F", "E22_O_RAF_Truck_03_ammo_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["E22_O_RAF_Truck_03_repair_F", "E22_O_RAF_Truck_02_box_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["E22_O_RAF_Truck_02_fuel_F", "E22_O_RAF_Truck_03_fuel_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["E22_O_RAF_Truck_02_medical_F", "E22_O_RAF_Truck_03_medical_F", "E22_O_RAF_APC_Wheeled_02_medical_F", "E22_O_RAF_APC_Tracked_02_medical_F"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["E22_O_RAF_APC_Tracked_02_cannon_AT_F", "E22_O_RAF_APC_Wheeled_02_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["E22_O_RAF_APC_Tracked_02_unarmed_F", "E22_O_RAF_APC_Wheeled_02_unarmed_F"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["E22_O_RAF_APC_Tracked_02_cannon_AT_F", "E22_O_RAF_APC_Wheeled_02_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesLightTanks", ["E22_O_RAF_UGV_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["E22_O_RAF_MBT_04_cannon_F", "E22_O_RAF_MBT_04_command_F", "E22_O_RAF_MBT_02_cannon_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["E22_O_RAF_APC_Tracked_02_AA_F"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["O_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["O_Boat_Armed_01_hmg_F"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["E22_O_RAF_APC_Tracked_02_cannon_AT_F", "E22_O_RAF_APC_Wheeled_02_rcws_F"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["E22_O_RAF_Plane_CAS_02_dynamicLoadout_F", "E22_O_RAF_Plane_Fighter_02_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["E22_O_RAF_Plane_Fighter_02_F", "E22_O_RAF_Plane_Fighter_02_Stealth_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["O_T_VTOL_02_infantry_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["E22_O_RAF_Heli_Attack_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", []] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["E22_O_RAF_Heli_Light_02_unarmed_F", "E22_O_RAF_Heli_Transport_04_covered_F"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["E22_O_RAF_Heli_Light_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["E22_O_RAF_Heli_Attack_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesAirPatrol", ["E22_O_RAF_Heli_Attack_02_dynamicLoadout_F", "E22_O_RAF_Heli_Light_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["E22_O_RAF_MBT_02_arty_F", "E22_O_RAF_Truck_02_MRL_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["B_MBT_01_mlrs_F", ["12Rnd_230mm_rockets"]],
["E22_O_RAF_MBT_02_arty_F", ["32Rnd_155mm_Mo_shells_O"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["E22_O_RAF_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["E22_O_RAF_UAV_01_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["E22_O_RAF_LSV_02_armed_F", "E22_O_RAF_LSV_02_AT_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["E22_O_RAF_Truck_02_transport_F", "E22_O_RAF_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["E22_O_RAF_LSV_02_unarmed_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaAPCs", ["E22_O_RAF_LSV_02_armed_F", "E22_O_RAF_LSV_02_AT_F"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["E22_O_RAF_LSV_02_unarmed_F"]] call _fnc_saveToTemplate;

["staticMGs", ["O_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["B_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["E22_O_RAF_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["vehicleRadar", "E22_O_RAF_Radar_System_02_F"] call _fnc_saveToTemplate;
["vehicleSam", "E22_O_RAF_SAM_System_04_F"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

//["animations", [
//    ["I_APC_Wheeled_03_cannon_F", ["showCamonetHull", 0.25, "showSLATHull", 0.3]]
//]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "LivonianHead_1",
    "LivonianHead_2",
    "LivonianHead_3",
    "LivonianHead_4",
    "LivonianHead_5",
    "LivonianHead_6",
    "LivonianHead_7",
    "LivonianHead_8",
    "LivonianHead_9",
    "RussianHead_1",
    "RussianHead_2",
    "RussianHead_3",
    "Sturrock",
    "WhiteHead_01",
    "WhiteHead_02",
    "WhiteHead_03",
    "WhiteHead_04",
    "WhiteHead_07",
    "WhiteHead_08",
    "WhiteHead_09",
    "WhiteHead_12",
    "WhiteHead_13",
    "WhiteHead_14",
    "WhiteHead_17",
    "WhiteHead_18",
    "WhiteHead_21",
    "WhiteHead_30"
]] call _fnc_saveToTemplate;

["voices", ["Male01RUS", "Male02RUS", "Male03RUS"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["antiTankGrenades", []];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["E22_RAF_ANVG_black_F", "NVGoggles_OPFOR", "NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder", "E22_DigitalBinoculars_01_khaki_F", "E22_DigitalBinoculars_01_olive_F"]];

_loadoutData set ["traitorUniforms", ["E22_RAF_U_CombatUniform_01_tanktop_lesnoy_F", "E22_RAF_U_CombatUniform_01_shirt_lesnoy_F"]];
_loadoutData set ["traitorVests", ["E22_RAF_V_CarrierRigKBT_01_holster_lesnoy_F", "V_TacVest_oli", "V_Chestrig_rgr"]];
_loadoutData set ["traitorHats", ["E22_RAF_H_Beret_01_green_F", "E22_RAF_H_Cap_Military_lesnoy_F"]];

_loadoutData set ["officerUniforms", ["E22_RAF_U_CombatUniform_01_lesnoy_F", "E22_RAF_U_CombatUniform_01_lesnoy_shortsleeve_F"]];
_loadoutData set ["officerVests", ["E22_RAF_V_CarrierRigKBT_01_holster_lesnoy_F"]];
_loadoutData set ["officerHats", ["E22_RAF_H_Beret_01_red_F", "E22_RAF_H_Beret_02_blue_F", "E22_RAF_H_Beret_01_green_F"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["V_Chestrig_rgr"]];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["E22_RAF_B_RadioBag_lesnoy"]];
_loadoutData set ["atBackpacks", ["E22_RAF_B_Carryall_lesnoy", "E22_RAF_B_HighCap_lesnoy"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["E22_RAF_H_Beret_01_green_F", "E22_RAF_H_Beret_02_blue_F", "E22_RAF_H_Beret_01_red_F"]];
_loadoutData set ["sniHats", ["E22_RAF_H_Cap_Military_lesnoy_F"]];

_loadoutData set ["glasses", ["", "E22_RAF_G_Balaclava_02_green_F", "E22_RAF_G_Balaclava_02_black_F", "E22_RAF_G_Glasses_Tactical_amber_green_F", "E22_RAF_G_Glasses_Tactical_clear_green_F", "E22_RAF_G_Glasses_Tactical_faded_green_F", "E22_RAF_G_Glasses_Tactical_tinted_green_F", "JCA_G_Headset_Combat_01_clear_black_F", "JCA_G_Headset_Combat_01_clear_olive_F"]];	//cosmetics
_loadoutData set ["goggles", [""]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["E22_RAF_U_CombatUniform_01_sweater_lesnoy_F", "E22_RAF_U_CombatUniform_01_sweater_lesnoy_shortsleeve_F", "E22_RAF_U_CombatUniform_01_light_lesnoy_shortsleeve_F", "E22_RAF_U_CombatUniform_01_light_lesnoy_F"]];
_sfLoadoutData set ["vests", ["E22_RAF_V_CarrierRigKBT_01_compact_lesnoy_F"]];
_sfLoadoutData set ["backpacks", ["E22_B_CombatPack_woodland", "E22_RAF_V_CarrierRigKBT_01_recon_lesnoy_F", "E22_RAF_V_CarrierRigKBT_01_lesnoy_F", "E22_RAF_V_CarrierRigKBT_01_light_lesnoy_F", "E22_RAF_V_CarrierRigKBT_01_combat_lesnoy_F"]];
_sfLoadoutData set ["helmets", ["E22_RAF_H_Helmet_Sparrow_enhanced_lesnoy_F", "E22_RAF_H_Helmet_Sparrow_enhanced_lesnoy_cover_F", "E22_RAF_H_Helmet_Sparrow_headset_lesnoy_F", "E22_RAF_H_Helmet_Sparrow_headset_lesnoy_cover_F", "E22_RAF_H_Helmet_Sparrow_standard_lesnoy_F", "E22_RAF_H_Helmet_Sparrow_standard_lesnoy_cover_F"]];
_sfLoadoutData set ["binoculars", ["Rangefinder", "E22_DigitalBinoculars_01_khaki_F", "E22_DigitalBinoculars_01_olive_F"]];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"]

_sfLoadoutData set ["lightATLaunchers", [
    ["E22_RAF_launch_RPG32_black_F", "", "", "", ["RPG32_F"], [], ""]
]];
_sfLoadoutData set ["missileATLaunchers", [
    ["E22_RAF_launch_Vorona_black_F", "", "", "", ["Vorona_HEAT"], [], ""]
]];
_sfLoadoutData set ["AALaunchers", [
    ["launch_I_Titan_F", "", "", "", ["Titan_AA"], [], ""]
]];

_sfLoadoutData set ["rifles", [
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],

    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],

    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],

    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_IR_PMAG"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],

    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_IR_Mag"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["E22_120Rnd_M30JLSW_Box_tracer_IR_F"], [], ""],
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MROS_black_magnifier", ["E22_120Rnd_M30JLSW_Box_tracer_IR_F"], [], ""],
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black_magnifier", ["E22_120Rnd_M30JLSW_Box_tracer_IR_F"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_IR_PMAG"], [], "JCA_bipod_04_black"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["JCA_srifle_AWM_black_F", "", "", "JCA_optic_MRPS_black", ["JCA_5Rnd_338LM_AWM_Tracer_IR_Mag"], [], "JCA_bipod_AWM_black"],
    ["JCA_srifle_AWM_black_F", "", "", "JCA_optic_HPPO_RAD_black", ["JCA_5Rnd_338LM_AWM_Tracer_IR_Mag"], [], "JCA_bipod_AWM_black"],

    ["JCA_srifle_AWM_olive_F", "", "", "JCA_optic_MRPS_black", ["JCA_5Rnd_338LM_AWM_Tracer_IR_Mag"], [], "JCA_bipod_AWM_black"],
    ["JCA_srifle_AWM_olive_F", "", "", "JCA_optic_HPPO_RAD_black", ["JCA_5Rnd_338LM_AWM_Tracer_IR_Mag"], [], "JCA_bipod_AWM_black"]
]];
_sfLoadoutData set ["sidearms", [
    ["JCA_hgun_P320_black_F", "JCA_muzzle_snds_9MM_enhanced_black", "JCA_acc_LightModule_Pistol_black", "JCA_optic_PRO_black", ["JCA_17Rnd_9x21_P320_IR_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["E22_U_CombatUniform_woodland_F", "E22_U_CombatUniform_woodland_shortsleeve_F", "E22_U_CombatUniform_woodland_Shirt_F", "E22_U_CombatUniform_woodland_Shirt_shemagh_F", "E22_U_CombatUniform_woodland_tee_F"]];
_eliteLoadoutData set ["vests", ["E22_V_CarrierRigKBT_01_recon_woodland_F", "E22_V_CarrierRigKBT_01_recon_black_F", "E22_V_CarrierRigKBT_01_woodland_F", "E22_V_CarrierRigKBT_01_black_F", "E22_V_CarrierRigKBT_01_light_woodland_F", "E22_V_CarrierRigKBT_01_light_black_F", "E22_V_CarrierRigKBT_01_compact_woodland_F", "E22_V_CarrierRigKBT_01_compact_black_F", "E22_V_CarrierRigKBT_01_combat_woodland_F", "E22_V_CarrierRigKBT_01_combat_black_F"]];
_eliteLoadoutData set ["backpacks", ["E22_B_CombatPack_woodland", "E22_B_Kitbag_woodland", "E22_B_Kitbag_black", "E22_B_SurvivalBackpack_olive_F"]];
_eliteLoadoutData set ["helmets", ["E22_H_HelmetHBK_woodland_F", "E22_H_HelmetHBK_woodland_chops_F", "E22_H_HelmetHBK_woodland_ear_F", "E22_H_HelmetHBK_woodland_headset_F", "E22_H_HelmetHBK_black_F", "E22_H_HelmetHBK_black_chops_F", "E22_H_HelmetHBK_black_ear_F", "E22_H_HelmetHBK_black_headset_F"]];
_eliteLoadoutData set ["binoculars", ["Rangefinder", "E22_DigitalBinoculars_01_khaki_F", "E22_DigitalBinoculars_01_olive_F"]];

_eliteLoadoutData set ["lightATLaunchers", [
    ["E22_launch_MRAWS_woodland_rail_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["E22_launch_MRAWS_black_rail_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["E22_launch_MRAWS_black_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["E22_launch_MRAWS_woodland_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["JCA_launch_Mk153_black_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""],
    ["JCA_launch_Mk153_olive_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""],
    ["JCA_launch_Mk153_PWS_black_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""],
    ["JCA_launch_Mk153_PWS_olive_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""]
]];
_eliteLoadoutData set ["ATLaunchers", ["launch_NLAW_F"]];
_eliteLoadoutData set ["missileATLaunchers", [
    ["launch_I_Titan_short_F", "", "", "", ["Titan_AT"], [], ""]
]];
_eliteLoadoutData set ["AALaunchers", [
    ["launch_B_Titan_F", "", "", "", ["Titan_AA"], [], ""]
]];

_eliteLoadoutData set ["rifles", [
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A4_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""],

    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A1_short_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],

    ["JCA_arifle_M4A1_short_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    
    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],

    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "JCA_muzzle_snds_556_advanced_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],

    ["JCA_arifle_M4A4_GL_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ACOG_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A4_GL_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ICO_black", ["JCA_30Rnd_556x45_Tracer_Green_PMAG"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "JCA_muzzle_snds_45_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Magv"], [], ""],

    ["JCA_smg_UMP_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_ARO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Magv"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_AICO_black", ["E22_120Rnd_M30JLSW_Box_tracer_Green_F"], [], ""],
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MROS_black_magnifier", ["E22_120Rnd_M30JLSW_Box_tracer_Green_F"], [], ""],
    ["E22_LMG_04_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_IHO_black_magnifier", ["E22_120Rnd_M30JLSW_Box_tracer_Green_F"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_AFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_black_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds_762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],

    ["JCA_arifle_SR10_VFG_olive_F", "JCA_muzzle_snds762_tactical_black", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_MRPS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_HPPO_RAD_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"],
    ["JCA_arifle_SR10_VFG_olive_F", "", "JCA_acc_LaserModule_black_Pointer", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_Tracer_Green_PMAG"], [], "JCA_bipod_04_black"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["JCA_srifle_AWM_black_F", "", "", "JCA_optic_MRPS_black", ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"],
    ["JCA_srifle_AWM_black_F", "", "", "JCA_optic_HPPO_RAD_black", ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"],

    ["JCA_srifle_AWM_olive_F", "", "", "JCA_optic_MRPS_black", ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"],
    ["JCA_srifle_AWM_olive_F", "", "", "JCA_optic_HPPO_RAD_black", ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"]
]];
_eliteLoadoutData set ["sidearms", [
    ["JCA_hgun_P320_black_F", "JCA_muzzle_snds_9MM_enhanced_black", "JCA_acc_LightModule_Pistol_black", "JCA_optic_PRO_black", ["JCA_17Rnd_9x21_P320_Green_Mag"], [], ""],
    ["JCA_hgun_P320_black_F", "", "JCA_acc_LightModule_Pistol_black", "JCA_optic_PRO_black", ["JCA_17Rnd_9x21_P320_Green_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["E22_U_CombatUniform_woodland_F", "E22_U_CombatUniform_woodland_shortsleeve_F", "E22_U_CombatUniform_woodland_Shirt_F", "E22_U_CombatUniform_woodland_Shirt_shemagh_F", "E22_U_CombatUniform_woodland_tee_F"]];
_militaryLoadoutData set ["vests", ["E22_V_CarrierRigKBT_01_compact_woodland_F", "E22_V_CarrierRigKBT_01_light_woodland_F", "E22_V_CarrierRigKBT_01_woodland_F"]];
_militaryLoadoutData set ["backpacks", ["E22_B_CombatPack_woodland", "E22_B_Kitbag_woodland", "E22_B_SurvivalBackpack_olive_F"]];
_militaryLoadoutData set ["helmets", ["E22_H_HelmetHBK_woodland_F", "E22_H_HelmetHBK_woodland_headset_F"]];
_militaryLoadoutData set ["binoculars", ["Binocular", "Rangefinder"]];

_militaryLoadoutData set ["lightATLaunchers", [
    ["E22_launch_MRAWS_woodland_rail_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["E22_launch_MRAWS_black_rail_F", "", "", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
    ["JCA_launch_Mk153_black_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""],
    ["JCA_launch_Mk153_olive_F", "", "", "", ["JCA_MK153_HEAT_F"], [], ""]
]];
_militaryLoadoutData set ["ATLaunchers", ["launch_NLAW_F"]];
_militaryLoadoutData set ["AALaunchers", [
    ["launch_B_Titan_F", "", "", "", ["Titan_AA"], [], ""]
]];

_Optics = ["", 3, "JCA_optic_AHO_black", 1, "JCA_optic_AICO_black", 1, "JCA_optic_ARO_black", 1, "JCA_optic_CRO_black", 1, "JCA_optic_ICO_black", 1, "JCA_optic_IHO_black", 1, "JCA_optic_MROS_black", 1, "JCA_optic_ROS_black", 1];
_LROptics = ["", 3, "JCA_optic_IHO_black", 1, "JCA_optic_MROS_black", 1, "JCA_optic_ROS_black", 1];
_Attachments = ["JCA_optic_MRPS_black", 3, "JCA_optic_HPPO_black", 1, "JCA_optic_HPPO_RAD_black", 1, "JCA_optic_CRBS_black", 1];

_militaryLoadoutData set ["rifles", [
    ["JCA_arifle_M4A1_black_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M4A1_olive_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],

    ["JCA_arifle_M16A4_black_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M16A4_olive_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],

    ["JCA_arifle_M16A4_FG_black_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M16A4_FG_olive_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["JCA_arifle_M4A1_short_black_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M4A1_short_olive_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["JCA_arifle_M4A1_GL_black_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M4A1_GL_olive_F", "", _Attachments, _Optics, ["30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["JCA_smg_MP5_FL_black_F", "", "JCA_acc_flashlight_MP5_black", _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_MP5_FL_olive_F", "", "JCA_acc_flashlight_MP5_black", _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_MP5_AFG_black_F", "", _Attachments, _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_MP5_AFG_olive_F", "", _Attachments, _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_MP5_VFG_black_F", "", _Attachments, _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_MP5_VFG_olive_F", "", _Attachments, _Optics, ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_black_F", "", "", _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_olive_F", "", "", _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_AFG_black_F", "", _Attachments, _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_AFG_olive_F", "", _Attachments, _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],

    ["JCA_smg_UMP_VFG_black_F", "", _Attachments, _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_VFG_olive_F", "", _Attachments, _Optics, ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["E22_LMG_04_black_F", "", _Attachments, _Optics, ["E22_120Rnd_M30JLSW_Box_tracer_Green_F"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["JCA_arifle_SR25_black_F", "", _Attachments, _LROptics, ["JCA_20Rnd_762x51_Tracer_Green_SMAG"], [], ""],
    ["JCA_arifle_SR25_olive_F", "", _Attachments, _LROptics, ["JCA_20Rnd_762x51_Tracer_Green_SMAG"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["JCA_srifle_AWM_black_F", "", "", _LROptics, ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"],
    ["JCA_srifle_AWM_olive_F", "", "", _LROptics, ["JCA_5Rnd_338LM_AWM_Tracer_Green_Mag"], [], "JCA_bipod_AWM_black"]
]];
_militaryLoadoutData set ["sidearms", [
    ["JCA_hgun_P320_black_F", "", "JCA_acc_LightModule_Pistol_black", "", ["JCA_17Rnd_9x21_P320_Green_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", ["E22_U_CombatUniform_01_woodland_F", "E22_U_CombatUniform_01_woodland_shortsleeve_F", "E22_U_CombatUniform_01_woodland_shortsleeve_gloves_F"]];
_policeLoadoutData set ["vests", ["E22_V_CarrierRigKBT_01_holster_woodland_F", "E22_V_CarrierRigKBT_01_holster_black_F", "V_TacVest_blk_POLICE"]];
_policeLoadoutData set ["helmets", ["E22_H_Beret_01_JTF_blue_F"]];

_policeLoadoutData set ["SMGs", [
    ["JCA_smg_MP5_FL_black_F", "", "JCA_acc_flashlight_MP5_black", "", ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_MP5_FL_olive_F", "", "JCA_acc_flashlight_MP5_black", "", ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["JCA_hgun_P320_black_F", "", "JCA_acc_LightModule_Pistol_black", "", ["JCA_17Rnd_9x21_P320_Green_Mag"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", ["E22_U_CombatUniform_01_woodland_F", "E22_U_CombatUniform_01_woodland_shortsleeve_F", "E22_U_CombatUniform_01_woodland_shortsleeve_gloves_F"]];
_militiaLoadoutData set ["vests", ["V_TacVest_oli", "V_TacVest_blk", "E22_V_CarrierRigKBT_01_holster_woodland_F"]];
_militiaLoadoutData set ["backpacks", ["E22_B_CombatPack_woodland", "E22_B_Kitbag_woodland", "E22_B_SurvivalBackpack_olive_F"]];
_militiaLoadoutData set ["helmets", ["lxWS_H_PASGT_goggles_olive_F", "lxWS_H_PASGT_goggles_black_F"]];

_militiaLoadoutData set ["rifles", [
    ["JCA_arifle_M16A4_black_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M16A4_olive_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["JCA_arifle_M16A4_black_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
    ["JCA_arifle_M16A4_olive_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["JCA_arifle_M16A4_GL_black_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell"], ""],
    ["JCA_arifle_M16A4_GL_olive_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["JCA_smg_MP5_FL_black_F", "", "JCA_acc_flashlight_MP5_black", "", ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_MP5_FL_olive_F", "", "JCA_acc_flashlight_MP5_black", "", ["JCA_30Rnd_9x21_MP5_Tracer_Green_Mag"], [], ""],
    
    ["JCA_smg_UMP_black_F", "", "", "", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""],
    ["JCA_smg_UMP_olive_F", "", "", "", ["JCA_25Rnd_45ACP_UMP_Tracer_Green_Mag"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["E22_LMG_04_black_F", "", "", "", ["E22_120Rnd_M30JLSW_Box_F", "E22_120Rnd_M30JLSW_Box_Green_F"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["JCA_arifle_SR25_black_F", "", "", "JCA_optic_ACOG_black", ["JCA_20Rnd_762x51_SMAG", "JCA_20Rnd_762x51_Green_SMAG"], [], ""],
    ["JCA_arifle_SR25_black_F", "", "", "JCA_optic_CRBS_black", ["JCA_20Rnd_762x51_SMAG", "JCA_20Rnd_762x51_Green_SMAG"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["JCA_hgun_P320_black_F", "", "JCA_acc_LightModule_Pistol_black", "", ["JCA_17Rnd_9x21_P320_Green_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["E22_U_Coveralls_olive_F", "E22_U_Coveralls_grey_F", "E22_U_Coveralls_green_F", "E22_U_Coveralls_woodland_F"]];
_crewLoadoutData set ["vests", ["E22_V_CrewVest_Cargo_F", "E22_V_CarrierRigKBT_01_crew_woodland_F", "E22_V_CarrierRigKBT_01_crew_black_F"]];
_crewLoadoutData set ["helmets", ["E22_H_Helmet_Crew_woodland_F"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["E22_U_Coveralls_grey_F"]];
_pilotLoadoutData set ["vests", ["E22_V_CrewVest_Fighter_F"]];
_pilotLoadoutData set ["helmets", ["E22_H_Helmet_Heli_JTF_crew_black_F", "E22_H_Helmet_Heli_JTF_black_F", "E22_H_Helmet_Fighter_JTF_F"]];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;