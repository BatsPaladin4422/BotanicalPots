title @s actionbar [ \
    { text: "\u0006", font: "pots:biomes" }, \
    { text: "§2 Dark Forest §7| ", font: "minecraft:default" }, \
    { text: "\u0001", font: "pots:modifiers" }, \
    { text: "§c Stalwart §7| ", font: "minecraft:default" }, \
    { text: "\u0006", font: "pots:treats" }, \
    { text: "§f Mushrooms", font: "minecraft:default" } \
]
function pots:particle/map { plant: "dark_oak" }
advancement grant @s only pots:thesis dark_oak
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/dark_oak
item modify entity @s weapon.offhand pots:magnifying_glass/dark_oak