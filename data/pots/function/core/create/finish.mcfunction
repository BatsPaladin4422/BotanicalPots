execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["BotanicalPot"], data:{ name: "Botanical Pot", upgrade: "none" }}
execute align xyz run scoreboard players set @n[type=marker, tag=BotanicalPot] growTime 0
execute align xyz run particle happy_villager ~.5 ~.266 ~.5 0.2 0.2 0.2 1 10 force @a
execute align xyz run playsound block.composter.ready player @a ~ ~ ~
item modify entity @s weapon.mainhand pots:decrement_player

execute align xyz run summon minecraft:block_display ~.5 ~.5 ~.5 {Passengers: [ \
    { id: "minecraft:item_display", item: {id: "minecraft:paper", count: 1, components: { "minecraft:item_model": "pots:botanical_pot/base" } }, Tags: ["BotanicalPotDeco"] } \
], block_state: { Name: "minecraft:air" }, Tags: ["BotanicalPotDeco"] }