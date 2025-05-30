# Matches Biome
#
# Determines whether the biome at the current position matches
# the biome required for the potted plant.

execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_oak
execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_birch
execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_spruce
execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_jungle
execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_acacia
execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_dark_oak
execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_cherry
execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_pale_oak
execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run execute if biome ~ ~ ~ #pots:suitable_for_azalea
execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run execute if biome ~ ~ ~ #pots:suitable_for_azalea
execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run execute if biome ~ ~ ~ #pots:suitable_for_mangrove
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run execute if biome ~ ~ ~ #pots:suitable_for_crimson_fungus
execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run execute if biome ~ ~ ~ #pots:suitable_for_warped_fungus
return fail