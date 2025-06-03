execute store result score @s var run random value 0..6
execute if score @s var matches 0 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 3 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Timber ", \
                    "", \
                    " §7The potted plant produces ", \
                    " §fwood §7instead of §flogs§7. ", \
                    "", \
                    " §8Right-click a §7Botanical Pot ", \
                    " §8to apply.", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/timber", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/timber" \
                } \
            } \
        }, \
        maxUses: 4, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 1 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 3 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Rich Soil ", \
                    "", \
                    " §7Allows you to grow §fpretentious ", \
                    " §7and §fdelicate §7plants in a pot. ", \
                    "", \
                    " §8Right-click a §7Botanical Pot ", \
                    " §8to apply.", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/rich_soil", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/rich_soil" \
                } \
            } \
        }, \
        maxUses: 4, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 2 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 2 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Shattered ", \
                    "", \
                    " §7Completely §frestricts §7any ", \
                    " §7plant from growing in a pot. ", \
                    "", \
                    " §8Right-click a §7Botanical Pot ", \
                    " §8to apply.", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/shattered", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/shattered" \
                } \
            } \
        }, \
        maxUses: 4, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 3 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 7 }, \
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
        maxUses: 3, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 4 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 10 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:rarity": "rare", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Flaming ", \
                    "", \
                    " §7The potted plant §fburns down ", \
                    " §7the produced logs into charcoal. ", \
                    "", \
                    " §8Right-click a §7Botanical Pot §8to ", \
                    " §8apply.", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/flaming", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/flaming" \
                } \
            } \
        }, \
        maxUses: 3, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 5 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 8 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:rarity": "rare", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Overgrown ", \
                    "", \
                    " §7The potted plant grows 3x as fast, ", \
                    " §7if the pot is located in a §fsuitable ", \
                    " §7for the plant §fbiome§7. ", \
                    "", \
                    " §8Right-click a §7Botanical Pot §8to apply. ", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/overgrown", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/overgrown" \
                } \
            } \
        }, \
        maxUses: 3, \
        priceMultiplier: 0.05 \
    }
execute if score @s var matches 6 run data modify entity @s Offers.Recipes prepend value \
    { \
        buy: { id: "minecraft:emerald", count: 12 }, \
        sell: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                "minecraft:item_name": "Pot Upgrade", \
                "minecraft:rarity": "rare", \
                "minecraft:max_stack_size": 16, \
                "minecraft:lore": [ \
                    "", \
                    " §r§f§l⭐ §r§6Mechanical ", \
                    "", \
                    " §7The potted plant §fautomatically ", \
                    " §freplants §7itself instead of producing ", \
                    " §7a sapling.", \
                    "", \
                    " §8Right-click a §7Botanical Pot §8to apply. ", \
                    "", \
                    "§r§9Botanical Pots " \
                ], \
                "minecraft:item_model": "pots:upgrade/mechanical", \
                "minecraft:custom_data": { \
                    "identifier": "pots:upgrade/mechanical" \
                } \
            } \
        }, \
        maxUses: 2, \
        priceMultiplier: 0.05 \
    }
execute store result score @s var run random value 0..2
execute if score @s var matches 0 run data modify entity @s Offers.Recipes prepend value { buy: { id: "minecraft:emerald" }, sell: { id: "minecraft:clay_ball", count: 8 }, maxUses: 4, priceMultiplier: 0.05 }
tag @s add Processed