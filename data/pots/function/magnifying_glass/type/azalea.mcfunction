title @s actionbar [ \
    { text: "\u000A", font: "pots:biomes" }, \
    { text: "§a Lush Caves §7| ", font: "minecraft:default" }, \
    { text: "\u0003", font: "pots:modifiers" }, \
    { text: "§e Vulgaris §7| ", font: "minecraft:default" }, \
    { text: "\u000A", font: "pots:treats" }, \
    { text: "§f Spore Blossom", font: "minecraft:default" } \
]
function pots:particle/map { plant: "azalea" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/azalea
item modify entity @s weapon.offhand pots:magnifying_glass/azalea