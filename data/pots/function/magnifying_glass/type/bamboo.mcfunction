title @s actionbar [ \
    { text: "\u0004", font: "pots:modifiers" }, \
    { text: "§a Pretentious §7| ", font: "minecraft:default" }, \
    { text: "\u000D", font: "pots:treats" }, \
    { text: "§f Vine", font: "minecraft:default" } \
]
function pots:particle/map { plant: "bamboo" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/bamboo
item modify entity @s weapon.offhand pots:magnifying_glass/bamboo