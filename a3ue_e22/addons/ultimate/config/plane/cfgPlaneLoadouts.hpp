class planeLoadouts
{
    // It also has support for these parameters, though I haven't used them before.
    // mainGun
    // rocketLauncher[]
    // missileLauncher[]
    // bombRacks[]
    // diveParams[]
    class CASDIVE
    {
        class E22_B_JTF_Plane_Fighter_01_F
        {
            loadout[] = {"PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1","","","","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class E22_B_JTF_Plane_Fighter_01_light_F
        {
            loadout[] = {"","","PylonRack_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x2","","","","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };

    class CAS
    {
        class E22_B_JTF_Plane_Fighter_01_F
        {
            loadout[] = {"PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1","","","","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
        };
        class E22_B_JTF_Plane_Fighter_01_light_F
        {
            loadout[] = {"","","PylonRack_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x2","","","","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_AGM_65Launcher", "weapon_GBU12Launcher"};
        };
    };
   
    class AA
    {
        class E22_B_JTF_Plane_Fighter_01_F
        {
            loadout[] = {"PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AMRAAMLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class E22_B_JTF_Plane_Fighter_01_light_F
        {
            loadout[] = {"","","PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AMRAAMLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class E22_B_JTF_Plane_Fighter_01_stealth_F
        {
            loadout[] = {"","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher", "weapon_AMRAAMLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};