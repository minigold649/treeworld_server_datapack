gamerule doMobSpawning false
gamerule keepInventory true
gamerule commandModificationBlockLimit 999999999
gamerule fireDamage false

# 상점
forceload add 28999998 29000002 29000002 28999998
# 건축플레이스
forceload add -28999994 -28999994 -29000004 -29000005
# 도박장
forceload add -29000030 28999995 -28999977 29000058

scoreboard objectives add wood minecraft.mined:minecraft.oak_log
scoreboard objectives modify wood displayname {"text":"TOP 15","color":"green","bold":true}
scoreboard objectives add tempwood minecraft.mined:minecraft.oak_log
scoreboard objectives add fevernow minecraft.mined:minecraft.oak_log
scoreboard objectives add Gwood1 minecraft.mined:minecraft.iron_ore
scoreboard objectives add Backiron1 minecraft.used:iron_ore
scoreboard objectives add Backiron2 minecraft.mined:minecraft.iron_ore
scoreboard objectives add Gwood2 minecraft.mined:minecraft.gold_ore
scoreboard objectives add Backgold1 minecraft.used:gold_ore
scoreboard objectives add Backgold2 minecraft.mined:minecraft.gold_ore
scoreboard objectives add Gwood3 minecraft.mined:minecraft.diamond_ore
scoreboard objectives add Backdiamond1 minecraft.used:diamond_ore
scoreboard objectives add Backdiamond2 minecraft.mined:minecraft.diamond_ore
scoreboard objectives add Gwood4 minecraft.mined:minecraft.emerald_ore
scoreboard objectives add Backemerald1 minecraft.used:emerald_ore
scoreboard objectives add Backemerald2 minecraft.mined:minecraft.emerald_ore
scoreboard objectives add Gwood5 minecraft.mined:minecraft.lapis_ore
scoreboard objectives add Backlapis1 minecraft.used:lapis_ore
scoreboard objectives add Backlapis2 minecraft.mined:minecraft.lapis_ore
scoreboard objectives add Gwood6 minecraft.mined:minecraft.redstone_ore
scoreboard objectives add Backredstone1 minecraft.used:redstone_ore
scoreboard objectives add Backredstone2 minecraft.mined:minecraft.redstone_ore
scoreboard objectives add enderpearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add 300Revent minecraft.mined:minecraft.oak_log
scoreboard objectives add stone_axe minecraft.broken:minecraft.stone_axe
scoreboard objectives add iron_axe minecraft.broken:minecraft.iron_axe
scoreboard objectives add diamond_axe minecraft.broken:minecraft.diamond_axe
scoreboard objectives add netherite_axe minecraft.broken:minecraft.netherite_axe
scoreboard objectives add use_golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add shopin minecraft.dropped:minecraft.diamond
scoreboard objectives add shopout minecraft.dropped:minecraft.grass_block
scoreboard objectives add shopin2 dummy
scoreboard objectives add shopout2 dummy
scoreboard objectives add shopout_wood dummy
scoreboard objectives add A_shopout_wood dummy
scoreboard objectives add tempwood2 dummy
scoreboard objectives add Revent dummy
scoreboard objectives add rank dummy
scoreboard objectives add temprank dummy
scoreboard objectives add autowood dummy
scoreboard objectives add A_autowood dummy
scoreboard objectives add A_autofood dummy
scoreboard objectives add A_autoGticket dummy
scoreboard objectives add A_autoaxe dummy
scoreboard objectives add A_autogold dummy
scoreboard objectives add A_autogold_R dummy
scoreboard objectives add new dummy
scoreboard objectives add y dummy
scoreboard objectives add endereye dummy
scoreboard objectives add netherstar dummy
scoreboard objectives add feverset dummy
scoreboard objectives add feverreset dummy
scoreboard objectives add fevertime dummy
scoreboard objectives add feverend dummy
scoreboard objectives add num dummy
scoreboard objectives add item dummy
scoreboard objectives add shopname dummy
scoreboard objectives add nearplayer dummy
scoreboard objectives add A_hidden_1 dummy
scoreboard objectives add A_hidden_2 dummy
scoreboard objectives add A_hidden_2_R dummy
scoreboard objectives add A_hidden_3 dummy
scoreboard objectives add A_hidden_4 dummy
scoreboard objectives add A_hidden_4_wood minecraft.mined:minecraft.oak_log

# 도박장
scoreboard objectives add Gticket dummy
scoreboard objectives add playG dummy
scoreboard objectives add Gok dummy
# - 자라나라 나무!
scoreboard objectives add playGTree dummy
scoreboard objectives add GTreeGet dummy
scoreboard objectives add GTree dummy
scoreboard objectives add GTree2 dummy
# - 트리룰렛
scoreboard objectives add playGTrull dummy
scoreboard objectives add GTrullGet dummy
scoreboard objectives add GTrull dummy
scoreboard objectives add GTrull2 dummy
scoreboard objectives add GTrull_ar dummy
# - 트리머신
scoreboard objectives add playGTma dummy
scoreboard objectives add GTma dummy
scoreboard objectives add GTma2 dummy
# - 나무의 길
scoreboard objectives add playGTroad dummy
scoreboard objectives add GTroad dummy
scoreboard objectives add GTroad2 dummy
scoreboard objectives add GTroad_up dummy

scoreboard objectives setdisplay sidebar wood
scoreboard objectives setdisplay list wood
scoreboard players set n shopname 0
scoreboard players set over y 200
scoreboard players set -1 num -1
scoreboard players set 0 num 0
scoreboard players set 6 num 6
scoreboard players set 40 num 40
scoreboard players set 130 num 130
scoreboard players set 20 num 20

scoreboard players set . wood 1000
scoreboard players set .. wood 1000
scoreboard players set ... wood 1000
scoreboard players set .... wood 1000
scoreboard players set ..... wood 1000
scoreboard players set ...... wood 1000
scoreboard players set ....... wood 1000
scoreboard players set ........ wood 1000
scoreboard players set ......... wood 1000
scoreboard players set .......... wood 1000
scoreboard players set ........... wood 1000
scoreboard players set ............ wood 1000
scoreboard players set ............. wood 1000
scoreboard players set .............. wood 1000
scoreboard players set ............... wood 1000

team add newbe
team modify newbe color gray
team add 1
team modify 1 color green
team modify 1 prefix [{"text":"[","color":"#abffab","bold":true},{"text":"1","color":"green"},{"text":"] ","color":"#abffab"}]
team add 2
team modify 2 color aqua
team modify 2 prefix [{"text":"[","color":"#abffab","bold":true},{"text":"2","color":"aqua"},{"text":"] ","color":"#abffab"}]
team add 3
team modify 3 color yellow
team modify 3 prefix [{"text":"[","color":"#abffab","bold":true},{"text":"3","color":"yellow"},{"text":"] ","color":"#abffab"}]
team add 4
team modify 4 color light_purple
team modify 4 prefix [{"text":"[","color":"#abffab","bold":true},{"text":"4","color":"light_purple"},{"text":"] ","color":"#abffab"}]
team add 5
team modify 5 color gold
team modify 5 prefix [{"text":"[","color":"#abffab","bold":true},{"text":"5","color":"gold"},{"text":"] ","color":"#abffab"}]

bossbar add tree ""
bossbar set minecraft:tree value 10
bossbar set minecraft:tree max 10
bossbar set minecraft:tree color white
bossbar set minecraft:tree style progress
bossbar set minecraft:tree name {"text":"Tree World","color":"green","bold":true}