# Map Particle
#
# Maps the plant at the current position
# to a corresponding particle, and displays it.

execute unless block ~ ~ ~ #pots:botanical_pots run return fail

execute if entity @s[nbt={data: { upgrade: "flaming" }}] run return run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 10 normal

execute if block ~ ~ ~ potted_spruce_sapling run return run particle falling_dust{block_state: "green_terracotta"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_birch_sapling run return run particle falling_dust{block_state: "lime_terracotta"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_jungle_sapling run return run particle falling_dust{block_state: "cactus"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_dark_oak_sapling run return run particle falling_dust{block_state: "green_terracotta"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_cherry_sapling run return run particle falling_dust{block_state: "pink_concrete"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_mangrove_propagule run return run particle falling_dust{block_state: "green_concrete"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal

execute if block ~ ~ ~ potted_warped_fungus run return run particle falling_dust{block_state: "warped_wart_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_crimson_fungus run return run particle falling_dust{block_state: "nether_wart_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal

execute if block ~ ~ ~ potted_bamboo run return run particle falling_dust{block_state: "green_concrete"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_cactus run return run particle falling_dust{block_state: "cactus"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_red_mushroom run return run particle falling_dust{block_state: "red_mushroom_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_brown_mushroom run return run particle falling_dust{block_state: "brown_mushroom_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal

execute if block ~ ~ ~ potted_dandelion run return run particle falling_dust{block_state: "yellow_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_poppy run return run particle falling_dust{block_state: "red_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_blue_orchid run return run particle falling_dust{block_state: "light_blue_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_allium run return run particle falling_dust{block_state: "purpur_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_azure_bluet run return run particle falling_dust{block_state: "white_terracotta"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_red_tulip run return run particle falling_dust{block_state: "red_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_orange_tulip run return run particle falling_dust{block_state: "pumpkin"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_white_tulip run return run particle falling_dust{block_state: "snow_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_pink_tulip run return run particle falling_dust{block_state: "cherry_planks"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_oxeye_daisy run return run particle falling_dust{block_state: "yellow_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_cornflower run return run particle falling_dust{block_state: "blue_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
execute if block ~ ~ ~ potted_lily_of_the_valley run return run particle falling_dust{block_state: "white_wool"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal

# Basically an else block
particle falling_dust{block_state: "moss_block"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal