title @s actionbar [ \
    { text: "\u0009", font: "pots:biomes" }, \
    { text: "§2 Swamps §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:modifiers" }, \
    { text: "§6 Rooted §7| ", font: "minecraft:default" }, \
    { text: "\u0009", font: "pots:treats" }, \
    { text: "§f Lily Pad", font: "minecraft:default" } \
]
function pots:particle/map { plant: "mangrove" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/mangrove
item modify entity @s weapon.offhand pots:magnifying_glass/mangrove