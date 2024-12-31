# Tick

# Rolls a "dice", and based on the outcome
# either does nothing, or triggers the sapling
# to grow.

execute if entity @s[nbt={data:{upgrade:"shattered"}}] run return 0

# Rolling the dice
# (stores the result in the var score)
function pots:core/roll
execute if score @s var > RTS var run return 0

# Only grow if the soil is rich
execute if block ~ ~ ~ #pots:requires_rich_soil unless entity @s[nbt={ data:{ upgrade: "rich_soil" } }] run return 0

# Triggering advancements
execute store result score HEIGHT var run data get entity @s Pos[1]
execute if score HEIGHT var > 255 var unless entity @s[nbt={data:{upgrade:"none"}}] if block ~ ~ ~ minecraft:potted_spruce_sapling \
    run advancement grant @a[distance=..3.5] only pots:spruce_up

execute if entity @s[nbt={data:{upgrade:"flaming"}}] if block ~ ~ ~ minecraft:potted_crimson_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames
execute if entity @s[nbt={data:{upgrade:"flaming"}}] if block ~ ~ ~ minecraft:potted_warped_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames

# Come along with me
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_oak_sapling \
    if biome ~ ~ ~ #pots:suiting_for_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me oak
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_spruce_sapling \
    if biome ~ ~ ~ #pots:suiting_for_spruce run advancement grant @a[distance=..3.5] only pots:come_along_with_me spruce
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_birch_sapling \
    if biome ~ ~ ~ #pots:suiting_for_birch run advancement grant @a[distance=..3.5] only pots:come_along_with_me birch
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_jungle_sapling \
    if biome ~ ~ ~ #pots:suiting_for_jungle run advancement grant @a[distance=..3.5] only pots:come_along_with_me jungle
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_acacia_sapling \
    if biome ~ ~ ~ #pots:suiting_for_acacia run advancement grant @a[distance=..3.5] only pots:come_along_with_me acacia
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_dark_oak_sapling \
    if biome ~ ~ ~ #pots:suiting_for_dark_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me dark_oak
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_mangrove_propagule \
    if biome ~ ~ ~ #pots:suiting_for_mangrove run advancement grant @a[distance=..3.5] only pots:come_along_with_me mangrove
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_cherry_sapling \
    if biome ~ ~ ~ #pots:suiting_for_cherry run advancement grant @a[distance=..3.5] only pots:come_along_with_me cherry
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_azalea_bush \
    if biome ~ ~ ~ #pots:suiting_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_flowering_azalea_bush \
    if biome ~ ~ ~ #pots:suiting_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_crimson_fungus \
    if biome ~ ~ ~ #pots:suiting_for_crimson_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me crimson
execute if entity @s[nbt={data:{upgrade: "climate"}}] if block ~ ~ ~ minecraft:potted_warped_fungus \
    if biome ~ ~ ~ #pots:suiting_for_warped_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me warped

execute if score @s tickDelta > 0 var run advancement grant @a[distance=..3.5] only pots:time_to_grow_up
scoreboard players set @s tickDelta 600

# Dropping the result
execute store success score useStorage var run loot insert ~ ~-1 ~ loot pots:empty
execute if score useStorage var matches 1 store result score wereInserted var run function pots:core/insert
execute if score wereInserted var matches 0 run function pots:core/spawn
execute if score useStorage var matches 0 run function pots:core/spawn

function pots:map_particle
setblock ~ ~ ~ flower_pot

execute if entity @s[nbt={data:{upgrade: "flaming"}}] run return run playsound minecraft:item.firecharge.use block @a ~ ~ ~
playsound item.bundle.drop_contents block @a ~ ~ ~