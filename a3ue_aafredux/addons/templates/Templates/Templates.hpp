class Templates 
{
    class AAFRedux_Base
    { 
        requiredAddons[] = {"AAF_Greek_Lizard_Mod", "AAF_Greek_Lizard_AEWS_Mod", "A3_Aegis_Characters_F_Aegis"};
        basepath = QPATHTOFOLDER(Templates\AAFRedux);
        logo = "A3_Aegis\data_f_aegis\logos\arma3_aegis_logo_ca.paa";
        priority = 80;
        forceDLC[] = {"ws"};
    };

    class AAFRedux_Aegis : AAFRedux_Base
    {
        side = "Occ";
        flagTexture = "\A3\ui_f\data\map\markers\flags\AAF_ca.paa";
        name = "AAF Redux";
        file = "AI_Aegis_AAFRedux";
        climate[] = {"arid", "temperate"};
        description = "Good Ol' AAF Enhanced with Aegis and new Lizard camo!";
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/