class planeLoadouts
{
    class CASDIVE
    {
        class I_Plane_Fighter_04_F
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class I_Plane_Fighter_03_dynamicLoadout_F
        {
            loadout[] = {"PylonRack_1Rnd_AAA_missiles","PylonRack_3Rnd_LG_scalpel","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_3Rnd_LG_scalpel","PylonRack_1Rnd_AAA_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"missiles_ASRAAM", "missiles_SCALPEL", "Bomb_04_Plane_CAS_01_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };

    class CAS
    {
        class I_Plane_Fighter_04_F
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
        };
        class I_Plane_Fighter_03_dynamicLoadout_F
        {
            loadout[] = {"PylonRack_1Rnd_AAA_missiles","PylonRack_3Rnd_LG_scalpel","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_3Rnd_LG_scalpel","PylonRack_1Rnd_AAA_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"missiles_ASRAAM", "missiles_SCALPEL", "Bomb_04_Plane_CAS_01_F"};
        };
    };
   
    class AA
    {
        class I_Plane_Fighter_04_F
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x2","PylonRack_Missile_AMRAAM_C_x2"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AMRAAMLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class I_Plane_Fighter_03_dynamicLoadout_F
        {
            loadout[] = {"PylonRack_1Rnd_AAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonWeapon_300Rnd_20mm_shells","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_AAA_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"missiles_ASRAAM", "missiles_Zephyr"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};