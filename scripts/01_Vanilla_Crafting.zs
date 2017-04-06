// Imports
	import minetweaker.item.IItemStack;
	import minetweaker.item.IIngredient;

// Variables
	var gemDiamond = <minecraft:diamond>;												
	var newDiamond = <betterwithmods:material:49>;										
	var florbGlowstone = <thermalexpansion:florb>.withTag({Fluid: "glowstone"});		
	var florbIC2Lava = <thermalexpansion:florb:1>.withTag({Fluid: "ic2pahoehoe_lava"});	
	var lavaCrystal = <bloodmagic:ItemLavaCrystal>;
	var disenchantGenerator = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
	var furnaceGenerator = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
	var trippleCobble = <extrautils2:compressedcobblestone:2>;
	
// Ore Dictionary	
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
		
		
		
		

		
// Diamond Block
	recipes.remove(<minecraft:diamond_block>);
	recipes.addShaped(<minecraft:diamond_block>, [
		[newDiamond, newDiamond, newDiamond],
		[newDiamond, newDiamond, newDiamond],
		[newDiamond, newDiamond, newDiamond]]);

// Jukebox
	recipes.remove(<minecraft:jukebox>);
	recipes.addShaped(<minecraft:jukebox>, [
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
		[<ore:slabWood>, newDiamond, <ore:slabWood>],
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

// Enchanting Tables (Vanilla & Enchanting Plus)
	mods.jei.JEI.hide(<minecraft:enchanting_table>);
	recipes.remove(<minecraft:enchanting_table>);
	recipes.remove(<eplus:advanced_table>);
	recipes.addShaped(<eplus:advanced_table>, [
		[<ore:blockGold>, <eplus:table_upgrade>, <ore:blockGold>],
		[<ore:blockEnchantedMetal>, <advanced_solar_panels:crafting:13>, <ore:blockEnchantedMetal>],
		[<ore:blockObsidian>, <botania:forestEye>, <ore:blockObsidian>]]);

// Enchantin Plus Table Upgrade
	recipes.remove(<eplus:table_upgrade>);
	recipes.addShaped(<eplus:table_upgrade>, [
		[<ore:blockGold>, <minecraft:writable_book>, <ore:blockGold>],
		[<deepresonance:dense_obsidian>, null, <deepresonance:dense_obsidian>],
		[<ore:blockGold>, <randomthings:stableEnderpearl>, <ore:blockGold>]]);

// Stable Ender Pearl
	recipes.remove(<randomthings:stableEnderpearl>);
	recipes.addShaped(<randomthings:stableEnderpearl>, [
		[<ore:blockObsidian>, <ore:gemLapis>, <ore:blockObsidian>],
		[<ore:gemLapis>, <minecraft:ender_eye>, <ore:gemLapis>],
		[<ore:blockObsidian>, <ore:gemLapis>, <ore:blockObsidian>]]);

// Block of Enchanted Metal
	recipes.remove(<extrautils2:simpledecorative>);
	recipes.addShaped(<extrautils2:simpledecorative>, [
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>],
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>],
		[<extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>]]);

// Infusing Laser
	recipes.remove(<deepresonance:laser>);
	recipes.addShaped(<deepresonance:laser>, [
		[<ic2:glass>, <ic2:glass>, <ic2:glass>],
		[<minecraft:emerald_block>, <deepresonance:machine_frame>, <minecraft:emerald_block>],
		[newDiamond, newDiamond, newDiamond]]);

// Alabaster Structure Block Tier 2
	recipes.remove(<environmentaltech:alabaster_structure:1>);
	recipes.addShaped(<environmentaltech:alabaster_structure:1>, [
		[null, newDiamond, null],
		[<betterwithmods:material:35>, <environmentaltech:alabaster_structure>, <betterwithmods:material:35>],
		[null, newDiamond, null]]);

// Hardened Stone Structure Block Tier 2
	recipes.remove(<environmentaltech:hardened_stone_structure:1>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:1>, [
		[null, newDiamond, null],
		[<betterwithmods:material:35>, <environmentaltech:hardened_stone_structure>, <betterwithmods:material:35>],
		[null, newDiamond, null]]);

// Basalt Structure Block Tier 2
	recipes.remove(<environmentaltech:basalt_structure:1>);
	recipes.addShaped(<environmentaltech:basalt_structure:1>, [
		[null, newDiamond, null],
		[<betterwithmods:material:35>, <environmentaltech:basalt_structure>, <betterwithmods:material:35>],
		[null, newDiamond, null]]);

// Alabaster Structure Block Tier 3
	recipes.remove(<environmentaltech:alabaster_structure:2>);
	recipes.addShaped(<environmentaltech:alabaster_structure:2>, [
		[null, <botania:forestEye>, null],
		[<betterwithmods:material:35>, <environmentaltech:alabaster_structure:1>, <betterwithmods:material:35>],
		[null, florbGlowstone, null]]);

// Hardened Stone Structure Block Tier 3
	recipes.remove(<environmentaltech:hardened_stone_structure:2>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:2>, [
		[null, <botania:forestEye>, null],
		[<betterwithmods:material:35>, <environmentaltech:hardened_stone_structure:1>, <betterwithmods:material:35>],
		[null, florbGlowstone, null]]);

// Basalt Structure Block Tier 3
	recipes.remove(<environmentaltech:basalt_structure:2>);
	recipes.addShaped(<environmentaltech:basalt_structure:2>, [
		[null, <botania:forestEye>, null],
		[<betterwithmods:material:35>, <environmentaltech:basalt_structure:1>, <betterwithmods:material:35>],
		[null, florbGlowstone, null]]);

// Alabaster Structure Block Tier 4
	recipes.remove(<environmentaltech:alabaster_structure:3>);
	recipes.addShaped(<environmentaltech:alabaster_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:alabaster_structure:2>, florbGlowstone],
		[null, <betterwithmods:material:35>, null]]);

// Hardened Stone Structure Block Tier 4
	recipes.remove(<environmentaltech:hardened_stone_structure:3>);
	recipes.addShaped(<environmentaltech:hardened_stone_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:hardened_stone_structure:2>, florbGlowstone],
		[null, <betterwithmods:material:35>, null]]);

// Basalt Structure Block Tier 4
	recipes.remove(<environmentaltech:basalt_structure:3>);
	recipes.addShaped(<environmentaltech:basalt_structure:3>, [
		[null, <roots:eldritch_ingot>, null],
		[florbGlowstone, <environmentaltech:basalt_structure:2>, florbGlowstone],
		[null, <betterwithmods:material:35>, null]]);

// Eye of the Ancients
	recipes.remove(<botania:forestEye>);
	recipes.addShaped(<botania:forestEye>, [
		[<ore:ingotElvenElementium>, <ore:livingrock>, <ore:ingotElvenElementium>],
		[<ore:livingrock>, <randomthings:stableEnderpearl>, <ore:livingrock>],
		[<ore:ingotElvenElementium>, <ore:livingrock>, <ore:ingotElvenElementium>]]);

// Eldritch Ingot
	recipes.remove(<roots:eldritch_ingot>);
	recipes.addShaped(<roots:eldritch_ingot>, [
		[<ore:netherStar>, <ore:dragonEgg>, <ore:netherStar>],
		[<ore:dragonEgg>, <ore:ingotCorrupted>, <ore:dragonEgg>],
		[<ore:netherStar>, <ore:dragonEgg>, <ore:netherStar>]]);

// Corrupted Ingot
	recipes.remove(<soulshardstow:ItemMaterials>);
	recipes.addShaped(<soulshardstow:ItemMaterials>, [
		[<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>],
		[<ore:dustVile>, <ore:ingotSoulforgedSteel>, <ore:dustVile>],
		[<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>]]);

 // Lava Crystal
	recipes.remove(lavaCrystal);
	recipes.addShaped(lavaCrystal, [
		[<ore:blockGlassHardened>, florbIC2Lava, <ore:blockGlassHardened>],
		[florbIC2Lava, bloodOrb1, florbIC2Lava],
		[<ore:blockObsidian>, newDiamond, <ore:blockObsidian>]]);

// Soul Transferrer
	recipes.remove(<sanguimancy:sacrifice_transfer>);
	recipes.addShaped(<sanguimancy:sacrifice_transfer>, [
		[<bloodmagic:ItemSlate:3>, lavaCrystal, <bloodmagic:ItemSlate:3>],
		[newDiamond, <minecraft:light_weighted_pressure_plate>, newDiamond],
		[<bloodmagic:ItemSlate:3>, newDiamond, <bloodmagic:ItemSlate:3>]]);

// Spot Loaders
	recipes.remove(<chickenchunks:chickenChunkLoader:0>);
	recipes.addShaped(<chickenchunks:chickenChunkLoader:0>, [
		[null, <souls:EnderJewel>, null],
		[<thermalfoundation:material:166>, <extrautils2:ingredients:11>, <thermalfoundation:material:166>],
		[<thermalfoundation:material:166>, <eplus:advanced_table>, <thermalfoundation:material:166>]]);

// Chunk Loaders
	recipes.remove(<chickenchunks:chickenChunkLoader:1>);
	recipes.addShaped(<chickenchunks:chickenChunkLoader:1> * 9, [
		[<randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>],
		[<randomthings:stableEnderpearl>, <chickenchunks:chickenChunkLoader:0>, <randomthings:stableEnderpearl>],
		[<randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>, <randomthings:stableEnderpearl>]]);

// Ender Jewel
	recipes.remove(<souls:EnderJewel>);
	recipes.addShaped(<souls:EnderJewel>, [
		[null, newDiamond, null],
		[newDiamond, <randomthings:stableEnderpearl>, newDiamond],
		[null, newDiamond, null]]);

// Disenchanter
	recipes.remove(<draconicevolution:diss_enchanter>);
	recipes.addShaped(<draconicevolution:diss_enchanter>, [
		[<extrautils2:opinium:3>, <draconicevolution:chaotic_core>, <extrautils2:opinium:3>],
		[<minecraft:enchanted_book>, <eplus:advanced_table>, <minecraft:enchanted_book>],
		[<ore:bookshelf>, <ore:bookshelf>, <ore:bookshelf>]]);

// Armour Imbuement Table
	recipes.remove(<arsmagica2:armor_imbuer>);
	recipes.addShaped(<arsmagica2:armor_imbuer>, [
		[<arsmagica2:crafting_altar>, myCarpet, <arsmagica2:crafting_altar>],
		[<deepresonance:dense_obsidian>, <eplus:advanced_table>, <deepresonance:dense_obsidian>],
		[<deepresonance:dense_obsidian>, <deepresonance:dense_obsidian>, <deepresonance:dense_obsidian>]]);

// Energy Infuser
	recipes.remove(<draconicevolution:energy_infuser>);
	recipes.addShaped(<draconicevolution:energy_infuser>, [
		[<ore:ingotDraconium>, <draconicevolution:particle_generator:2>, <ore:ingotDraconium>],
		[<draconicevolution:wyvern_core>, <eplus:advanced_table>, <draconicevolution:wyvern_core>],
		[<ore:ingotDraconium>, <draconicevolution:draconic_core>, <ore:ingotDraconium>]]);

// Magic Infuser
	recipes.remove(<extrautils2:terraformer:8>);
	recipes.addShaped(<extrautils2:terraformer:8>, [
		[<extrautils2:terraformer:9>, <eplus:advanced_table>],
		[<eplus:advanced_table>, null]]);

// Disenchantment Generator
	recipes.remove(disenchantGenerator);
	recipes.addShaped(disenchantGenerator, [
		[<extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>],
		[<extrautils2:decorativesolidwood:1>, <eplus:advanced_table>, <extrautils2:decorativesolidwood:1>],
		[<betterwithmods:material:35>, furnaceGenerator, <betterwithmods:material:35>]]);

// Magical Planks
	recipes.remove(<extrautils2:decorativesolidwood>);
	recipes.addShaped(<extrautils2:decorativesolidwood> * 4, [
		[<ore:ingotGold>, <minecraft:experience_bottle>, <ore:ingotGold>],
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:ingotGold>, <ore:plankWood>, <ore:ingotGold>]]);

// Magical Wood
	recipes.remove(<extrautils2:decorativesolidwood:1>);
	recipes.addShaped(<extrautils2:decorativesolidwood:1>, [
		[<extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>],
		[<minecraft:enchanted_book>, <minecraft:enchanted_book>, <minecraft:enchanted_book>],
		[<extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>, <extrautils2:decorativesolidwood>]]);

// Diamond Fishing Rod
	recipes.remove(<aquaculture:diamond_fishing_rod>);
	recipes.addShaped(<aquaculture:diamond_fishing_rod>, [
		[null, null, newDiamond],
		[null, newDiamond, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

// Iron Fishing Rod
	recipes.remove(<aquaculture:iron_fishing_rod>);
	recipes.addShaped(<aquaculture:iron_fishing_rod>, [
		[null, null, <ore:ingotIron>],
		[null, <ore:ingotIron>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

// Golden Fishing Rod
	recipes.remove(<aquaculture:gold_fishing_rod>);
	recipes.addShaped(<aquaculture:gold_fishing_rod>, [
		[null, null, <ore:ingotGold>],
		[null, <ore:ingotGold>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

// Wooden Fishing Rod
	recipes.remove(<minecraft:fishing_rod>);
	recipes.remove(<aquaculture:fishing_rod>);
	recipes.addShaped(<aquaculture:fishing_rod>, [
		[null, null, <ore:stickWood>],
		[null, <ore:stickWood>, <ore:fiberHemp>],
		[<ore:stickWood>, null, <ore:fiberHemp>]]);

// Carrot on a Stick
	recipes.remove(<minecraft:carrot_on_a_stick>);
	recipes.addShaped(<minecraft:carrot_on_a_stick>, [
		[<aquaculture:fishing_rod>, null],
		[null, <minecraft:carrot>]]);

// Flicker Focus
	recipes.remove(<arsmagica2:flicker_focus:12>);
	recipes.addShaped(<arsmagica2:flicker_focus:12>, [
		[null, <ore:listAllfishraw>, null],
		[<arsmagica2:flicker_jar:8>, null, <arsmagica2:flicker_jar:2>],
		[null, <aquaculture:fishing_rod>, null]]);

// Water Trap
	recipes.remove(<harvestcraft:watertrap>);
	recipes.addShaped(<harvestcraft:watertrap>, [
		[<ore:stickWood>, <aquaculture:fishing_rod>, <ore:stickWood>],
		[<ore:fiberHemp>, <ore:drawerBasic>, <ore:fiberHemp>],
		[<ore:stickWood>, <ore:fiberHemp>, <ore:stickWood>]]);

// Diamond Scythe
	recipes.remove(<biomesoplenty:diamond_scythe>);
	recipes.addShapedMirrored(<biomesoplenty:diamond_scythe>, [
		[newDiamond, newDiamond, null],
		[<ore:stickWood>, null, newDiamond],
		[<ore:stickWood>, null, null]]);

// Diamond Sickle
	recipes.remove(<projectred-exploration:diamond_sickle>);
	recipes.addShaped(<projectred-exploration:diamond_sickle>, [
		[null, newDiamond, null],
		[null, null, newDiamond],
		[<ore:stickWood>, newDiamond, null]]);

// Diamond Saw (MicroBlocks)
	recipes.remove(<microblockcbe:saw_diamond>);
	recipes.addShaped(<microblockcbe:saw_diamond>, [
		[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
		[<ore:stickWood>, newDiamond, <ore:rodStone>]]);

// Diamond Saw (Chisel & Bits)
	recipes.remove(<chiselsandbits:bitsaw_diamond>);
	recipes.addShaped(<chiselsandbits:bitsaw_diamond>, [
		[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
		[<ore:stickWood>, newDiamond, newDiamond]]);

// Diamond Shard (woot)
	recipes.remove(<woot:shard>);
	recipes.addShaped(<woot:shard>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, newDiamond, null],
		[null, <roots:runestone_brick>, null]]);

// Emerald Shard (woot)
	recipes.remove(<woot:shard:1>);
	recipes.addShaped(<woot:shard:1>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:gemEmerald>, null],
		[null, <roots:runestone_brick>, null]]);

// Quartz Shard (woot)
	recipes.remove(<woot:shard:2>);
	recipes.addShaped(<woot:shard:2>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:gemQuartz>, null],
		[null, <roots:runestone_brick>, null]]);
		
// Nether Star Shard (woot)
	recipes.remove(<woot:shard:3>);
	recipes.addShaped(<woot:shard:3>, [
		[<woot:yahhammer>, <woot:dye:3>, null],
		[null, <ore:netherStar>, null],
		[null, <roots:runestone_brick>, null]]);

// Diamond Skull Plate
	recipes.remove(<woot:skull:2>);
	recipes.addShaped(<woot:skull:2> * 5, [
		[<woot:yahhammer>, <ore:blockDiamond>, <woot:skull:3>],
		[<woot:skull:3>, <woot:dye:4>, <woot:skull:3>],
		[<woot:skull:3>, <roots:runestone_brick>, <woot:skull:3>]]);

// Emerald Skull Plate
	recipes.remove(<woot:skull:3>);
	recipes.addShaped(<woot:skull:3> * 5, [
		[<woot:yahhammer>, <ore:blockEmerald>, <woot:skull:1>],
		[<woot:skull:1>, <woot:dye:4>, <woot:skull:1>],
		[<woot:skull:1>, <roots:runestone_brick>, <woot:skull:1>]]);

// Gold Skull Plate
	recipes.remove(<woot:skull:1>);
	recipes.addShaped(<woot:skull:1> * 4, [
		[<woot:yahhammer>, <ore:blockGold>, null],
		[<woot:skull>, <woot:dye:4>, <woot:skull>],
		[<woot:skull>, <roots:runestone_brick>, <woot:skull>]]);

// Iron Skull Plate
	recipes.remove(<woot:skull>);
	recipes.addShaped(<woot:skull> * 2, [
		[<woot:yahhammer>, <ore:blockIron>, null],
		[<ore:itemSkull>, <woot:dye:4>, <ore:itemSkull>],
		[null, <roots:runestone_brick>, null]]);

// Creative Spikes
	recipes.remove(<extrautils2:spike_creative>);
	recipes.addShaped(<extrautils2:spike_creative>, [
		[<extrautils2:opinium:8>, <roots:diamond_knife>, <extrautils2:opinium:8>],
		[<roots:diamond_knife>, <bloodmagic:ItemBloodOrb:5>, <roots:diamond_knife>],
		[<extrautils2:simpledecorative:1>, <extrautils2:spike_diamond>, <extrautils2:simpledecorative>]]);

// Diamond Spikes
	recipes.remove(<extrautils2:spike_diamond>);
	recipes.addShaped(<extrautils2:spike_diamond>, [
		[null, mySwordDiamond, null],
		[mySwordDiamond, newDiamond, mySwordDiamond],
		[newDiamond, <extrautils2:spike_gold>, newDiamond]]);

// Golden Spikes
	recipes.remove(<extrautils2:spike_gold>);
	recipes.addShaped(<extrautils2:spike_gold>, [
		[null, mySwordGold, null],
		[mySwordGold, <ore:ingotGold>, mySwordGold],
		[<ore:ingotGold>, <extrautils2:spike_iron>, <ore:ingotGold>]]);

// Iron Spikes
	recipes.remove(<extrautils2:spike_iron>);
	recipes.addShaped(<extrautils2:spike_iron>, [
		[null, mySwordIron, null],
		[mySwordIron, <ore:ingotIron>, mySwordIron],
		[<ore:ingotIron>, <extrautils2:spike_stone>, <ore:ingotIron>]]);

// Stone Spikes
	recipes.remove(<extrautils2:spike_stone>);
	recipes.addShaped(<extrautils2:spike_stone>, [
		[null, mySwordStone, null],
		[mySwordStone, trippleCobble, mySwordStone],
		[trippleCobble, <extrautils2:spike_wood>, trippleCobble]]);

// Wooden Spikes
	recipes.remove(<extrautils2:spike_wood>);
	recipes.addShaped(<extrautils2:spike_wood>, [
		[null, mySwordWood, null],
		[mySwordWood, <extrautils2:decorativesolidwood>, mySwordWood],
		[<extrautils2:decorativesolidwood>, <ore:logWood>, <extrautils2:decorativesolidwood>]]);

// Diamond Knife (Roots)
	recipes.remove(<roots:diamond_knife>);
	recipes.addShaped(<roots:diamond_knife>, [
		[null, null, <betterwithmods:material:49>],
		[null, <betterwithmods:material:49>, null],
		[<roots:eldritch_ingot>, null, null]]);


/* 
// 
	recipes.remove();
	recipes.addShaped(, [
		[],
		[],
		[]]);

*/		