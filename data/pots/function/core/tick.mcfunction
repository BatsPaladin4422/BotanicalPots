# Tick

# Rolls a "dice", and based on the outcome
# either does nothing, or triggers the sapling
# to grow.

execute if entity @s[nbt={ data: { upgrade: "shattered" } }] run return 0
execute if block ~ ~ ~ #pots:requires_rich_soil unless entity @s[nbt={ data: { upgrade: "rich_soil" } }] run return 0

scoreboard players add @s growTime 1

# Rolling the dice
execute store result score cap var run gamerule randomTickSpeed
execute if score cap var matches 0 run return 0
execute store result score modifier var run function pots:core/map_speed_modifier
execute store result score roll var run function pots:core/roll
scoreboard players operation cap var *= modifier var
execute if score roll var > cap var run return 0

# Triggering advancements
execute store result score height var run data get entity @s Pos[1]
execute if score height var matches 255.. unless entity @s[nbt={data:{upgrade:"none"}}] if block ~ ~ ~ minecraft:potted_spruce_sapling \
    run advancement grant @a[distance=..3.5] only pots:spruce_up

execute if entity @s[nbt={ data: { upgrade: "flaming" } }] if block ~ ~ ~ minecraft:potted_crimson_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames
execute if entity @s[nbt={ data: { upgrade: "flaming" } }] if block ~ ~ ~ minecraft:potted_warped_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames

# Come along with me
execute if entity @s[nbt={ data: { upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_oak_sapling \
    if biome ~ ~ ~ #pots:suiting_for_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me oak
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_spruce_sapling \
    if biome ~ ~ ~ #pots:suiting_for_spruce run advancement grant @a[distance=..3.5] only pots:come_along_with_me spruce
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_birch_sapling \
    if biome ~ ~ ~ #pots:suiting_for_birch run advancement grant @a[distance=..3.5] only pots:come_along_with_me birch
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_jungle_sapling \
    if biome ~ ~ ~ #pots:suiting_for_jungle run advancement grant @a[distance=..3.5] only pots:come_along_with_me jungle
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_acacia_sapling \
    if biome ~ ~ ~ #pots:suiting_for_acacia run advancement grant @a[distance=..3.5] only pots:come_along_with_me acacia
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_dark_oak_sapling \
    if biome ~ ~ ~ #pots:suiting_for_dark_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me dark_oak
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_mangrove_propagule \
    if biome ~ ~ ~ #pots:suiting_for_mangrove run advancement grant @a[distance=..3.5] only pots:come_along_with_me mangrove
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_cherry_sapling \
    if biome ~ ~ ~ #pots:suiting_for_cherry run advancement grant @a[distance=..3.5] only pots:come_along_with_me cherry
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_azalea_bush \
    if biome ~ ~ ~ #pots:suiting_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_flowering_azalea_bush \
    if biome ~ ~ ~ #pots:suiting_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_crimson_fungus \
    if biome ~ ~ ~ #pots:suiting_for_crimson_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me crimson
execute if entity @s[nbt={ data:{ upgrade: "climate" } }] if block ~ ~ ~ minecraft:potted_warped_fungus \
    if biome ~ ~ ~ #pots:suiting_for_warped_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me warped

# Flowstate + Rooted-Down
execute if score @s growTime matches ..40 run advancement grant @a[distance=..3.5] only pots:flowstate
execute if score @s growTime matches 72000.. run advancement grant @a[distance=..3.5] only pots:rooted
scoreboard players reset @s growTime

# Dropping the result
execute store success score useStorage var run loot insert ~ ~-1 ~ loot pots:empty
execute if score useStorage var matches 1 store result score wereInserted var run function pots:core/insert
execute if score wereInserted var matches 0 run function pots:core/spawn
execute if score useStorage var matches 0 run function pots:core/spawn

execute if entity @s[nbt={ data:{ upgrade: "flaming" } }] run playsound minecraft:item.firecharge.use block @a ~ ~ ~
execute unless entity @s[nbt={ data: { upgrade: "flaming" } }] run playsound item.bundle.drop_contents block @a ~ ~ ~

function pots:map_particle
setblock ~ ~ ~ flower_pot