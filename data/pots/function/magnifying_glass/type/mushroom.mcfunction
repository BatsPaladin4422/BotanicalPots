title @s actionbar [ \
    { text: "\u0004", font: "pots:modifiers" }, \
    { text: "§a Pretentious §7| ", font: "minecraft:default" }, \
    { text: "\u000F", font: "pots:treats" }, \
    { text: "§f Hanging Roots", font: "minecraft:default" } \
]
$function pots:particle/map { plant: "$(mushroom)" }
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/mushroom
item modify entity @s weapon.offhand pots:magnifying_glass/mushroom