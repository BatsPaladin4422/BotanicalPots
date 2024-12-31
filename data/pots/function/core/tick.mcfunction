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
execute if block ~ ~ ~ #pots:requires_rich_soil unless entity @s[nbt={ data:{ upgrade:"rich_soil" } }] run return 0

execute store success score useStorage var run loot insert ~ ~-1 ~ loot pots:empty

# Dropping the result
execute if score useStorage var matches 1 store result score wereInserted var run function pots:core/insert
execute if score wereInserted var matches 0 run function pots:core/spawn
execute if score useStorage var matches 0 run function pots:core/spawn

function pots:map_particle
setblock ~ ~ ~ flower_pot

execute if entity @s[nbt={data:{upgrade: "flaming"}}] run return run playsound minecraft:item.firecharge.use block @a ~ ~ ~
playsound item.bundle.drop_contents block @a ~ ~ ~