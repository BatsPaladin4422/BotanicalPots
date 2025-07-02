# Prepend
#
# Prepends the provided $(upgrade) as this wandering trader's third
# trade offer. Up to $(amount) upgrades is sold for $(price) emeralds each.

$data modify entity @s Offers.Recipes[2] set value { \
    buy: { \
        id: "minecraft:emerald", \
        count: $(price) \
    }, \
    sell: { \
        id: "minecraft:paper", \
        count: 1 \
    }, \
    maxUses: $(amount), \
    priceMultiplier: 0.05 \
}
$execute positioned 0.0 -256 0.0 run loot spawn ~ ~ ~ loot pots:definition/upgrade/$(upgrade)
execute positioned 0.0 -256 0.0 run data modify entity @s Offers.Recipes[2].sell.components set from \
    entity @n[type=minecraft:item] Item.components
execute positioned 0.0 -256 0.0 run kill @n[type=minecraft:item]