$execute $(body) run return run function $(onHit)
$execute positioned ^ ^ ^.1 if entity @s[distance=..5] run function pots:util/trace { body: "$(body)", onHit: "$(onHit)" }