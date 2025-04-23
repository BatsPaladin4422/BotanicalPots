execute if entity @s[nbt={data:{upgrade: "sprout"}}] run return run random value 1..819200
execute if entity @s[nbt={data:{upgrade: "overgrown"}}] if function pots:util/matches_biome run return run random value 1..409600
return run random value 1..1228800