/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 38 NPCs
private _npcs = [
["Exile_Trader_VehicleCustoms", ["HubBriefing_talkAround"], "Exile_Trader_VehicleCustoms", "Sturrock", [[],[],[],["U_C_Driver_1_white",[]],[],[],"H_RacingHelmet_1_white_F","G_Tactical_Black",[],["","","","","",""]], [553.289, 949.597, 420.832], [0.904277, 0.426947, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubStandingUB_move1"], "Exile_Trader_Vehicle", "WhiteHead_03", [[],[],[],["U_C_Driver_1_orange",[]],[],[],"H_EarProtectors_orange_F","",[],["","","","","",""]], [554.418, 947.449, 420.832], [0.946157, 0.323709, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["UnaErcPoslechVelitele3"], "Exile_Trader_WasteDump", "WhiteHead_17", [[],[],[],["U_C_Mechanic_01_F",[]],["V_Safety_orange_F",[]],[],"","G_Aviator",[],["","","","","",""]], [573.669, 940.033, 420.709], [-0.288452, 0.957494, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingChairUB_idle1"], "Exile_Trader_Hardware", "WhiteHead_16", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_FieldPack_cbr",[]],"H_Booniehat_khk_hs","G_Sport_Blackred",[],["","","","","",""]], [557.042, 942.827, 421.322], [-0.319621, 0.947545, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_21", [["arifle_AKM_F","","","",["30Rnd_762x39_Mag_F",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_762x39_Mag_F",3,30]]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [558.36, 938.86, 420.833], [0.928719, 0.370784, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_08", [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Aco",[],[],""],[],["hgun_Pistol_heavy_01_F","","","",[],[],""],["U_B_CTRG_Soldier_F",[]],["V_PlateCarrierH_CTRG",[]],["B_AssaultPack_rgr",[]],"H_HelmetB_Enh_tna_F","G_Balaclava_TI_G_tna_F",[],["","","","","","O_NVGoggles_grn_F"]], [561.146, 944.209, 420.832], [-0.397118, 0.917768, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Equipment", "WhiteHead_06", [[],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam_wdl_f",[["11Rnd_45ACP_Mag",3,11]]],["V_CarrierRigKBT_01_heavy_Olive_F",[]],["B_AssaultPack_eaf_F",[]],"H_HelmetB_light_wdl","",[],["","","","","",""]], [557.736, 940.607, 420.832], [0.923234, 0.384239, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think","HubBriefing_lookAround1","HubBriefing_lookAround2"], "Exile_Trader_Office", "WhiteHead_06", [[],[],[],["U_C_Man_casual_1_F",[]],[],[],"H_Hat_checker","",[],["","","","","",""]], [557.893, 952.159, 420.832], [0.378503, -0.9256, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_salmon",[]],[],[],"H_Cap_tan","G_Aviator",[],["","","","","",""]], [556.191, 946.069, 420.832], [0.403897, -0.914805, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["Acts_CivilListening_2"], "Exile_Trader_Vehicle", "WhiteHead_14", [[],[],[],["U_C_Driver_1_yellow",[]],[],[],"H_HeadSet_yellow_F","G_Tactical_Black",[],["","","","","",""]], [3793.53, 11867.1, 76.9371], [0.0145415, -0.999894, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubSittingChairUB_idle1","HubSittingChairUB_idle2","HubSittingChairUB_idle3","HubSittingChairUB_move1"], "Exile_Trader_VehicleCustoms", "WhiteHead_18", [[],[],[],["U_C_Driver_2",[]],[],[],"H_RacingHelmet_2_F","G_Aviator",[],["","","","","",""]], [3789.25, 11863.4, 77.3895], [0.958665, 0.284539, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubSittingChairUB_move1"], "Exile_Trader_WasteDump", "GreekHead_A3_05", [[],[],[],["U_C_ConstructionCoverall_Blue_F",[]],["V_Safety_yellow_F",[]],[],"H_Bandanna_blu","",[],["","","","","",""]], [3796.9, 11870.9, 77.3387], [0.993739, -0.111728, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [3816.82, 11863, 76.7344], [-0.532285, -0.846565, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["AidlPercMstpSlowWrflDnon_G03"], "Exile_Trader_Equipment", "WhiteHead_20", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [3814.96, 11864.4, 76.7487], [-0.521379, -0.853325, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubStandingUA_move1"], "Exile_Trader_SpecialOperations", "WhiteHead_17", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [3819.22, 11860.9, 76.7174], [-0.592121, -0.805849, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingHighB_move1"], "Exile_Trader_Hardware", "WhiteHead_19", [[],[],[],["U_C_WorkerCoveralls",[]],[],["B_FieldPack_cbr",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [3821.55, 11858.1, 76.7964], [-0.187741, -0.982219, 0], [0, 0, 1]],
["Exile_Trader_Office", ["InBaseMoves_table1"], "Exile_Trader_Office", "WhiteHead_05", [[],[],[],["U_Marshal",[]],[],[],"H_Hat_brown","",[],["","","","","",""]], [3826.32, 11858, 76.7942], [-0.587202, -0.80944, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUA_idle2"], "Exile_Trader_Food", "WhiteHead_04", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [3814.93, 11847.7, 76.803], [-0.832817, 0.553548, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubSittingChairUB_idle1","HubSittingChairUB_idle2","HubSittingChairUB_idle3","HubSittingChairUB_move1"], "Exile_Trader_Aircraft", "WhiteHead_05", [[],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_pilotCoveralls",[["11Rnd_45ACP_Mag",3,11]]],[],["B_Parachute",[]],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [3572.36, 9890.82, 72.6144], [0.794703, 0.606999, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_AircraftCustoms", "GreekHead_A3_08", [["arifle_RPK12_F","","","optic_MRCO",["75rnd_762x39_AK12_Mag_F",75],[],""],[],[],["Exile_Uniform_ExileCustoms",[["75rnd_762x39_AK12_Mag_F",1,75]]],["V_RebreatherB",[]],[],"H_HelmetCrew_O","",[],["","","","","",""]], [3571.31, 9888.57, 72.9464], [-0.603484, 0.797375, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUA_move1"], "Exile_Trader_Food", "WhiteHead_19", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [12392.8, 8856.34, 62.4408], [-0.994626, -0.10353, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think","HubBriefing_lookAround1","HubBriefing_lookAround2"], "Exile_Trader_Office", "WhiteHead_15", [[],[],[],["U_I_G_resistanceLeader_F",[]],[],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [12383.4, 8854.98, 62.4719], [0.990622, 0.136632, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["InBaseMoves_sitHighUp1"], "Exile_Trader_Hardware", "WhiteHead_15", [[],[],[],["U_C_WorkerCoveralls",[]],[],["B_FieldPack_cbr",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [12350.1, 8833.12, 63.2754], [0.910798, -0.412853, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubStandingUA_move1"], "Exile_Trader_Armory", "Sturrock", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [12374.3, 8805.15, 62.8803], [0.716615, 0.697469, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["AidlPercMstpSlowWrflDnon_G03"], "Exile_Trader_Equipment", "GreekHead_A3_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [12386.9, 8815.77, 62.8855], [-0.702277, -0.711904, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["AidlPknlMstpSlowWpstDnon_G01"], "Exile_Trader_SpecialOperations", "WhiteHead_19", [["arifle_MX_Black_F","","","",[],[],""],[],["Exile_Weapon_SA61","","","",["Exile_Magazine_10Rnd_765x17_SA61",10],[],""],["U_B_CTRG_1",[["Exile_Magazine_10Rnd_765x17_SA61",3,10]]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [12374.1, 8815.45, 62.8803], [0.83993, -0.542695, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUC_idle3"], "Exile_Trader_WasteDump", "WhiteHead_08", [[],[],[],["U_C_ConstructionCoverall_Black_F",[]],[],[],"H_Construction_earprot_black_F","",[],["","","","","",""]], [12417.1, 8837.14, 60.9995], [-0.991228, -0.132163, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubStandingUA_move1"], "Exile_Trader_Vehicle", "WhiteHead_08", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]], [12432.4, 8825.98, 61.136], [-0.990649, -0.136436, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_repairVehicleKnl","InBaseMoves_repairVehiclePne"], "Exile_Trader_VehicleCustoms", "WhiteHead_02", [[],[],[],["U_C_Driver_3",[]],[],[],"H_EarProtectors_yellow_F","",[],["","","","","",""]], [12428.7, 8830.53, 61.1352], [-0.994553, -0.104234, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1"], "", "WhiteHead_03", [["arifle_AK12_lush_F","muzzle_snds_B_lush_F","acc_pointer_IR","optic_Aco",["30rnd_762x39_AK12_Lush_Mag_F",30],[],""],[],[],["U_B_CBRN_Suit_01_Wdl_F",[["30rnd_762x39_AK12_Lush_Mag_F",3,30]]],[],["B_Carryall_eaf_F",[]],"","G_Balaclava_oli",[],["","","","","",""]], [588.524, 934.054, 424.143], [0.892507, 0.451033, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1"], "", "WhiteHead_11", [["arifle_RPK12_F","muzzle_snds_B","acc_pointer_IR","optic_Aco",["75rnd_762x39_AK12_Mag_F",75],[],""],[],[],["U_I_E_Uniform_01_F",[["75rnd_762x39_AK12_Mag_F",1,75]]],[],["B_Carryall_green_F",[["75rnd_762x39_AK12_Mag_F",2,75]]],"","G_Balaclava_oli",[],["","","","","",""]], [591.873, 976.345, 424.109], [0.579607, -0.814896, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_patrolling2"], "", "GreekHead_A3_06", [["srifle_LRR_F","","","",["7Rnd_408_Mag",7],[],""],[],[],["U_I_E_Uniform_01_sweater_F",[["7Rnd_408_Mag",2,7]]],["V_PlateCarrierIAGL_dgtl",[["7Rnd_408_Mag",1,7]]],["B_Carryall_green_F",[]],"H_HelmetB","",[],["","","","","",""]], [12398.9, 8804.88, 65.7017], [0.122091, -0.992519, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_patrolling2"], "", "AfricanHead_02", [["arifle_MSBS65_Mark_black_F","muzzle_snds_H","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_65x39_caseless_msbs_mag",30],[],"bipod_02_F_blk"],[],[],["U_I_E_Uniform_01_sweater_F",[["30Rnd_65x39_caseless_msbs_mag",3,30]]],["V_PlateCarrierIAGL_dgtl",[]],["B_Carryall_green_F",[]],"H_HelmetSpecB_wdl","",[],["","","","","",""]], [12415.3, 8805.83, 65.1989], [0.154095, -0.988056, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubSittingHighB_move1"], "", "WhiteHead_08", [["arifle_AK12U_F","muzzle_snds_B","acc_pointer_IR","optic_Aco",["30Rnd_762x39_AK12_Mag_F",30],[],"bipod_02_F_blk"],[],[],["U_I_E_Uniform_01_sweater_F",[["30Rnd_762x39_AK12_Mag_F",3,30]]],[],[],"H_MilCap_taiga","",[],["","","","","",""]], [12375.2, 8839.4, 62.6611], [-0.291461, -0.956583, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubSittingHighB_move1"], "", "WhiteHead_08", [["arifle_AK47","","","",["30Rnd_762x39_AK47_M",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["30Rnd_762x39_AK47_M",1,30]]],[],[],"","G_Balaclava_blk",[],["","","","","",""]], [12371.7, 8838.1, 62.7104], [0.931578, 0.363542, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1"], "", "WhiteHead_07", [["srifle_DMR_07_blk_F","muzzle_snds_65_TI_blk_F","","optic_AMS",["20Rnd_650x39_Cased_Mag_F",20],[],""],[],[],["U_O_T_Sniper_F",[["20Rnd_650x39_Cased_Mag_F",3,20]]],["V_PlateCarrier2_wdl",[]],[],"","",[],["","","","","",""]], [12319.7, 8842.21, 68.386], [0.786924, 0.61705, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubStandingUA_move1"], "Exile_Trader_Boat", "GreekHead_A3_07", [[],[],[],["Exile_Uniform_Wetsuit_CSAT",[]],[],[],"H_Cap_surfer","Exile_Glasses_Diving_NATO",[],["","","","","",""]], [731.991, 7628.22, 0.742274], [0.642386, -0.766381, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubStandingUA_move1"], "Exile_Trader_Boat", "WhiteHead_05", [[],[],[],["Exile_Uniform_Wetsuit_NATO",[]],[],[],"H_Cap_surfer","Exile_Glasses_Diving_NATO",[],["","","","","",""]], [9512.27, 11717.9, 1.52415], [-0.221004, 0.975273, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;