execute anchored eyes run function pots:util/trace { \
    body: "if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=marker, tag=BotanicalPot, distance=..0.866]", \
    onHit: "pots:trace/create/finish" \
}
advancement revoke @s only pots:trigger/create