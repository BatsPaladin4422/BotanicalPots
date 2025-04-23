# Tick
#
# The main tick event handler. Handles
# all logic that needs to happen every tick.

# Two ticks
scoreboard players reset @a[tag=!IsUsingGlass, scores={use=1..}] use
tag @a[tag=IsUsingGlass, scores={use=1..}] remove IsUsingGlass

execute as @e[type=minecraft:villager, nbt={VillagerData: {level: 2, profession: "minecraft:mason"}}, tag=!Processed] run function pots:upgrade/bountiful
execute unless entity @e[tag=BotanicalPot, type=minecraft:marker] run return 0
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run loot spawn ~ ~ ~ loot pots:botanical_pot
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run kill @e[distance=..0.866, tag=BotanicalPotDeco]
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run kill @s
execute as @e[tag=BotanicalPot, type=marker] at @s if block ~ ~ ~ flower_pot run function pots:hopper/check

execute as @e[tag=BotanicalPot, type=minecraft:marker] at @s if block ~ ~ ~ #pots:botanical_pots at @s run function pots:core/tick