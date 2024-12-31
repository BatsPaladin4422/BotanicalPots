## Trace
##
## We can hope that this works.
## 
## @param upgrade the upgrade to apply. what if this line was like fucking lOOOONG
## @param sherdandthisthiscouldalsobelongaf the sherd to display.

$execute if block ~ ~ ~ flower_pot if entity @e[type=marker, tag=BotanicalPot, distance=..0.866] run return run function pots:trace/upgrade/upgrade { upgrade: "$(upgrade)", sherd: "$(sherd)" }
$execute positioned ^ ^ ^0.1 if entity @s[distance=..5] run function pots:trace/upgrade/trace { upgrade: "$(upgrade)", sherd: "$(sherd)" }