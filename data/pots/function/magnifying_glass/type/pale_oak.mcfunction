title @s actionbar [ \
    { text: "\u0008", font: "pots:biomes" }, \
    { text: "§7 Pale Garden | ", font: "minecraft:default" }, \
    { text: "\u0001", font: "pots:modifiers" }, \
    { text: "§c Stalwart §7| ", font: "minecraft:default" }, \
    { text: "\u0008", font: "pots:treats" }, \
    { text: "§f Resin Clumps", font: "minecraft:default" } \
]
function pots:particle/map { plant: "pale_oak" }
advancement grant @s only pots:thesis pale_oak
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/pale_oak
item modify entity @s weapon.offhand pots:magnifying_glass/pale_oak