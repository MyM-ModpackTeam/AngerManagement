//	Imports
	import minetweaker.item.IItemStack;
	import minetweaker.item.IIngredient;

//	Variables
	var gemDiamond = <minecraft:diamond>;												
	var newDiamond = <betterwithmods:material:49>;										
	var florbGlowstone = <thermalexpansion:florb>.withTag({Fluid: "glowstone"});		
	var florbIC2Lava = <thermalexpansion:florb:1>.withTag({Fluid: "ic2pahoehoe_lava"});	
	var lavaCrystal = <bloodmagic:ItemLavaCrystal>;
	var disenchantGenerator = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
	var furnaceGenerator = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
	var trippleCobble = <extrautils2:compressedcobblestone:2>;
	var redstoneLatch = <betterwithmods:material:35>;
	var lensVelocity = <botania:lens:1>;
	
//	Ore Dictionary	
	val bloodOrb0 = <ore:orbBlood0>;
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:0>);
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:1>);
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:2>);
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:3>);
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:4>);
		bloodOrb0.add(<bloodmagic:ItemBloodOrb:5>);
	val bloodOrb1 = <ore:orbBlood1>;
		bloodOrb1.add(<bloodmagic:ItemBloodOrb:1>);
		bloodOrb1.add(<bloodmagic:ItemBloodOrb:2>);
		bloodOrb1.add(<bloodmagic:ItemBloodOrb:3>);
		bloodOrb1.add(<bloodmagic:ItemBloodOrb:4>);
		bloodOrb1.add(<bloodmagic:ItemBloodOrb:5>);
	val bloodOrb2 = <ore:orbBlood2>;
		bloodOrb2.add(<bloodmagic:ItemBloodOrb:2>);
		bloodOrb2.add(<bloodmagic:ItemBloodOrb:3>);
		bloodOrb2.add(<bloodmagic:ItemBloodOrb:4>);
		bloodOrb2.add(<bloodmagic:ItemBloodOrb:5>);
	val bloodOrb3 = <ore:orbBlood3>;
		bloodOrb3.add(<bloodmagic:ItemBloodOrb:3>);
		bloodOrb3.add(<bloodmagic:ItemBloodOrb:4>);
		bloodOrb3.add(<bloodmagic:ItemBloodOrb:5>);
	val bloodOrb4 = <ore:orbBlood4>;
		bloodOrb4.add(<bloodmagic:ItemBloodOrb:4>);
		bloodOrb4.add(<bloodmagic:ItemBloodOrb:5>);
	val bloodOrb5 = <ore:orbBlood5>;
		bloodOrb5.add(<bloodmagic:ItemBloodOrb:5>);
	val myCarpet = <ore:carpet>;
		myCarpet.add(<chisel:carpet_black:0>);
		myCarpet.add(<chisel:carpet_black:1>);
		myCarpet.add(<chisel:carpet_blue:0>);
		myCarpet.add(<chisel:carpet_blue:1>);
		myCarpet.add(<chisel:carpet_brown:0>);
		myCarpet.add(<chisel:carpet_brown:1>);
		myCarpet.add(<chisel:carpet_cyan:0>);
		myCarpet.add(<chisel:carpet_cyan:1>);
		myCarpet.add(<chisel:carpet_gray:0>);
		myCarpet.add(<chisel:carpet_gray:1>);
		myCarpet.add(<chisel:carpet_green:0>);
		myCarpet.add(<chisel:carpet_green:1>);
		myCarpet.add(<chisel:carpet_lightblue:0>);
		myCarpet.add(<chisel:carpet_lightblue:1>);
		myCarpet.add(<chisel:carpet_lightgray:0>);
		myCarpet.add(<chisel:carpet_lightgray:1>);
		myCarpet.add(<chisel:carpet_lime:0>);
		myCarpet.add(<chisel:carpet_lime:1>);
		myCarpet.add(<chisel:carpet_magenta:0>);
		myCarpet.add(<chisel:carpet_magenta:1>);
		myCarpet.add(<chisel:carpet_orange:0>);
		myCarpet.add(<chisel:carpet_orange:1>);
		myCarpet.add(<chisel:carpet_pink:0>);
		myCarpet.add(<chisel:carpet_pink:1>);
		myCarpet.add(<chisel:carpet_purple:0>);
		myCarpet.add(<chisel:carpet_purple:1>);
		myCarpet.add(<chisel:carpet_red:0>);
		myCarpet.add(<chisel:carpet_red:1>);
		myCarpet.add(<chisel:carpet_white:0>);
		myCarpet.add(<chisel:carpet_white:1>);
		myCarpet.add(<chisel:carpet_yellow:0>);
		myCarpet.add(<chisel:carpet_yellow:1>);
	val mySwordDiamond = <ore:swordDiamond>;
		mySwordDiamond.add(<dungeontactics:diamond_sword>);
		mySwordDiamond.add(<minecraft:diamond_sword>);
	val mySwordIron = <ore:swordIron>;
		mySwordIron.add(<dungeontactics:iron_sword>);
		mySwordIron.add(<minecraft:iron_sword>);
	val mySwordGold = <ore:swordGold>;
		mySwordGold.add(<dungeontactics:golden_sword>);
		mySwordGold.add(<minecraft:golden_sword>);
	val mySwordStone = <ore:swordStone>;
		mySwordStone.add(<dungeontactics:stone_sword>);
		mySwordStone.add(<minecraft:stone_sword>);
	val mySwordWood = <ore:swordWood>;
		mySwordWood.add(<dungeontactics:wooden_sword>);
		mySwordWood.add(<minecraft:wooden_sword>);
	val flintBlock = <ore:blockFlint>;
		flintBlock.add(<betterwithmods:aesthetic:5>);
		
		
//	Removals & Hiding (Hiding Currently Broken
	var youShallNotCraft = [
		<weather2:WeatherMachine>,
		<weather2:sand_layer_placeable>,
		<weather2:pocket_sand>,
		<ironchest:BlockIronChest:5>,
		<ironchest:ironGoldUpgrade>,
		<ironchest:goldDiamondUpgrade>,
		<ironchest:copperSilverUpgrade>,
		<ironchest:silverGoldUpgrade>,
		<ironchest:copperIronUpgrade>,
		<ironchest:diamondCrystalUpgrade>,
		<ironchest:woodIronUpgrade>,
		<ironchest:woodCopperUpgrade>,
		<ironchest:diamondObsidianUpgrade>] as IItemStack[]; 

	for i, beGone in youShallNotCraft {
		recipes.remove(beGone);
		mods.jei.JEI.hide(beGone);
		beGone.addTooltip(format.darkRed("Removed"));
	}

// Just removals
	recipes.remove(<thermalfoundation:material:16>);
	recipes.remove(<morebees:diamondFragment>);
	recipes.remove(<agricraft:agri_nugget:1>);
	recipes.remove(<minecraft:diamond>);

// Loop Recipe Changes

#	Jeweled Tools and Armours
	var myjeweled = [
		<dungeontactics:jewelled_axe>,
		<dungeontactics:jewelled_boots>,
		<dungeontactics:jewelled_chestplate>,
		<dungeontactics:jewelled_hammer>,
		<dungeontactics:jewelled_helmet>,
		<dungeontactics:jewelled_hoe>,
		<dungeontactics:jewelled_knife>,
		<dungeontactics:jewelled_leggings>,
		<dungeontactics:jewelled_pickaxe>,
		<dungeontactics:jewelled_shovel>,
		<dungeontactics:jewelled_sword>] as IItemStack[]; 
	var mygilded = [
		<dungeontactics:gilded_axe>,
		<dungeontactics:gilded_boots>,
		<dungeontactics:gilded_chestplate>,
		<dungeontactics:gilded_hammer>,
		<dungeontactics:gilded_helmet>,
		<dungeontactics:gilded_hoe>,
		<dungeontactics:gilded_knife>,
		<dungeontactics:gilded_leggings>,
		<dungeontactics:gilded_pickaxe>,
		<dungeontactics:gilded_shovel>,
		<dungeontactics:gilded_sword>] as IItemStack[]; 

	for i, jeweled in myjeweled {
		var gilded = mygilded[i];
		
		recipes.remove(jeweled);
		recipes.addShaped(jeweled, [
			[null ,newDiamond,	null],
			[null, gilded,		null],
			[null, newDiamond,	null]]);
	}





	
//	Diamond Block
	recipes.remove(<minecraft:diamond_block>);
	recipes.addShaped(<minecraft:diamond_block>, [
		[newDiamond, newDiamond, newDiamond],
		[newDiamond, newDiamond, newDiamond],
		[newDiamond, newDiamond, newDiamond]]);

//	Jukebox
	recipes.remove(<minecraft:jukebox>);
	recipes.addShaped(<minecraft:jukebox>, [
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
		[<ore:slabWood>, newDiamond, <ore:slabWood>],
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

//	Enchanting Tables (Vanilla & Enchanting Plus)
	mods.jei.JEI.hide(<minecraft:enchanting_table>);
	recipes.remove(<minecraft:enchanting_table>);
	recipes.remove(<eplus:advanced_table>);
	recipes.addShaped(<eplus:advanced_table>, [
		[<ore:blockGold>, <eplus:table_upgrade>, <ore:blockGold>],
		[<ore:blockEnchantedMetal>, <advanced_solar_panels:crafting:13>, <ore:blockEnchantedMetal>],
		[<ore:blockObsidian>, <botania:forestEye>, <ore:blockObsidian>]]);

//	Enchantin Plus Table Upgrade
	recipes.remove(<eplus:table_upgrade>);
	recipes.addShaped(<eplus:table_upgrade>, [
		[<ore:blockGold>, <minecraft:writable_book>, <ore:blockGold>],
		[<deepresonance:dense_obsidian>, null, <deepresonance:dense_obsidian>],
		[<ore:blockGold>, <randomthings:stableEnderpearl>, <ore:blockGold>]]);

//	Stable Ender Pearl
	recipes.remove(<randomthings:stableEnderpearl>);
	recipes.addShaped(<randomthings:stableEnderpearl>, [
		[<ore:blockObsidian>, <ore:gemLapis>, <ore:blockObsidian>],
		[<ore:gemLapis>, <minecraft:ender_eye>, <ore:gemLapis>],
		[<ore:blockObsidian>, <ore:gemLapis>, <ore:blockObsidian>]]);

//	Block of Enchanted Metal
	recipes.remove(<extrautils2:simpledecorative>);
	recipes.addShaped(<extrautils2:simpledecorative>, [
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>],
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>],
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>]]);

//	Infusing Laser
	recipes.remove(<deepresonance:laser>);
	recipes.addShaped(<deepresonance:laser>, [
		[<ic2:glass>, <ic2:glass>, <ic2:glass>],
		[<minecraft:emerald_block>, <deepresonance:machine_frame>, <minecraft:emerald_block>],
		[newDiamond, newDiamond, newDiamond]]);

//	Alabaster Structure Block Tier 2
	recipes.remove(<environmentaltech:alabaster_structure:1>);
	recipes.addShaped(<environmentaltech:alabaster_structure:1>, [
		[null, newDiamond, null],
		[redstoneLatch, <environmentaltech:alabaster_structure>, redstoneLatch],
		[null, newDiamond, null]]);

//	Hardened Stone Structure Block Tier 2
	recipes.remove(<environmentaltech:hardened_stone_structure:1>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:1>, [
		[null, newDiamond, null],
		[redstoneLatch, <environmentaltech:hardened_stone_structure>, redstoneLatch],
		[null, newDiamond, null]]);

//	Basalt Structure Block Tier 2
	recipes.remove(<environmentaltech:basalt_structure:1>);
	recipes.addShaped(<environmentaltech:basalt_structure:1>, [
		[null, newDiamond, null],
		[redstoneLatch, <environmentaltech:basalt_structure>, redstoneLatch],
		[null, newDiamond, null]]);

//	Alabaster Structure Block Tier 3
	recipes.remove(<environmentaltech:alabaster_structure:2>);
	recipes.addShaped(<environmentaltech:alabaster_structure:2>, [
		[null, <botania:forestEye>, null],
		[redstoneLatch, <environmentaltech:alabaster_structure:1>, redstoneLatch],
		[null, florbGlowstone, null]]);

//	Hardened Stone Structure Block Tier 3
	recipes.remove(<environmentaltech:hardened_stone_structure:2>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:2>, [
		[null, <botania:forestEye>, null],
		[redstoneLatch, <environmentaltech:hardened_stone_structure:1>, redstoneLatch],
		[null, florbGlowstone, null]]);

//	Basalt Structure Block Tier 3
	recipes.remove(<environmentaltech:basalt_structure:2>);
	recipes.addShaped(<environmentaltech:basalt_structure:2>, [
		[null, <botania:forestEye>, null],
		[redstoneLatch, <environmentaltech:basalt_structure:1>, redstoneLatch],
		[null, florbGlowstone, null]]);

//	Alabaster Structure Block Tier 4
	recipes.remove(<environmentaltech:alabaster_structure:3>);
	recipes.addShaped(<environmentaltech:alabaster_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:alabaster_structure:2>, florbGlowstone],
		[null, redstoneLatch, null]]);

//	Hardened Stone Structure Block Tier 4
	recipes.remove(<environmentaltech:hardened_stone_structure:3>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:hardened_stone_structure:2>, florbGlowstone],
		[null, redstoneLatch, null]]);

//	Basalt Structure Block Tier 4
	recipes.remove(<environmentaltech:basalt_structure:3>);
	recipes.addShaped(<environmentaltech:basalt_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:basalt_structure:2>, florbGlowstone],
		[null, redstoneLatch, null]]);

//	Eye of the Ancients
	recipes.remove(<botania:forestEye>);
	recipes.addShaped(<botania:forestEye>, [
		[<ore:ingotElvenElementium>, <ore:livingrock>, <ore:ingotElvenElementium>],
		[<ore:livingrock>, <randomthings:stableEnderpearl>, <ore:livingrock>],
		[<ore:ingotElvenElementium>, <ore:livingrock>, <ore:ingotElvenElementium>]]);

//	Eldritch Ingot
	recipes.remove(<roots:eldritch_ingot>);
	recipes.addShaped(<roots:eldritch_ingot>, [
		[<ore:netherStar>, <ore:dragonEgg>, <ore:netherStar>],
		[<ore:dragonEgg>, <ore:ingotCorrupted>, <ore:dragonEgg>],
		[<ore:netherStar>, <ore:dragonEgg>, <ore:netherStar>]]);

//	Corrupted Ingot
	recipes.remove(<soulshardstow:ItemMaterials>);
	recipes.addShaped(<soulshardstow:ItemMaterials>, [
		[<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>],
		[<ore:dustVile>, <ore:ingotSoulforgedSteel>, <ore:dustVile>],
		[<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>]]);

 //	Lava Crystal
	recipes.remove(lavaCrystal);
	recipes.addShaped(lavaCrystal, [
		[<ore:blockGlassHardened>, florbIC2Lava, <ore:blockGlassHardened>],
		[florbIC2Lava, bloodOrb1, florbIC2Lava],
		[<ore:blockObsidian>, newDiamond, <ore:blockObsidian>]]);

//	Soul Transferrer
	recipes.remove(<sanguimancy:sacrifice_transfer>);
	recipes.addShaped(<sanguimancy:sacrifice_transfer>, [
		[<bloodmagic:ItemSlate:3>, lavaCrystal, <bloodmagic:ItemSlate:3>],
		[newDiamond, <minecraft:light_weighted_pressure_plate>, newDiamond],
		[<bloodmagic:ItemSlate:3>, newDiamond, <bloodmagic:ItemSlate:3>]]);

//	Spot Loaders
	recipes.remove(<chickenchunks:chickenChunkLoader:0>);
	recipes.addShaped(<chickenchunks:chickenChunkLoader:0>, [
		[null, <souls:EnderJewel>, null],
		[<thermalfoundation:material:166>, <extrautils2:ingredients:11>, <thermalfoundation:material:166>],
		[<thermalfoundation:material:166>, <eplus:advanced_table>, <thermalfoundation:material:166>]]);

//	Chunk Loaders
	recipes.remove(<chickenchunks:chickenChunkLoader:1>);
	recipes.addShaped(<chickenchunks:chickenChunkLoader:1> * 9, [
		[<randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>],
		[<randomthings:stableEnderpearl>, <chickenchunks:chickenChunkLoader:0>, <randomthings:stableEnderpearl>],
		[<randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>]]);

//	Ender Jewel
	recipes.remove(<souls:EnderJewel>);
	recipes.addShaped(<souls:EnderJewel>, [
		[null, newDiamond, null],
		[newDiamond, <randomthings:stableEnderpearl>, newDiamond],
		[null, newDiamond, null]]);

//	Disenchanter
	recipes.remove(<draconicevolution:diss_enchanter>);
	recipes.addShaped(<draconicevolution:diss_enchanter>, [
		[<extrautils2:opinium:3>, <draconicevolution:chaotic_core>, <extrautils2:opinium:3>],
		[<minecraft:enchanted_book>, <eplus:advanced_table>, <minecraft:enchanted_book>],
		[<ore:bookshelf>, <ore:bookshelf>, <ore:bookshelf>]]);

//	Armour Imbuement Table
	recipes.remove(<arsmagica2:armor_imbuer>);
	recipes.addShaped(<arsmagica2:armor_imbuer>, [
		[<arsmagica2:crafting_altar>, myCarpet, <arsmagica2:crafting_altar>],
		[<deepresonance:dense_obsidian>, <eplus:advanced_table>, <deepresonance:dense_obsidian>],
		[<deepresonance:dense_obsidian>, <deepresonance:dense_obsidian>, <deepresonance:dense_obsidian>]]);

//	Energy Infuser
	recipes.remove(<draconicevolution:energy_infuser>);
	recipes.addShaped(<draconicevolution:energy_infuser>, [
		[<ore:ingotDraconium>, <draconicevolution:particle_generator:2>, <ore:ingotDraconium>],
		[<draconicevolution:wyvern_core>, <eplus:advanced_table>, <draconicevolution:wyvern_core>],
		[<ore:ingotDraconium>, <draconicevolution:draconic_core>, <ore:ingotDraconium>]]);

//	Magic Infuser
	recipes.remove(<extrautils2:terraformer:8>);
	recipes.addShaped(<extrautils2:terraformer:8>, [
		[<extrautils2:terraformer:9>, <eplus:advanced_table>],
		[<eplus:advanced_table>, null]]);

//	Disenchantment Generator
	recipes.remove(disenchantGenerator);
	recipes.addShaped(disenchantGenerator, [
		[<extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>],
		[<extrautils2:decorativesolidwood:1>, <eplus:advanced_table>, <extrautils2:decorativesolidwood:1>],
		[redstoneLatch, furnaceGenerator, redstoneLatch]]);

//	Magical Planks
	recipes.remove(<extrautils2:decorativesolidwood>);
	recipes.addShaped(<extrautils2:decorativesolidwood> * 4, [
		[<ore:ingotGold>, <minecraft:experience_bottle>, <ore:ingotGold>],
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:ingotGold>, <ore:plankWood>, <ore:ingotGold>]]);

//	Magical Wood
	recipes.remove(<extrautils2:decorativesolidwood:1>);
	recipes.addShaped(<extrautils2:decorativesolidwood:1>, [
		[<extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>],
		[<minecraft:enchanted_book>, <minecraft:enchanted_book>, <minecraft:enchanted_book>],
		[<extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>]]);

//	Diamond Fishing Rod
	recipes.remove(<aquaculture:diamond_fishing_rod>);
	recipes.addShaped(<aquaculture:diamond_fishing_rod>, [
		[null, null, newDiamond],
		[null, newDiamond, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

//	Iron Fishing Rod
	recipes.remove(<aquaculture:iron_fishing_rod>);
	recipes.addShaped(<aquaculture:iron_fishing_rod>, [
		[null, null, <ore:ingotIron>],
		[null, <ore:ingotIron>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

//	Golden Fishing Rod
	recipes.remove(<aquaculture:gold_fishing_rod>);
	recipes.addShaped(<aquaculture:gold_fishing_rod>, [
		[null, null, <ore:ingotGold>],
		[null, <ore:ingotGold>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

//	Wooden Fishing Rod
	recipes.remove(<minecraft:fishing_rod>);
	recipes.remove(<aquaculture:fishing_rod>);
	recipes.addShaped(<aquaculture:fishing_rod>, [
		[null, null, <ore:stickWood>],
		[null, <ore:stickWood>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

//	Carrot on a Stick
	recipes.remove(<minecraft:carrot_on_a_stick>);
	recipes.addShaped(<minecraft:carrot_on_a_stick>, [
		[<aquaculture:fishing_rod>, null],
		[null, <minecraft:carrot>]]);

//	Flicker Focus
	recipes.remove(<arsmagica2:flicker_focus:12>);
	recipes.addShaped(<arsmagica2:flicker_focus:12>, [
		[null, <ore:listAllfishraw>, null],
		[<arsmagica2:flicker_jar:8>, null, <arsmagica2:flicker_jar:2>],
		[null, <aquaculture:fishing_rod>, null]]);

//	Water Trap
	recipes.remove(<harvestcraft:watertrap>);
	recipes.addShaped(<harvestcraft:watertrap>, [
		[<ore:stickWood>, <aquaculture:fishing_rod>, <ore:stickWood>],
		[<ore:fiberHemp>, <ore:drawerBasic>, <ore:fiberHemp>],
		[<ore:stickWood>, <ore:fiberHemp>, <ore:stickWood>]]);

//	Diamond Scythe
	recipes.remove(<biomesoplenty:diamond_scythe>);
	recipes.addShapedMirrored(<biomesoplenty:diamond_scythe>, [
		[newDiamond, newDiamond, null],
		[<ore:stickWood>, null, newDiamond],
		[<ore:stickWood>, null, null]]);

//	Diamond Sickle
	recipes.remove(<projectred-exploration:diamond_sickle>);
	recipes.addShaped(<projectred-exploration:diamond_sickle>, [
		[null, newDiamond, null],
		[null, null, newDiamond],
		[<ore:stickWood>, newDiamond, null]]);

//	Diamond Saw (MicroBlocks)
	recipes.remove(<microblockcbe:saw_diamond>);
	recipes.addShaped(<microblockcbe:saw_diamond>, [
		[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
		[<ore:stickWood>, newDiamond, <ore:rodStone>]]);

//	Diamond Saw (Chisel & Bits)
	recipes.remove(<chiselsandbits:bitsaw_diamond>);
	recipes.addShaped(<chiselsandbits:bitsaw_diamond>, [
		[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
		[<ore:stickWood>, newDiamond, newDiamond]]);

//	Diamond Shard (woot)
	recipes.remove(<woot:shard>);
	recipes.addShaped(<woot:shard>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, newDiamond, null],
		[null, <roots:runestone_brick>, null]]);

//	Emerald Shard (woot)
	recipes.remove(<woot:shard:1>);
	recipes.addShaped(<woot:shard:1>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:gemEmerald>, null],
		[null, <roots:runestone_brick>, null]]);

//	Quartz Shard (woot)
	recipes.remove(<woot:shard:2>);
	recipes.addShaped(<woot:shard:2>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:gemQuartz>, null],
		[null, <roots:runestone_brick>, null]]);
		
//	Nether Star Shard (woot)
	recipes.remove(<woot:shard:3>);
	recipes.addShaped(<woot:shard:3>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:netherStar>, null],
		[null, <roots:runestone_brick>, null]]);

//	Diamond Skull Plate
	recipes.remove(<woot:skull:2>);
	recipes.addShaped(<woot:skull:2> * 5, [
		[<woot:yahhammer>, <ore:blockDiamond>, <woot:skull:3>],
		[<woot:skull:3>, <woot:dye:4>, <woot:skull:3>],
		[<woot:skull:3>, <roots:runestone_brick>, <woot:skull:3>]]);

//	Emerald Skull Plate
	recipes.remove(<woot:skull:3>);
	recipes.addShaped(<woot:skull:3> * 5, [
		[<woot:yahhammer>, <ore:blockEmerald>, <woot:skull:1>],
		[<woot:skull:1>, <woot:dye:4>, <woot:skull:1>],
		[<woot:skull:1>, <roots:runestone_brick>, <woot:skull:1>]]);

//	Gold Skull Plate
	recipes.remove(<woot:skull:1>);
	recipes.addShaped(<woot:skull:1> * 4, [
		[<woot:yahhammer>, <ore:blockGold>, null],
		[<woot:skull>, <woot:dye:4>, <woot:skull>],
		[<woot:skull>, <roots:runestone_brick>, <woot:skull>]]);

//	Iron Skull Plate
	recipes.remove(<woot:skull>);
	recipes.addShaped(<woot:skull> * 2, [
		[<woot:yahhammer>, <ore:blockIron>, null],
		[<ore:itemSkull>, <woot:dye:4>, <ore:itemSkull>],
		[null, <roots:runestone_brick>, null]]);

//	Creative Spikes
	recipes.remove(<extrautils2:spike_creative>);
	recipes.addShaped(<extrautils2:spike_creative>, [
		[<extrautils2:opinium:8>, <roots:diamond_knife>, <extrautils2:opinium:8>],
		[<roots:diamond_knife>, <bloodmagic:ItemBloodOrb:5>, <roots:diamond_knife>],
		[<extrautils2:simpledecorative:1>, <extrautils2:spike_diamond>, <extrautils2:simpledecorative>]]);

//	Diamond Spikes
	recipes.remove(<extrautils2:spike_diamond>);
	recipes.addShaped(<extrautils2:spike_diamond>, [
		[null, mySwordDiamond, null],
		[mySwordDiamond, newDiamond, mySwordDiamond],
		[newDiamond, <extrautils2:spike_gold>, newDiamond]]);

//	Golden Spikes
	recipes.remove(<extrautils2:spike_gold>);
	recipes.addShaped(<extrautils2:spike_gold>, [
		[null, mySwordGold, null],
		[mySwordGold, <ore:ingotGold>, mySwordGold],
		[<ore:ingotGold>, <extrautils2:spike_iron>, <ore:ingotGold>]]);

//	Iron Spikes
	recipes.remove(<extrautils2:spike_iron>);
	recipes.addShaped(<extrautils2:spike_iron>, [
		[null, mySwordIron, null],
		[mySwordIron, <ore:ingotIron>, mySwordIron],
		[<ore:ingotIron>, <extrautils2:spike_stone>, <ore:ingotIron>]]);

//	Stone Spikes
	recipes.remove(<extrautils2:spike_stone>);
	recipes.addShaped(<extrautils2:spike_stone>, [
		[null, mySwordStone, null],
		[mySwordStone, trippleCobble, mySwordStone],
		[trippleCobble, <extrautils2:spike_wood>, trippleCobble]]);

//	Wooden Spikes
	recipes.remove(<extrautils2:spike_wood>);
	recipes.addShaped(<extrautils2:spike_wood>, [
		[null, mySwordWood, null],
		[mySwordWood, <extrautils2:decorativesolidwood>, mySwordWood],
		[<extrautils2:decorativesolidwood>, <ore:logWood>, <extrautils2:decorativesolidwood>]]);

//	Diamond Knife (Roots)
	recipes.remove(<roots:diamond_knife>);
	recipes.addShaped(<roots:diamond_knife>, [
		[null, null, <betterwithmods:material:49>],
		[null, <betterwithmods:material:49>, null],
		[<roots:eldritch_ingot>, null, null]]);

//	Infused Diamond
	recipes.remove(<rftools:infused_diamond>);
	recipes.addShaped(<rftools:infused_diamond>, [
		[<rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>],
		[<rftools:dimensional_shard>, newDiamond, <rftools:dimensional_shard>],
		[<rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>]]);

//	Cooking for Blockheads II
	recipes.remove(<cookingforblockheads:recipeBook:2>);
	recipes.addShaped(<cookingforblockheads:recipeBook:2>, [
		[null, <ore:craftingTableWood>, null],
		[newDiamond, <cookingforblockheads:recipeBook:1>, newDiamond],
		[null, <ore:craftingTableWood>, null]]);

//	Dimensional Shard
	recipes.remove(<rftools:dimensional_shard>);
	recipes.addShaped(<rftools:dimensional_shard> * 3, [
		[<minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:gold_block>],
		[<minecraft:iron_block>, <minecraft:redstone_block>, <minecraft:glowstone>],
		[<botania:quartzTypeDark>, <minecraft:prismarine:1>, <immersiveengineering:stoneDecoration:8>]]);

//	Machine Infuser
	recipes.remove(<rftools:machine_infuser>);
	recipes.addShaped(<rftools:machine_infuser>, [
		[<rftools:dimensional_shard>, redstoneLatch, <rftools:dimensional_shard>],
		[newDiamond, <deepresonance:machine_frame>, newDiamond],
		[<rftools:dimensional_shard>, redstoneLatch, <rftools:dimensional_shard>]]);

//	Simple Powercell
	recipes.remove(<rftools:powercell_simple>);
	recipes.addShaped(<rftools:powercell_simple>, [
		[<minecraft:redstone_block>, <botania:quartzTypeDark>, <minecraft:redstone_block>],
		[<botania:quartzTypeDark>, <deepresonance:machine_frame>, <botania:quartzTypeDark>],
		[<minecraft:redstone_block>, <botania:quartzTypeDark>, <minecraft:redstone_block>]]);
		
//	Endergenic Generator
	recipes.remove(<rftools:endergenic>);
	recipes.addShaped(<rftools:endergenic>, [
		[newDiamond, <botania:forestEye>, newDiamond],
		[<randomthings:stableEnderpearl>, <deepresonance:machine_frame>, <randomthings:stableEnderpearl>],
		[newDiamond, <randomthings:stableEnderpearl>, newDiamond]]);

//	Powercell
	recipes.remove(<rftools:powercell>);
	recipes.addShaped(<rftools:powercell>, [
		[<minecraft:redstone_block>, <minecraft:diamond_block>, <minecraft:redstone_block>],
		[<minecraft:prismarine:1>, <rftools:powercell_simple>, <minecraft:prismarine:1>],
		[<minecraft:redstone_block>, <minecraft:emerald_block>, <minecraft:redstone_block>]]);

//	Booster
	recipes.remove(<rftools:booster>);
	recipes.addShaped(<rftools:booster>, [
		[<bloodmagic:ItemPotionFlask>, <minecraft:diamond_block>, <bloodmagic:ItemPotionFlask>],
		[<minecraft:gold_block>, <deepresonance:machine_frame>, <minecraft:iron_block>],
		[<bloodmagic:ItemPotionFlask>, <minecraft:redstone_block>, <bloodmagic:ItemPotionFlask>]]);

//	CPU Core 500
	recipes.remove(<rftoolscontrol:cpu_core_500>);
	recipes.addShaped(<rftoolscontrol:cpu_core_500>, [
		[redstoneLatch, <ore:nuggetGold>, redstoneLatch],
		[<ore:paper>, <ore:oc:cpu1>, <ore:paper>],
		[redstoneLatch, <ore:nuggetGold>, redstoneLatch]]);

//	CPU Core 1000
	recipes.remove(<rftoolscontrol:cpu_core_1000>);
	recipes.addShaped(<rftoolscontrol:cpu_core_1000>, [
		[redstoneLatch, newDiamond, redstoneLatch],
		[<ore:gemEmerald>, <ore:oc:cpu2>, <ore:gemEmerald>],
		[redstoneLatch, newDiamond, redstoneLatch]]);

//	CPU Core 2000
	recipes.remove(<rftoolscontrol:cpu_core_2000>);
	recipes.addShaped(<rftoolscontrol:cpu_core_2000>, [
		[redstoneLatch, <rftools:dimensional_shard>, redstoneLatch],
		[<rftools:dimensional_shard>, <ore:oc:cpu3>, <rftools:dimensional_shard>],
		[redstoneLatch, <rftools:dimensional_shard>, redstoneLatch]]);

//	Capacitor (Open COmputers)
	recipes.remove(<opencomputers:material:7>);
	recipes.addShaped(<opencomputers:material:7>, [
		[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
		[<ore:nuggetGold>, <rftoolscontrol:card_base>, <ore:nuggetGold>],
		[null, redstoneLatch, null]]);

//	Card base
	recipes.remove(<rftoolscontrol:card_base>);
	recipes.addShaped(<rftoolscontrol:card_base>, [
		[<projectred-core:resource_item:514>, <projectred-core:resource_item:514>, <projectred-core:resource_item:514>],
		[<projectred-core:resource_item:513>, <projectred-core:resource_item:600>, <projectred-core:resource_item:513>],
		[<projectred-core:resource_item:504>, <projectred-core:resource_item:504>, <projectred-core:resource_item:504>]]);

//	Null-Logic Routing Chip
	recipes.remove(<projectred-core:resource_item:600>);
	recipes.addShaped(<projectred-core:resource_item:600>, [
		[<ore:nuggetGold>, <projectred-expansion:plan>, <projectred-expansion:plan>],
		[<ore:nuggetGold>, redstoneLatch, redstoneLatch],
		[<ore:nuggetGold>, null, null]]);

//	Power Modual
	recipes.remove(<gendustry:PowerModule>);
	recipes.addShaped(<gendustry:PowerModule>, [
		[<ore:gearIridium>, <ore:ingotLumium>, <ore:gearIridium>],
		[<botania:pistonRelay>, <augmentedinferno:starcilium>, <botania:pistonRelay>],
		[<ore:gearIridium>, <ore:ingotSignalum>, <ore:gearIridium>]]);

//	Industrial Grafter
	recipes.remove(<gendustry:IndustrialGrafter:100>);
	recipes.addShaped(<gendustry:IndustrialGrafter:100>.withTag({charge: 0}), [
		[null, newDiamond, newDiamond],
		[null, <forestry:grafterProven>, newDiamond],
		[<gendustry:PowerModule>, null, null]]);

//	Industrial Scoop
	recipes.remove(<gendustry:IndustrialScoop:100>);
	recipes.addShaped(<gendustry:IndustrialScoop:100>.withTag({charge: 0}), [
		[null, newDiamond, newDiamond],
		[null, <forestry:scoop>, newDiamond],
		[<gendustry:PowerModule>, null, null]]);

//	Routing Cable (XNet)
	recipes.remove(<xnet:netcable:4>);
	recipes.addShaped(<xnet:netcable:4>.withTag({display: {Name: "Routing Network Cable"}}), [
		[<ore:fabricHemp>, <minecraft:redstone_block>, <ore:fabricHemp>],
		[<minecraft:redstone_block>, newDiamond, <minecraft:redstone_block>],
		[<ore:fabricHemp>, <minecraft:redstone_block>, <ore:fabricHemp>]]);

//	Labware (Gendustry)
	recipes.remove(<gendustry:Labware>);
	recipes.addShaped(<gendustry:Labware> * 2, [
		[<botania:bifrostPermPane>, null, <botania:bifrostPermPane>],
		[<botania:bifrostPermPane>, null, <botania:bifrostPermPane>],
		[null, newDiamond, null]]);

//	Enviroment Processor
	recipes.remove(<gendustry:EnvProcessor>);
	recipes.addShaped(<gendustry:EnvProcessor>, [
		[<ore:blockDiamond>, <ore:blockLapis>, <ore:blockDiamond>],
		[<ore:blockLapis>, newDiamond, <ore:blockLapis>],
		[<ore:blockDiamond>, <ore:blockLapis>, <ore:blockDiamond>]]);

//	Genetics Processor>
	recipes.remove(<gendustry:GeneticsProcessor>);
	recipes.addShaped(<gendustry:GeneticsProcessor>, [
		[<ore:blockDiamond>, <ore:blockQuartz>, <ore:blockDiamond>],
		[<ore:blockRedstone>, <minecraft:ender_pearl>, <ore:blockRedstone>],
		[<ore:blockDiamond>, <ore:blockQuartz>, <ore:blockDiamond>]]);

//	Lens Focus (Better With Mods)
	recipes.remove(<betterwithmods:lens>);
	recipes.addShaped(<betterwithmods:lens>, [
		[<ore:plateGold>, newDiamond, <ore:plateGold>],
		[<ore:plateGold>, null, <ore:plateGold>],
		[<ore:plateGold>, lensVelocity, <ore:plateGold>]]);

//	Diamon Hammer (Roots)
	recipes.remove(<roots:diamond_hammer>);
	recipes.addShaped(<roots:diamond_hammer>, [
		[newDiamond, <roots:eldritch_ingot>, newDiamond],
		[newDiamond, <roots:eldritch_ingot>, newDiamond],
		[null, <roots:eldritch_ingot>, null]]);

//	Fibre Optic Cable
	recipes.remove(<advancedcables:optic_cable>);
	recipes.addShaped(<advancedcables:optic_cable>, [
		[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
		[newDiamond, newDiamond, newDiamond],
		[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

//	Upgrade Template (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeTemplate>);
	recipes.addShaped(<storagedrawers:upgradeTemplate>, [
		[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
		[<ore:stickTreatedWood>, <ore:drawerBasic>, <ore:stickTreatedWood>],
		[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

//	Storage Downgrade
	recipes.remove(<storagedrawers:upgradeOneStack>);
	recipes.addShaped(<storagedrawers:upgradeOneStack>, [
		[flintBlock, <ore:stickTreatedWood>, flintBlock],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeTemplate>, <ore:stickTreatedWood>],
		[flintBlock, <ore:stickTreatedWood>, flintBlock]]);

//	Storage Upgrade Tier:1 (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeStorage:0>);
	recipes.addShaped(<storagedrawers:upgradeStorage:0>, [
		[<ore:blockObsidian>, <ore:stickTreatedWood>, <ore:blockObsidian>],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeOneStack>, <ore:stickTreatedWood>],
		[<ore:blockObsidian>, <ore:stickTreatedWood>, <ore:blockObsidian>]]);

//	Storage Upgrade Tier:2 (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeStorage:1>);
	recipes.addShaped(<storagedrawers:upgradeStorage:1>, [
		[<ore:blockIron>, <ore:stickTreatedWood>, <ore:blockIron>],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeStorage:0>, <ore:stickTreatedWood>],
		[<ore:blockIron>, <ore:stickTreatedWood>, <ore:blockIron>]]);

//	Storage Upgrade Tier:3 (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeStorage:2>);
	recipes.addShaped(<storagedrawers:upgradeStorage:2>, [
		[<ore:blockGold>, <ore:stickTreatedWood>, <ore:blockGold>],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeStorage:1>, <ore:stickTreatedWood>],
		[<ore:blockGold>, <ore:stickTreatedWood>, <ore:blockGold>]]);

//	Storage Upgrade Tier:4 (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeStorage:3>);
	recipes.addShaped(<storagedrawers:upgradeStorage:3>, [
		[<ore:blockDiamond>, <ore:stickTreatedWood>, <ore:blockDiamond>],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeStorage:2>, <ore:stickTreatedWood>],
		[<ore:blockDiamond>, <ore:stickTreatedWood>, <ore:blockDiamond>]]);

//	Storage Upgrade Tier:5 (Storage Drawers)
	recipes.remove(<storagedrawers:upgradeStorage:4>);
	recipes.addShaped(<storagedrawers:upgradeStorage:4>, [
		[<ore:blockEmerald>, <ore:stickTreatedWood>, <ore:blockEmerald>],
		[<ore:stickTreatedWood>, <storagedrawers:upgradeStorage:3>, <ore:stickTreatedWood>],
		[<ore:blockEmerald>, <ore:stickTreatedWood>, <ore:blockEmerald>]]);

//	Copper Chest
	recipes.remove(<ironchest:BlockIronChest:3>);
	recipes.addShaped(<ironchest:BlockIronChest:3>, [
		[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
		[<ore:plateCopper>, <ore:chestWood>, <ore:plateCopper>],
		[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

//	Iron Chest
	recipes.remove(<ironchest:BlockIronChest:0>);
	recipes.addShaped(<ironchest:BlockIronChest:0>, [
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
		[<ore:plateIron>, <ironchest:BlockIronChest:3>, <ore:plateIron>],
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

//	Silver Chest
	recipes.remove(<ironchest:BlockIronChest:4>);
	recipes.addShaped(<ironchest:BlockIronChest:4>, [
		[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
		[<ore:plateSilver>, <ironchest:BlockIronChest:0>, <ore:plateSilver>],
		[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);

//	Gold Chest
	recipes.remove(<ironchest:BlockIronChest:1>);
	recipes.addShaped(<ironchest:BlockIronChest:1>, [
		[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
		[<ore:plateGold>, <ironchest:BlockIronChest:4>, <ore:plateGold>],
		[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

//	Obsidian Chest
	recipes.remove(<ironchest:BlockIronChest:6>);
	recipes.addShaped(<ironchest:BlockIronChest:6>, [
		[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>],
		[<ore:plateObsidian>, <ironchest:BlockIronChest:1>, <ore:plateObsidian>],
		[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);

//	Diamond Chest
	recipes.remove(<ironchest:BlockIronChest:2>);
	recipes.addShaped(<ironchest:BlockIronChest:2>, [
		[<railcraft:glass:9>, <railcraft:glass:9>, <railcraft:glass:9>],
		[newDiamond, <ironchest:BlockIronChest:6>, newDiamond],
		[<railcraft:glass:9>, <railcraft:glass:9>, <railcraft:glass:9>]]);

//	Entity Detector	
	recipes.remove(<draconicevolution:entity_detector:0>);
	recipes.addShaped(<draconicevolution:entity_detector>, [
		[<ore:blockLapis>, <minecraft:skull:1>, <ore:blockLapis>],
		[<ore:blockRedstone>, <ore:blockDraconium>, <ore:blockRedstone>], 
		[<ore:blockMetal>, <draconicevolution:draconic_core>, <ore:blockMetal>]]);

//	Advanced Entity Detector		
	recipes.remove(<draconicevolution:entity_detector:1>);
	recipes.addShaped(<draconicevolution:entity_detector:1>, [
		[<ore:blockRedstone>, <botania:gaiaHead>, <ore:blockRedstone>],
		[<ore:blockLapis>, <ore:blockDiamond>, <ore:blockLapis>], 
		[<ore:blockDraconiumAwakened>, <draconicevolution:entity_detector:*>, <ore:blockDraconiumAwakened>]]);

//	Energy Pylon
	recipes.removeShaped(<draconicevolution:energy_pylon>);
	recipes.addShaped(<draconicevolution:energy_pylon>, [
		[<ore:blockDraconiumAwakened>, <randomthings:stableEnderpearl>, <ore:blockDraconiumAwakened>],
		[<ore:blockEmerald>, <draconicevolution:wyvern_core>, <ore:blockEmerald>], 
		[<ore:blockDraconiumAwakened>, <ore:blockDiamond>, <ore:blockDraconiumAwakened>]]);

//	Ritual Diviner
	recipes.removeShaped(<bloodmagic:ItemRitualDiviner>);
	recipes.addShaped(<bloodmagic:ItemRitualDiviner>, [
		[newDiamond, <bloodmagic:ItemInscriptionTool:2>.onlyWithTag({uses: 10}), newDiamond],
		[<bloodmagic:ItemInscriptionTool:4>.onlyWithTag({uses: 10}), <botania:twigWand>, <bloodmagic:ItemInscriptionTool:1>.onlyWithTag({uses: 10})], 
		[newDiamond, <bloodmagic:ItemInscriptionTool:3>.onlyWithTag({uses: 10}), newDiamond]]);

		

		
/*  newDiamond redstoneLatch
//
	recipes.remove();
	recipes.addShaped(, [
		[],
		[],
		[]]);

//	
	recipes.remove();
	recipes.addShaped(, [
		[],
		[],
		[]]);

//
	recipes.remove();
	recipes.addShaped(, [
		[],
		[],
		[]]);

*/