execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[distance=2.5..] run return run \
    title @s actionbar "§7Can't see from this far..."

# Saplings
execute align xyz if block ~ ~ ~ minecraft:oak_sapling run return run function pots:magnifying_glass/type/oak
execute align xyz if block ~ ~ ~ minecraft:spruce_sapling run return run function pots:magnifying_glass/type/spruce
execute align xyz if block ~ ~ ~ minecraft:birch_sapling run return run function pots:magnifying_glass/type/birch
execute align xyz if block ~ ~ ~ minecraft:jungle_sapling run return run function pots:magnifying_glass/type/jungle
execute align xyz if block ~ ~ ~ minecraft:acacia_sapling run return run function pots:magnifying_glass/type/acacia
execute align xyz if block ~ ~ ~ minecraft:dark_oak_sapling run return run function pots:magnifying_glass/type/dark_oak
execute align xyz if block ~ ~ ~ minecraft:cherry_sapling run return run function pots:magnifying_glass/type/cherry
execute align xyz if block ~ ~ ~ minecraft:pale_oak_sapling run return run function pots:magnifying_glass/type/pale_oak
execute align xyz if block ~ ~ ~ minecraft:mangrove_propagule run return run function pots:magnifying_glass/type/mangrove
execute align xyz if block ~ ~ ~ minecraft:azalea run return run function pots:magnifying_glass/type/azalea
execute align xyz if block ~ ~ ~ minecraft:flowering_azalea run return run function pots:magnifying_glass/type/azalea
execute align xyz if block ~ ~ ~ minecraft:crimson_fungus run return run function pots:magnifying_glass/type/crimson
execute align xyz if block ~ ~ ~ minecraft:warped_fungus run return run function pots:magnifying_glass/type/warped

execute align xyz if block ~ ~ ~ minecraft:bamboo run return run function pots:magnifying_glass/type/bamboo
execute align xyz if block ~ ~ ~ minecraft:cactus run return run function pots:magnifying_glass/type/cactus
execute align xyz if block ~ ~ ~ minecraft:red_mushroom run return run function pots:magnifying_glass/type/mushroom {mushroom: "red_mushroom"}
execute align xyz if block ~ ~ ~ minecraft:brown_mushroom run return run function pots:magnifying_glass/type/mushroom {mushroom: "brown_mushroom"}

execute align xyz if block ~ ~ ~ minecraft:dandelion run return run function pots:magnifying_glass/type/flower { flower: "dandelion" }
execute align xyz if block ~ ~ ~ minecraft:poppy run return run function pots:magnifying_glass/type/flower { flower: "poppy" }
execute align xyz if block ~ ~ ~ minecraft:blue_orchid run return run function pots:magnifying_glass/type/flower { flower: "blue_orchid" }
execute align xyz if block ~ ~ ~ minecraft:allium run return run function pots:magnifying_glass/type/flower { flower: "allium" }
execute align xyz if block ~ ~ ~ minecraft:azure_bluet run return run function pots:magnifying_glass/type/flower { flower: "azure_bluet" }
execute align xyz if block ~ ~ ~ minecraft:red_tulip run return run function pots:magnifying_glass/type/flower { flower: "red_tulip" }
execute align xyz if block ~ ~ ~ minecraft:orange_tulip run return run function pots:magnifying_glass/type/flower { flower: "orange_tulip" }
execute align xyz if block ~ ~ ~ minecraft:white_tulip run return run function pots:magnifying_glass/type/flower { flower: "white_tulip" }
execute align xyz if block ~ ~ ~ minecraft:pink_tulip run return run function pots:magnifying_glass/type/flower { flower: "pink_tulip" }
execute align xyz if block ~ ~ ~ minecraft:oxeye_daisy run return run function pots:magnifying_glass/type/flower { flower: "oxeye_daisy" }
execute align xyz if block ~ ~ ~ minecraft:cornflower run return run function pots:magnifying_glass/type/flower { flower: "cornflower" }
execute align xyz if block ~ ~ ~ minecraft:lily_of_the_valley run return run function pots:magnifying_glass/type/flower { flower: "lily_of_the_valley" }

execute align xyz if block ~ ~ ~ #pots:wild_plants run return run title @s actionbar "§7Such a §fwild plant §7can't be grown in a pot."
execute align xyz if block ~ ~ ~ #pots:botanical_pots run return run title @s actionbar "§7You usually investigate §fplants§7; not §fpots§7, right?" 

title @s actionbar "§7Is that even a plant?"