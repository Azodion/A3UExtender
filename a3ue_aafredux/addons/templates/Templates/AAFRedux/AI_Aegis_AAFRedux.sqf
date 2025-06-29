private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

#include "..\..\script_component.hpp"

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "AAF"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "AAF"]] call _fnc_saveToTemplate;

["flag", "flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\ui_f\data\map\markers\flags\AAF_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_AAF"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["I_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["I_MRAP_03_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["I_Truck_02_transport_F", "I_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["I_Truck_02_cargo_lxWS", "I_Truck_02_flatbed_lxWS"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["I_Truck_02_ammo_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["I_Truck_02_box_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["I_Truck_02_fuel_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["I_Truck_02_medical_F"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesAPCs", ["I_APC_tracked_03_cannon_v2_F", "I_APC_Wheeled_03_cannon_F"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["I_LT_01_AT_F", "I_UGV_01_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["I_MBT_03_cannon_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["I_LT_01_AA_F"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["I_APC_tracked_03_cannon_v2_F", "I_APC_Wheeled_03_cannon_F", "I_LT_01_cannon_F"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["I_LT_01_cannon_F", "I_LT_01_AT_F", "I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F", "I_APC_tracked_03_cannon_v2_F", "I_APC_Wheeled_03_cannon_F"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["I_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["I_APC_tracked_03_cannon_v2_F", "I_APC_Wheeled_03_cannon_F"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["I_Plane_Fighter_04_F", "I_Plane_Fighter_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["I_Plane_Fighter_04_F", "I_Plane_Fighter_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["I_Plane_Transport_01_infantry_F"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["I_Heli_Light_01_F", "I_Heli_light_03_unarmed_F"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["I_Heli_Transport_02_F", "Aegis_I_Heli_Transport_02_Heavy_F"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["I_Heli_Light_01_dynamicLoadout_F", "I_Heli_light_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["I_Heli_Attack_03_F"]] call _fnc_saveToTemplate;
["vehiclesAirPatrol", ["I_Heli_Attack_03_F", "I_Heli_Light_01_dynamicLoadout_F", "I_Heli_light_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["I_Truck_02_MRL_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["I_Truck_02_MRL_F", ["12Rnd_230mm_rockets"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["Aegis_I_UAV_07_F", "I_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["I_UAV_01_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["I_MRAP_03_hmg_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["I_Truck_02_covered_F", "I_Truck_02_transport_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["I_MRAP_03_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaAPCs", ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] call _fnc_saveToTemplate;

["staticMGs", ["I_HMG_02_high_F", "I_GMG_01_high_F", "I_HMG_01_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["I_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["I_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["I_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros"
]] call _fnc_saveToTemplate;
["voices", ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]] call _fnc_saveToTemplate;

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
_loadoutData set ["ATLaunchers", ["launch_NLAW_F"]];
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
_loadoutData set ["NVGs", ["Aegis_NVG_IVAS_01_grn_F", "Aegis_NVG_IVAS_01_blk_F", "Aegis_NVG_IVAS_01_tan_F", "NVGoggles_OPFOR", "NVGoggles", "NVGoggles_INDEP", "O_NVGoggles_blk_F", "O_NVGoggles_grn_F", "NVGogglesB_blk_F", "NVGogglesB_grn_F"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve", "U_I_CombatUniform_tshirt", "Aegis_U_I_Uniform_01_sweater_f", "U_I_Uniform_01_tanktop_F"]];
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_TacVest_khk", "V_Rangemaster_belt_cbr", "V_Rangemaster_belt_oli", "V_ChestrigF_oli", "V_ChestrigF_rgr", "Aegis_V_CarrierRigKBT_01_holster_olive_F", "Aegis_V_CarrierRigKBT_01_holster_cbr_F"]];
_loadoutData set ["traitorHats", ["H_Cap_blk_Raven","H_Beret_AAF_01_F"]];

_loadoutData set ["officerUniforms", ["U_I_OfficerUniform"]];
_loadoutData set ["officerVests", ["Aegis_V_CarrierRigKBT_01_holster_olive_F"]];
_loadoutData set ["officerHats", ["H_Beret_AAF_01_F", "Aegis_H_Milcap_nohs_dgtl_F"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["V_Chestrig_oli", "V_Chestrig_rgr"]];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_green_F", "B_RadioBag_01_digi_F"]];
_loadoutData set ["atBackpacks", ["B_Carryall_khk", "B_Carryall_oli", "B_Carryall_green_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Booniehat_dgtl_hs"]];
_loadoutData set ["sniHats", ["H_Booniehat_dgtl", "H_Booniehat_dgtl_hs"]];

_loadoutData set ["glasses", ["", "G_Tactical_Clear", "G_Tactical_Black", "G_Cigarette", "G_Shemag_khk", "G_Shemag_oli", "G_Shemag_shades", "G_Shemag_tactical", "G_Shemag_tan", "Aegis_G_Condor_EyePro_F"]];	//cosmetics
_loadoutData set ["goggles", ["", "G_Combat", "G_Combat_Goggles_tna_F", "G_Combat_lxWS"]];

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
_sfLoadoutData set ["uniforms", ["Aegis_U_I_Uniform_01_sweater_f", "U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"]];
_sfLoadoutData set ["vests", ["Aegis_V_CarrierRigKBT_01_recon_olive_F", "Aegis_V_CarrierRigKBT_01_cqb_olive_F", "Aegis_V_CarrierRigKBT_01_tac_olive_F", "V_CarrierRigKBT_01_light_Olive_F"]];
_sfLoadoutData set ["backpacks", ["B_AssaultPack_dgtl", "B_Kitbag_dgtl", "B_TacticalPack_rgr", "I_shield_backpack_lxWS"]];
_sfLoadoutData set ["helmets", ["H_HelmetSpecter_cover_AAF_F", "Aegis_H_Helmet_FASTMT_Cover_rgr_F", "Aegis_H_Helmet_FASTMT_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_cbr_F", "Aegis_H_Helmet_FASTMT_cbr_F", "Aegis_H_Helmet_FASTMT_Cover_tan_F"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_04", "Rangefinder"]];

_sfLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_black_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_black_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_green_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_olive_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_sand_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_green_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_olive_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_sand_F", "", "", "", ["MRAWS_HEAT_F"], [], ""]
]];
_sfLoadoutData set ["missileATLaunchers", [
    ["launch_Titan_short_blk_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_O_Titan_short_camo_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_I_Titan_short_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_B_Titan_short_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_O_Titan_short_F", "", "", "", ["Titan_AT"], [], ""]
]];
_sfLoadoutData set ["AALaunchers", [
    ["launch_Titan_blk_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_O_Titan_camo_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_I_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_olive_F", "", "", "", ["Titan_AA"], [], ""]
]];

_sfOptics = ["optic_Hamr", "optic_MRCO", "Aegis_optic_ICO", "optic_r1_high_lxWS", "Aegis_optic_ACOG"];
_sfLROptics = ["optic_DMS", "optic_LRPS", "optic_Nightstalker", "optic_tws_sniper"];
_sfAttachments = ["Aegis_acc_pointer_DM", "acc_flashlight_ir", "saber_light_lxWS", "saber_light_ir_lxWS", "acc_pointer_IR", "acc_flashlight"];
_sfMuzzles = ["muzzle_snds_M", "suppressor_l_lxWS"];
_sfM110Muzzles = ["aegis_muzzle_snds_sr25_blk", "muzzle_snds_B", "suppressor_h_lxWS"];

_sfLoadoutData set ["slRifles", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_GL_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData set ["rifles", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["Aegis_arifle_M4A1_GL_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_khaki_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""]
]];
_sfLoadoutData set ["designatedGrenadeLaunchers", [
    ["GL_M32_F", "", "", "", ["6Rnd_HEDP_Grenade_shell", "6Rnd_APERSMine_Grenade_shell"], [], ""],
    ["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], [], ""],
    ["glaunch_GLX_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""],
    ["glaunch_GLX_camo_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""],
    ["glaunch_GLX_tan_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["SMG_04_blk_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""],
    ["SMG_04_khk_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""],
    ["SMG_04_snd_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["LMG_03_khk_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""],
    ["LMG_03_snd_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""],
    ["LMG_03_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["Aegis_arifle_SR25_MR_blk_F", _sfM110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"],
    ["Aegis_arifle_SR25_MR_khk_F", _sfM110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"],
    ["Aegis_arifle_SR25_MR_snd_F", _sfM110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["Aegis_srifle_GM6B_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_khaki_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_sand_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["hgun_ACPC2_F", "muzzle_snds_acp", "", "", ["9Rnd_45ACP_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["Aegis_U_I_Uniform_01_sweater_f", "U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"]];
_eliteLoadoutData set ["vests", ["V_PlateCarrierIA1_dgtl", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIAGL_dgtl", "V_PlateCarrierIA1_oli", "V_PlateCarrierIA2_oli", "Aegis_V_CarrierRigKBT_01_cqb_olive_F", "Aegis_V_CarrierRigKBT_01_cqb_cbr_F", "Aegis_V_CarrierRigKBT_01_cqb_khk_F", "Aegis_V_CarrierRigKBT_01_recon_olive_F", "Aegis_V_CarrierRigKBT_01_cqb_olive_F", "Aegis_V_CarrierRigKBT_01_tac_olive_F", "V_CarrierRigKBT_01_light_Olive_F"]];
_eliteLoadoutData set ["backpacks", ["B_AssaultPack_dgtl", "B_Kitbag_dgtl", "B_TacticalPack_rgr", "I_shield_backpack_lxWS"]];
_eliteLoadoutData set ["helmets", ["H_HelmetSpecter_cover_AAF_F", "H_MK7_AAF_F", "H_HelmetSpecter_F", "H_HelmetSpecter_brown_F", "H_HelmetSpecter_cover_khaki_F", "H_HelmetSpecter_cover_grn_F", "H_HelmetSpecter_headset_F", "H_HelmetSpecter_brown_headset_F", "H_HelmetSpecter_cover_AAF_F", "Aegis_H_Helmet_FASTMT_Cover_rgr_F", "Aegis_H_Helmet_FASTMT_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_cbr_F", "Aegis_H_Helmet_FASTMT_cbr_F", "Aegis_H_Helmet_FASTMT_Cover_tan_F"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_04", "Rangefinder"]];

_eliteLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_black_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_black_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_green_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_olive_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_sand_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_green_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_olive_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_sand_F", "", "", "", ["MRAWS_HEAT_F"], [], ""]
]];
_eliteLoadoutData set ["missileATLaunchers", [
    ["launch_Titan_short_blk_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_O_Titan_short_camo_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_I_Titan_short_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_B_Titan_short_F", "", "", "", ["Titan_AT"], [], ""],
    ["launch_O_Titan_short_F", "", "", "", ["Titan_AT"], [], ""]
]];
_eliteLoadoutData set ["AALaunchers", [
    ["launch_Titan_blk_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_O_Titan_camo_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_I_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_olive_F", "", "", "", ["Titan_AA"], [], ""]
]];

_sfOptics = ["optic_Hamr", "optic_MRCO", "Aegis_optic_ICO", "optic_r1_high_lxWS", "Aegis_optic_ACOG"];
_sfLROptics = ["optic_DMS", "optic_LRPS", "optic_Nightstalker", "optic_tws_sniper"];
_sfAttachments = ["Aegis_acc_pointer_DM", "acc_flashlight_ir", "saber_light_lxWS", "saber_light_ir_lxWS", "acc_pointer_IR", "acc_flashlight"];
_EliteMuzzles = ["", 5, "muzzle_snds_M", 1, "suppressor_l_lxWS", 1];
_M110Muzzles = ["", 5, "aegis_muzzle_snds_sr25_blk", 1, "muzzle_snds_B", 1, "suppressor_h_lxWS", 1];

_sfLoadoutData set ["slRifles", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_GL_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData set ["rifles", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["Aegis_arifle_SPAR_02_inf_blk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_khk_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_SPAR_02_inf_snd_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_black_F", _EliteMuzzles_sfMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_SCAR_L_grip_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_black_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_SCAR_L_grip_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["Aegis_arifle_M4A1_GL_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_khaki_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _EliteMuzzles, _sfAttachments, _sfOptics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HEDP_Grenade_shell"], ""]
]];
_sfLoadoutData set ["designatedGrenadeLaunchers", [
    ["GL_M32_F", "", "", "", ["6Rnd_HEDP_Grenade_shell", "6Rnd_APERSMine_Grenade_shell"], [], ""],
    ["GL_XM25_F", "", "", "", ["5Rnd_25x40mm_HE", "5Rnd_25x40mm_airburst"], [], ""],
    ["glaunch_GLX_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""],
    ["glaunch_GLX_camo_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""],
    ["glaunch_GLX_tan_lxWS", "", "", "", ["3Rnd_HE_Grenade_shell", "3Rnd_HEDP_Grenade_shell"], [], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["SMG_04_blk_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""],
    ["SMG_04_khk_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""],
    ["SMG_04_snd_F", "muzzle_snds_460", "Aegis_acc_pointer_DM", "Aegis_optic_ROS_SMG", ["40Rnd_460x30_Mag_F"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["LMG_03_khk_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""],
    ["LMG_03_snd_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""],
    ["LMG_03_F", "", "", "", ["200Rnd_556x45_Box_Red_F"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["Aegis_arifle_SR25_MR_blk_F", _M110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"],
    ["Aegis_arifle_SR25_MR_khk_F", _M110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"],
    ["Aegis_arifle_SR25_MR_snd_F", _M110Muzzles, "", _sfLROptics, ["Aegis_20Rnd_762x51_Green_SMAG"], [], "bipod_03_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["Aegis_srifle_GM6B_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_khaki_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_sand_F", "", "", _sfLROptics, ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["hgun_ACPC2_F", "muzzle_snds_acp", "", "", ["9Rnd_45ACP_Mag"], [], ""],
    ["hgun_ACPC2_F", "", "", "", ["9Rnd_45ACP_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve", "U_I_CombatUniform_tshirt", "Aegis_U_I_Uniform_01_sweater_f", "U_I_Uniform_01_tanktop_F"]];
_militaryLoadoutData set ["vests", ["V_PlateCarrierIA1_dgtl", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIAGL_dgtl", "V_PlateCarrierIA1_oli", "V_PlateCarrierIA2_oli", "V_PlateCarrierIAGL_oli"]];
_militaryLoadoutData set ["backpacks", ["B_AssaultPack_rgr", "B_AssaultPack_khk", "B_AssaultPack_dgtl", "B_AssaultPack_cbr", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli", "B_Kitbag_cbr", "B_Kitbag_rgr", "B_Kitbag_tan", "B_TacticalPack_blk", "B_TacticalPack_rgr", "B_TacticalPack_oli"]];
_militaryLoadoutData set ["helmets", ["H_HelmetIA", "H_I_Helmet_canvas_Green", "H_HelmetHBK_olive_F", "H_HelmetHBK_olive_headset_F"]];
_militaryLoadoutData set ["binoculars", ["Binocular", "Rangefinder"]];

_militaryLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_black_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_green_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_olive_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["launch_MRAWS_sand_rail_F", "", "", "", ["MRAWS_HEAT_F"], [], ""]
]];
_militaryLoadoutData set ["AALaunchers", [
    ["launch_Titan_blk_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_O_Titan_camo_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_I_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_F", "", "", "", ["Titan_AA"], [], ""],
    ["launch_B_Titan_olive_F", "", "", "", ["Titan_AA"], [], ""]
]];

_Optics = ["", 5, "optic_Aco", 1, "optic_Hamr", 1, "Aegis_optic_ACOG", 1, "Aegis_optic_1p87", 1, "Aegis_optic_ICO", 1, "Aegis_optic_ROS", 1];
_Attachments = ["", 5, "Aegis_acc_pointer_DM", 1, "acc_flashlight_ir", 1, "acc_pointer_IR", 1, "acc_flashlight", 1, "Aegis_acc_pointer_compact_green", 1];
_556Muzzles = ["", 5, "muzzle_mzls_M", 1];

_militaryLoadoutData set ["slRifles", [
    ["arifle_Mk20_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20_plain_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20_black_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],

    ["arifle_Mk20_GL_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_Mk20_GL_plain_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_Mk20_GL_black_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
    ["arifle_Mk20_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20_plain_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20_black_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["arifle_Mk20C_plain_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20C_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_Mk20C_black_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["arifle_Mk20_GL_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HE_Grenade_shell"], ""],
    ["arifle_Mk20_GL_plain_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HE_Grenade_shell"], ""],
    ["arifle_Mk20_GL_black_F", _556Muzzles, "", _Optics, ["30Rnd_556x45_Stanag_green"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["SMG_01_F", "", "", "", ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""],
    ["SMG_01_black_F", "", "", "", ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""],
    ["SMG_01_khk_F", "", "", "", ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["LMG_Zafir_F", "", "", "", ["150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_black_F", "", "", "", ["150Rnd_762x54_Box_Tracer"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["srifle_EBR_F", "", "", _sfLROptics, ["20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
    ["srifle_EBR_blk_F", "", "", _sfLROptics, ["20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
    ["srifle_EBR_khk_F", "", "", _sfLROptics, ["20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
    ["srifle_EBR_blk_lxWS", "", "", _sfLROptics, ["20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
    ["srifle_EBR_snake_lxWS", "", "", _sfLROptics, ["20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["srifle_LRR_F", "", "", _sfLROptics, ["7Rnd_408_Mag"], [], ""],
    ["srifle_LRR_camo_F", "", "", _sfLROptics, ["7Rnd_408_Mag"], [], ""],
    ["Aegis_srifle_LRR_olive_F", "", "", _sfLROptics, ["7Rnd_408_Mag"], [], ""],
    ["Aegis_srifle_LRR_sand_F", "", "", _sfLROptics, ["7Rnd_408_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["hgun_ACPC2_F", "", "", "", ["9Rnd_45ACP_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE"]];
private _helmets = ["H_Cap_police"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Holosight", [], [], ""],
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["U_I_CombatUniform_shortsleeve", "U_I_CombatUniform_tshirt", "U_I_Uniform_01_tanktop_F"]];
_militiaLoadoutData set ["vests", ["V_TacVest_oli", "V_TacVest_grn", "V_TacChestrig_grn_F", "V_TacChestrig_oli_F", "V_Rangemaster_belt", "V_Rangemaster_belt_blk", "V_Rangemaster_belt_cbr", "V_Rangemaster_belt_khk", "V_Rangemaster_belt_oli"]];
_militiaLoadoutData set ["backpacks", ["B_AssaultPack_rgr", "B_AssaultPack_khk", "B_AssaultPack_dgtl", "B_AssaultPack_cbr", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli", "B_TacticalPack_blk", "B_TacticalPack_rgr", "B_TacticalPack_oli"]];
_militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_I_Helmet_canvas_Green", "H_I_Helmet_canvas_CBR_F"]];

_militiaLoadoutData set ["slRifles", [
    ["arifle_TRG20_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG20_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG21_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG21_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG21_GL_F", "", "", "", ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_TRG21_GL_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["arifle_TRG21_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG21_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["arifle_TRG20_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""],
    ["arifle_TRG20_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["arifle_TRG21_GL_F", "", "", "", ["30Rnd_556x45_Stanag_green"], ["1Rnd_HE_Grenade_shell"], ""],
    ["arifle_TRG21_GL_black_F", "", "", "", ["30Rnd_556x45_Stanag_green"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", ["SMG_01_F", "SMG_02_F", "SMG_03_black", "SMG_03C_black"]];
_militiaLoadoutData set ["machineGuns", [
    ["LMG_Zafir_F", "", "", "", ["150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_black_F", "", "", "", ["150Rnd_762x54_Box_Tracer"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["srifle_DMR_06_black_F", "", "", "Aegis_optic_ACOG", ["20Rnd_762x51_Mag"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["srifle_DMR_06_black_F", "", "", "Aegis_optic_ACOG", ["20Rnd_762x51_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", ["hgun_ACPC2_F"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve", "U_I_CombatUniform_tshirt", "Aegis_U_I_Uniform_01_sweater_f", "U_I_Uniform_01_tanktop_F"]];
_crewLoadoutData set ["vests", ["V_Rangemaster_belt"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_B", "H_HelmetCrew_B_oli_F", "H_HelmetCrew_I"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_I_HeliPilotCoveralls"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_I", "H_PilotHelmetFighter_O", "H_PilotHelmetHeli_I_visor_up"]];





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