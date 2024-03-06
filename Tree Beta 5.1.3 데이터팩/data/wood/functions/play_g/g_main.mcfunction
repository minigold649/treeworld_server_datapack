# 자라나라 나무! [1]
execute as @e[tag=GTreeInter1] on target run scoreboard players set @s GTree2 1
execute as @e[tag=GTreeInter1] run data remove entity @s interaction
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"\n\n\n\n\n\n\n-----------------------------------------------------\n","color":"#abffab"}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"자라나라 나무!\n","color":"aqua","bold":true}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"나무의 원목갯수에 따라 금조각이 지급됩니다!","color":"#abffab","bold":true}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"(원목 1개 = 금조각 2개)\n","color":"gray","bold":true}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"80% : 일반나무\n20% : 세계수","color":"#abffab","bold":true}, {"text":" (일반나무랑 비슷할 수 있음)","color":"gray"}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"\n비용 : 도박티켓 4개\n","color":"gold","bold":true}]
execute as @a[scores={GTree2=1}] run tellraw @s [{"text":"-----------------------------------------------------","color":"#abffab"}]
execute as @a[scores={GTree2=1}] run scoreboard players set @s GTree2 0

execute as @a[scores={playG=1}] if entity @e[tag=GTreeInter2] run scoreboard players set @s playG 0
execute as @e[tag=GTreeInter2] on target run scoreboard players set @s playGTree 1
execute as @e[tag=GTreeInter2] on target unless score @s playG > 0 num run scoreboard players set @s Gok 1
execute as @e[tag=GTreeInter2] on target unless score @s playG > 0 num run scoreboard players set @s playG 1
execute as @e[tag=GTreeInter2] run data remove entity @s interaction
execute as @a[scores={playGTree=1}] unless score @s playG matches 1 run tellraw @s {"text":"다른 게임을 플레이하고 있습니다.","color":"red"}
execute as @a[scores={playGTree=1}] at @s unless score @s playG matches 1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTree=1}] at @s unless score @s playG matches 1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTree=1}] unless score @s playG matches 1 run scoreboard players set @s playGTree 0
execute as @a[scores={playGTree=1}] if score @s playG matches 1 if score @s Gok matches 1 store result score @s Gticket run clear @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 0
execute as @a[scores={playGTree=1}] if score @s playG matches 1 if score @s Gok matches 1 run scoreboard players set @s Gok 0
execute as @a[scores={Gticket=4..}] if score @s playGTree matches 1 if score @s playG matches 1 run scoreboard players set @s GTree 3
execute as @a[scores={Gticket=0..3}] if score @s playGTree matches 1 if score @s playG matches 1 run tellraw @s {"text":"도박티켓 부족!","color":"red"}
execute as @a[scores={Gticket=0..3}] if score @s playGTree matches 1 if score @s playG matches 1 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..3}] if score @s playGTree matches 1 if score @s playG matches 1 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..3}] if score @s playGTree matches 1 if score @s playG matches 1 run scoreboard players set @s playG 0
execute as @a[scores={Gticket=0..3}] if score @s playGTree matches 1 run scoreboard players set @s playGTree 0
execute as @a[scores={Gticket=0..}] if score @s playGTree matches 1 run scoreboard players set @s Gticket -1
execute as @a[scores={GTree=3}] run clear @s name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 4
execute as @a[scores={GTree=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTree=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTree=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTree=3}] run scoreboard players set @s GTree 2
execute as @a[scores={GTree=2}] run kill @e[tag=GTreeT3]
execute as @a[scores={GTree=2}] run kill @e[tag=GTreeInter2]
execute as @a[scores={GTree=2}] run summon text_display -28999997.001 250.9 29000025.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTreeT4"],brightness:{sky:10,block:15},text:'[{"text":"진행중\\n","color":"dark_red","bold":true}]',background:0,Rotation:[90f, 0f]}
execute as @a[scores={GTree=2}] store result score R GTree run random value 1..100
execute as @a[scores={GTree=2}] run scoreboard players set play GTree 350
execute as @a[scores={GTree=2}] run scoreboard players set @s GTree 4
execute as @e[tag=GTreeAr2] at @s if score play GTree >= 0 num run tp @s ~ ~ ~ facing entity @e[limit=1,tag=GTreeAr1]
execute as @e[tag=GTreeAr2] at @s if score play GTree > 130 num run tp @s ^ ^ ^1
execute as @e[tag=GTreeAr2] at @s if score play GTree <= 130 num if score play GTree >= 0 num run tp @s ^ ^ ^0.5
execute as @e[tag=GTreeAr2] at @s if score play GTree >= 0 num run particle minecraft:cloud ~ ~ ~ 0.05 0.05 0.05 0 5 force
execute if score play GTree >= -1 num run scoreboard players remove play GTree 1
execute if score play GTree matches 330 run summon minecraft:armor_stand -28999995.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 330 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 306 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 305 run summon minecraft:armor_stand -28999995.5 267 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 305 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 281 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 280 run summon minecraft:armor_stand -28999995.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 280 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 256 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 255 run summon minecraft:armor_stand -28999987.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 255 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 231 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 230 run summon minecraft:armor_stand -28999979.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 230 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 206 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 205 run summon minecraft:armor_stand -28999979.5 267 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 205 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 181 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 180 run summon minecraft:armor_stand -28999979.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 180 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 156 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 155 run summon minecraft:armor_stand -28999987.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 155 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 
execute if score play GTree matches 131 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999995.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999995.5 267 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999995.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999987.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999979.5 267 29000021.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999979.5 267 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999979.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 run summon minecraft:armor_stand -28999987.5 267 29000005.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr2"]}
execute if score play GTree matches 130 as @a[scores={GTree=4}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
execute if score play GTree matches 80 run kill @e[tag=GTreeAr2]
execute if score play GTree matches 60 as @a[scores={GTree=4}] at @s run playsound minecraft:block.big_dripleaf.tilt_down master @s ~ ~ ~ 1 0
execute if score play GTree matches 60 as @a[scores={GTree=4}] at @s run playsound minecraft:block.big_dripleaf.tilt_down master @s ~ ~ ~ 1 0
execute if score play GTree matches 60 as @a[scores={GTree=4}] at @s run playsound minecraft:block.big_dripleaf.tilt_down master @s ~ ~ ~ 1 0
execute if score play GTree matches 60 as @a[scores={GTree=4}] at @s run playsound minecraft:block.big_dripleaf.tilt_down master @s ~ ~ ~ 1 0
execute if score play GTree matches 60 run fill -28999996 266 29000021 -28999980 250 29000005 minecraft:air
execute if score play GTree matches 60 if score R GTree <= 20 num run place feature minecraft:fancy_oak -28999988 250 29000013
execute if score play GTree matches 60 if score R GTree > 20 num run place feature minecraft:oak -28999988 250 29000013
execute if score play GTree matches 40 store result score get GTree run fill -28999996 266 29000021 -28999980 250 29000005 minecraft:oak_wood replace minecraft:oak_log
execute if score play GTree matches 40 run scoreboard players operation get GTree *= 2 num
execute if score play GTree matches 40 run fill -28999996 266 29000021 -28999980 250 29000005 minecraft:air replace minecraft:oak_leaves
execute if score play GTree matches 40 as @a[scores={GTree=4}] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0.7
execute if score play GTree matches 20 run fill -28999996 266 29000021 -28999980 250 29000005 minecraft:air destroy
execute if score play GTree matches 20 as @a[scores={GTree=4}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute if score play GTree matches 20 as @a[scores={GTree=4}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute if score play GTree matches 20 as @a[scores={GTree=4}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute if score play GTree matches 20 as @a[scores={GTree=4}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute if score play GTree matches 1 as @a[scores={GTree=4}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute if score play GTree matches 1 as @a[scores={GTree=4}] run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"score":{"name":"get","objective":"GTree"},"color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute if score play GTree matches 0 run setblock -28999988 250 29000013 minecraft:oak_sapling
execute if score play GTree matches 0 run setblock -28999988 251 29000013 minecraft:barrier
execute if score play GTree matches 0 run summon text_display -28999997.001 250.9 29000025.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTreeT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[90f, 0f]}
execute if score play GTree matches 0 run kill @e[tag=GTreeT4]
execute if score play GTree matches -1 as @a[scores={GTree=4}] run scoreboard players operation @s GTreeGet = get GTree
execute if score play GTree matches -2 run summon minecraft:interaction -28999996.65 251.3 29000025.5 {Tags:["GTreeInter2"],width:0.8f,height:0.4f}
execute if score play GTree matches -2 run function wood:play_g/g_tree_reset
execute as @a[scores={GTreeGet=1..}] run give @s minecraft:gold_nugget 1
execute as @a[scores={GTreeGet=1..}] run scoreboard players remove @s GTreeGet 1

# 트리룰렛 [2]
execute as @e[tag=GTrullInter1] on target run scoreboard players set @s GTrull 1
execute as @e[tag=GTrullInter1] run data remove entity @s interaction
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTrull=1}] run tellraw @s [{"text":"\n\n\n\n\n\n\n-----------------------------------------------------\n","color":"#abffab"}]
execute as @a[scores={GTrull=1}] run tellraw @s [{"text":"트리룰렛\n","color":"aqua","bold":true}]
execute as @a[scores={GTrull=1}] run tellraw @s [{"text":"당첨된 항목에 따라 보상이 지급됩니다!","color":"#abffab","bold":true}]
execute as @a[scores={GTrull=1}] run tellraw @s [{"text":"\n비용 : 도박티켓 1개\n","color":"gold","bold":true}]
execute as @a[scores={GTrull=1}] run tellraw @s [{"text":"-----------------------------------------------------","color":"#abffab"}]
execute as @a[scores={GTrull=1}] run scoreboard players set @s GTrull 0

execute as @a[scores={playG=2}] if entity @e[tag=GTrullInter2] run scoreboard players set @s playG 0
execute as @e[tag=GTrullInter2] on target run scoreboard players set @s playGTrull 1
execute as @e[tag=GTrullInter2] on target unless score @s playG > 0 num run scoreboard players set @s Gok 2
execute as @e[tag=GTrullInter2] on target unless score @s playG > 0 num run scoreboard players set @s playG 2
execute as @e[tag=GTrullInter2] run data remove entity @s interaction
execute as @a[scores={playGTrull=1}] unless score @s playG matches 2 run tellraw @s {"text":"다른 게임을 플레이하고 있습니다.","color":"red"}
execute as @a[scores={playGTrull=1}] at @s unless score @s playG matches 2 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTrull=1}] at @s unless score @s playG matches 2 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTrull=1}] unless score @s playG matches 2 run scoreboard players set @s playGTrull 0
execute as @a[scores={playGTrull=1}] if score @s playG matches 2 if score @s Gok matches 2 store result score @s Gticket run clear @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 0
execute as @a[scores={playGTrull=1}] if score @s playG matches 2 if score @s Gok matches 2 run scoreboard players set @s Gok 0
execute as @a[scores={Gticket=1..}] if score @s playGTrull matches 1 if score @s playG matches 2 run scoreboard players set @s GTrull2 3
execute as @a[scores={Gticket=0}] if score @s playGTrull matches 1 if score @s playG matches 2 run tellraw @s {"text":"도박티켓 부족!","color":"red"}
execute as @a[scores={Gticket=0}] if score @s playGTrull matches 1 if score @s playG matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0}] if score @s playGTrull matches 1 if score @s playG matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0}] if score @s playGTrull matches 1 if score @s playG matches 2 run scoreboard players set @s playG 0
execute as @a[scores={Gticket=0}] if score @s playGTrull matches 1 run scoreboard players set @s playGTrull 0
execute as @a[scores={Gticket=0..}] if score @s playGTrull matches 1 run scoreboard players set @s Gticket -1
execute as @a[scores={GTrull2=3}] run clear @s name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[scores={GTrull2=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTrull2=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTrull2=3}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTrull2=3}] run scoreboard players set @s GTrull2 2
execute as @a[scores={GTrull2=2}] run kill @e[tag=GTrullT3]
execute as @a[scores={GTrull2=2}] run kill @e[tag=GTrullInter2]
execute as @a[scores={GTrull2=2}] run summon text_display -29000025.999 250.9 29000014.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullT4"],brightness:{sky:10,block:15},text:'[{"text":"진행중\\n","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, 0f]}
execute as @a[scores={GTrull2=2}] run scoreboard players set play GTrull2 0
execute as @a[scores={GTrull2=2}] run scoreboard players set get GTrull2 0
execute as @a[scores={GTrull2=2}] run scoreboard players set end GTrull2 440
execute as @a[scores={GTrull2=2}] run scoreboard players set outloop GTrull2 26
execute as @a[scores={GTrull2=2}] run scoreboard players set outloop2 GTrull2 10
execute as @a[scores={GTrull2=2}] store result score inR1 GTrull2 run random value 0..1
execute as @a[scores={GTrull2=2}] store result score inR2 GTrull2 run random value 1..16
execute as @a[scores={GTrull2=2}] store result score outR1 GTrull2 run random value 0..1
execute as @a[scores={GTrull2=2}] store result score outR2 GTrull2 run random value 1..36
execute as @a[scores={GTrull2=2}] run scoreboard players set @s GTrull2 1
execute if score play GTrull2 <= end GTrull2 run scoreboard players add play GTrull2 1
# - 바깥 2,3,4,5 / 안쪽 4,6,8,10
execute if score play GTrull2 matches 20 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 30 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 40 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 48 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 56 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 64 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 70 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 76 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 81 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 86 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 90 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 94 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 98 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 102 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 106 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 110 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 114 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 118 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 122 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 126 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 130 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 134 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 138 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 142 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 146 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 150 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 154 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 160 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 166 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 172 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 178 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 184 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 186 run scoreboard players add inR1 GTrull2 1
execute if score play GTrull2 matches 190 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 198 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 206 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 214 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 222 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 224 if score inR1 GTrull2 matches 1 run scoreboard players set play GTrull2 185
execute if score play GTrull2 matches 226 run scoreboard players remove inR2 GTrull2 1
execute if score play GTrull2 matches 230 run function wood:play_g/g_trull_in
execute if score play GTrull2 matches 235 if score inR2 GTrull2 > 0 num run scoreboard players set play GTrull2 225

execute if score play GTrull2 matches 260 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 265 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 270 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 275 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 280 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 285 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 289 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 293 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 297 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 301 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 305 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 309 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 313 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 316 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 319 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 322 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 325 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 328 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 331 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 334 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 337 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 340 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 342 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 344 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 346 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 348 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 350 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 352 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 354 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 356 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 358 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 360 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 362 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 364 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 366 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 368 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 370 run scoreboard players remove outloop GTrull2 1
execute if score play GTrull2 matches 370 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 371 if score outloop GTrull2 > 0 num run scoreboard players set play GTrull2 369
execute if score play GTrull2 matches 373 run scoreboard players remove outloop2 GTrull2 1
execute if score play GTrull2 matches 373 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 375 if score outloop2 GTrull2 > 0 num run scoreboard players set play GTrull2 372
execute if score play GTrull2 matches 377 run scoreboard players add outR1 GTrull2 1
execute if score play GTrull2 matches 377 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 381 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 385 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 389 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 393 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 397 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 401 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 405 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 409 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 413 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 417 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 421 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 425 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 429 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 432 if score outR1 GTrull2 matches 1 run scoreboard players set play GTrull2 376
execute if score play GTrull2 matches 434 run scoreboard players remove outR2 GTrull2 1
execute if score play GTrull2 matches 434 run function wood:play_g/g_trull_out
execute if score play GTrull2 matches 438 if score outR2 GTrull2 > 0 num run scoreboard players set play GTrull2 433

execute if score play GTrull2 = end GTrull2 run kill @e[tag=GTrullT4]
execute if score play GTrull2 = end GTrull2 run summon text_display -29000025.999 250.9 29000014.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[-90f, 0f]}
execute if score play GTrull2 = end GTrull2 as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:netherrack run scoreboard players set get GTrull2 -1
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] if score get GTrull2 matches -1 run tellraw @s {"text":"- 꽝 -","color":"red","bold":true}
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] if score get GTrull2 matches -1 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] if score get GTrull2 matches -1 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 run scoreboard players set @s GTrullGet 1
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 3 run scoreboard players set @s GTrullGet 3
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 7 run scoreboard players set @s GTrullGet 3
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 11 run scoreboard players set @s GTrullGet 3
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 15 run scoreboard players set @s GTrullGet 3
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 5 run scoreboard players set @s GTrullGet 5
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 9 run scoreboard players set @s GTrullGet 5
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 13 run scoreboard players set @s GTrullGet 5
execute if score play GTrull2 = end GTrull2 as @a[scores={GTrull2=1}] unless score get GTrull2 matches -1 if score @e[tag=GTrullAr2,limit=1] GTrull_ar matches 1 run scoreboard players set @s GTrullGet 10
execute if score play GTrull2 = end GTrull2 unless score get GTrull2 matches -1 as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:dark_oak_leaves as @a[scores={GTrull2=1}] run tellraw @s [{"text":"원목 ","color":"gold","bold":true},{"score":{"name":"@s","objective":"GTrullGet"},"color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute if score play GTrull2 = end GTrull2 unless score get GTrull2 matches -1 as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:emerald_block as @a[scores={GTrull2=1}] run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"score":{"name":"@s","objective":"GTrullGet"},"color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute if score play GTrull2 = end GTrull2 unless score get GTrull2 matches -1 as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:gold_block as @a[scores={GTrull2=1}] run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"score":{"name":"@s","objective":"GTrullGet"},"color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute if score play GTrull2 = end GTrull2 unless score get GTrull2 matches -1 as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:gold_block as @a[scores={GTrull2=1}] run tellraw @a [{"selector":"@s"},{"text":"님이 ","color":"gold","bold":true},{"text":"트리룰렛","color":"aqua","bold":true},{"text":"에서 금괴에 당첨되셨습니다.","color":"gold","bold":true}]
execute if score play GTrull2 > end GTrull2 run summon minecraft:interaction -29000026.35 251.3 29000014.5 {Tags:["GTrullInter2"],width:0.8f,height:0.4f}
execute if score play GTrull2 > end GTrull2 run function wood:play_g/g_trull_reset
execute as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:dark_oak_leaves as @a[scores={GTrullGet=1..}] run give @s oak_log 1
execute as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:emerald_block as @a[scores={GTrullGet=1..}] run give @s gold_nugget 1
execute as @e[tag=GTrullAr1] at @s if block ~ ~-1 ~ minecraft:gold_block as @a[scores={GTrullGet=1..}] run give @s gold_ingot 1
execute as @a[scores={GTrullGet=1..}] run scoreboard players remove @s GTrullGet 1

# 트리머신 [3]
execute as @e[tag=GTmaInter1] on target run scoreboard players set @s GTma 1
execute as @e[tag=GTmaInter1] run data remove entity @s interaction
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"\n\n\n\n\n\n\n-----------------------------------------------------\n","color":"#abffab"}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"트리머신\n","color":"aqua","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"블럭이 모두 같으면 보상이 지급됩니다!\n","color":"#abffab","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"나무 : ","color":"#685437","bold":true},{"text":"금괴 16개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"금 : ","color":"gold","bold":true},{"text":"금괴 12개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"다이아몬드 : ","color":"aqua","bold":true},{"text":"금괴 8개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"에메랄드 : ","color":"green","bold":true},{"text":"금괴 6개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"레드스톤 : ","color":"dark_red","bold":true},{"text":"금괴 4개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"\n청금석은 갯수에 따라 보상이 지급됩니다!\n","color":"#abffab","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"청금석 1개 : ","color":"blue","bold":true},{"text":"금조각 32개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"청금석 2개 : ","color":"blue","bold":true},{"text":"금괴 1개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"청금석 3개 : ","color":"blue","bold":true},{"text":"금괴 2개","color":"#66dd66","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"\n비용 : 도박티켓 10개\n","color":"gold","bold":true}]
execute as @a[scores={GTma=1}] run tellraw @s [{"text":"-----------------------------------------------------","color":"#abffab"}]
execute as @a[scores={GTma=1}] run scoreboard players set @s GTma 0

fill -29000008 250 29000038 -29000008 250 29000034 minecraft:air
execute as @a[scores={playG=3}] if entity @e[tag=GTmaInter2] run scoreboard players set @s playG 0
execute as @e[tag=GTmaInter2] on target run scoreboard players set @s playGTma 1
execute as @e[tag=GTmaInter2] on target unless score @s playG > 0 num run scoreboard players set @s Gok 3
execute as @e[tag=GTmaInter2] on target unless score @s playG > 0 num run scoreboard players set @s playG 3
execute as @e[tag=GTmaInter2] run data remove entity @s interaction
execute as @a[scores={playGTma=1}] unless score @s playG matches 3 run tellraw @s {"text":"다른 게임을 플레이하고 있습니다.","color":"red"}
execute as @a[scores={playGTma=1}] at @s unless score @s playG matches 3 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTma=1}] at @s unless score @s playG matches 3 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTma=1}] unless score @s playG matches 3 run scoreboard players set @s playGTma 0
execute as @a[scores={playGTma=1}] if score @s playG matches 3 if score @s Gok matches 3 store result score @s Gticket run clear @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 0
execute as @a[scores={playGTma=1}] if score @s playG matches 3 if score @s Gok matches 3 run scoreboard players set @s Gok 0
execute as @a[scores={Gticket=10..}] if score @s playGTma matches 1 if score @s playG matches 3 run scoreboard players set @s GTma2 2
execute as @a[scores={Gticket=0..9}] if score @s playGTma matches 1 if score @s playG matches 3 run tellraw @s {"text":"도박티켓 부족!","color":"red"}
execute as @a[scores={Gticket=0..9}] if score @s playGTma matches 1 if score @s playG matches 3 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..9}] if score @s playGTma matches 1 if score @s playG matches 3 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..9}] if score @s playGTma matches 1 if score @s playG matches 3 run scoreboard players set @s playG 0
execute as @a[scores={Gticket=0..9}] if score @s playGTma matches 1 run scoreboard players set @s playGTma 0
execute as @a[scores={Gticket=0..}] if score @s playGTma matches 1 run scoreboard players set @s Gticket -1
execute as @a[scores={GTma2=2}] run clear @s name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 10
execute as @a[scores={GTma2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTma2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTma2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTma2=2}] run scoreboard players set @s GTma2 1
execute as @a[scores={GTma2=1}] run kill @e[tag=GTmaT3]
execute as @a[scores={GTma2=1}] run kill @e[tag=GTmaInter2]
execute as @a[scores={GTma2=1}] run summon text_display -29000005.999 250.9 29000030.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTmaT4"],brightness:{sky:10,block:15},text:'[{"text":"진행중\\n","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, 0f]}
execute as @a[scores={GTma2=1}] store result score first_R GTma2 run random value 15..20
execute as @a[scores={GTma2=1}] store result score second_R GTma2 run random value 5..10
execute as @a[scores={GTma2=1}] store result score third_R GTma2 run random value 5..10
execute as @a[scores={GTma2=1}] run scoreboard players set change GTma2 4
execute as @a[scores={GTma2=1}] run scoreboard players set get GTma2 -1
execute as @a[scores={GTma2=1}] run scoreboard players set delay GTma2 10
execute as @a[scores={GTma2=1}] run scoreboard players set play GTma2 1
execute as @a[scores={GTma2=1}] run scoreboard players set @s GTma2 0
execute if score play GTma2 matches 1 run scoreboard players remove change GTma2 1
execute if score change GTma2 matches 2 run fill -29000008 254 29000038 -29000008 254 29000034 minecraft:air
execute if score change GTma2 <= 0 num if score first_R GTma2 > 0 num run function wood:play_g/g_tma_first
execute if score change GTma2 <= 0 num if score first_R GTma2 > 0 num run function wood:play_g/g_tma_second
execute if score change GTma2 <= 0 num if score first_R GTma2 > 0 num run function wood:play_g/g_tma_third
execute if score change GTma2 <= 0 num if score first_R GTma2 > 0 num run scoreboard players remove first_R GTma2 1
execute if score change GTma2 <= 0 num if score first_R GTma2 matches 0 if score second_R GTma2 > 0 num run function wood:play_g/g_tma_second
execute if score change GTma2 <= 0 num if score first_R GTma2 matches 0 if score second_R GTma2 > 0 num run function wood:play_g/g_tma_third
execute if score change GTma2 <= 0 num if score first_R GTma2 matches 0 if score second_R GTma2 > 0 num run scoreboard players remove second_R GTma2 1
execute if score change GTma2 <= 0 num if score first_R GTma2 matches 0 if score second_R GTma2 matches 0 if score third_R GTma2 > 0 num run function wood:play_g/g_tma_third
execute if score change GTma2 <= 0 num if score first_R GTma2 matches 0 if score second_R GTma2 matches 0 if score third_R GTma2 > 0 num run scoreboard players remove third_R GTma2 1
execute if score change GTma2 <= 0 num run scoreboard players set change GTma2 4
execute if score play GTma2 matches 1 if score first_R GTma2 matches 0 if score second_R GTma2 matches 0 if score third_R GTma2 matches 0 run scoreboard players remove delay GTma2 1

execute if score play GTma2 matches 1 if score delay GTma2 matches 0 run scoreboard players set play GTma2 0
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 1 if score second GTma2 matches 1 if score third GTma2 matches 1 run give @s gold_ingot 16
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 2 if score second GTma2 matches 2 if score third GTma2 matches 2 run give @s gold_ingot 12
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 3 if score second GTma2 matches 3 if score third GTma2 matches 3 run give @s gold_ingot 8
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 4 if score second GTma2 matches 4 if score third GTma2 matches 4 run give @s gold_ingot 6
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 5 if score second GTma2 matches 5 if score third GTma2 matches 5 run give @s gold_ingot 4
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run give @s gold_ingot 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 unless score third GTma2 matches 6 run give @s gold_nugget 32
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run give @s gold_nugget 32
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run give @s gold_nugget 32
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run give @s gold_ingot 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run give @s gold_ingot 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run give @s gold_ingot 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 1 if score second GTma2 matches 1 if score third GTma2 matches 1 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 2 if score second GTma2 matches 2 if score third GTma2 matches 2 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 3 if score second GTma2 matches 3 if score third GTma2 matches 3 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 4 if score second GTma2 matches 4 if score third GTma2 matches 4 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 5 if score second GTma2 matches 5 if score third GTma2 matches 5 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 unless score third GTma2 matches 6 run scoreboard players set get GTma2 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run scoreboard players set get GTma2 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run scoreboard players set get GTma2 1
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run scoreboard players set get GTma2 2
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 at @s if score get GTma2 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 at @s if score get GTma2 matches 2 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score get GTma2 matches -1 run tellraw @s {"text":"- 꽝 -","color":"red","bold":true}
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 at @s if score get GTma2 matches -1 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 at @s if score get GTma2 matches -1 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 1 if score second GTma2 matches 1 if score third GTma2 matches 1 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"16","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 2 if score second GTma2 matches 2 if score third GTma2 matches 2 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"12","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 3 if score second GTma2 matches 3 if score third GTma2 matches 3 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"8","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 4 if score second GTma2 matches 4 if score third GTma2 matches 4 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"6","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 5 if score second GTma2 matches 5 if score third GTma2 matches 5 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"4","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"2","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score get GTma2 matches 2 run tellraw @a [{"selector":"@s"},{"text":"님이 ","color":"gold","bold":true},{"text":"트리머신","color":"aqua","bold":true},{"text":"에서 금괴에 당첨되셨습니다.","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 unless score third GTma2 matches 6 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"32","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"32","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"32","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 unless score first GTma2 matches 6 if score second GTma2 matches 6 if score third GTma2 matches 6 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"1","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 unless score second GTma2 matches 6 if score third GTma2 matches 6 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"1","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTma=1}] if score play GTma2 matches 0 if score first GTma2 matches 6 if score second GTma2 matches 6 unless score third GTma2 matches 6 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"1","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute if score play GTma2 matches 0 run kill @e[tag=GTmaT4]
execute if score play GTma2 matches 0 run summon minecraft:interaction -29000006.35 251.3 29000030.5 {Tags:["GTmaInter2"],width:0.8f,height:0.4f}
execute if score play GTma2 matches 0 run summon text_display -29000005.999 250.9 29000030.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTmaT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[-90f, 0f]}
execute if score play GTma2 matches 0 run scoreboard objectives remove playGTma
execute if score play GTma2 matches 0 run scoreboard objectives add playGTma dummy
execute if score play GTma2 matches 0 run scoreboard players set play GTma2 -1

# 나무의 길 [4]
execute as @e[tag=GTroadInter1] on target run scoreboard players set @s GTroad 1
execute as @e[tag=GTroadInter1] run data remove entity @s interaction
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"\n\n\n\n\n\n\n-----------------------------------------------------\n","color":"#abffab"}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"나무의 길\n","color":"aqua","bold":true}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"원하는 만큼 강화하여 보상을 지급받을 수 있습니다!\n","color":"#abffab","bold":true}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"시작을 하면 ","color":"#66dd66","bold":true},{"text":"시작","color":"dark_green","bold":true},{"text":"버튼이 ","color":"#66dd66","bold":true},{"text":"강화","color":"#0080ff","bold":true},{"text":"버튼으로 바뀌며\n10초안에 ","color":"#66dd66","bold":true},{"text":"강화","color":"#0080ff","bold":true},{"text":"를 하거나 기다려서 현재보상을 받을 수 있습니다.","color":"#66dd66","bold":true}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"강화에 실패할 경우 보상을 받을 수 없습니다.","color":"#66dd66","bold":true}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"\n비용 : 도박티켓 10개\n","color":"gold","bold":true}]
execute as @a[scores={GTroad=1}] run tellraw @s [{"text":"-----------------------------------------------------","color":"#abffab"}]
execute as @a[scores={GTroad=1}] run scoreboard players set @s GTroad 0

execute as @a[scores={playG=4}] if entity @e[tag=GTroadInter2] run scoreboard players set @s playG 0
execute as @e[tag=GTroadInter2] on target run scoreboard players set @s playGTroad 1
execute as @e[tag=GTroadInter2] on target unless score @s playG > 0 num run scoreboard players set @s Gok 4
execute as @e[tag=GTroadInter2] on target unless score @s playG > 0 num run scoreboard players set @s playG 4
execute as @e[tag=GTroadInter2] run data remove entity @s interaction
execute as @a[scores={playGTroad=1}] unless score @s playG matches 4 run tellraw @s {"text":"다른 게임을 플레이하고 있습니다.","color":"red"}
execute as @a[scores={playGTroad=1}] at @s unless score @s playG matches 4 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTroad=1}] at @s unless score @s playG matches 4 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={playGTroad=1}] unless score @s playG matches 4 run scoreboard players set @s playGTroad 0
execute as @a[scores={playGTroad=1}] if score @s playG matches 4 if score @s Gok matches 4 store result score @s Gticket run clear @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 0
execute as @a[scores={playGTroad=1}] if score @s playG matches 4 if score @s Gok matches 4 run scoreboard players set @s Gok 0
execute as @a[scores={Gticket=10..}] if score @s playGTroad matches 1 if score @s playG matches 4 run scoreboard players set @s GTroad2 2
execute as @a[scores={Gticket=0..9}] if score @s playGTroad matches 1 if score @s playG matches 4 run tellraw @s {"text":"도박티켓 부족!","color":"red"}
execute as @a[scores={Gticket=0..9}] if score @s playGTroad matches 1 if score @s playG matches 4 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..9}] if score @s playGTroad matches 1 if score @s playG matches 4 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @a[scores={Gticket=0..9}] if score @s playGTroad matches 1 if score @s playG matches 4 run scoreboard players set @s playG 0
execute as @a[scores={Gticket=0..9}] if score @s playGTroad matches 1 run scoreboard players set @s playGTroad 0
execute as @a[scores={Gticket=0..}] if score @s playGTroad matches 1 run scoreboard players set @s Gticket -1
execute as @a[scores={GTroad2=2}] run clear @s name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 10
execute as @a[scores={GTroad2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTroad2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTroad2=2}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.7
execute as @a[scores={GTroad2=2}] run scoreboard players set @s GTroad2 1
execute as @a[scores={GTroad2=1}] run kill @e[tag=GTroadT3]
execute as @a[scores={GTroad2=1}] run kill @e[tag=GTroadInter2]
execute as @a[scores={GTroad2=1}] run summon text_display -28999997.001 250.9 29000044.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTroadT4"],brightness:{sky:10,block:15},text:'[{"text":"강화\\n","color":"#0080ff","bold":true}]',background:0,Rotation:[90f, 0f]}
execute as @a[scores={GTroad2=1}] run summon minecraft:interaction -28999996.65 251.3 29000044.5 {Tags:["GTroadInter2_1"],width:0.8f,height:0.4f}
execute as @a[scores={GTroad2=1}] run title @s subtitle ""
execute as @a[scores={GTroad2=1}] run title @s times 0 10 5
execute as @a[scores={GTroad2=1}] run scoreboard players set play GTroad2 200
execute as @a[scores={GTroad2=1}] run scoreboard players set time_s GTroad2 20
execute as @a[scores={GTroad2=1}] run scoreboard players set time GTroad2 10
execute as @a[scores={GTroad2=1}] run scoreboard players set lvl GTroad2 1
execute as @a[scores={GTroad2=1}] run scoreboard players set delay GTroad2 20
execute as @a[scores={GTroad2=1}] run scoreboard players set get GTroad2 1
execute as @a[scores={GTroad2=1}] run scoreboard players set @s GTroad2 0
execute as @e[tag=GTroadInter2_1] on target run scoreboard players set @s[scores={playGTroad=1}] GTroad_up 1
execute as @e[tag=GTroadInter2_1] run data remove entity @s interaction
execute if score play GTroad2 >= 0 num run scoreboard players remove play GTroad2 1
execute if score play GTroad2 >= 0 num if score time_s GTroad2 > 0 num run scoreboard players remove time_s GTroad2 1
execute if score time_s GTroad2 matches 0 run scoreboard players remove time GTroad2 1
execute if score play GTroad2 > 0 num if score time_s GTroad2 matches 0 as @a[scores={playGTroad=1}] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2
execute if score play GTroad2 > 0 num as @a[scores={playGTroad=1}] run title @s title {"score":{"name":"time","objective":"GTroad2"}}
execute if score time_s GTroad2 matches 0 run scoreboard players set time_s GTroad2 20
execute as @a[scores={playGTroad=1}] if score @s GTroad_up matches 1 store result score R GTroad2 run random value 1..10
# 확률조작 (기본 : 10 / 조작 : 100) ------------------------------------------------------------------------------------------------------------------------
execute as @a[scores={playGTroad=1}] if score @s GTroad_up matches 1 run scoreboard players set lvl_R GTroad2 10
# 확률조작 ------------------------------------------------------------------------------------------------------------------------------------------------
execute as @a[scores={playGTroad=1}] if score @s GTroad_up matches 1 run scoreboard players operation lvl_R GTroad2 -= lvl GTroad2
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 <= lvl_R GTroad2 run function wood:play_g/g_troad_up
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 > lvl_R GTroad2 run tellraw @s {"text":"- 실패 -","color":"red","bold":true}
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 > lvl_R GTroad2 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 > lvl_R GTroad2 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.9
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 > lvl_R GTroad2 run scoreboard players set get GTroad2 0
execute as @a[scores={playGTroad=1}] at @s if score @s GTroad_up matches 1 if score R GTroad2 > lvl_R GTroad2 run scoreboard players set play GTroad2 -1
execute as @a[scores={playGTroad=1}] if score @s GTroad_up matches 1 run scoreboard players reset @s GTroad_up
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 1 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"90%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금조각 1개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금조각 4개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 2 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"80%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금조각 4개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금조각 16개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 3 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"70%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금조각 16개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금조각 32개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 5 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"50%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금조각 32개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금괴 2개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 6 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"40%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금괴 2개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금괴 8개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 7 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"30%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금괴 8개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금괴 16개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 8 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"20%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금괴 16개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금블럭 1개","color":"gold","bold":true}]
execute if score play GTroad2 >= 0 num if score lvl GTroad2 matches 9 as @a[scores={playGTroad=1}] run title @s actionbar [{"text":"성공확률 : ","color":"#0080ff","bold":true},{"text":"10%","color":"#0080ff","bold":false},{"text":" / ","color":"#abffab","bold":false},{"text":"현재보상 : 금블럭 1개","color":"aqua","bold":true},{"text":" / ","color":"#abffab","bold":false},{"text":"다음보상 : 금블럭 8개","color":"gold","bold":true}]
execute if score lvl GTroad2 matches 10 if score delay GTroad2 >= 0 num run scoreboard players remove delay GTroad2 1
execute as @a[scores={playGTroad=1}] at @s if score lvl GTroad2 matches 10 if score delay GTroad2 matches 15 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if score lvl GTroad2 matches 10 if score delay GTroad2 matches 15 run fill -28999997 257 29000033 -28999997 251 29000039 minecraft:glass replace #minecraft:impermeable
execute as @a[scores={playGTroad=1}] at @s if score lvl GTroad2 matches 10 if score delay GTroad2 matches 10 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if score lvl GTroad2 matches 10 if score delay GTroad2 matches 10 run fill -28999997 257 29000033 -28999997 251 29000039 minecraft:yellow_stained_glass replace #minecraft:impermeable
execute as @a[scores={playGTroad=1}] at @s if score lvl GTroad2 matches 10 if score delay GTroad2 matches 5 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if score lvl GTroad2 matches 10 if score delay GTroad2 matches 5 run fill -28999997 257 29000033 -28999997 251 29000039 minecraft:glass replace #minecraft:impermeable
execute if score delay GTroad2 matches 0 run scoreboard players set play GTroad2 -1

execute if score play GTroad2 matches -1 run kill @e[tag=GTroadT4]
execute if score play GTroad2 matches -1 run kill @e[tag=GTroadInter2_1]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 1 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"1","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 2 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"4","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 3 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"16","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 5 run tellraw @s [{"text":"금조각 ","color":"gold","bold":true},{"text":"32","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 6 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"2","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 7 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"8","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 8 run tellraw @s [{"text":"금괴 ","color":"gold","bold":true},{"text":"16","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 >= 6 num unless score lvl GTroad2 matches 10 unless score lvl GTroad2 matches 9 run tellraw @a [{"selector":"@s"},{"text":"님이 ","color":"gold","bold":true},{"text":"나무의 길","color":"aqua","bold":true},{"text":"에서 금괴에 당첨되셨습니다.","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 9 run tellraw @s [{"text":"금블럭 ","color":"gold","bold":true},{"text":"1","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 10 run tellraw @s [{"text":"금블럭 ","color":"gold","bold":true},{"text":"8","color":"green","bold":false},{"text":"개 획득!","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 9 run tellraw @a [{"selector":"@s"},{"text":"님이 ","color":"gold","bold":true},{"text":"나무의 길","color":"aqua","bold":true},{"text":"에서 금블럭에 당첨되셨습니다.","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 10 run tellraw @a [{"selector":"@s"},{"text":"님이 ","color":"gold","bold":true},{"text":"나무의 길","color":"aqua","bold":true},{"text":"에서 금블럭에 당첨되셨습니다.","color":"gold","bold":true}]
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 1 run give @s minecraft:gold_nugget 1
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 2 run give @s minecraft:gold_nugget 4
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 3 run give @s minecraft:gold_nugget 16
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 5 run give @s minecraft:gold_nugget 32
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 6 run give @s minecraft:gold_ingot 2
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 7 run give @s minecraft:gold_ingot 8
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 8 run give @s minecraft:gold_ingot 16
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 9 run give @s minecraft:gold_block 1
execute as @a[scores={playGTroad=1}] at @s if score play GTroad2 matches -1 if score get GTroad2 matches 1 if score lvl GTroad2 matches 10 run give @s minecraft:gold_block 8
execute if score play GTroad2 matches -1 run fill -28999997 257 29000033 -28999997 251 29000039 minecraft:tinted_glass replace #minecraft:impermeable
execute if score play GTroad2 matches -1 run setblock -28999997 251 29000039 minecraft:glass
execute if score play GTroad2 matches -1 run scoreboard objectives remove playGTroad
execute if score play GTroad2 matches -1 run scoreboard objectives add playGTroad dummy
execute if score play GTroad2 matches -1 run summon minecraft:interaction -28999996.65 251.3 29000044.5 {Tags:["GTroadInter2"],width:0.8f,height:0.4f}
execute if score play GTroad2 matches -1 run summon text_display -28999997.001 250.9 29000044.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTroadT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[90f, 0f]}
execute if score play GTroad2 matches -1 run scoreboard players set play GTroad2 -2