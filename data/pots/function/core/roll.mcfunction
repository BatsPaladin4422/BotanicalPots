## # Roll
## Rolls a "dice", and stores the outcome in the **var** score.
## The bounds of the random value are determined by the upgrade.


execute if entity @s[nbt={data:{upgrade: "sprout"}}] store result score @s var run return run random value 1..8192
execute if entity @s[nbt={data:{upgrade: "climate"}}] if function pots:core/matches_biome store result score @s var run return run random value 1..4096
execute store result score @s var run random value 1..12288