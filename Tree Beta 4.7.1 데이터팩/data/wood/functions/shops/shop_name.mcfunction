execute as @a[limit=1] run scoreboard players add n shopname 1

# 상점
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal1
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal2
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal3
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal4
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal5
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal6
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal7
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove normal8
execute if score n shopname matches 15 run execute as @e[tag=normal_1] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal1
execute if score n shopname matches 15 run execute as @e[tag=normal_2] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal2
execute if score n shopname matches 15 run execute as @e[tag=normal_3] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal3
execute if score n shopname matches 15 run execute as @e[tag=normal_4] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal4
execute if score n shopname matches 15 run execute as @e[tag=normal_5] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal5
execute if score n shopname matches 15 run execute as @e[tag=normal_6] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal6
execute if score n shopname matches 15 run execute as @e[tag=normal_7] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal7
execute if score n shopname matches 15 run execute as @e[tag=normal_8] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add normal8
execute if score n shopname matches 20 run data merge entity @e[tag=normal1,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"나무꾼","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal2,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"약물 제조사","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal3,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"사치템 판매자","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal4,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"화폐 교환","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal5,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"도구 전문가","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal6,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"요리사","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal7,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"능력갑옷 판매자","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=normal8,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"능력갑옷 전문가","color":"gold"}]'}

# 건축 플레이스
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build1
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build2
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build3
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build4
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build5
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build6
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build7
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build8
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build9
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build10
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove build11
execute if score n shopname matches 15 run execute as @e[tag=build_1] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build1
execute if score n shopname matches 15 run execute as @e[tag=build_2] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build2
execute if score n shopname matches 15 run execute as @e[tag=build_3] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build3
execute if score n shopname matches 15 run execute as @e[tag=build_4] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build4
execute if score n shopname matches 15 run execute as @e[tag=build_5] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build5
execute if score n shopname matches 15 run execute as @e[tag=build_6] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build6
execute if score n shopname matches 15 run execute as @e[tag=build_7] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build7
execute if score n shopname matches 15 run execute as @e[tag=build_8] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build8
execute if score n shopname matches 15 run execute as @e[tag=build_9] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build9
execute if score n shopname matches 15 run execute as @e[tag=build_10] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build10
execute if score n shopname matches 15 run execute as @e[tag=build_11] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add build11
execute if score n shopname matches 20 run data merge entity @e[tag=build1,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"건축도구 제조인","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build2,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"Tree 자선단체","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build3,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"목제 판매자 1","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build4,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"목제 판매자 2","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build5,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"색깔블럭 판매자","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build6,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"일반블럭 판매자 1","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build7,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"일반블럭 판매자 2","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build8,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"기타블럭 판매자","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build9,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"목제 환불","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build10,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"색깔/기타블럭 환불","color":"gold"}]'}
execute if score n shopname matches 20 run data merge entity @e[tag=build11,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"일반블럭 환불","color":"gold"}]'}

# 도박장
execute if score n shopname matches 10 run tag @e[type=minecraft:villager] remove playG1
execute if score n shopname matches 15 run execute as @e[tag=playG_1] at @s run tag @e[type=minecraft:villager,limit=1,sort=nearest] add playG1
execute if score n shopname matches 20 run data merge entity @e[tag=playG1,limit=1,type=minecraft:villager] {CustomNameVisible:1b,CustomName:'[{"text":"티켓 거래자","color":"gold"}]'}