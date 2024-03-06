gamerule doMobSpawning false
gamerule keepInventory true
gamerule commandModificationBlockLimit 999999999

scoreboard objectives add wood minecraft.mined:minecraft.oak_log
scoreboard objectives modify wood displayname {"text":"나무","color":"green","bold":true}
scoreboard objectives add tempwood minecraft.mined:minecraft.oak_log
scoreboard objectives add fevernow minecraft.mined:minecraft.oak_log
scoreboard objectives add shopin minecraft.dropped:minecraft.diamond
scoreboard objectives add shopout minecraft.dropped:minecraft.grass_block
scoreboard objectives add rank dummy
scoreboard objectives add temprank dummy
scoreboard objectives add autowood dummy
scoreboard objectives add buy minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add new dummy
scoreboard objectives add y dummy
scoreboard objectives add endereye dummy
scoreboard objectives add enderpearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add netherstar dummy
scoreboard objectives add feverset dummy
scoreboard objectives add feverreset dummy
scoreboard objectives add fevertime dummy
scoreboard objectives add num dummy
scoreboard objectives setdisplay sidebar wood
scoreboard objectives setdisplay list wood
scoreboard players set over y 200
scoreboard players set 0 num 0

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