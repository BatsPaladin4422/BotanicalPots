execute align xyz positioned ~.5 ~.5 ~.5 as @e[type=item_display, tag=BotanicalPotUpgrade, distance=..0.866] run data \
    merge entity @s { transformation: { scale: [0.0f, 0.0f, 0.0f] } }

execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=minecraft:marker, tag=BotanicalPot] \
    run loot spawn ~ ~ ~ loot pots:block/upgrade
execute align xyz positioned ~.5 ~.5 ~.5 run data merge entity @n[type=minecraft:marker, tag=BotanicalPot] { data: { upgrade: "none" } }

execute align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:item.shield.break player @a ~ ~ ~
execute align xyz positioned ~.5 ~.5 ~.5 run particle item{item:"minecraft:angler_pottery_sherd"} ~ ~ ~ 0.3 0.3 0.3 0 10 normal