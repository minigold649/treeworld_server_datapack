# 건축 플레이스
particle minecraft:composter 28999998.5 250.1 29000005.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter -28999999.5 250.1 -28999993.5 0.3 0.05 0.3 0 10 force
execute as @a[x=28999998,y=250,z=29000005,dx=0,dy=0,dz=0] run tp @s -28999999.5 250 -28999999.5
execute as @a[x=-29000000,y=250,z=-28999994,dx=0,dy=0,dz=0] run tp @s 29000000.5 250 29000000.5
function wood:build_main

# 도박장
particle minecraft:composter 29000002.5 250.1 29000005.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter -29000003.5 250.1 29000000.5 0.3 0.05 0.3 0 10 force
execute as @a[x=29000002,y=250,z=29000005,dx=0,dy=0,dz=0] run tp @s -29000000 250 29000000
execute as @a[x=-29000004,y=250,z=29000000,dx=0,dy=0,dz=0] run tp @s 29000000.5 250 29000000.5
function wood:play_g/g_main

# 준비중...
#particle minecraft:composter 29000000.5 250.1 28999995.5 0.3 0.05 0.3 0 10 force
#execute as @a[x=29000000,y=250,z=28999995,dx=0,dy=0,dz=0] run tp @s ? ? ?

# 주민 이름
function wood:shops/shop_name

# 기타 시스템
function wood:remove_item
bossbar set tree players @a
effect give @a resistance infinite 255 true
recipe take @a *
clear @a glass_bottle
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @e[type=minecraft:item] if data entity @s Thrower run scoreboard players add @s item 1
execute as @e[type=minecraft:item,scores={item=1}] run data merge entity @s {Owner:[I;0,1,0,1]}
execute as @e[type=minecraft:item,scores={item=1..}] store result entity @s Owner[0] double 1 run data get entity @s Thrower[0]
execute as @e[type=minecraft:item,scores={item=1..}] store result entity @s Owner[1] double 1 run data get entity @s Thrower[1]
execute as @e[type=minecraft:item,scores={item=1..}] store result entity @s Owner[2] double 1 run data get entity @s Thrower[2]
execute as @e[type=minecraft:item,scores={item=1..}] store result entity @s Owner[3] double 1 run data get entity @s Thrower[3]
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}

# 300개 랜덤이벤트
execute as @a[scores={300Revent=300..}] store result score @s Revent run random value 1..10000
execute as @a[scores={300Revent=300..}] run title @s subtitle ""
execute as @a[scores={300Revent=300..}] run title @s times 10 30 5
# 10% : 1000 / 1% : 100 / 0.1% : 10 -----------------------------------
execute as @a[scores={Revent=1..3500}] if score @s 300Revent matches 300 run title @s subtitle {"text":"10s","color":"yellow"}
execute as @a[scores={Revent=1..3500}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.villager.work_cleric master @s ~ ~ ~ 1 2
execute as @a[scores={Revent=1..800}] if score @s 300Revent matches 300 run effect give @s haste 10 0
execute as @a[scores={Revent=1..800}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.1","color":"green"}
execute as @a[scores={Revent=801..1400}] if score @s 300Revent matches 300 run effect give @s haste 10 1
execute as @a[scores={Revent=801..1400}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.2","color":"green"}
execute as @a[scores={Revent=1401..1800}] if score @s 300Revent matches 300 run effect give @s haste 10 2
execute as @a[scores={Revent=1401..1800}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.3","color":"green"}
execute as @a[scores={Revent=1801..1900}] if score @s 300Revent matches 300 run effect give @s haste 10 3
execute as @a[scores={Revent=1801..1900}] if score @s 300Revent matches 300 run title @s title {"text":"성급함 LV.4","color":"green"}
execute as @a[scores={Revent=1901..2700}] if score @s 300Revent matches 300 run effect give @s jump_boost 10 1
execute as @a[scores={Revent=1901..2700}] if score @s 300Revent matches 300 run title @s title {"text":"점프강화 LV.2","color":"green"}
execute as @a[scores={Revent=2701..3500}] if score @s 300Revent matches 300 run effect give @s speed 10 1
execute as @a[scores={Revent=2701..3500}] if score @s 300Revent matches 300 run title @s title {"text":"신속 LV.2","color":"green"}

execute as @a[scores={Revent=3501..5699}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=5700}] at @s if score @s 300Revent matches 300 run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=5701..5705}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=3501..4000}] if score @s 300Revent matches 300 run give @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[scores={Revent=3501..4000}] if score @s 300Revent matches 300 run title @s title {"text":"도박티켓 1개","color":"green"}
execute as @a[scores={Revent=4001..4800}] if score @s 300Revent matches 300 run give @s oak_log 10
execute as @a[scores={Revent=4001..4800}] if score @s 300Revent matches 300 run title @s title {"text":"원목 10개","color":"green"}
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
execute as @a[scores={Revent=5706..6505}] at @s if score @s 300Revent matches 300 run fill ~5 -64 ~5 ~-5 100 ~-5 oak_log replace oak_leaves
execute as @a[scores={Revent=5706..6505}] if score @s 300Revent matches 300 run title @s title {"text":"주변나뭇잎 -> 나무","color":"green"}
execute as @a[scores={Revent=6506..7305}] at @s if score @s 300Revent matches 300 run fill ~5 -64 ~5 ~-5 100 ~-5 air replace oak_leaves
execute as @a[scores={Revent=6506..7305}] if score @s 300Revent matches 300 run title @s title {"text":"주변나뭇잎 제거","color":"green"}

execute as @a[scores={Revent=7306..7905}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
execute as @a[scores={Revent=7306..7555}] if score @s 300Revent matches 300 run enchant @s efficiency 1
execute as @a[scores={Revent=7306..7555}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.1","color":"green"}
execute as @a[scores={Revent=7556..7675}] if score @s 300Revent matches 300 run enchant @s efficiency 2
execute as @a[scores={Revent=7556..7675}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_2
execute as @a[scores={Revent=7556..7675}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.2","color":"green"}
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 run enchant @s efficiency 3
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_3
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_3
execute as @a[scores={Revent=7676..7745}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.3","color":"green"}
execute as @a[scores={Revent=7746..7785}] if score @s 300Revent matches 300 unless data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]}}} run item modify entity @s weapon.mainhand wood:efficiency_4
execute as @a[scores={Revent=7746..7785}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.4","color":"green"}
execute as @a[scores={Revent=7786..7805}] if score @s 300Revent matches 300 run item modify entity @s weapon.mainhand wood:efficiency_5
execute as @a[scores={Revent=7786..7805}] if score @s 300Revent matches 300 run title @s title {"text":"효율 LV.5","color":"green"}
execute as @a[scores={Revent=7806..7865}] if score @s 300Revent matches 300 run enchant @s unbreaking 1
execute as @a[scores={Revent=7806..7865}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.1","color":"green"}
execute as @a[scores={Revent=7866..7900}] if score @s 300Revent matches 300 run enchant @s unbreaking 2
execute as @a[scores={Revent=7866..7900}] if score @s 300Revent matches 300 if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}} run item modify entity @s weapon.mainhand wood:unbreaking_2
execute as @a[scores={Revent=7866..7900}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.2","color":"green"}
execute as @a[scores={Revent=7901..7905}] if score @s 300Revent matches 300 run item modify entity @s weapon.mainhand wood:unbreaking_3
execute as @a[scores={Revent=7901..7905}] if score @s 300Revent matches 300 run title @s title {"text":"내구성 LV.3","color":"green"}

execute as @a[scores={Revent=7906..9500}] at @s if score @s 300Revent matches 300 run playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 0
execute as @a[scores={Revent=7906..8405}] if score @s 300Revent matches 300 run give @s iron_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 2개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=7906..8405}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (철)","color":"green"}
execute as @a[scores={Revent=8406..8705}] if score @s 300Revent matches 300 run give @s lapis_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 4개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=8406..8705}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (청금석)","color":"green"}
execute as @a[scores={Revent=8706..8905}] if score @s 300Revent matches 300 run give @s gold_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 8개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=8706..8905}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (금)","color":"green"}
execute as @a[scores={Revent=8906..9005}] if score @s 300Revent matches 300 run give @s redstone_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 16개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=8906..9005}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (레드스톤)","color":"green"}
execute as @a[scores={Revent=9006..9065}] if score @s 300Revent matches 300 run give @s diamond_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 32개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=9006..9065}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (다이아몬드)","color":"green"}
execute as @a[scores={Revent=9066..9100}] if score @s 300Revent matches 300 run give @s emerald_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 64개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Revent=9066..9100}] if score @s 300Revent matches 300 run title @s title {"text":"기부블럭 (에메랄드)","color":"green"}

execute as @a[scores={Revent=9101..9500}] if score @s 300Revent matches 300 run scoreboard players set @a fevernow 1000
execute as @a[scores={Revent=9101..9500}] if score @s 300Revent matches 300 run title @a actionbar {"text":"모든 플레이어 피버타임! (300이벤트)","color":"gold","bold":true}
execute as @a[scores={Revent=9101..9500}] if score @s 300Revent matches 300 at @a run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1

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
execute as @a[scores={Revent=9851..9900}] at @s if score @s 300Revent matches 300 run fill ~5 -64 ~5 ~-5 100 ~-5 oak_leaves replace oak_log
execute as @a[scores={Revent=9851..9900}] if score @s 300Revent matches 300 run title @s title {"text":"주변나무 -> 나뭇잎","color":"dark_red"}
execute as @a[scores={Revent=9901..10000}] if score @s 300Revent matches 300 run clear @s oak_log 10
execute as @a[scores={Revent=9901..10000}] if score @s 300Revent matches 300 run title @s title {"text":"원목 10개 소멸","color":"dark_red"}
# ------------------------------------------------------------------
execute as @a[scores={300Revent=300..}] run scoreboard players set @s 300Revent 0

# 나무 지급 (기본 / 능력갑옷 / 환생)
execute as @a[scores={tempwood=1..}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..},team=4] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..},team=5] run give @s minecraft:oak_log 2
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..},team=4] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 1개 (환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..},team=5] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 2개 (환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 1개 (갑옷)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..},team=4, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 2개 (갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..},team=5, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 3개 (갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 1개 (갑옷)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, team=4, nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 2개 (갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, team=5, nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevertime matches 0 run title @s actionbar {"text":"+ 추가원목 3개 (갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={tempwood=1..}, team=4] at @s if score @s fevertime matches 0 run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 2
execute as @a[scores={tempwood=1..}, team=5] at @s if score @s fevertime matches 0 run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 2
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @a[scores={tempwood=1..}, nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevertime matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @a[scores={tempwood=1..}] run scoreboard players remove @s tempwood 1

# 팀
execute as @a unless score @s rank matches 1 unless score @s rank matches 2 unless score @s rank matches 3 unless score @s rank matches 4 unless score @s rank matches 5 run team join newbe @s
execute as @a if score @s rank matches 1 run team join 1 @s
execute as @a if score @s rank matches 2 run team join 2 @s
execute as @a if score @s rank matches 3 run team join 3 @s
execute as @a if score @s rank matches 4 run team join 4 @s
execute as @a if score @s rank matches 5 run team join 5 @s

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
execute as @a[scores={new=2},team=1] run give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}
execute as @a[scores={new=2},team=2] run give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}
execute as @a[scores={new=2},team=3] run give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}
execute as @a[scores={new=2},team=4] run give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}
execute as @a[scores={new=2},team=5] run give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}

# 환생레벨업
execute as @a[scores={wood=100000..},team=newbe] run tellraw @a [{"selector":"@s"},{"text":"님이 환생 ","color":"gold","bold":true},{"text":"1","color":"green","bold":true},{"text":"레벨을 달성하셨습니다.","color":"gold","bold":true}]
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s new 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s temprank 1
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (1/5)","color":"#abffab"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s ""
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 인챈트 : 효율 1 / 내구성 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 버프 : 신속 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 피버타임 : 갯수 100개 감소","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s wood 0
execute as @a[scores={temprank=1}] run scoreboard players set @s rank 1
execute as @a[scores={wood=200000..},team=1] run tellraw @a [{"selector":"@s"},{"text":"님이 환생 ","color":"gold","bold":true},{"text":"2","color":"aqua","bold":true},{"text":"레벨을 달성하셨습니다.","color":"gold","bold":true}]
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s new 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s temprank 2
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (2/5)","color":"#abffab"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s ""
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 인챈트 : 효율 2 / 내구성 2","color":"gray"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 버프 : 신속 2","color":"gray"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 피버타임 : 갯수 200개 감소","color":"gray"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 지상으로 이동시 주변 나뭇잎을 나무로 변환 ","color":"gray"}
execute as @a[scores={wood=200000..},team=1] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s wood 0
execute as @a[scores={temprank=2}] run scoreboard players set @s rank 2
execute as @a[scores={wood=400000..},team=2] run tellraw @a [{"selector":"@s"},{"text":"님이 환생 ","color":"gold","bold":true},{"text":"3","color":"yellow","bold":true},{"text":"레벨을 달성하셨습니다.","color":"gold","bold":true}]
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s new 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s temprank 3
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (3/5)","color":"#abffab"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s ""
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 인챈트 : 효율 3 / 내구성 3","color":"gray"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 피버타임 : 갯수 300개 감소","color":"gray"}
execute as @a[scores={wood=400000..},team=2] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s wood 0
execute as @a[scores={temprank=3}] run scoreboard players set @s rank 3
execute as @a[scores={wood=700000..},team=3] run tellraw @a [{"selector":"@s"},{"text":"님이 환생 ","color":"gold","bold":true},{"text":"4","color":"light_purple","bold":true},{"text":"레벨을 달성하셨습니다.","color":"gold","bold":true}]
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s new 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s temprank 4
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (4/5)","color":"#abffab"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s ""
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 인챈트 : 효율 4","color":"gray"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 잠수원목 : 30초에 1개","color":"gray"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 추가원목 : 1개","color":"gray"}
execute as @a[scores={wood=700000..},team=3] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s wood 0
execute as @a[scores={temprank=4}] run scoreboard players set @s rank 4
execute as @a[scores={wood=1000000..},team=4] run tellraw @a [{"selector":"@s"},{"text":"님이 환생 ","color":"gold","bold":true},{"text":"5","color":"gold","bold":true},{"text":"레벨을 달성하셨습니다.","color":"gold","bold":true}]
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s new 0
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s temprank 5
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (5/5)","color":"#abffab"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s ""
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":" + 인챈트 : 효율 5","color":"gray"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":" + 잠수원목 : 15초에 1개","color":"gray"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":" + 추가원목 : 2개","color":"gray"}
execute as @a[scores={wood=1000000..},team=4] run tellraw @s ""
execute as @a[scores={wood=1000000..},team=4] run tellraw @s {"text":"모든 환생을 마치신 당신! 축하드립니다.","color":"gold"}
execute as @a[scores={wood=1000000..},team=4] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1
execute as @a[scores={wood=1000000..},team=4] run scoreboard players set @s wood 0
execute as @a[scores={temprank=5}] run scoreboard players set @s rank 5

# 환생 버프
execute as @a[team=1] run effect give @s minecraft:speed infinite 0 true
execute as @a[team=2] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=3] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=4] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=5] run effect give @s minecraft:speed infinite 1 true
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] run function wood:re_efficiency
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] run function wood:re_unbreaking
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] at @s run function wood:re_enchant
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] at @s run function wood:re_enchant
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] at @s run function wood:re_enchant
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] at @s run function wood:re_enchant
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] at @s run function wood:re_enchant
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",Count:1b,Slot:-106b,tag:{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] at @s run function wood:re_enchant
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

# 도끼 파괴 폭발
execute as @a[scores={tempwood2=1..}] run scoreboard players add @s wood 1
execute as @a[scores={tempwood2=1..}] run scoreboard players remove @s tempwood2 1
execute as @a[scores={stone_axe=1..}] at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.3 0.5 0 20 force
execute as @a[scores={stone_axe=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] store result score @s tempwood2 run fill ~1 ~1 ~1 ~-1 ~ ~-1 air replace oak_log
execute as @a[scores={stone_axe=1..}, nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s store result score @s tempwood2 run fill ~2 100 ~2 ~-2 -64 ~-2 air replace oak_log
execute as @a[scores={stone_axe=1..}] at @s store result score @s tempwood run scoreboard players get @s tempwood2 
execute as @a[scores={stone_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={stone_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={stone_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={stone_axe=1..}] at @s run scoreboard players set @s stone_axe 0
execute as @a[scores={iron_axe=1..}] at @s run particle minecraft:cloud ~ ~1 ~ 1 0.3 1 0 40 force
execute as @a[scores={iron_axe=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] store result score @s tempwood2 run fill ~1.5 ~1 ~1.5 ~-1.5 ~ ~-1.5 air replace oak_log
execute as @a[scores={iron_axe=1..}, nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s store result score @s tempwood2 run fill ~3 100 ~3 ~-3 -64 ~-3 air replace oak_log
execute as @a[scores={iron_axe=1..}] at @s store result score @s tempwood run scoreboard players get @s tempwood2
execute as @a[scores={iron_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={iron_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={iron_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={iron_axe=1..}] at @s run scoreboard players set @s iron_axe 0
execute as @a[scores={diamond_axe=1..}] at @s run particle minecraft:cloud ~ ~1 ~ 2 0.3 2 0 100 force
execute as @a[scores={diamond_axe=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] store result score @s tempwood2 run fill ~3 ~2 ~3 ~-3 ~ ~-3 air replace oak_log
execute as @a[scores={diamond_axe=1..}, nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s store result score @s tempwood2 run fill ~6 100 ~6 ~-6 -64 ~-6 air replace oak_log
execute as @a[scores={diamond_axe=1..}] at @s store result score @s tempwood run scoreboard players get @s tempwood2
execute as @a[scores={diamond_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={diamond_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={diamond_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={diamond_axe=1..}] at @s run scoreboard players set @s diamond_axe 0
execute as @a[scores={netherite_axe=1..}] at @s run particle minecraft:cloud ~ ~1 ~ 3 0.3 3 0 150 force
execute as @a[scores={netherite_axe=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] store result score @s tempwood2 run fill ~3 100 ~3 ~-3 ~ ~-3 air replace oak_log
execute as @a[scores={netherite_axe=1..}, nbt={Inventory:[{id:"minecraft:creeper_head",Count:1b,Slot:103b},{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s store result score @s tempwood2 run fill ~8 100 ~8 ~-8 -64 ~-8 air replace oak_log
execute as @a[scores={netherite_axe=1..}] at @s store result score @s tempwood run scoreboard players get @s tempwood2
execute as @a[scores={netherite_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={netherite_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={netherite_axe=1..}] at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1
execute as @a[scores={netherite_axe=1..}] at @s run scoreboard players set @s netherite_axe 0

# 주변 플레이어 버프
execute as @a[scores={nearplayer=10..}] at @s unless entity @p[distance=0.001..10] run scoreboard players set @s nearplayer 0
execute as @a at @s unless entity @p[distance=0.001..10] run scoreboard players remove @s nearplayer 1
execute as @a[scores={nearplayer=-2}] at @s run title @s actionbar {"text":"[ 주변 플레이어 버프 해제 ]","color":"red","bold":true}
execute as @a[scores={nearplayer=-2}] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0
execute as @a[scores={nearplayer=..-3}] at @s if entity @p[distance=0.001..10] run scoreboard players set @s nearplayer 0
execute as @a at @s if entity @p[distance=0.001..10] run scoreboard players add @s nearplayer 1
execute as @a[scores={nearplayer=2}] at @s run title @s actionbar {"text":"[ 주변 플레이어 버프 적용 ]","color":"green","bold":true}
execute as @a[scores={nearplayer=2}] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 1
execute as @a at @s if entity @p[distance=0.001..10] run effect give @s haste 2 1 false
execute as @a at @s if entity @p[distance=0.001..10] run effect give @s speed 2 1 false

# 상점/지상 이동&아이템
# - 상점
execute as @a[scores={shopin=1..}] run tp @s 29000000 250 29000000
execute as @a[scores={shopin=1..}] run scoreboard players set @s shopout2 0
execute as @a[scores={shopin=1..}] run scoreboard players set @s shopin2 1
execute as @a[scores={shopin2=1..},nbt=!{Inventory:[{Slot:8b,id:"minecraft:stick"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:amethyst_shard"}]}] run item replace entity @s hotbar.8 with minecraft:grass_block{display:{Name:'[{"text":"지상","italic":false,"bold":true,"color":"green"}]',Lore:['{"text":"버려서 지상으로 이동","italic":false,"color":"#abffab"}','{"text":"주의 : 이 칸에 다른 아이템을 넣으면 소멸됩니다.","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={shopin=1..}] run scoreboard players set @s shopin 0
# - 지상
scoreboard players add @a[team=2] shopout_wood 1
scoreboard players add @a[team=3] shopout_wood 1
scoreboard players add @a[team=4] shopout_wood 1
scoreboard players add @a[team=5] shopout_wood 1
execute as @a[scores={shopout=1..}] run spreadplayers 0 0 0 500 false @s
execute as @a[scores={shopout=1..}] run scoreboard players set @s shopin2 0
execute as @a[scores={shopout=1..}] run scoreboard players set @s shopout2 1
execute as @a[scores={shopout2=1..},nbt=!{Inventory:[{Slot:8b,id:"minecraft:stick"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:amethyst_shard"}]}] run item replace entity @s hotbar.8 with minecraft:diamond{display:{Name:'[{"text":"상점","italic":false,"bold":true,"color":"gold"}]',Lore:['{"text":"버려서 상점으로 이동","italic":false,"color":"#abffab"}','{"text":"주의 : 이 칸에 다른 아이템을 넣으면 소멸됩니다.","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={shopout=1..}] run scoreboard players set @s shopout_wood 0
execute as @a[scores={shopout=1..}] run scoreboard players set @s A_shopout_wood 0
execute as @a[scores={shopout_wood=5}] at @s run fill ~6 -64 ~6 ~-6 100 ~-6 oak_log replace oak_leaves
execute as @a[scores={A_shopout_wood=5}] at @s run fill ~20 -64 ~20 ~-20 100 ~-20 oak_log replace oak_leaves
execute as @a[scores={shopout_wood=5}] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0
execute as @a[scores={A_shopout_wood=5}] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0
execute as @a[scores={shopout=1..}] run scoreboard players set @s shopout 0
# - 아이템
execute as @a unless score @s shopin2 matches 1 unless score @s shopout2 matches 1 run scoreboard players set @s shopout2 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:grass_block"}}]

# 기부블럭
scoreboard players remove @a[scores={Backiron1=1..}] Gwood1 1
scoreboard players remove @a[scores={Backiron1=1..}] Backiron1 1
execute as @a[scores={Gwood1=1..}] run give @s minecraft:gold_nugget 2
execute as @a[scores={Gwood1=1..}] run title @s actionbar {"text":"+ 금조각 2개","color":"yellow","bold":true}
execute as @a[scores={Gwood1=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backiron2=1..}] if score @s Gwood1 <= 0 num run give @s iron_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 2개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backiron2=1..}] run scoreboard players remove @s Backiron2 1
execute as @a[scores={Gwood1=1..}] run scoreboard players add ok Gwood1 1
execute as @a[scores={Gwood1=1..}] run scoreboard players remove @s Gwood1 1
execute as @a if score @s Gwood1 < 0 num if score ok Gwood1 > 0 num run function wood:g_wood/gw1

scoreboard players remove @a[scores={Backgold1=1..}] Gwood2 1
scoreboard players remove @a[scores={Backgold1=1..}] Backgold1 1
execute as @a[scores={Gwood2=1..}] run give @s minecraft:gold_nugget 8
execute as @a[scores={Gwood2=1..}] run title @s actionbar {"text":"+ 금조각 8개","color":"yellow","bold":true}
execute as @a[scores={Gwood2=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backgold2=1..}] if score @s Gwood2 <= 0 num run give @s gold_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 8개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backgold2=1..}] run scoreboard players remove @s Backgold2 1
execute as @a[scores={Gwood2=1..}] run scoreboard players add ok Gwood2 1
execute as @a[scores={Gwood2=1..}] run scoreboard players remove @s Gwood2 1
execute as @a if score @s Gwood2 < 0 num if score ok Gwood2 > 0 num run function wood:g_wood/gw2

scoreboard players remove @a[scores={Backdiamond1=1..}] Gwood3 1
scoreboard players remove @a[scores={Backdiamond1=1..}] Backdiamond1 1
execute as @a[scores={Gwood3=1..}] run give @s minecraft:gold_nugget 32
execute as @a[scores={Gwood3=1..}] run title @s actionbar {"text":"+ 금조각 32개","color":"yellow","bold":true}
execute as @a[scores={Gwood3=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backdiamond2=1..}] if score @s Gwood3 <= 0 num run give @s diamond_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 32개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backdiamond2=1..}] run scoreboard players remove @s Backdiamond2 1
execute as @a[scores={Gwood3=1..}] run scoreboard players add ok Gwood3 1
execute as @a[scores={Gwood3=1..}] run scoreboard players remove @s Gwood3 1
execute as @a if score @s Gwood3 < 0 num if score ok Gwood3 > 0 num run function wood:g_wood/gw3

scoreboard players remove @a[scores={Backemerald1=1..}] Gwood4 1
scoreboard players remove @a[scores={Backemerald1=1..}] Backemerald1 1
execute as @a[scores={Gwood4=1..}] run give @s minecraft:gold_nugget 64
execute as @a[scores={Gwood4=1..}] run title @s actionbar {"text":"+ 금조각 64개","color":"yellow","bold":true}
execute as @a[scores={Gwood4=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backemerald2=1..}] if score @s Gwood4 <= 0 num run give @s emerald_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 64개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backemerald2=1..}] run scoreboard players remove @s Backemerald2 1
execute as @a[scores={Gwood4=1..}] run scoreboard players add ok Gwood4 1
execute as @a[scores={Gwood4=1..}] run scoreboard players remove @s Gwood4 1
execute as @a if score @s Gwood4 < 0 num if score ok Gwood4 > 0 num run function wood:g_wood/gw4

scoreboard players remove @a[scores={Backlapis1=1..}] Gwood5 1
scoreboard players remove @a[scores={Backlapis1=1..}] Backlapis1 1
execute as @a[scores={Gwood5=1..}] run give @s minecraft:gold_nugget 4
execute as @a[scores={Gwood5=1..}] run title @s actionbar {"text":"+ 금조각 4개","color":"yellow","bold":true}
execute as @a[scores={Gwood5=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backlapis2=1..}] if score @s Gwood5 <= 0 num run give @s lapis_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 4개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backlapis2=1..}] run scoreboard players remove @s Backlapis2 1
execute as @a[scores={Gwood5=1..}] run scoreboard players add ok Gwood5 1
execute as @a[scores={Gwood5=1..}] run scoreboard players remove @s Gwood5 1
execute as @a if score @s Gwood5 < 0 num if score ok Gwood5 > 0 num run function wood:g_wood/gw5

scoreboard players remove @a[scores={Backredstone1=1..}] Gwood6 1
scoreboard players remove @a[scores={Backredstone1=1..}] Backredstone1 1
execute as @a[scores={Gwood6=1..}] run give @s minecraft:gold_nugget 16
execute as @a[scores={Gwood6=1..}] run title @s actionbar {"text":"+ 금조각 16개","color":"yellow","bold":true}
execute as @a[scores={Gwood6=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[scores={Backredstone2=1..}] if score @s Gwood6 <= 0 num run give @s redstone_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 16개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}}
execute as @a[scores={Backredstone2=1..}] run scoreboard players remove @s Backredstone2 1
execute as @a[scores={Gwood6=1..}] run scoreboard players add ok Gwood6 1
execute as @a[scores={Gwood6=1..}] run scoreboard players remove @s Gwood6 1
execute as @a if score @s Gwood6 < 0 num if score ok Gwood6 > 0 num run function wood:g_wood/gw6

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

# 나무의 힘 아이템 (주변 나뭇잎을 나무로 변환)
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b,Count:1b}]}] at @s run fill ~30 -64 ~30 ~-30 100 ~-30 minecraft:oak_log replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b,Count:1b}]}] at @s run tellraw @s {"text":"나뭇잎 변환!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b,Count:1b}]}] at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 0
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b,Count:1b}]}] at @s run item replace entity @s weapon.offhand with minecraft:air

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
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] unless score @s feverreset matches 1 store result score @s feverset run random value 400..600
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] unless score @s feverreset matches 1 store result score @s feverset run random value 400..600
execute as @a[team=1] unless score @s feverreset matches 1 run scoreboard players remove @s feverset 100
execute as @a[team=2] unless score @s feverreset matches 1 run scoreboard players remove @s feverset 200
execute as @a[team=3] unless score @s feverreset matches 1 run scoreboard players remove @s feverset 300
execute as @a[team=4] unless score @s feverreset matches 1 run scoreboard players remove @s feverset 300
execute as @a[team=5] unless score @s feverreset matches 1 run scoreboard players remove @s feverset 300
execute as @a unless score @s feverreset matches 1 run scoreboard players set @s feverreset 1
execute as @a if score @s fevernow >= @s feverset run effect give @s haste 20 3
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 23 3
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 26 3
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 30 3
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 20 4
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 20 5
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 20 6
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 23 4
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 23 5
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 23 6
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 26 4
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 26 5
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 26 6
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 30 4
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 30 5
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 30 6
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s haste 30 6
execute as @a if score @s fevernow >= @s feverset run effect give @s speed 20 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s speed 23 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s speed 26 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s speed 30 1
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s speed 30 1
execute as @a if score @s fevernow >= @s feverset run effect give @s jump_boost 20 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s jump_boost 23 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s jump_boost 26 1
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s jump_boost 30 1
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s jump_boost 30 1
execute as @a if score @s fevernow >= @s feverset run effect give @s night_vision 20 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s night_vision 23 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s night_vision 26 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s night_vision 30 0
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s night_vision 30 0
execute as @a if score @s fevernow >= @s feverset run effect give @s glowing 20 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s glowing 23 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s glowing 26 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s glowing 30 0
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run effect give @s glowing 30 0
execute as @a at @s if score @s fevernow >= @s feverset run fill ~5 -64 ~5 ~-5 100 ~-5 minecraft:oak_log replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:iron_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevernow >= @s feverset run fill ~7 -64 ~7 ~-7 100 ~-7 minecraft:oak_log replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:iron_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevernow >= @s feverset run fill ~9 -64 ~9 ~-9 100 ~-9 minecraft:oak_log replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:iron_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevernow >= @s feverset run fill ~11 -64 ~11 ~-11 100 ~-11 minecraft:oak_log replace minecraft:oak_leaves
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevernow >= @s feverset run fill ~11 -64 ~11 ~-11 100 ~-11 minecraft:oak_log replace minecraft:oak_leaves
execute as @a if score @s fevernow >= @s feverset run title @s times 10 30 5
execute as @a if score @s fevernow >= @s feverset run title @s subtitle {"text":"20s","color":"yellow"}
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run title @s subtitle {"text":"23s","color":"yellow"}
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run title @s subtitle {"text":"26s","color":"yellow"}
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run title @s subtitle {"text":"30s","color":"yellow"}
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run title @s subtitle {"text":"30s","color":"yellow"}
execute as @a if score @s fevernow >= @s feverset run title @s title [{"text":"F","color":"red"},{"text":"E","color":"gold"},{"text":"V","color":"yellow"},{"text":"E","color":"green"},{"text":"R ","color":"dark_green"},{"text":"T","color":"aqua"},{"text":"I","color":"blue"},{"text":"M","color":"dark_blue"},{"text":"E","color":"dark_purple"}]
execute as @a at @s if score @s fevernow >= @s feverset run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 0
execute as @a at @s if score @s fevernow >= @s feverset run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 400
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 460
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 520
execute as @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 600
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] if score @s fevernow >= @s feverset run scoreboard players set @s fevertime 600
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s feverreset 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s feverend 0
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s fevernow 0
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run give @s minecraft:oak_log 1
execute as @a[scores={fevernow=1..}] at @s if score @s fevertime > 0 num run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
execute as @a[scores={fevernow=1..},team=!4,team=!5] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 1개 (피버타임)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=4] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 2개 (피버타임/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=5] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 3개 (피버타임/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=!4,team=!5,nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 2개 (피버타임/갑옷)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=4,nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 3개 (피버타임/갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=5,nbt={Inventory:[{id:"minecraft:golden_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:golden_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:golden_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:golden_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 4개 (피버타임/갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=!4,team=!5,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 2개 (피버타임/갑옷)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=4,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 3개 (피버타임/갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..},team=5,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 추가원목 4개 (피버타임/갑옷/환생)","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run scoreboard players remove @s fevernow 1
execute as @a[scores={fevertime=0}] run scoreboard players add @s feverend 1
execute as @a[scores={feverend=1}] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 1 0.3 1 0 200 force
execute as @a[scores={feverend=1}] at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 0.6

# 능력갑옷
# - 부자의 모자
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s A_autoGticket 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=60000..}] run give @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=60000..}] run title @s actionbar {"text":"+ 도박티켓 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=60000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=60000..}] run scoreboard players set @s A_autoGticket 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=48000..}] run give @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=48000..}] run title @s actionbar {"text":"+ 도박티켓 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=48000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=48000..}] run scoreboard players set @s A_autoGticket 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=36000..}] run give @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=36000..}] run title @s actionbar {"text":"+ 도박티켓 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=36000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoGticket=36000..}] run scoreboard players set @s A_autoGticket 0
# - 부자의 셔츠
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s A_autofood 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run give @s melon_slice
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run title @s actionbar {"text":"+ 수박 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run give @s apple
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run title @s actionbar {"text":"+ 사과 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run give @s golden_carrot
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autofood=12000..}] run title @s actionbar {"text":"+ 황금당근 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}}]},scores={A_autofood=12000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
scoreboard players set @a[scores={A_autofood=12000..}] A_autofood 0
# - 부자의 바지
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s A_autowood 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=1000..}] run scoreboard players set @s A_autowood 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=800..}] run scoreboard players set @s A_autowood 0
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run give @s minecraft:oak_log 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autowood=600..}] run scoreboard players set @s A_autowood 0
# - 부자의 신발
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] run scoreboard players add @s A_autoaxe 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run give @s iron_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:quartz",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run title @s actionbar {"text":"+ 철도끼 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run give @s diamond_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run title @s actionbar {"text":"+ 다이아몬드도끼 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run give @s netherite_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autoaxe=144000..}] run title @s actionbar {"text":"+ 네더라이트도끼 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]},scores={A_autoaxe=144000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
scoreboard players set @a[scores={A_autoaxe=144000..}] A_autoaxe 0
# - 부자 시리즈
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] run scoreboard players add @s A_autogold 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autogold=72000..}] store result score @s A_autogold_R run random value 1..2
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autogold=72000..}] if score @s A_autogold_R matches 2 run give @s gold_ingot 1
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autogold=72000..}] if score @s A_autogold_R matches 2 run title @s actionbar {"text":"+ 금괴 1개 (갑옷)","color":"aqua","bold":true}
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]},scores={A_autogold=72000..}] at @s if score @s A_autogold_R matches 2 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
scoreboard players set @a[scores={A_autogold=72000..}] A_autogold 0
# - 에너지 시리즈
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}}]}] run effect give @s night_vision 11 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}}]}] run effect give @s saturation 1 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}}]}] run effect clear @s hunger
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}}]}] run effect clear @s mining_fatigue
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}}]}] run effect clear @s slowness
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:diamond_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:diamond_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:diamond_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:wayfinder"}}}]}] run effect give @s haste 1 3 true
# - 마법 시리즈
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_helmet",Count:1b,Slot:103b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,Slot:102b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_leggings",Count:1b,Slot:101b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_boots",Count:1b,Slot:100b,tag:{Unbreakable:1b}}]}] at @s run fill ~3 -64 ~3 ~-3 100 ~-3 oak_log replace oak_leaves
# - Tree 시리즈
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}, {id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}}]}] run function wood:tree_armor
# - 숨겨진 시리즈
function wood:hidden_armor