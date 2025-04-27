title @s actionbar [ \
    { text: "\u0005", font: "pots:biomes" }, \
    { text: "§a Savanna §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:modifiers" }, \
    { text: "§e Vulgaris §7| ", font: "minecraft:default" }, \
    { text: "\u0005", font: "pots:treats" }, \
    { text: "§f Armadillo Scute", font: "minecraft:default" } \
]
function pots:particle/map { plant: "acacia" }
advancement grant @s only pots:thesis acacia
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/acacia
item modify entity @s weapon.offhand pots:magnifying_glass/acacia