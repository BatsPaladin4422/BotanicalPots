function pots:trace/start { condition: "if block ~ ~ ~ minecraft:flower_pot if entity @e[type=marker, tag=BotanicalPot, distance=..0.866, nbt=!{ data: { upgrade: none } }]", \
    onHit: "pots:trace/upgrade/removal/remove" }
advancement revoke @s only pots:upgrade/axe