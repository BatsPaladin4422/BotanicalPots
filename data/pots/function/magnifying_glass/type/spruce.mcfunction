title @s actionbar [ \
    { text: "\u0002", font: "pots:biomes" }, \
    { text: "§2 Taiga §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:modifiers" }, \
    { text: "§6 Rooted §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:treats" }, \
    { text: "§f Sweet Berries", font: "minecraft:default" } \
]
function pots:particle/map { plant: "spruce" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/spruce
item modify entity @s weapon.offhand pots:magnifying_glass/spruce