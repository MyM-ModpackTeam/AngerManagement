recipes.addShapeless(<minecraft:stone_pickaxe>, [<minecraft:stone_pickaxe>.anyDamage().marked("pick"), <minecraft:cobblestone>], function(output, inputs, crafting) {
  if crafting.player.xp > 5 {
    return inputs.pick.withDamage(max(0, inputs.pick.damage - 25));
  }
  return null;
}, function(output, crafting, player){
    player.removeXP(5);
});



