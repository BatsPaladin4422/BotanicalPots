title @s actionbar [ \
    { text: "\u000C", font: "pots:biomes" }, \
    { text: "§3 Warped Forest §7| ", font: "minecraft:default" }, \
    { text: "\u0002", font: "pots:modifiers" }, \
    { text: "§6 Rooted §7| ", font: "minecraft:default" }, \
    { text: "\u000C", font: "pots:treats" }, \
    { text: "§f Shroomlight", font: "minecraft:default" } \
]
function pots:particle/map { plant: "warped" }
advancement grant @s only pots:thesis warped
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/warped
item modify entity @s weapon.offhand pots:magnifying_glass/warped