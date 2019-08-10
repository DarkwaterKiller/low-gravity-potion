#Log a message to the chat to all player within 5 blocks that a potion has been brewed
execute at @s as @s run tellraw @a[distance=..5] {"text":"Potion of Low Gravity Brewed", "color":"light_purple"}

#Lower the water level of the cauldron
execute at @s as @s run function cpb:usewater

#If redstone isn't used during the brewing process, create a normal length potion. (1:00 long)
execute at @s unless entity @e[type=item, distance=..1, nbt={Item: { id: "minecraft:redstone"}} ] run summon minecraft:item ~ ~ ~ {Item: { id:"minecraft:potion", Count:1b, tag: { CustomPotionEffects:[{Id:8,Amplifier:1,Duration:1200,ShowParticles:0b},{Id:28,Duration:1200,ShowParticles:1b}],CustomPotionColor:13750737,display:{Name:'{"text":"Low Gravity Potion", "italic":false}' } } } }

#If redstone IS used during the brewing process, create an extended lenght potion. (3:00 long)
execute at @s if entity @e[type=item, distance=..1, nbt={Item: { id: "minecraft:redstone"}} ] run summon minecraft:item ~ ~ ~ {Item: { id:"minecraft:potion", Count:1b, tag: { CustomPotionEffects:[{Id:8,Amplifier:1,Duration:3600,ShowParticles:0b},{Id:28,Duration:3600,ShowParticles:1b}],CustomPotionColor:13750737,display:{Name:'{"text":"Low Gravity Potion", "italic":false, "color":"red"}' } } } }

#Kill the ingredient items (kills every item within 1 block range that isn't a potion)
execute at @s run kill @e[type=item, distance=..1, nbt=!{Item: { id: "minecraft:potion"}}]
#Kill the mundane potion
kill @s