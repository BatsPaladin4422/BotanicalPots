title @s actionbar [ \
    { text: "\u0004", font: "pots:biomes" }, \
    { text: "§2 Jungle §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:modifiers" }, \
    { text: "§6 Rooted §7| ", font: "minecraft:default" }, \
    { text: "\u0004", font: "pots:treats" }, \
    { text: "§f Cocoa Beans", font: "minecraft:default" } \
]
function pots:particle/map { plant: "jungle" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/jungle
item modify entity @s weapon.offhand pots:magnifying_glass/jungle