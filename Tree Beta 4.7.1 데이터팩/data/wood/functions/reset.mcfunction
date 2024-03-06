function wood:entity

# 도박장
scoreboard objectives remove playG
scoreboard objectives add playG dummy
# - 자라나라 나무!
scoreboard objectives remove playGTree
scoreboard objectives remove GTree
scoreboard objectives add playGTree dummy
scoreboard objectives add GTree dummy
fill -28999996 266 29000021 -28999980 250 29000005 minecraft:air
setblock -28999988 250 29000013 minecraft:oak_sapling
setblock -28999988 251 29000013 minecraft:barrier
# - 트리룰렛
scoreboard objectives remove playGTrull
scoreboard objectives remove GTrull2
scoreboard objectives add playGTrull dummy
scoreboard objectives add GTrull2 dummy
fill -29000010 250 29000021 -29000024 250 29000007 minecraft:tinted_glass replace minecraft:glass
execute as @e[tag=GTrullAr1] at @s run setblock ~ ~ ~ minecraft:glass
execute as @e[tag=GTrullAr2] at @s run setblock ~ ~ ~ minecraft:glass
scoreboard players set @e[tag=GTrullAr1] GTrull_ar 1
scoreboard players set @e[tag=GTrullAr2] GTrull_ar 1
# - 트리머신
scoreboard objectives remove playGTma
scoreboard objectives remove GTma2
scoreboard objectives add playGTma dummy
scoreboard objectives add GTma2 dummy
scoreboard players set first GTma2 1
scoreboard players set second GTma2 1
scoreboard players set third GTma2 1
fill -29000008 251 29000038 -29000008 251 29000034 minecraft:oak_wood
fill -29000008 254 29000038 -29000008 254 29000034 minecraft:air
# - 나무의 길
scoreboard objectives remove playGTroad
scoreboard objectives remove GTroad2
scoreboard objectives add playGTroad dummy
scoreboard objectives add GTroad2 dummy
fill -28999997 257 29000033 -28999997 251 29000039 minecraft:tinted_glass replace #minecraft:impermeable
setblock -28999997 251 29000039 minecraft:glass