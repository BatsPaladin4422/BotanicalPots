execute anchored eyes run function pots:upgrade/trace { \
    body: "if block ~ ~ ~ minecraft:composter align xyz", \
    position: "~.5 ~1.25 ~.5", \
    upgrade: "rich_soil" \
}
advancement revoke @s only pots:trigger/upgrade/rich_soil