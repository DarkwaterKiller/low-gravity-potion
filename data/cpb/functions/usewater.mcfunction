#These commands lower the water level in the cauldron every time a potion is brewed. The reduction is done from lowest to highest because otherwise,
#brewing one potion would drain the whole cauldron

execute at @s if block ~ ~ ~ minecraft:cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron[level=0]
execute at @s if block ~ ~ ~ minecraft:cauldron[level=2] run setblock ~ ~ ~ minecraft:cauldron[level=1]
execute at @s if block ~ ~ ~ minecraft:cauldron[level=3] run setblock ~ ~ ~ minecraft:cauldron[level=2]