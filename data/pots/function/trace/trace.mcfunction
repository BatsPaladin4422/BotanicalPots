$execute $(condition) run return run function $(onHit)
$execute positioned ^ ^ ^0.1 if entity @s[distance=..5] run function pots:trace/trace { condition: "$(condition)", onHit: "$(onHit)" }