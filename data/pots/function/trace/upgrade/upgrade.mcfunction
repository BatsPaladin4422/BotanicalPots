## Upgrade
## @macro
## 
## @param upgrade the upgrade to apply.
## @param sherd the sherd to display.

$execute align xyz positioned ~.5 ~.5 ~.5 as @e[type=marker, tag=BotanicalPot, distance=..0.866] \
    if entity @s[nbt={data:{upgrade:"$(upgrade)"}}] run return fail
execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:marker, tag=BotanicalPot] \
    if entity @s[nbt=!{data:{upgrade:"none"}}] run loot spawn ~ ~ ~ loot pots:block/upgrade
$execute align xyz positioned ~.5 ~.5 ~.5 run data merge entity @n[tag=BotanicalPot, type=marker] { data: { upgrade: "$(upgrade)" } }
$execute align xyz positioned ~.5 ~.5 ~.5 as @e[tag=BotanicalPotUpgrade, type=item_display, distance=..0.866] run data \
    merge entity @s { item: { id: "minecraft:$(sherd)_pottery_sherd" }, transformation: { scale: [0.428f, 0.428f, 0.428f] } }
execute align xyz positioned ~.5 ~.5 ~.5 run playsound block.decorated_pot.break player @a ~ ~ ~
execute align xyz positioned ~.5 ~.5 ~.5 run particle item{item:"angler_pottery_sherd"} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
advancement grant @s only pots:upgrade
item modify entity @s weapon.mainhand pots:decrement_player