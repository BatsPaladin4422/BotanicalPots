execute unless block ~ ~ ~ #pots:botanical_pots run return fail

execute if entity @s[nbt={data: {upgrade: "flaming"}}] align xyz run return run particle minecraft:flame ~.5 ~.5 ~.5 0.3 0.3 0.3 0 10 normal

execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run function pots:particle/map { plant: "oak" }
execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run function pots:particle/map { plant: "spruce" }
execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run function pots:particle/map { plant: "birch" }
execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run function pots:particle/map { plant: "jungle" }
execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run function pots:particle/map { plant: "acacia" }
execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run function pots:particle/map { plant: "dark_oak" }
execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run function pots:particle/map { plant: "cherry" }
execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run function pots:particle/map { plant: "pale_oak" }
execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run function pots:particle/map { plant: "mangrove" }
execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run function pots:particle/map { plant: "azalea" }
execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run function pots:particle/map { plant: "azalea" }

execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run function pots:particle/map { plant: "warped" }
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run function pots:particle/map { plant: "crimson" }

execute if block ~ ~ ~ minecraft:potted_bamboo run return run function pots:particle/map { plant: "bamboo" }
execute if block ~ ~ ~ minecraft:potted_cactus run return run function pots:particle/map { plant: "cactus" }
execute if block ~ ~ ~ minecraft:potted_red_mushroom run return run function pots:particle/map { plant: "red_mushroom" }
execute if block ~ ~ ~ minecraft:potted_brown_mushroom run return run function pots:particle/map { plant: "brown_mushroom" }

execute if block ~ ~ ~ minecraft:potted_dandelion run return run function pots:particle/map { plant: "dandelion" }
execute if block ~ ~ ~ minecraft:potted_poppy run return run function pots:particle/map { plant: "poppy" }
execute if block ~ ~ ~ minecraft:potted_blue_orchid run return run function pots:particle/map { plant: "blue_orchid" }
execute if block ~ ~ ~ minecraft:potted_allium run return run function pots:particle/map { plant: "allium" }
execute if block ~ ~ ~ minecraft:potted_azure_bluet run return run function pots:particle/map { plant: "azure_bluet" }
execute if block ~ ~ ~ minecraft:potted_red_tulip run return run function pots:particle/map { plant: "red_tulip" }
execute if block ~ ~ ~ minecraft:potted_orange_tulip run return run function pots:particle/map { plant: "orange_tulip" }
execute if block ~ ~ ~ minecraft:potted_white_tulip run return run function pots:particle/map { plant: "white_tulip" }
execute if block ~ ~ ~ minecraft:potted_pink_tulip run return run function pots:particle/map { plant: "pink_tulip" }
execute if block ~ ~ ~ minecraft:potted_oxeye_daisy run return run function pots:particle/map { plant: "oxeye_daisy" }
execute if block ~ ~ ~ minecraft:potted_cornflower run return run function pots:particle/map { plant: "cornflower" }
execute if block ~ ~ ~ minecraft:potted_lily_of_the_valley run return run function pots:particle/map { plant: "lily_of_the_valley" }