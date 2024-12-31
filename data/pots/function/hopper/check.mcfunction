# Check
#
# Checks whether the block above the current position
# is a hopper, and if it is, whether one of its slots
# contains an item to "re-plant" the pot.

execute unless block ~ ~1 ~ hopper[facing=down] run return 0
execute unless block ~ ~1 ~ hopper[enabled=true] run return 0
execute unless items block ~ ~1 ~ container.* * run return 0
scoreboard players set found var 0

execute store result score found var positioned ~ ~1 ~ run function pots:hopper/check_slot {"slot": 0}
execute if score found var matches 1 run return run function pots:hopper/take {"slot": 0}

execute store result score found var positioned ~ ~1 ~ run function pots:hopper/check_slot {"slot": 1}
execute if score found var matches 1 run return run function pots:hopper/take {"slot": 1}

execute store result score found var positioned ~ ~1 ~ run function pots:hopper/check_slot {"slot": 2}
execute if score found var matches 1 run return run function pots:hopper/take {"slot": 2}

execute store result score found var positioned ~ ~1 ~ run function pots:hopper/check_slot {"slot": 3}
execute if score found var matches 1 run return run function pots:hopper/take {"slot": 3}

execute store result score found var positioned ~ ~1 ~ run function pots:hopper/check_slot {"slot": 4}
execute if score found var matches 1 run return run function pots:hopper/take {"slot": 4}
