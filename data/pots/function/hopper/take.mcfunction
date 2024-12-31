# Take
# » Macro Function
#
# Takes an item from the specified slot of
# a hopper, and uses it to "re-plant" the
# pot.
#
# Required Args: (slot) - slot to take an item from.

$execute if items block ~ ~1 ~ container.$(slot) oak_sapling run setblock ~ ~ ~ potted_oak_sapling
$execute if items block ~ ~1 ~ container.$(slot) spruce_sapling run setblock ~ ~ ~ potted_spruce_sapling
$execute if items block ~ ~1 ~ container.$(slot) birch_sapling run setblock ~ ~ ~ potted_birch_sapling
$execute if items block ~ ~1 ~ container.$(slot) jungle_sapling run setblock ~ ~ ~ potted_jungle_sapling
$execute if items block ~ ~1 ~ container.$(slot) acacia_sapling run setblock ~ ~ ~ potted_acacia_sapling
$execute if items block ~ ~1 ~ container.$(slot) dark_oak_sapling run setblock ~ ~ ~ potted_dark_oak_sapling
$execute if items block ~ ~1 ~ container.$(slot) cherry_sapling run setblock ~ ~ ~ potted_cherry_sapling
$execute if items block ~ ~1 ~ container.$(slot) azalea run setblock ~ ~ ~ potted_azalea_bush
$execute if items block ~ ~1 ~ container.$(slot) flowering_azalea run setblock ~ ~ ~ potted_flowering_azalea_bush
$execute if items block ~ ~1 ~ container.$(slot) mangrove_propagule run setblock ~ ~ ~ potted_mangrove_propagule

$execute if items block ~ ~1 ~ container.$(slot) bamboo run setblock ~ ~ ~ potted_bamboo

$execute if items block ~ ~1 ~ container.$(slot) crimson_fungus run setblock ~ ~ ~ potted_crimson_fungus
$execute if items block ~ ~1 ~ container.$(slot) warped_fungus run setblock ~ ~ ~ potted_warped_fungus

$execute if items block ~ ~1 ~ container.$(slot) cactus run setblock ~ ~ ~ potted_cactus
$execute if items block ~ ~1 ~ container.$(slot) red_mushroom run setblock ~ ~ ~ potted_red_mushroom
$execute if items block ~ ~1 ~ container.$(slot) brown_mushroom run setblock ~ ~ ~ potted_brown_mushroom

$execute if items block ~ ~1 ~ container.$(slot) dandelion run setblock ~ ~ ~ potted_dandelion
$execute if items block ~ ~1 ~ container.$(slot) poppy run setblock ~ ~ ~ potted_poppy
$execute if items block ~ ~1 ~ container.$(slot) blue_orchid run setblock ~ ~ ~ potted_blue_orchid
$execute if items block ~ ~1 ~ container.$(slot) allium run setblock ~ ~ ~ potted_allium
$execute if items block ~ ~1 ~ container.$(slot) azure_bluet run setblock ~ ~ ~ potted_azure_bluet
$execute if items block ~ ~1 ~ container.$(slot) red_tulip run setblock ~ ~ ~ potted_red_tulip
$execute if items block ~ ~1 ~ container.$(slot) orange_tulip run setblock ~ ~ ~ potted_orange_tulip
$execute if items block ~ ~1 ~ container.$(slot) white_tulip run setblock ~ ~ ~ potted_white_tulip
$execute if items block ~ ~1 ~ container.$(slot) pink_tulip run setblock ~ ~ ~ potted_pink_tulip
$execute if items block ~ ~1 ~ container.$(slot) oxeye_daisy run setblock ~ ~ ~ potted_oxeye_daisy
$execute if items block ~ ~1 ~ container.$(slot) cornflower run setblock ~ ~ ~ potted_cornflower
$execute if items block ~ ~1 ~ container.$(slot) lily_of_the_valley run setblock ~ ~ ~ potted_lily_of_the_valley

$item modify block ~ ~1 ~ container.$(slot) pots:decrement