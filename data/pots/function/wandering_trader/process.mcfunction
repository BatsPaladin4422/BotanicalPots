execute store result score @s var run random value 0..6
execute if score @s var matches 0 run function pots:util/modify_trade { slot: 3,  upgrade: "timber", price: 3, amount: 4 }
execute if score @s var matches 1 run function pots:util/modify_trade { slot: 3,  upgrade: "rich_soil", price: 3, amount: 4 }
execute if score @s var matches 2 run function pots:util/modify_trade { slot: 3,  upgrade: "shattered", price: 2, amount: 4 }
execute if score @s var matches 3 run function pots:util/modify_trade { slot: 3,  upgrade: "bountiful", price: 7, amount: 3 }
execute if score @s var matches 4 run function pots:util/modify_trade { slot: 3,  upgrade: "flaming", price: 10, amount: 3 }
execute if score @s var matches 5 run function pots:util/modify_trade { slot: 3,  upgrade: "overgrown", price: 8, amount: 3 }
execute if score @s var matches 6 run function pots:util/modify_trade { slot: 3,  upgrade: "mechanical", price: 12, amount: 2 }
execute store result score @s var run random value 0..2
execute if score @s var matches 0 run data modify entity @s Offers.Recipes append value { \
    buy: { \
        id: "minecraft:emerald", \
        count: 1 \
    }, \
    sell: { \
        id: "minecraft:clay_ball", \
        count: 8 \
    }, \
    maxUses: 4, \
    priceMultiplier: 0.05 \
}
scoreboard players reset @s var
tag @s add Processed