# Requires Rich Soil
#
# Determines whether the potted plant at current location
# requires the "Rich Soil" upgrade to grow.

execute if block ~ ~ ~ #pots:modifier/potted_pretentious_plants run return 1
execute if block ~ ~ ~ #pots:modifier/potted_delicate_plants run return 1
return 0