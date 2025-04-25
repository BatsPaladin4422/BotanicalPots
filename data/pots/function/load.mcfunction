scoreboard objectives add var dummy
scoreboard objectives add growTime dummy
scoreboard objectives add use dummy

data modify storage pots:particles entries set value { \
    oak: { state: "minecraft:moss_block" }, \
    spruce: { state: "minecraft:green_terracotta" }, \
    birch: { state: "minecraft:lime_terracotta" }, \
    jungle: { state: "minecraft:cactus" }, \
    acacia: { state: "minecraft:moss_block" }, \
    dark_oak: { state: "minecraft:green_terracotta" }, \
    cherry: { state: "minecraft:pink_concrete" }, \
    pale_oak: { state: "light_gray_concrete_powder" }, \
    azalea: { state: "minecraft:moss_block" }, \
    mangrove: { state: "minecraft:green_concrete" }, \
    \
    warped: { state: "minecraft:warped_wart_block" }, \
    crimson: { state: "minecraft:nether_wart_block" }, \
    \
    bamboo: { state: "minecraft:green_concrete" }, \
    cactus: { state: "minecraft:cactus" }, \
    red_mushroom: { state: "minecraft:red_mushroom_block" }, \
    brown_mushroom: { state: "minecraft:brown_mushroom_block" }, \
    fern: { state: "minecraft:moss_block" }, \
    \
    dandelion: { state: "minecraft:yellow_wool" }, \
    poppy: { state: "minecraft:red_wool" }, \
    blue_orchid: { state: "minecraft:light_blue_wool" }, \
    allium: { state: "minecraft:purpur_block" }, \
    azure_bluet: { state: "minecraft:white_terracotta" }, \
    red_tulip: { state: "minecraft:red_wool" }, \
    orange_tulip: { state: "minecraft:pumpkin" }, \
    white_tulip: { state: "minecraft:snow_block" }, \
    pink_tulip: { state: "minecraft:cherry_planks" }, \
    oxeye_daisy: { state: "minecraft:yellow_wool" }, \
    cornflower: { state: "minecraft:blue_wool" }, \
    lily_of_the_valley: { state: "minecraft:white_wool" } \
}

kill @e[tag=BotanicalPotUpgrade]
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "climate"}}] run \
    data modify entity @s data.upgrade set value "overgrown"
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "plentiful"}}] run \
    data modify entity @s data.upgrade set value "bountiful"