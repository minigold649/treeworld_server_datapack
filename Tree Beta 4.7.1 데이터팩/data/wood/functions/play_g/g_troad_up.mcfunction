scoreboard players set play GTroad2 200
scoreboard players set time_s GTroad2 20
scoreboard players set time GTroad2 10
scoreboard players add lvl GTroad2 1
execute if score lvl GTroad2 matches 4 run scoreboard players set lvl GTroad2 5
execute if score lvl GTroad2 matches 2 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.65
execute if score lvl GTroad2 matches 2 run setblock -28999997 254 29000039 minecraft:glass
execute if score lvl GTroad2 matches 3 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
execute if score lvl GTroad2 matches 3 run setblock -28999997 257 29000039 minecraft:glass
execute if score lvl GTroad2 matches 5 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute if score lvl GTroad2 matches 5 run setblock -28999997 257 29000036 minecraft:glass
execute if score lvl GTroad2 matches 6 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.8
execute if score lvl GTroad2 matches 6 run setblock -28999997 254 29000036 minecraft:glass
execute if score lvl GTroad2 matches 7 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.85
execute if score lvl GTroad2 matches 7 run setblock -28999997 251 29000036 minecraft:glass
execute if score lvl GTroad2 matches 8 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9
execute if score lvl GTroad2 matches 8 run setblock -28999997 251 29000033 minecraft:glass
execute if score lvl GTroad2 matches 9 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.95
execute if score lvl GTroad2 matches 9 run setblock -28999997 254 29000033 minecraft:glass
execute if score lvl GTroad2 matches 10 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if score lvl GTroad2 matches 10 run fill -28999997 257 29000033 -28999997 251 29000039 minecraft:yellow_stained_glass replace #minecraft:impermeable
execute if score lvl GTroad2 matches 10 run kill @e[tag=GTroadInter2_1]