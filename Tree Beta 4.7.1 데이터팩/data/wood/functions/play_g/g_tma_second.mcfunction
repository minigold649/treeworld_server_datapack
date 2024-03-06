# 1:나무 / 2:금 / 3:다이아 / 4:에메랄드 / 5:레드스톤 / 6:청금석
execute if score second GTma2 matches 1 run setblock -29000008 252 29000036 minecraft:gold_block
execute if score second GTma2 matches 2 run setblock -29000008 252 29000036 minecraft:diamond_block
execute if score second GTma2 matches 3 run setblock -29000008 252 29000036 minecraft:emerald_block
execute if score second GTma2 matches 4 run setblock -29000008 252 29000036 minecraft:redstone_block
execute if score second GTma2 matches 5 run setblock -29000008 252 29000036 minecraft:lapis_block
execute if score second GTma2 matches 6 run setblock -29000008 252 29000036 minecraft:oak_wood
setblock -29000008 254 29000036 minecraft:redstone_block
scoreboard players add second GTma2 1
execute if score second GTma2 matches 7 run scoreboard players set second GTma2 1