advancement revoke @s only pots:trigger/magnifying_glass
scoreboard players add @s use 1

execute if score @s use matches 10 run title @s actionbar "§7Investigating."
execute if score @s use matches 20 run title @s actionbar "§7Investigating..."
execute if score @s use matches 30 run title @s actionbar "§7Investigating....."
execute if score @s use matches 40 anchored eyes run function pots:util/trace { body: "unless block ~ ~ ~ #pots:magnifying_glass_ignores", onHit: "pots:magnifying_glass/map_plant" }
execute if score @s use matches 60 run scoreboard players reset @s use

tag @s add IsUsingGlass