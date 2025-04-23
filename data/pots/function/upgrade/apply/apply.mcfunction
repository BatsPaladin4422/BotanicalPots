# Apply
#
# Applies the $(upgrade) to the Botanical Pot at
# the current position, updating the model and
# the data.uprade tag.

# Return if the upgrade is already applied.
$execute align xyz positioned ~.5 ~.5 ~.5 as @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    if entity @s[nbt={data: {upgrade: "$(upgrade)"}}] run return fail

# Dropping the previous upgrade.
execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:marker, tag=BotanicalPot] run loot spawn ~ ~ ~ loot pots:upgrade
# Setting the new upgrade and model.
$execute align xyz positioned ~.5 ~.5 ~.5 run data modify entity @n[type=minecraft:marker, tag=BotanicalPot] \
    data.upgrade set value "$(upgrade)"
$execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:item_display, tag=BotanicalPotDeco] run data modify entity @s \
    item.components.minecraft:item_model set value "pots:botanical_pot/$(upgrade)"

# SFX
execute align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:block.decorated_pot.break player @a ~ ~ ~
$execute align xyz positioned ~.5 ~.5 ~.5 run particle \
    minecraft:item{item: {id: "minecraft:paper", components: { "minecraft:item_model": "pots:upgrade/$(upgrade)" }}} \
    ~ ~ ~ 0.2 0.2 0.2 0 10 normal
# Decrementing the item, since the upgrade was applied.
item modify entity @s weapon.mainhand pots:decrement_player