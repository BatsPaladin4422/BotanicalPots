# Tick

# Rolls a "dice", and based on the outcome
# either does nothing, or triggers the sapling
# to grow.

execute if entity @s[nbt={data: {upgrade: "shattered"}}] run return 0
execute if function pots:util/requires_rich_soil unless entity @s[nbt={data: {upgrade: "rich_soil"}}] run return 0

scoreboard players add @s growTime 1

# Rolling the dice, and modifying the result
execute store result score cap var run gamerule randomTickSpeed
execute if score cap var matches 0 run return 0
execute store result score modifier var run function pots:util/fetch_speed_modifier
execute store result score roll var run function pots:core/roll
scoreboard players operation cap var *= modifier var
execute if score roll var > cap var run return 0

# Triggering advancements
execute if entity @s[nbt={data: {upgrade: "flaming"}}] if block ~ ~ ~ minecraft:potted_crimson_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames
execute if entity @s[nbt={data: {upgrade: "flaming"}}] if block ~ ~ ~ minecraft:potted_warped_fungus run \
    advancement grant @a[distance=..3.5] only pots:from_the_flames

# Come along with me
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me oak
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_spruce_sapling \
    if biome ~ ~ ~ #pots:suitable_for_spruce run advancement grant @a[distance=..3.5] only pots:come_along_with_me spruce
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_birch_sapling \
    if biome ~ ~ ~ #pots:suitable_for_birch run advancement grant @a[distance=..3.5] only pots:come_along_with_me birch
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_jungle_sapling \
    if biome ~ ~ ~ #pots:suitable_for_jungle run advancement grant @a[distance=..3.5] only pots:come_along_with_me jungle
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_acacia_sapling \
    if biome ~ ~ ~ #pots:suitable_for_acacia run advancement grant @a[distance=..3.5] only pots:come_along_with_me acacia
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_dark_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_dark_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me dark_oak
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_mangrove_propagule \
    if biome ~ ~ ~ #pots:suitable_for_mangrove run advancement grant @a[distance=..3.5] only pots:come_along_with_me mangrove
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_cherry_sapling \
    if biome ~ ~ ~ #pots:suitable_for_cherry run advancement grant @a[distance=..3.5] only pots:come_along_with_me cherry
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_pale_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_pale_oak run advancement grant @a[distance=..3.5] only pots:come_along_with_me pale_oak
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_azalea_bush \
    if biome ~ ~ ~ #pots:suitable_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_flowering_azalea_bush \
    if biome ~ ~ ~ #pots:suitable_for_azalea run advancement grant @a[distance=..3.5] only pots:come_along_with_me azalea
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_crimson_fungus \
    if biome ~ ~ ~ #pots:suitable_for_crimson_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me crimson
execute if entity @s[nbt={data: {upgrade: "overgrown"}}] if block ~ ~ ~ minecraft:potted_warped_fungus \
    if biome ~ ~ ~ #pots:suitable_for_warped_fungus run advancement grant @a[distance=..3.5] only pots:come_along_with_me warped

# Flowstate + Rooted-Down
execute if score @s growTime matches ..40 run advancement grant @a[distance=..3.5] only pots:flowstate
execute if score @s growTime matches 24000.. run advancement grant @a[distance=..3.5] only pots:rooted
scoreboard players reset @s growTime

# Dropping the result
execute store success score useStorage var run loot insert ~ ~-1 ~ loot pots:empty
execute if score useStorage var matches 1 store result score wereInserted var run function pots:core/insert
execute if score wereInserted var matches 0 run function pots:core/spawn
execute if score useStorage var matches 0 run function pots:core/spawn

# Dropping the Overgrown upgrade
execute store result score roll var run random value 1..100
execute if score roll var matches 1 if function pots:util/matches_biome if score useStorage var matches 1 store result score wereInserted var run loot insert ~ ~-1 ~ loot pots:upgrade/overgrown
execute if score roll var matches 1 if function pots:util/matches_biome if score wereInserted var matches 0 align xyz run loot spawn ~.5 ~.5 ~.5 loot pots:upgrade/overgrown
execute if score roll var matches 1 if function pots:util/matches_biome if score useStorage var matches 0 align xyz run loot spawn ~.5 ~.5 ~.5 loot pots:upgrade/overgrown

# Resetting the scores
scoreboard players reset wereInserted var
scoreboard players reset useStorage var
scoreboard players reset roll var
scoreboard players reset cap var
scoreboard players reset modifier var

execute if entity @s[nbt={data: {upgrade: "flaming"}}] run playsound minecraft:item.firecharge.use block @a ~ ~ ~
execute unless entity @s[nbt={data: {upgrade: "flaming"}}] run playsound item.bundle.drop_contents block @a ~ ~ ~

execute as @s run function pots:particle/map_pot
# The best way to replant the pot is to not do anything.
execute unless entity @s[nbt={data: {upgrade: "mechanical"}}] run setblock ~ ~ ~ flower_pot