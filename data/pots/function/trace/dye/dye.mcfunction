execute if items entity @s weapon.mainhand white_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"white_concrete"}}
execute if items entity @s weapon.mainhand light_gray_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"light_gray_concrete"}}
execute if items entity @s weapon.mainhand gray_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"gray_concrete"}}
execute if items entity @s weapon.mainhand black_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"black_concrete"}}
execute if items entity @s weapon.mainhand brown_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"brown_concrete"}}
execute if items entity @s weapon.mainhand red_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"red_concrete"}}
execute if items entity @s weapon.mainhand orange_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"orange_concrete"}}
execute if items entity @s weapon.mainhand yellow_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"yellow_concrete"}}
execute if items entity @s weapon.mainhand lime_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"lime_concrete"}}
execute if items entity @s weapon.mainhand green_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"green_concrete"}}
execute if items entity @s weapon.mainhand cyan_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"cyan_concrete"}}
execute if items entity @s weapon.mainhand light_blue_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"light_blue_concrete"}}
execute if items entity @s weapon.mainhand blue_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"blue_concrete"}}
execute if items entity @s weapon.mainhand purple_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"purple_concrete"}}
execute if items entity @s weapon.mainhand magenta_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"magenta_concrete"}}
execute if items entity @s weapon.mainhand pink_dye as @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run data merge entity @s {block_state: {Name:"pink_concrete"}}

playsound item.dye.use player @a
item modify entity @s weapon.mainhand pots:decrement_player