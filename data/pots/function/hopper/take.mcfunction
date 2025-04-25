# Take
# » Macro Function
#
# Takes an item from the specified slot of
# a hopper, and uses it to "re-plant" the
# pot.
#
# Required Args: (slot) - slot to take an item from.

$execute if items block ~ ~1 ~ container.$(slot) minecraft:oak_sapling run setblock ~ ~ ~ minecraft:potted_oak_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:spruce_sapling run setblock ~ ~ ~ minecraft:potted_spruce_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:birch_sapling run setblock ~ ~ ~ minecraft:potted_birch_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:jungle_sapling run setblock ~ ~ ~ minecraft:potted_jungle_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:acacia_sapling run setblock ~ ~ ~ minecraft:potted_acacia_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:dark_oak_sapling run setblock ~ ~ ~ minecraft:potted_dark_oak_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:cherry_sapling run setblock ~ ~ ~ minecraft:potted_cherry_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:pale_oak_sapling run setblock ~ ~ ~ minecraft:potted_pale_oak_sapling
$execute if items block ~ ~1 ~ container.$(slot) minecraft:azalea run setblock ~ ~ ~ minecraft:potted_azalea_bush
$execute if items block ~ ~1 ~ container.$(slot) minecraft:flowering_azalea run setblock ~ ~ ~ minecraft:potted_flowering_azalea_bush
$execute if items block ~ ~1 ~ container.$(slot) minecraft:mangrove_propagule run setblock ~ ~ ~ minecraft:potted_mangrove_propagule

$execute if items block ~ ~1 ~ container.$(slot) minecraft:bamboo run setblock ~ ~ ~ minecraft:potted_bamboo
$execute if items block ~ ~1 ~ container.$(slot) minecraft:fern run setblock ~ ~ ~ minecraft:potted_fern

$execute if items block ~ ~1 ~ container.$(slot) minecraft:crimson_fungus run setblock ~ ~ ~ minecraft:potted_crimson_fungus
$execute if items block ~ ~1 ~ container.$(slot) minecraft:warped_fungus run setblock ~ ~ ~ minecraft:potted_warped_fungus

$execute if items block ~ ~1 ~ container.$(slot) minecraft:cactus run setblock ~ ~ ~ minecraft:potted_cactus
$execute if items block ~ ~1 ~ container.$(slot) minecraft:red_mushroom run setblock ~ ~ ~ minecraft:potted_red_mushroom
$execute if items block ~ ~1 ~ container.$(slot) minecraft:brown_mushroom run setblock ~ ~ ~ minecraft:potted_brown_mushroom

$execute if items block ~ ~1 ~ container.$(slot) minecraft:dandelion run setblock ~ ~ ~ minecraft:potted_dandelion
$execute if items block ~ ~1 ~ container.$(slot) minecraft:poppy run setblock ~ ~ ~ minecraft:potted_poppy
$execute if items block ~ ~1 ~ container.$(slot) minecraft:blue_orchid run setblock ~ ~ ~ minecraft:potted_blue_orchid
$execute if items block ~ ~1 ~ container.$(slot) minecraft:allium run setblock ~ ~ ~ minecraft:potted_allium
$execute if items block ~ ~1 ~ container.$(slot) minecraft:azure_bluet run setblock ~ ~ ~ minecraft:potted_azure_bluet
$execute if items block ~ ~1 ~ container.$(slot) minecraft:red_tulip run setblock ~ ~ ~ minecraft:potted_red_tulip
$execute if items block ~ ~1 ~ container.$(slot) minecraft:orange_tulip run setblock ~ ~ ~ minecraft:potted_orange_tulip
$execute if items block ~ ~1 ~ container.$(slot) minecraft:white_tulip run setblock ~ ~ ~ minecraft:potted_white_tulip
$execute if items block ~ ~1 ~ container.$(slot) minecraft:pink_tulip run setblock ~ ~ ~ minecraft:potted_pink_tulip
$execute if items block ~ ~1 ~ container.$(slot) minecraft:oxeye_daisy run setblock ~ ~ ~ minecraft:potted_oxeye_daisy
$execute if items block ~ ~1 ~ container.$(slot) minecraft:cornflower run setblock ~ ~ ~ minecraft:potted_cornflower
$execute if items block ~ ~1 ~ container.$(slot) minecraft:lily_of_the_valley run setblock ~ ~ ~ minecraft:potted_lily_of_the_valley

$item modify block ~ ~1 ~ container.$(slot) pots:decrement