# Tick
#
# The main tick event handler. Handles
# all logic that needs to happen every tick. 

execute unless entity @e[tag=BotanicalPot, type=minecraft:marker] run return 0
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run loot spawn ~ ~ ~ loot pots:block/botanical_pot
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run loot spawn ~ ~ ~ loot pots:block/upgrade
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run kill @e[distance=..0.866, tag=BotanicalPotDeco]
execute as @e[tag=BotanicalPot, type=marker] at @s unless block ~ ~ ~ #flower_pots run kill @s
execute as @e[tag=BotanicalPot, type=marker] at @s if block ~ ~ ~ flower_pot run function pots:hopper/check

execute store result score RTS var run gamerule randomTickSpeed
execute if score RTS var matches 0 run return 0
execute as @e[tag=BotanicalPot, type=minecraft:marker] at @s if block ~ ~ ~ #pots:botanical_pots at @s run function pots:core/tick