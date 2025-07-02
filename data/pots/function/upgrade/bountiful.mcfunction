execute store result score @s var run random value 1..4 pots:upgrade/bountiful
execute if score @s var matches 1 run function pots:util/modify_trade { slot: 3, upgrade: "bountiful", price: 5, amount: 4 }
scoreboard players reset @s var
tag @s add Processed