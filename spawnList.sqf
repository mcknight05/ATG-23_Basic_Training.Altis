/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/
#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) then {false};

params [
	"_case"
];

if(isServer && GOL_OKS_AMBIENCE isEqualTo 1) then {

	waitUntil {sleep 1; !(isNil "OKS_FaceSwap")};
	[east,"russian"] spawn OKS_FaceSwap;
};


switch (_case) do {

	case 1: {

		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};
			[Trigger_1,false,[0,8,false,false],civilian,4,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],true] spawn OKS_CreateZone;
		};

	};

	case 2: {
		SystemChat "Triggered Live Insert 1";
		[selectRandom [getPos airdrop_spawn_1,getPos airdrop_spawn_9,getPos airdrop_spawn_10],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos airdrop_spawn_11,getPos airdrop_spawn_12,getPos airdrop_spawn_13],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos airdrop_spawn_8,getPos airdrop_spawn_7,getPos airdrop_spawn_2],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos airdrop_spawn_3,getPos airdrop_spawn_4,getPos airdrop_spawn_5,getPos airdrop_spawn_6],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
	};

	case 3: {
		SystemChat "Triggered Live Insert 2";
		[selectRandom [getPos fastrope_1_spawn_11,getPos fastrope_1_spawn_8,getPos fastrope_1_spawn_7],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_6,getPos fastrope_1_spawn_5,getPos fastrope_1_spawn_4],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_1,getPos fastrope_1_spawn_12,getPos fastrope_1_spawn_13],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_9,getPos fastrope_1_spawn_2,getPos fastrope_1_spawn_10],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_3,getPos fastrope_1_spawn_4,getPos fastrope_1_spawn_5],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";

		sleep 10;

		[selectRandom [getPos fastrope_1_spawn_11,getPos fastrope_1_spawn_8,getPos fastrope_1_spawn_7],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_6,getPos fastrope_1_spawn_5,getPos fastrope_1_spawn_4],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_1,getPos fastrope_1_spawn_12,getPos fastrope_1_spawn_13],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_9,getPos fastrope_1_spawn_2,getPos fastrope_1_spawn_10],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos fastrope_1_spawn_3,getPos fastrope_1_spawn_4,getPos fastrope_1_spawn_5],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
	};

	case 4: {

		SystemChat "Triggered Live Extract 3";
		[selectRandom [getPos extract_1_spawn_1,getPos extract_1_spawn_9,getPos extract_1_spawn_8],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_11,getPos extract_1_spawn_7,getPos extract_1_spawn_6],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_5,getPos extract_1_spawn_4,getPos extract_1_spawn_10,extract_1_spawn_3],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_13,getPos extract_1_spawn_12 ,getPos extract_1_spawn_2],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		sleep 10;
		[selectRandom [getPos extract_1_spawn_1,getPos extract_1_spawn_9,getPos extract_1_spawn_8],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_11,getPos extract_1_spawn_7,getPos extract_1_spawn_6],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_5,getPos extract_1_spawn_4,getPos extract_1_spawn_10,extract_1_spawn_3],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";
		[selectRandom [getPos extract_1_spawn_13,getPos extract_1_spawn_12 ,getPos extract_1_spawn_2],1,independent,200] execVM "Scripts\OKS_Ambience\OKS_Rush_SpawnGroup.sqf";

	};

	case 5: {
		/// Urban Movement Course
		// Level 1
		GOL_MaxUnits = 0.25;
		publicVariable "GOL_MaxUnits";

		["hq","side","Urban Movement Course Activated."] remoteExec ["OKS_Chat",0];
		{_X setMarkerAlpha 1} foreach ["marker_471","marker_472","marker_473","marker_475"];

		[[[[16700.8,12839.3,-9.15527e-005],306,"Up",[]],[[16709.2,12853.1,1.19157],306,"Up",[]],[[16711.6,12848.4,3.78997],11,"Up",[]],[[16720.2,12826.6,4.08891],306,"Up",[]],[[16722.6,12829.1,0.323387],302,"Up",[]],[[16731.2,12840.7,0.423428],105,"Up",[]],[[16730.6,12822.2,3.60383],27,"Up",[]],[[16727.3,12818.6,0.415915],306,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16742.3,12876.9,4.13927],220,"Up",[]],[[16738.2,12880.3,4.45483],205,"Up",[]],[[16744.9,12874.3,3.92271],221,"Up",[]],[[16750.7,12878.2,3.91364],47,"Up",[]],[[16723.4,12868.3,0.126223],124,"Up",[]],[[16730.2,12885.1,0],158,"Up",[]],[[16754.2,12872.9,0.126223],225,"Up",[]],[[16721.2,12911.8,0],132,"Up",[]],[[16702,12894.6,1.90735e-006],130,"Middle",[]],[[16751.2,12855.5,0.493025],314,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16757.1,12896.8,4.30908],262,"Up",[]],[[16763.3,12895.4,4.20305],178,"Up",[]],[[16755.9,12903,1.08632],238,"Up",[]],[[16765,12896.3,0.778481],179,"Up",[]],[[16771.5,12887.5,0.126223],293,"Up",[]],[[16763.5,12917.5,0.126223],147,"Middle",[]],[[16789.4,12894.4,0.126223],312,"Middle",[]],[[16780.7,12913.2,0.315142],218,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16782,12924,0.382601],220,"Up",[]],[[16808.3,12907,0.806356],156,"Up",[]],[[16802.8,12911.7,1.10145],83,"Up",[]],[[16800.4,12906.8,4.0234],221,"Up",[]],[[16807.3,12901.3,3.7848],216,"Up",[]],[[16783.6,12911.9,0.300535],135,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16813.7,12873.6,1.90735e-006],318,"Up",[]],[[16827.7,12889.9,0.315544],188,"Up",[]],[[16833.9,12888.9,4.27079],188,"Up",[]],[[16839.7,12878,3.90305],169,"Middle",[]],[[16830.3,12884,4.39799],219,"Up",[]],[[16828.7,12866.2,0.248011],342,"Up",[]],[[16831.7,12864.9,0],34,"Up",[]],[[16813.1,12849.1,0],302,"Middle",[]],[[16794.9,12845.3,1.90735e-006],322,"Middle",[]],[[16814.8,12859.6,1.11597],40,"Up",[]],[[16826.1,12849,0.947582],51,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16844.7,12863.6,1.01279],303,"Up",[]],[[16841.7,12859.4,0.457748],333,"Up",[]],[[16860.1,12864.6,1.80952],288,"Middle",[]],[[16857.8,12862.4,0.910536],297,"Middle",[]],[[16852.3,12846.1,0.431473],333,"Up",[]],[[16831.1,12844.5,5.16487],41,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16868.5,12824.5,0.244415],348,"Up",[]],[[16872.6,12823.2,0.260666],348,"Up",[]],[[16874.3,12821.5,3.679],348,"Up",[]],[[16906.5,12824,1.19102],280,"Up",[]],[[16892.7,12824,1.93062],170,"Up",[]],[[16884.1,12808,4.24316],40,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16904.8,12790.2,4.54529],330,"Up",[]],[[16893,12799.8,3.82345],37,"Up",[]],[[16914.3,12816.9,1.90735e-006],216,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16899.2,12744,3.99418],6,"Up",[]],[[16893.4,12737,3.6314],305,"Up",[]],[[16912.8,12754.2,0.373844],327,"Up",[]],[[16920.4,12748.5,0],226,"Up",[]],[[16875.4,12762.7,3.68003],34,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16918.1,12762,3.61194],339,"Up",[]],[[16920.3,12754.7,0.354736],9,"Up",[]],[[16930.5,12760.6,0.441389],142,"Up",[]],[[16911.9,12726.1,-1.90735e-006],333,"Up",[]],[[16923.7,12750.4,0],54,"Up",[]],[[16920.9,12729,0],53,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16957.3,12746.3,0.623327],222,"Up",[]],[[16955.4,12744.5,4.10382],226,"Up",[]],[[16949.7,12750.6,3.88596],226,"Up",[]],[[16925.9,12715.3,3.60255],10,"Up",[]],[[16949.4,12732.5,0.149214],340,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16978.1,12711.3,-3.8147e-006],99,"Up",[]],[[16981.1,12698.3,3.56041],21,"Up",[]],[[16987.8,12696.3,4.06371],30,"Up",[]],[[16993.5,12694.3,0.322548],95,"Up",[]],[[16965.4,12707.4,4.19511],88,"Up",[]],[[16943.9,12681.5,0.491003],21,"Up",[]],[[16943,12681.7,0.579008],21,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16976.8,12738.8,3.98465],257,"Up",[]],[[16981.7,12734.2,0.135136],212,"Up",[]],[[16989.2,12727.5,0.419159],230,"Up",[]],[[17004.8,12710.4,0.322546],218,"Up",[]],[[17012.6,12715.1,0.322548],311,"Up",[]],[[17018.4,12700.3,0.219447],271,"Up",[]],[[17020.5,12704.7,0.281326],344,"Up",[]],[[17016.6,12695.7,0.732223],121,"Up",[]],[[17022.2,12696.5,1.06906],193,"Up",[]],[[17010.6,12696.8,0.298356],334,"Up",[]],[[17005,12692.6,0.208189],169,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16893.7,12706.5,3.92928],54,"Up",[]],[[16775.9,12804.8,3.84729],311,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[],[["UK3CB_AAF_O_PKM_High",[16898.3,12738.8,3.87622],348,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_PKM_Low",[16996.3,12710.4,-2.47955e-005],312,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 180;
		["hq","side","Urban Movement Hunters Activate."] remoteExec ["OKS_Chat",0];
		{[_X,1,east,1000,[],UrbanMovementTrigger] spawn OKS_Rush_Spawner; sleep 120;} foreach [hunt_1,hunt_2,hunt_3,hunt_4,hunt_5,hunt_6,hunt_7];

	};

	case 6: {
		/// Urban Movement Course
		// Level 2
		GOL_MaxUnits = 0.5;
		publicVariable "GOL_MaxUnits";

		["hq","side","Urban Movement Course Activated."] remoteExec ["OKS_Chat",0];
		{_X setMarkerAlpha 1} foreach ["marker_471","marker_472","marker_473","marker_475"];

		[[[[16700.8,12839.3,-9.15527e-005],306,"Up",[]],[[16709.2,12853.1,1.19157],306,"Up",[]],[[16711.6,12848.4,3.78997],11,"Up",[]],[[16720.2,12826.6,4.08891],306,"Up",[]],[[16722.6,12829.1,0.323387],302,"Up",[]],[[16731.2,12840.7,0.423428],105,"Up",[]],[[16730.6,12822.2,3.60383],27,"Up",[]],[[16727.3,12818.6,0.415915],306,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16742.3,12876.9,4.13927],220,"Up",[]],[[16738.2,12880.3,4.45483],205,"Up",[]],[[16744.9,12874.3,3.92271],221,"Up",[]],[[16750.7,12878.2,3.91364],47,"Up",[]],[[16723.4,12868.3,0.126223],124,"Up",[]],[[16730.2,12885.1,0],158,"Up",[]],[[16754.2,12872.9,0.126223],225,"Up",[]],[[16721.2,12911.8,0],132,"Up",[]],[[16702,12894.6,1.90735e-006],130,"Middle",[]],[[16751.2,12855.5,0.493025],314,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16757.1,12896.8,4.30908],262,"Up",[]],[[16763.3,12895.4,4.20305],178,"Up",[]],[[16755.9,12903,1.08632],238,"Up",[]],[[16765,12896.3,0.778481],179,"Up",[]],[[16771.5,12887.5,0.126223],293,"Up",[]],[[16763.5,12917.5,0.126223],147,"Middle",[]],[[16789.4,12894.4,0.126223],312,"Middle",[]],[[16780.7,12913.2,0.315142],218,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16782,12924,0.382601],220,"Up",[]],[[16808.3,12907,0.806356],156,"Up",[]],[[16802.8,12911.7,1.10145],83,"Up",[]],[[16800.4,12906.8,4.0234],221,"Up",[]],[[16807.3,12901.3,3.7848],216,"Up",[]],[[16783.6,12911.9,0.300535],135,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16813.7,12873.6,1.90735e-006],318,"Up",[]],[[16827.7,12889.9,0.315544],188,"Up",[]],[[16833.9,12888.9,4.27079],188,"Up",[]],[[16839.7,12878,3.90305],169,"Middle",[]],[[16830.3,12884,4.39799],219,"Up",[]],[[16828.7,12866.2,0.248011],342,"Up",[]],[[16831.7,12864.9,0],34,"Up",[]],[[16813.1,12849.1,0],302,"Middle",[]],[[16794.9,12845.3,1.90735e-006],322,"Middle",[]],[[16814.8,12859.6,1.11597],40,"Up",[]],[[16826.1,12849,0.947582],51,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16844.7,12863.6,1.01279],303,"Up",[]],[[16841.7,12859.4,0.457748],333,"Up",[]],[[16860.1,12864.6,1.80952],288,"Middle",[]],[[16857.8,12862.4,0.910536],297,"Middle",[]],[[16852.3,12846.1,0.431473],333,"Up",[]],[[16831.1,12844.5,5.16487],41,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16868.5,12824.5,0.244415],348,"Up",[]],[[16872.6,12823.2,0.260666],348,"Up",[]],[[16874.3,12821.5,3.679],348,"Up",[]],[[16906.5,12824,1.19102],280,"Up",[]],[[16892.7,12824,1.93062],170,"Up",[]],[[16884.1,12808,4.24316],40,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16904.8,12790.2,4.54529],330,"Up",[]],[[16893,12799.8,3.82345],37,"Up",[]],[[16914.3,12816.9,1.90735e-006],216,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16899.2,12744,3.99418],6,"Up",[]],[[16893.4,12737,3.6314],305,"Up",[]],[[16912.8,12754.2,0.373844],327,"Up",[]],[[16920.4,12748.5,0],226,"Up",[]],[[16875.4,12762.7,3.68003],34,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16918.1,12762,3.61194],339,"Up",[]],[[16920.3,12754.7,0.354736],9,"Up",[]],[[16930.5,12760.6,0.441389],142,"Up",[]],[[16911.9,12726.1,-1.90735e-006],333,"Up",[]],[[16923.7,12750.4,0],54,"Up",[]],[[16920.9,12729,0],53,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16957.3,12746.3,0.623327],222,"Up",[]],[[16955.4,12744.5,4.10382],226,"Up",[]],[[16949.7,12750.6,3.88596],226,"Up",[]],[[16925.9,12715.3,3.60255],10,"Up",[]],[[16949.4,12732.5,0.149214],340,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16978.1,12711.3,-3.8147e-006],99,"Up",[]],[[16981.1,12698.3,3.56041],21,"Up",[]],[[16987.8,12696.3,4.06371],30,"Up",[]],[[16993.5,12694.3,0.322548],95,"Up",[]],[[16965.4,12707.4,4.19511],88,"Up",[]],[[16943.9,12681.5,0.491003],21,"Up",[]],[[16943,12681.7,0.579008],21,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16976.8,12738.8,3.98465],257,"Up",[]],[[16981.7,12734.2,0.135136],212,"Up",[]],[[16989.2,12727.5,0.419159],230,"Up",[]],[[17004.8,12710.4,0.322546],218,"Up",[]],[[17012.6,12715.1,0.322548],311,"Up",[]],[[17018.4,12700.3,0.219447],271,"Up",[]],[[17020.5,12704.7,0.281326],344,"Up",[]],[[17016.6,12695.7,0.732223],121,"Up",[]],[[17022.2,12696.5,1.06906],193,"Up",[]],[[17010.6,12696.8,0.298356],334,"Up",[]],[[17005,12692.6,0.208189],169,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16893.7,12706.5,3.92928],54,"Up",[]],[[16775.9,12804.8,3.84729],311,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[],[["UK3CB_AAF_O_PKM_High",[16898.3,12738.8,3.87622],348,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_PKM_Low",[16996.3,12710.4,-2.47955e-005],312,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 180;
		["hq","side","Urban Movement Hunters Activate."] remoteExec ["OKS_Chat",0];
		{[_X,2,east,1000,[],UrbanMovementTrigger] spawn OKS_Rush_Spawner; sleep 120;} foreach [hunt_1,hunt_2,hunt_3,hunt_4,hunt_5,hunt_6,hunt_7];

	};	

	case 7: {
		/// Urban Movement Course
		// Level 3
		GOL_MaxUnits = 0.75;
		publicVariable "GOL_MaxUnits";

		["hq","side","Urban Movement Course Activated."] remoteExec ["OKS_Chat",0];
		{_X setMarkerAlpha 1} foreach ["marker_471","marker_472","marker_473","marker_475"];

		[[[[16700.8,12839.3,-9.15527e-005],306,"Up",[]],[[16709.2,12853.1,1.19157],306,"Up",[]],[[16711.6,12848.4,3.78997],11,"Up",[]],[[16720.2,12826.6,4.08891],306,"Up",[]],[[16722.6,12829.1,0.323387],302,"Up",[]],[[16731.2,12840.7,0.423428],105,"Up",[]],[[16730.6,12822.2,3.60383],27,"Up",[]],[[16727.3,12818.6,0.415915],306,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16742.3,12876.9,4.13927],220,"Up",[]],[[16738.2,12880.3,4.45483],205,"Up",[]],[[16744.9,12874.3,3.92271],221,"Up",[]],[[16750.7,12878.2,3.91364],47,"Up",[]],[[16723.4,12868.3,0.126223],124,"Up",[]],[[16730.2,12885.1,0],158,"Up",[]],[[16754.2,12872.9,0.126223],225,"Up",[]],[[16721.2,12911.8,0],132,"Up",[]],[[16702,12894.6,1.90735e-006],130,"Middle",[]],[[16751.2,12855.5,0.493025],314,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16757.1,12896.8,4.30908],262,"Up",[]],[[16763.3,12895.4,4.20305],178,"Up",[]],[[16755.9,12903,1.08632],238,"Up",[]],[[16765,12896.3,0.778481],179,"Up",[]],[[16771.5,12887.5,0.126223],293,"Up",[]],[[16763.5,12917.5,0.126223],147,"Middle",[]],[[16789.4,12894.4,0.126223],312,"Middle",[]],[[16780.7,12913.2,0.315142],218,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16782,12924,0.382601],220,"Up",[]],[[16808.3,12907,0.806356],156,"Up",[]],[[16802.8,12911.7,1.10145],83,"Up",[]],[[16800.4,12906.8,4.0234],221,"Up",[]],[[16807.3,12901.3,3.7848],216,"Up",[]],[[16783.6,12911.9,0.300535],135,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16813.7,12873.6,1.90735e-006],318,"Up",[]],[[16827.7,12889.9,0.315544],188,"Up",[]],[[16833.9,12888.9,4.27079],188,"Up",[]],[[16839.7,12878,3.90305],169,"Middle",[]],[[16830.3,12884,4.39799],219,"Up",[]],[[16828.7,12866.2,0.248011],342,"Up",[]],[[16831.7,12864.9,0],34,"Up",[]],[[16813.1,12849.1,0],302,"Middle",[]],[[16794.9,12845.3,1.90735e-006],322,"Middle",[]],[[16814.8,12859.6,1.11597],40,"Up",[]],[[16826.1,12849,0.947582],51,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16844.7,12863.6,1.01279],303,"Up",[]],[[16841.7,12859.4,0.457748],333,"Up",[]],[[16860.1,12864.6,1.80952],288,"Middle",[]],[[16857.8,12862.4,0.910536],297,"Middle",[]],[[16852.3,12846.1,0.431473],333,"Up",[]],[[16831.1,12844.5,5.16487],41,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16868.5,12824.5,0.244415],348,"Up",[]],[[16872.6,12823.2,0.260666],348,"Up",[]],[[16874.3,12821.5,3.679],348,"Up",[]],[[16906.5,12824,1.19102],280,"Up",[]],[[16892.7,12824,1.93062],170,"Up",[]],[[16884.1,12808,4.24316],40,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16904.8,12790.2,4.54529],330,"Up",[]],[[16893,12799.8,3.82345],37,"Up",[]],[[16914.3,12816.9,1.90735e-006],216,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16899.2,12744,3.99418],6,"Up",[]],[[16893.4,12737,3.6314],305,"Up",[]],[[16912.8,12754.2,0.373844],327,"Up",[]],[[16920.4,12748.5,0],226,"Up",[]],[[16875.4,12762.7,3.68003],34,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16918.1,12762,3.61194],339,"Up",[]],[[16920.3,12754.7,0.354736],9,"Up",[]],[[16930.5,12760.6,0.441389],142,"Up",[]],[[16911.9,12726.1,-1.90735e-006],333,"Up",[]],[[16923.7,12750.4,0],54,"Up",[]],[[16920.9,12729,0],53,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16957.3,12746.3,0.623327],222,"Up",[]],[[16955.4,12744.5,4.10382],226,"Up",[]],[[16949.7,12750.6,3.88596],226,"Up",[]],[[16925.9,12715.3,3.60255],10,"Up",[]],[[16949.4,12732.5,0.149214],340,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16978.1,12711.3,-3.8147e-006],99,"Up",[]],[[16981.1,12698.3,3.56041],21,"Up",[]],[[16987.8,12696.3,4.06371],30,"Up",[]],[[16993.5,12694.3,0.322548],95,"Up",[]],[[16965.4,12707.4,4.19511],88,"Up",[]],[[16943.9,12681.5,0.491003],21,"Up",[]],[[16943,12681.7,0.579008],21,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16976.8,12738.8,3.98465],257,"Up",[]],[[16981.7,12734.2,0.135136],212,"Up",[]],[[16989.2,12727.5,0.419159],230,"Up",[]],[[17004.8,12710.4,0.322546],218,"Up",[]],[[17012.6,12715.1,0.322548],311,"Up",[]],[[17018.4,12700.3,0.219447],271,"Up",[]],[[17020.5,12704.7,0.281326],344,"Up",[]],[[17016.6,12695.7,0.732223],121,"Up",[]],[[17022.2,12696.5,1.06906],193,"Up",[]],[[17010.6,12696.8,0.298356],334,"Up",[]],[[17005,12692.6,0.208189],169,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16893.7,12706.5,3.92928],54,"Up",[]],[[16775.9,12804.8,3.84729],311,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[],[["UK3CB_AAF_O_PKM_High",[16898.3,12738.8,3.87622],348,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_PKM_Low",[16996.3,12710.4,-2.47955e-005],312,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 180;
		["hq","side","Urban Movement Hunters Activate."] remoteExec ["OKS_Chat",0];
		{[_X,3,east,1000,[],UrbanMovementTrigger] spawn OKS_Rush_Spawner; sleep 120;} foreach [hunt_1,hunt_2,hunt_3,hunt_4,hunt_5,hunt_6,hunt_7];

	};	

	case 8: {
		/// Urban Movement Course
		// Level 4
		GOL_MaxUnits = 1;
		publicVariable "GOL_MaxUnits";

		["hq","side","Urban Movement Course Activated."] remoteExec ["OKS_Chat",0];
		{_X setMarkerAlpha 1} foreach ["marker_471","marker_472","marker_473","marker_475"];

		[[[[16700.8,12839.3,-9.15527e-005],306,"Up",[]],[[16709.2,12853.1,1.19157],306,"Up",[]],[[16711.6,12848.4,3.78997],11,"Up",[]],[[16720.2,12826.6,4.08891],306,"Up",[]],[[16722.6,12829.1,0.323387],302,"Up",[]],[[16731.2,12840.7,0.423428],105,"Up",[]],[[16730.6,12822.2,3.60383],27,"Up",[]],[[16727.3,12818.6,0.415915],306,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16742.3,12876.9,4.13927],220,"Up",[]],[[16738.2,12880.3,4.45483],205,"Up",[]],[[16744.9,12874.3,3.92271],221,"Up",[]],[[16750.7,12878.2,3.91364],47,"Up",[]],[[16723.4,12868.3,0.126223],124,"Up",[]],[[16730.2,12885.1,0],158,"Up",[]],[[16754.2,12872.9,0.126223],225,"Up",[]],[[16721.2,12911.8,0],132,"Up",[]],[[16702,12894.6,1.90735e-006],130,"Middle",[]],[[16751.2,12855.5,0.493025],314,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16757.1,12896.8,4.30908],262,"Up",[]],[[16763.3,12895.4,4.20305],178,"Up",[]],[[16755.9,12903,1.08632],238,"Up",[]],[[16765,12896.3,0.778481],179,"Up",[]],[[16771.5,12887.5,0.126223],293,"Up",[]],[[16763.5,12917.5,0.126223],147,"Middle",[]],[[16789.4,12894.4,0.126223],312,"Middle",[]],[[16780.7,12913.2,0.315142],218,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16782,12924,0.382601],220,"Up",[]],[[16808.3,12907,0.806356],156,"Up",[]],[[16802.8,12911.7,1.10145],83,"Up",[]],[[16800.4,12906.8,4.0234],221,"Up",[]],[[16807.3,12901.3,3.7848],216,"Up",[]],[[16783.6,12911.9,0.300535],135,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16813.7,12873.6,1.90735e-006],318,"Up",[]],[[16827.7,12889.9,0.315544],188,"Up",[]],[[16833.9,12888.9,4.27079],188,"Up",[]],[[16839.7,12878,3.90305],169,"Middle",[]],[[16830.3,12884,4.39799],219,"Up",[]],[[16828.7,12866.2,0.248011],342,"Up",[]],[[16831.7,12864.9,0],34,"Up",[]],[[16813.1,12849.1,0],302,"Middle",[]],[[16794.9,12845.3,1.90735e-006],322,"Middle",[]],[[16814.8,12859.6,1.11597],40,"Up",[]],[[16826.1,12849,0.947582],51,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16844.7,12863.6,1.01279],303,"Up",[]],[[16841.7,12859.4,0.457748],333,"Up",[]],[[16860.1,12864.6,1.80952],288,"Middle",[]],[[16857.8,12862.4,0.910536],297,"Middle",[]],[[16852.3,12846.1,0.431473],333,"Up",[]],[[16831.1,12844.5,5.16487],41,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16868.5,12824.5,0.244415],348,"Up",[]],[[16872.6,12823.2,0.260666],348,"Up",[]],[[16874.3,12821.5,3.679],348,"Up",[]],[[16906.5,12824,1.19102],280,"Up",[]],[[16892.7,12824,1.93062],170,"Up",[]],[[16884.1,12808,4.24316],40,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16904.8,12790.2,4.54529],330,"Up",[]],[[16893,12799.8,3.82345],37,"Up",[]],[[16914.3,12816.9,1.90735e-006],216,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16899.2,12744,3.99418],6,"Up",[]],[[16893.4,12737,3.6314],305,"Up",[]],[[16912.8,12754.2,0.373844],327,"Up",[]],[[16920.4,12748.5,0],226,"Up",[]],[[16875.4,12762.7,3.68003],34,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16918.1,12762,3.61194],339,"Up",[]],[[16920.3,12754.7,0.354736],9,"Up",[]],[[16930.5,12760.6,0.441389],142,"Up",[]],[[16911.9,12726.1,-1.90735e-006],333,"Up",[]],[[16923.7,12750.4,0],54,"Up",[]],[[16920.9,12729,0],53,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16957.3,12746.3,0.623327],222,"Up",[]],[[16955.4,12744.5,4.10382],226,"Up",[]],[[16949.7,12750.6,3.88596],226,"Up",[]],[[16925.9,12715.3,3.60255],10,"Up",[]],[[16949.4,12732.5,0.149214],340,"Middle",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16978.1,12711.3,-3.8147e-006],99,"Up",[]],[[16981.1,12698.3,3.56041],21,"Up",[]],[[16987.8,12696.3,4.06371],30,"Up",[]],[[16993.5,12694.3,0.322548],95,"Up",[]],[[16965.4,12707.4,4.19511],88,"Up",[]],[[16943.9,12681.5,0.491003],21,"Up",[]],[[16943,12681.7,0.579008],21,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16976.8,12738.8,3.98465],257,"Up",[]],[[16981.7,12734.2,0.135136],212,"Up",[]],[[16989.2,12727.5,0.419159],230,"Up",[]],[[17004.8,12710.4,0.322546],218,"Up",[]],[[17012.6,12715.1,0.322548],311,"Up",[]],[[17018.4,12700.3,0.219447],271,"Up",[]],[[17020.5,12704.7,0.281326],344,"Up",[]],[[17016.6,12695.7,0.732223],121,"Up",[]],[[17022.2,12696.5,1.06906],193,"Up",[]],[[17010.6,12696.8,0.298356],334,"Up",[]],[[17005,12692.6,0.208189],169,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[[[16893.7,12706.5,3.92928],54,"Up",[]],[[16775.9,12804.8,3.84729],311,"Up",[]]],[],[]] spawn OKS_SpawnStatic;
		[[],[["UK3CB_AAF_O_PKM_High",[16898.3,12738.8,3.87622],348,[["gunner",-1,[0]]],[]],["UK3CB_AAF_O_PKM_Low",[16996.3,12710.4,-2.47955e-005],312,[["gunner",-1,[0]]],[]]],[]] call GW_Common_fnc_spawnGroup;
		
		sleep 180;
		["hq","side","Urban Movement Hunters Activate."] remoteExec ["OKS_Chat",0];
		{[_X,4,east,1000,[],UrbanMovementTrigger] spawn OKS_Rush_Spawner; sleep 120;} foreach [hunt_1,hunt_2,hunt_3,hunt_4,hunt_5,hunt_6,hunt_7];

	};		

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
