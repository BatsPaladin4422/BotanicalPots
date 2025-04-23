title @s actionbar [ \
    { text: "\u0001", font: "pots:biomes" }, \
    { text: "§a Forests§8/§aPlains §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:modifiers" }, \
    { text: "§e Vulgaris §7| ", font: "minecraft:default" }, \
    { text: "\u0001", font: "pots:treats" }, \
    { text: "§f Apple", font: "minecraft:default" } \
]
function pots:particle/map { plant: "oak" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/oak
item modify entity @s weapon.offhand pots:magnifying_glass/oak