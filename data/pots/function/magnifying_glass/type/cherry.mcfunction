title @s actionbar [ \
    { text: "\u0007", font: "pots:biomes" }, \
    { text: "§d Cherry Grove §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:modifiers" }, \
    { text: "§e Vulgaris §7| ", font: "minecraft:default" }, \
    { text: "\u0007", font: "pots:treats" }, \
    { text: "§f Small Flowers", font: "minecraft:default" } \
]
function pots:particle/map { plant: "cherry" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/cherry
item modify entity @s weapon.offhand pots:magnifying_glass/cherry