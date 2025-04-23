# Speed Modifier
#
# Tries to fetch the speed modifier of the
# potted plant at current location.

execute if block ~ ~ ~ #pots:modifier/potted_delicate_plants run return 200
execute if block ~ ~ ~ #pots:modifier/potted_pretentious_plants run return 150
execute if block ~ ~ ~ #pots:modifier/potted_rooted_plants run return 75
execute if block ~ ~ ~ #pots:modifier/potted_stalwart_plants run return 50
return 100