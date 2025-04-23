title @s actionbar [ \
    { text: "\u0003", font: "pots:biomes" }, \
    { text: "§a Birch Forests§8/§aMeadow §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:modifiers" }, \
    { text: "§e Vulgaris §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:treats" }, \
    { text: "§f Honeycomb", font: "minecraft:default" } \
]
function pots:particle/map { plant: "birch" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/birch
item modify entity @s weapon.offhand pots:magnifying_glass/birch