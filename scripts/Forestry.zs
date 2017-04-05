//	Imports
	import mods.forestry.ThermionicFabricator;
	import mods.forestry.Carpenter;
	
//	Mutagen Tank
	recipes.remove(<gendustry:MutagenTank>);
	ThermionicFabricator.addCast(<gendustry:MutagenTank>, [
		[<ore:ingotTin>, <botania:bifrostPermPane>, <ore:ingotTin>],
		[<ore:ingotTin>, <botania:bifrostPermPane>, <ore:ingotTin>],
		[<ore:ingotTin>, <botania:bifrostPermPane>, <ore:ingotTin>]], 8000);
		
//	Hardened Casing
	Carpenter.removeRecipe(<forestry:hardenedMachine>, <liquid:water>);
	Carpenter.addRecipe(<forestry:hardenedMachine> * 1, [
		[<betterwithmods:material:49>, <roots:eldritch_ingot>, <betterwithmods:material:49>],
		[<roots:eldritch_ingot>, <forestry:sturdyMachine>, <roots:eldritch_ingot>],
		[<betterwithmods:material:49>, <roots:eldritch_ingot>, <betterwithmods:material:49>]], 160, <liquid:water> * 5000);
		
# addRecipe(ZenTypeNative, ZenTypeArrayBasic, ZenTypeInt, Optional ZenTypeNative, Optional ZenTypeNative