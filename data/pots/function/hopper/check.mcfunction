# Check
#
# Checks whether the block above the current position
# is a hopper, and if it is, whether one of its slots
# contains an item to "re-plant" the pot.

execute unless block ~ ~1 ~ hopper[facing=down] run return 0
execute unless block ~ ~1 ~ hopper[enabled=true] run return 0
execute unless items block ~ ~1 ~ container.* * run return 0

execute if items block ~ ~1 ~ container.0 #pots:plantable run return run function pots:hopper/take { slot: 0 }
execute if items block ~ ~1 ~ container.1 #pots:plantable run return run function pots:hopper/take { slot: 1 }
execute if items block ~ ~1 ~ container.2 #pots:plantable run return run function pots:hopper/take { slot: 2 }
execute if items block ~ ~1 ~ container.3 #pots:plantable run return run function pots:hopper/take { slot: 3 }
execute if items block ~ ~1 ~ container.4 #pots:plantable run return run function pots:hopper/take { slot: 4 }
