class Templates 
{
    class E22_Base
    { 
        requiredAddons[] = {"Soft_F_Levi_Quadbike_01", "Soft_F_RAF_Quadbike_01", "Soft_F_RAF_Quadbike_01_Winter", "vests_f_JCA_IE", "vests_f_JCA_MCRP", "Weapons_F_JCA_IA_Rifles_M4A1"};
        basepath = QPATHTOFOLDER(Templates\E22);
        logo = "data_f_levi\Logos\arma3_levi_icon_ca.paa";
        priority = 70;
        forceDLC[] = {"ws"};
    };
    class E22_JOCD_Wood : E22_Base
    {
        side = "Occ";
        flagTexture = "\A3\ui_f\data\map\markers\flags\nato_ca.paa";
        name = "[E22] JointCom Woodland";
        file = "E22_JOCD_Wood";
        maps[] = {};
        climate[] = {"temperate", "tropical", "arctic"};
        description = "Northstar is a multi-national JointCom detachment operating across Europe, North Africa, and the West Atlantic, equipped with versatile marine and naval forces featuring a balanced mix of fast, mobile units and well-equipped infantry optimized for adaptability in diverse environments.";
    };
    class E22_JOCD_Des : E22_JOCD_Wood
    {
        name = "[E22] JointCom Desert";
        file = "E22_JOCD_Des";
        climate[] = {"arid"};
        description = "Northstar is a multi-national JointCom detachment operating across Europe, North Africa, and the West Atlantic, equipped with versatile marine and naval forces featuring a balanced mix of fast, mobile units and well-equipped infantry optimized for adaptability in diverse environments.";
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/