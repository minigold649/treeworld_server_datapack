# 기타 시스템
bossbar set minecraft:tree players @a
effect give @a resistance infinite 255 true
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:grass_block"}}]
recipe take @a *
execute as @a[scores={buy=1..}] at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 2
execute as @a[scores={buy=1..}] run scoreboard players reset @s buy
clear @a glass_bottle
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 oak_log replace oak_leaves

# 300개 랜덤이벤트
execute as @a[scores={300Revent=300..}] store result score @s Revent run random value 1..10000
execute as @a[scores={300Revent=300..}] run title @s subtitle ""
execute as @a[scores={300Revent=300..}] run title @s times 10 30 5
# 10% : 1000 / 1% : 100 / 0.1% : 10 -----------------------------------
execute as @a[scores={Revent=1..3800}] if score @s 300Revent matches 300 run title @s subtitle {"text":"10s","color":"yellow"}
execute as @a[scores={Revent=1..3800}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.villager.work_cleric master @s ~ ~ ~ 1 2
execute as @a[scores={Revent=1..1000}] if score @s 300Revent matches 300 run effect give @s haste 10 0
execute as @a[scores={Revent=1..1000}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.1","color":"green"}
execute as @a[scores={Revent=1001..1700}] if score @s 300Revent matches 300 run effect give @s haste 10 1
execute as @a[scores={Revent=1001..1700}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.2","color":"green"}
execute as @a[scores={Revent=1701..1900}] if score @s 300Revent matches 300 run effect give @s haste 10 2
execute as @a[scores={Revent=1701..1900}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.3","color":"green"}
execute as @a[scores={Revent=1901..2000}] if score @s 300Revent matches 300 run effect give @s haste 10 3
execute as @a[scores={Revent=1901..2000}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.4","color":"green"}
execute as @a[scores={Revent=2001..2900}] if score @s 300Revent matches 300 run effect give @s jump_boost 10 1
execute as @a[scores={Revent=2001..2900}] if score @s 300Revent matches 300 run title @s title {"text":"점프강화 LV.2","color":"green"}
execute as @a[scores={Revent=2901..3800}] if score @s 300Revent matches 300 run effect give @s speed 10 1
execute as @a[scores={Revent=2901..3800}] if score @s 300Revent matches 300 run title @s title {"text":"신속 LV.2","color":"green"}

execute as @a[scores={Revent=3801..5699}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=5700}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=5701..5705}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=3801..4800}] if score @s 300Revent matches 300 run give @s oak_log 10
execute as @a[scores={Revent=3801..4800}] if score @s 300Revent matches 300 run title @s title {"text":"원목 10개","color":"green"}
execute as @a[scores={Revent=4801..5250}] if score @s 300Revent matches 300 run give @s oak_log 20
execute as @a[scores={Revent=4801..5250}] if score @s 300Revent matches 300 run title @s title {"text":"원목 20개","color":"green"}
execute as @a[scores={Revent=5251..5550}] if score @s 300Revent matches 300 run give @s oak_log 30
execute as @a[scores={Revent=5251..5550}] if score @s 300Revent matches 300 run title @s title {"text":"원목 30개","color":"green"}
execute as @a[scores={Revent=5551..5690}] if score @s 300Revent matches 300 run give @s gold_nugget 1
execute as @a[scores={Revent=5551..5690}] if score @s 300Revent matches 300 run title @s title {"text":"금조각 1개","color":"green"}
execute as @a[scores={Revent=5691..5699}] if score @s 300Revent matches 300 run give @s gold_ingot 1
execute as @a[scores={Revent=5691..5699}] if score @s 300Revent matches 300 run title @s title {"text":"금괴 1개","color":"green"}
execute as @a[scores={Revent=5700}] if score @s 300Revent matches 300 run give @s gold_block 1
execute as @a[scores={Revent=5700}] if score @s 300Revent matches 300 run title @s title {"text":"✯ 금블럭 ✯","color":"gold"}
execute as @a[scores={Revent=5701..5705}] if score @s 300Revent matches 300 run give @s elytra{Unbreakable:1b}
execute as @a[scores={Revent=5701..5705}] if score @s 300Revent matches 300 run title @s title {"text":"겉날개 1개","color":"green"}

execute as @a[scores={Revent=5706..7305}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=5706..6505}] at @s if score @s 300Revent matches 300 run fill ~3 -64 ~3 ~-3 ~4 ~-3 oak_log replace oak_leaves
execute as @a[scores={Revent=5706..6505}] if score @s 300Revent matches 300 run title @s title {"text":"주변나뭇잎 -> 나무","color":"green"}
execute as @a[scores={Revent=6506..7305}] at @s if score @s 300Revent matches 300 run fill ~3 -64 ~3 ~-3 ~4 ~-3 air replace oak_leaves
execute as @a[scores={Revent=6506..7305}] if score @s 300Revent matches 300 run title @s title {"text":"주변나뭇잎 제거","color":"green"}

execute as @a[scores={Revent=7306..7905}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
execute as @a[scores={Revent=7306..7555}] if score @s 300Revent matches 300 run enchant @s efficiency 1
execute as @a[scores={Revent=7306..7555}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.1","color":"green"}
execute as @a[scores={Revent=7556..7675}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_2
execute as @a[scores={Revent=7556..7675}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.2","color":"green"}
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_3
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_3
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.3","color":"green"}
execute as @a[scores={Revent=7746..7785}] if score @s 300Revent matches 300 unless data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_4
execute as @a[scores={Revent=7746..7785}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.4","color":"green"}
execute as @a[scores={Revent=7786..7805}] if score @s 300Revent matches 300 run item modify entity @s weapon.mainhand wood:efficiency_5
execute as @a[scores={Revent=7786..7805}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.5","color":"green"}
execute as @a[scores={Revent=7806..7865}] if score @s 300Revent matches 300 run enchant @s unbreaking 1
execute as @a[scores={Revent=7806..7865}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.1","color":"green"}
execute as @a[scores={Revent=7866..7900}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:unbreaking_2
execute as @a[scores={Revent=7866..7900}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.2","color":"green"}
execute as @a[scores={Revent=7901..7905}] if score @s 300Revent matches 300 run item modify entity @s weapon.mainhand wood:unbreaking_3
execute as @a[scores={Revent=7901..7905}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.3","color":"green"}

execute as @a[scores={Revent=7906..9500}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=7906..8905}] if score @s 300Revent matches 300 run give @s iron_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 1개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Revent=7906..8905}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (철)","color":"green"}
execute as @a[scores={Revent=8906..9305}] if score @s 300Revent matches 300 run give @s gold_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 5개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Revent=8906..9305}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (금)","color":"green"}
execute as @a[scores={Revent=9306..9445}] if score @s 300Revent matches 300 run give @s diamond_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 10개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Revent=9306..9445}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (다이아몬드)","color":"green"}
execute as @a[scores={Revent=9446..9500}] if score @s 300Revent matches 300 run give @s emerald_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 20개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Revent=9446..9500}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (에메랄드)","color":"green"}

execute as @a[scores={Revent=9501..9850}] if score @s 300Revent matches 300 run title @s subtitle {"text":"10s","color":"yellow"}
execute as @a[scores={Revent=9501..9850}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.villager.work_cleric master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=9501..9650}] if score @s 300Revent matches 300 run effect give @s hunger 30 1
execute as @a[scores={Revent=9501..9650}] if score @s 300Revent matches 300 run title @s title {"text":"허기 LV.2","color":"dark_red"}
execute as @a[scores={Revent=9651..9800}] if score @s 300Revent matches 300 run effect give @s slowness 10 4
execute as @a[scores={Revent=9651..9800}] if score @s 300Revent matches 300 run title @s title {"text":"구속 LV.5","color":"dark_red"}
execute as @a[scores={Revent=9801..9850}] if score @s 300Revent matches 300 run effect give @s mining_fatigue 10 2
execute as @a[scores={Revent=9801..9850}] if score @s 300Revent matches 300 run title @s title {"text":"채굴피로 LV.3","color":"dark_red"}

execute as @a[scores={Revent=9851..9900}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=9901..10000}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 2
execute as @a[scores={Revent=9851..9900}] at @s if score @s 300Revent matches 300 run fill ~3 -64 ~3 ~-3 ~4 ~-3 oak_leaves replace oak_log
execute as @a[scores={Revent=9851..9900}] if score @s 300Revent matches 300 run title @s title {"text":"주변나무 -> 나뭇잎","color":"dark_red"}
execute as @a[scores={Revent=9901..10000}] if score @s 300Revent matches 300 run clear @s oak_log 10
execute as @a[scores={Revent=9901..10000}] if score @s 300Revent matches 300 run title @s title {"text":"원목 10개 소멸","color":"dark_red"}
# ------------------------------------------------------------------
execute as @a[scores={300Revent=300..}] run scoreboard players set @s 300Revent 0

# 나무 지급 (능력갑옷 포함)
execute as @a[scores={tempwood=1..}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 1개 (갑옷)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @a[scores={tempwood=1..}] run scoreboard players remove @s tempwood 1

# 포탈 파티클
particle minecraft:composter 28999996.5 240.1 28999995.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter 29000000.5 250.1 28999995.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter 28999998.5 250.1 29000005.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter -28999999.5 250.1 -28999993.5 0.3 0.05 0.3 0 10 force

# 건축 플레이스 보호막 파티클
particle minecraft:totem_of_undying -29000010.9 255 -29000010.9 0 0 0 0 1 force
particle minecraft:totem_of_undying -28999988.1 255 -28999988.1 0 0 0 0 1 force
particle minecraft:totem_of_undying -28999988.1 255 -29000010.9 0 0 0 0 1 force
particle minecraft:totem_of_undying -29000010.9 255 -28999988.1 0 0 0 0 1 force

particle minecraft:composter -28999988.7 255 -29000010.9 0.15 0 0 0 3 force
particle minecraft:composter -28999990.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -28999993.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -28999996.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -28999999.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -29000002.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -29000005.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -29000008.5 255 -29000010.9 1 0 0 0 10 force
particle minecraft:composter -29000010.3 255 -29000010.9 0.15 0 0 0 3 force

particle minecraft:composter -28999988.7 255 -28999988.1 0.15 0 0 0 3 force
particle minecraft:composter -28999990.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -28999993.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -28999996.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -28999999.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -29000002.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -29000005.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -29000008.5 255 -28999988.1 1 0 0 0 10 force
particle minecraft:composter -29000010.3 255 -28999988.1 0.15 0 0 0 3 force

particle minecraft:composter -28999988.1 255 -28999988.7 0 0 0.15 0 3 force
particle minecraft:composter -28999988.1 255 -28999990.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -28999993.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -28999996.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -28999999.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -29000002.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -29000005.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -29000008.5 0 0 1 0 10 force
particle minecraft:composter -28999988.1 255 -29000010.3 0 0 0.15 0 3 force

particle minecraft:composter -29000010.9 255 -28999988.7 0 0 0.15 0 3 force
particle minecraft:composter -29000010.9 255 -28999990.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -28999993.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -28999996.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -28999999.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -29000002.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -29000005.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -29000008.5 0 0 1 0 10 force
particle minecraft:composter -29000010.9 255 -29000010.3 0 0 0.15 0 3 force

# 조합해서 나온 도끼 사용
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_axe"}}] run data merge entity @s {Item:{id:"minecraft:wooden_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_axe"}}] run data merge entity @s {Item:{id:"minecraft:stone_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}] run data merge entity @s {Item:{id:"minecraft:golden_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe"}}] run data merge entity @s {Item:{id:"minecraft:iron_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe"}}] run data merge entity @s {Item:{id:"minecraft:diamond_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}] run data merge entity @s {Item:{id:"minecraft:netherite_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}

# 새로운 사람
scoreboard players add @a new 1
execute as @a[scores={new=2}] run clear @s
execute as @a[scores={new=2}] run item replace entity @s enderchest.0 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.1 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.2 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.3 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.4 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.5 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.6 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.7 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.8 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.9 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.10 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.11 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.12 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.13 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.14 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.15 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.16 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.17 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.18 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.19 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.20 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.21 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.22 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.23 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.24 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.25 with minecraft:air
execute as @a[scores={new=2}] run item replace entity @s enderchest.26 with minecraft:air
execute as @a[scores={new=2}] run give @s minecraft:stick{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"],display:{Name:'[{"text":"단단한 막대기","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"맨손으로 나무캐는건 말이 안되지..!","italic":false,"color":"#abffab"}]']}}
execute as @a[scores={new=2}] run give @s minecraft:diamond{display:{Name:'[{"text":"상점","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"버려서 상점으로 이동","italic":false,"color":"#abffab"}]']}}

# 환생 팀
execute as @a unless score @s rank matches 1 unless score @s rank matches 2 unless score @s rank matches 3 unless score @s rank matches 4 unless score @s rank matches 5 run team join newbe @s
execute as @a if score @s rank matches 1 run team join 1 @s
execute as @a if score @s rank matches 2 run team join 2 @s
execute as @a if score @s rank matches 3 run team join 3 @s
execute as @a if score @s rank matches 4 run team join 4 @s
execute as @a if score @s rank matches 5 run team join 5 @s

# 환생레벨업
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s new 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s temprank 1
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (1/5)","color":"#abffab"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s ""
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 인챈트 : 효율 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 버프 : 신속 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s wood 0
execute as @a[scores={temprank=1}] run scoreboard players set @s rank 1
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s new 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s temprank 2
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (2/5)","color":"#abffab"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s ""
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 인챈트 : 효율 2 / 내구성 1","color":"gray"}
execute as @a[scores={wood=200000..},team=1] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s wood 0
execute as @a[scores={temprank=2}] run scoreboard players set @s rank 2
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s new 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s temprank 3
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (3/5)","color":"#abffab"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s ""
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 인챈트 : 효율 3 / 내구성 2","color":"gray"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 버프 : 신속 2","color":"gray"}
execute as @a[scores={wood=400000..},team=2] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s wood 0
execute as @a[scores={temprank=3}] run scoreboard players set @s rank 3
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s new 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s temprank 4
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (4/5)","color":"#abffab"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s ""
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 인챈트 : 효율 4","color":"gray"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 나무보급 : 30초에 1개","color":"gray"}
execute as @a[scores={wood=700000..},team=3] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s wood 0
execute as @a[scores={temprank=4}] run scoreboard players set @s rank 4
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s new 0
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s temprank 5
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (5/5)","color":"#abffab"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s ""
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":" + 인챈트 : 효율 5 / 내구성 3","color":"gray"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":" + 나무보급 : 15초에 1개","color":"gray"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s ""
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":"모든 환생을 마치신 당신! 축하드립니다.","color":"gold"}
execute as @a[scores={wood=1000000..},team=4] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s wood 0
execute as @a[scores={temprank=5}] run scoreboard players set @s rank 5

# 환생 버프
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s efficiency 1
execute as @a[team=1] run effect give @s minecraft:speed infinite 0 true
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s efficiency 2
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s unbreaking 1
execute as @a[team=2] run effect give @s minecraft:speed infinite 0 true
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s efficiency 3
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=3] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s efficiency 4
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=4] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s efficiency 5
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5,nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=5] run effect give @s minecraft:speed infinite 1 true

execute as @a[team=4] run scoreboard players add @s autowood 1
execute as @a[team=5] run scoreboard players add @s autowood 1
execute as @a[scores={autowood=600..},team=4] run give @s minecraft:oak_log 1
execute as @a[scores={autowood=600..},team=4] at @s run title @s actionbar {"text":"+ 잠수원목 1개 (환생)","color":"aqua","bold":true}
execute as @a[scores={autowood=600..},team=4] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[scores={autowood=600..},team=4] run scoreboard players set @s autowood 0
execute as @a[scores={autowood=300..},team=5] run give @s minecraft:oak_log 1
execute as @a[scores={autowood=300..},team=5] at @s run title @s actionbar {"text":"+ 잠수원목 1개 (환생)","color":"aqua","bold":true}
execute as @a[scores={autowood=300..},team=5] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[scores={autowood=300..},team=5] run scoreboard players set @s autowood 0

# 상점 이동
execute as @a[scores={shopin=1..}] run tp @s 29000000 250 29000000
execute as @a[scores={shopin=1..}] run give @s minecraft:grass_block{display:{Name:'[{"text":"지상","italic":false,"bold":true,"color":"green"}]',Lore:['[{"text":"버려서 지상으로 이동","italic":false,"color":"#abffab"}]']}}
execute as @a[scores={shopin=1..}] run scoreboard players set @s shopin 0

# 지상 이동
execute as @a[scores={shopout=1..}] run spreadplayers 0 0 0 500 false @s
execute as @a[scores={shopout=1..}] run give @s minecraft:diamond{display:{Name:'[{"text":"상점","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"버려서 상점으로 이동","italic":false,"color":"#abffab"}]']}}
execute as @a[scores={shopout=1..}] run scoreboard players set @s shopout 0

# 쓰레기방
execute as @a[x=29000000,y=250,z=28999995,dx=0,dy=0,dz=0] run tp @s 29000000.5 240 29000000.5
execute as @a[x=28999996,y=240,z=28999995,dx=0,dy=0,dz=0] run tp @s 29000000.5 250 29000000.5
execute as @e[type=minecraft:item,x=28999995,y=240,z=28999994,dy=4,dx=10,dz=12,nbt=!{Item:{id:"minecraft:stick"}},nbt=!{Item:{id:"minecraft:diamond"}},nbt=!{Item:{id:"minecraft:grass_block"}}] run kill @s

# 건축 플레이스
execute as @a[x=28999998,y=250,z=29000005,dx=0,dy=0,dz=0] run tp @s -28999999.5 250 -28999999.5
execute as @a[x=-29000000,y=250,z=-28999994,dx=0,dy=0,dz=0] run tp @s 29000000.5 250 29000000.5
particle minecraft:end_rod -28999999.5 250 -28999978.5 3.3 0.1 3.3 0 10 force

# 나무 기부 시스템
scoreboard players remove @a[scores={Backiron1=1..}] Gwood1 1
scoreboard players remove @a[scores={Backiron1=1..}] Backiron1 1
execute as @a[scores={Gwood1=1..}] run give @s minecraft:gold_nugget 1
execute as @a[scores={Gwood1=1..}] run title @s actionbar {"text":"+ 금조각 1개","color":"yellow","bold":true}
execute as @a[scores={Gwood1=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backiron2=1..}] if score @s Gwood1 <= 0 num run give @s iron_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 1개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Backiron2=1..}] run scoreboard players remove @s Backiron2 1
execute as @a[scores={Gwood1=1..}] run scoreboard players add ok Gwood1 1
execute as @a[scores={Gwood1=1..}] run scoreboard players remove @s Gwood1 1
execute as @a if score @s Gwood1 < 0 num if score ok Gwood1 > 0 num run function wood:gw1

scoreboard players remove @a[scores={Backgold1=1..}] Gwood2 1
scoreboard players remove @a[scores={Backgold1=1..}] Backgold1 1
execute as @a[scores={Gwood2=1..}] run give @s minecraft:gold_nugget 5
execute as @a[scores={Gwood2=1..}] run title @s actionbar {"text":"+ 금조각 5개","color":"yellow","bold":true}
execute as @a[scores={Gwood2=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backgold2=1..}] if score @s Gwood2 <= 0 num run give @s gold_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 5개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Backgold2=1..}] run scoreboard players remove @s Backgold2 1
execute as @a[scores={Gwood2=1..}] run scoreboard players add ok Gwood2 1
execute as @a[scores={Gwood2=1..}] run scoreboard players remove @s Gwood2 1
execute as @a if score @s Gwood2 < 0 num if score ok Gwood2 > 0 num run function wood:gw2

scoreboard players remove @a[scores={Backdiamond1=1..}] Gwood3 1
scoreboard players remove @a[scores={Backdiamond1=1..}] Backdiamond1 1
execute as @a[scores={Gwood3=1..}] run give @s minecraft:gold_nugget 10
execute as @a[scores={Gwood3=1..}] run title @s actionbar {"text":"+ 금조각 10개","color":"yellow","bold":true}
execute as @a[scores={Gwood3=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backdiamond2=1..}] if score @s Gwood3 <= 0 num run give @s diamond_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 10개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Backdiamond2=1..}] run scoreboard players remove @s Backdiamond2 1
execute as @a[scores={Gwood3=1..}] run scoreboard players add ok Gwood3 1
execute as @a[scores={Gwood3=1..}] run scoreboard players remove @s Gwood3 1
execute as @a if score @s Gwood3 < 0 num if score ok Gwood3 > 0 num run function wood:gw3

scoreboard players remove @a[scores={Backemerald1=1..}] Gwood4 1
scoreboard players remove @a[scores={Backemerald1=1..}] Backemerald1 1
execute as @a[scores={Gwood4=1..}] run give @s minecraft:gold_nugget 20
execute as @a[scores={Gwood4=1..}] run title @s actionbar {"text":"+ 금조각 20개","color":"yellow","bold":true}
execute as @a[scores={Gwood4=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backemerald2=1..}] if score @s Gwood4 <= 0 num run give @s emerald_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 20개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}
execute as @a[scores={Backemerald2=1..}] run scoreboard players remove @s Backemerald2 1
execute as @a[scores={Gwood4=1..}] run scoreboard players add ok Gwood4 1
execute as @a[scores={Gwood4=1..}] run scoreboard players remove @s Gwood4 1
execute as @a if score @s Gwood4 < 0 num if score ok Gwood4 > 0 num run function wood:gw4

# 하늘의 눈 아이템 (꼭대기 tp)
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y >= over y run tellraw @s {"text":"높은 장소에서 이 아이템을 사용할 수 없습니다!","color":"red"}
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y >= over y run scoreboard players set @s endereye 1
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run spreadplayers ~ ~ 0 1 false @s
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run tellraw @s {"text":"꼭대기로 이동!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[scores={endereye=1}] run give @s ender_eye{display:{Name:'[{"text":"하늘의 눈","italic":false,"bold":true,"color":"aqua"}]', Lore:['[{"text":"1개만 왼손에 들어 꼭대기로 이동","italic":false,"color":"#abffab"}]']}}
execute as @a[scores={endereye=1}] run scoreboard players set @s endereye 0

# 엔더진주
execute as @a[scores={enderpearl=1}] at @s if score @s y >= over y run tellraw @s {"text":"높은 장소에서 이 아이템을 사용할 수 없습니다!","color":"red"}
execute as @a[scores={enderpearl=1}] at @s if score @s y >= over y run kill @e[type=ender_pearl,limit=1,sort=nearest]
execute as @a[scores={enderpearl=1}] at @s if score @s y >= over y run give @s ender_pearl 1
execute as @a[scores={enderpearl=1}] at @s run scoreboard players set @s enderpearl 0

# 바람의 힘 아이템 (주변 나뭇잎 제거)
execute as @a[nbt={Inventory:[{id:"minecraft:feather",Slot:-106b,Count:1b}]}] at @s run fill ~30 -64 ~30 ~-30 100 ~-30 minecraft:air replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:feather",Slot:-106b,Count:1b}]}] at @s run tellraw @s {"text":"나뭇잎 제거!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:feather",Slot:-106b,Count:1b}]}] at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:feather",Slot:-106b,Count:1b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air

# 플레이어 추적 아이템 (랜덤 플레이어 tp)
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run tp @s @r[limit=1,nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:-106b}]}]
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run tellraw @s {"text":"랜덤한 플레이어에게 tp!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run scoreboard players set @s netherstar 1
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run tellraw @s {"text":"서버 접속자 1명일때 사용 불가능합니다!","color":"red"}
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]}] at @s if entity @a[nbt={Inventory:[{id:"minecraft:nether_star",Slot:-106b,Count:1b}]},sort=furthest,limit=1] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[scores={netherstar=1}] run give @s nether_star{display:{Name:'[{"text":"플레이어 추적","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 랜덤 플레이어에게 tp","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={netherstar=1}] run scoreboard players set @s netherstar 0

# 시간변경 아이템 (아침, 점심, 저녁, 밤)
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b,tag:{display:{Name:'[{"text":"시간변경 (아침)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 아침으로 변경","italic":false,"color":"#abffab"}]']}}}]}] run time set 0
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b,tag:{display:{Name:'[{"text":"시간변경 (점심)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 점심으로 변경","italic":false,"color":"#abffab"}]']}}}]}] run time set 6000
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b,tag:{display:{Name:'[{"text":"시간변경 (저녁)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 저녁으로 변경","italic":false,"color":"#abffab"}]']}}}]}] run time set 12000
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b,tag:{Enchantments:[{}],display:{Name:'[{"text":"시간변경 (밤)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"1개만 왼손에 들어 밤으로 변경","italic":false,"color":"#abffab"}','{"text":"주의 : 밤에는 나무가 자라지 않음","italic":false,"color":"red","bold":true}']}}}]}] run time set 18000
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b}]}] run tellraw @s {"text":"시간변경 완료!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b}]}] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,Count:1b}]}] run item replace entity @s weapon.offhand with minecraft:air

# 날씨변경 아이템 (비, 맑음)
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_tear",Slot:-106b,Count:1b}]}] run weather rain
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_tear",Slot:-106b,Count:1b}]}] run tellraw @s {"text":"날씨변경 완료!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_tear",Slot:-106b,Count:1b}]}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_tear",Slot:-106b,Count:1b}]}] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[nbt={Inventory:[{id:"minecraft:sugar",Slot:-106b,Count:1b}]}] run weather clear
execute as @a[nbt={Inventory:[{id:"minecraft:sugar",Slot:-106b,Count:1b}]}] run tellraw @s {"text":"날씨변경 완료!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:sugar",Slot:-106b,Count:1b}]}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:sugar",Slot:-106b,Count:1b}]}] run item replace entity @s weapon.offhand with minecraft:air

# 피버타임
scoreboard players remove @a[scores={fevertime=1..}] fevertime 1
execute as @a unless score @s feverreset matches 1 store result score @s feverset run random value 400..1000
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] unless score @s feverreset matches 1 store result score @s feverset run random value 400..900
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] unless score @s feverreset matches 1 store result score @s feverset run random value 400..800
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] unless score @s feverreset matches 1 store result score @s feverset run random value 400..700
execute as @a unless score @s feverreset matches 1 run scoreboard players set @s feverreset 1
execute as @a if score @s fevernow >= @s feverset run effect give @s haste 20 3
execute as @a if score @s fevernow >= @s feverset run effect give @s speed 20 1
execute as @a if score @s fevernow >= @s feverset run effect give @s jump_boost 20 1
execute as @a if score @s fevernow >= @s feverset run effect give @s night_vision 20 0
execute as @a if score @s fevernow >= @s feverset run effect give @s glowing 20 0
execute as @a at @s if score @s fevernow >= @s feverset run fill ~5 -64 ~5 ~-5 100 ~-5 minecraft:air replace minecraft:oak_leaves
execute as @a if score @s fevernow >= @s feverset run title @s times 10 30 5
execute as @a if score @s fevernow >= @s feverset run title @s subtitle {"text":"20s","color":"yellow"}
execute as @a if score @s fevernow >= @s feverset run title @s title [{"text":"F","color":"red"},{"text":"E","color":"gold"},{"text":"V","color":"yellow"},{"text":"E","color":"green"},{"text":"R ","color":"dark_green"},{"text":"T","color":"aqua"},{"text":"I","color":"blue"},{"text":"M","color":"dark_blue"},{"text":"E","color":"dark_purple"}]
execute as @a at @s if score @s fevernow >= @s feverset run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 0
execute as @a at @s if score @s fevernow >= @s feverset run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 400
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s feverreset 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s feverend 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s fevernow 0
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run give @s minecraft:oak_log 1
execute as @a[scores={fevernow=1..}] at @s if score @s fevertime > 0 num run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
execute as @a[scores={fevernow=1..}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 1개 (피버타임)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 2개 (피버타임/갑옷)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run scoreboard players remove @s fevernow 1
execute as @a[scores={fevertime=0}] run scoreboard players add @s feverend 1
execute as @a[scores={feverend=1}] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 1 0.3 1 0 200 force
execute as @a[scores={feverend=1}] at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 0.6

# 식량지급 (능력갑옷)
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s autofood 1
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run give @s melon_slice
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run title @s actionbar {"text":"+ 수박 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run give @s apple
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run title @s actionbar {"text":"+ 사과 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run give @s golden_carrot
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={autofood=12000..}] run title @s actionbar {"text":"+ 황금당근 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}}]},scores={autofood=12000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
scoreboard players set @a[scores={autofood=12000..}] autofood 0

# 잠수원목 (능력갑옷)
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s A_autowood 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run scoreboard players set @s A_autowood 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run scoreboard players set @s A_autowood 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run scoreboard players set @s A_autowood 0