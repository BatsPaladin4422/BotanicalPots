title @s actionbar [ \
    { text: "\u0005", font: "pots:modifiers" }, \
    { text: "§b Delicate", font: "minecraft:default" } \
]
$function pots:particle/map { plant: "$(flower)" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/flower
item modify entity @s weapon.offhand pots:magnifying_glass/flower