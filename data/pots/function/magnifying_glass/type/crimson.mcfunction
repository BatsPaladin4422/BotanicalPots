title @s actionbar [ \
    { text: "\u000B", font: "pots:biomes" }, \
    { text: "§c Crimson Forest §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:modifiers" }, \
    { text: "§6 Rooted §7| ", font: "minecraft:default" }, \
    { text: "\u000B", font: "pots:treats" }, \
    { text: "§f Nether Wart", font: "minecraft:default" } \
]
function pots:particle/map { plant: "crimson" }
advancement grant @s only pots:thesis crimson
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/crimson
item modify entity @s weapon.offhand pots:magnifying_glass/crimson