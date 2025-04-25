execute align xyz positioned ~.5 ~.5 ~.5 as @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    if entity @s[nbt={data: {upgrade: "none"}}] run return fail

# Dropping the previous upgrade.
execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:marker, tag=BotanicalPot] run loot spawn ~ ~ ~ loot pots:upgrade
# Resetting the upgrade and model.
execute align xyz positioned ~.5 ~.5 ~.5 run data modify entity @n[type=minecraft:marker, tag=BotanicalPot] \
    data.upgrade set value "none"
execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:item_display, tag=BotanicalPotDeco] run data modify entity @s \
    item.components.minecraft:item_model set value "pots:botanical_pot/base"

# SFX
execute align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:block.decorated_pot.break player @a ~ ~ ~
execute align xyz positioned ~.5 ~.5 ~.5 run particle \
    minecraft:item{item: {id: "minecraft:paper", components: { "minecraft:item_model": "pots:upgrade/base" }}} \
    ~ ~ ~ 0.2 0.2 0.2 0 10 normal