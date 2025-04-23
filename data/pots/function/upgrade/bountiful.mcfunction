execute store result score @s var run random value 1..4 pots:upgrade/bountiful
execute if score @s var matches 1 run data modify entity @s Offers.Recipes[3] set value \
    { \
        buy: {id: "minecraft:emerald", count: 5}, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Bountiful ", \
                    "", \
                    " §7The potted plant produces a ", \
                    " §7treat twice as often.", \
                    "", \
                    " §8Right-click a §7Botanical Pot ", \
                    " §8to apply.", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/bountiful", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/bountiful" \
                } \
            } \
        }, \
        xp: 20, \
        priceMultiplier: 0.05 \
    }
scoreboard players reset @s var 
tag @s add Processed