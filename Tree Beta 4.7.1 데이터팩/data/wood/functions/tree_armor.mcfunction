# 부자 시리즈
scoreboard players add @s A_autoGticket 1
execute as @s[scores={A_autoGticket=36000..}] run give @s minecraft:name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @s[scores={A_autoGticket=36000..}] run title @s actionbar {"text":"+ 도박티켓 1개 (갑옷)","color":"aqua","bold":true}
execute as @s[scores={A_autoGticket=36000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @s[scores={A_autoGticket=36000..}] run scoreboard players set @s A_autoGticket 0

scoreboard players add @s A_autowood 1
execute as @s[scores={A_autowood=600..}] run give @s oak_log 1
execute as @s[scores={A_autowood=600..}] run title @s actionbar {"text":"+ 잠수원목 1개 (갑옷)","color":"aqua","bold":true}
execute as @s[scores={A_autowood=600..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute as @s[scores={A_autowood=600..}] run scoreboard players set @s A_autowood 0

scoreboard players add @s A_autoaxe 1
execute as @s[scores={A_autoaxe=144000..}] run give @s netherite_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}
execute as @s[scores={A_autoaxe=144000..}] run title @s actionbar {"text":"+ 네더라이트도끼 1개 (갑옷)","color":"aqua","bold":true}
execute as @s[scores={A_autoaxe=144000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

scoreboard players add @s A_autogold 1
execute as @s[scores={A_autogold=72000..}] store result score @s A_autogold_R run random value 1..2
execute as @s[scores={A_autogold=72000..}] if score @s A_autogold_R matches 2 run give @s gold_ingot 1
execute as @s[scores={A_autogold=72000..}] if score @s A_autogold_R matches 2 run title @s actionbar {"text":"+ 금괴 1개 (갑옷)","color":"aqua","bold":true}
execute as @s[scores={A_autogold=72000..}] if score @s A_autogold_R matches 2 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0

# 에너지 시리즈
effect give @s night_vision 11 0 true
effect give @s saturation 1 0 true
effect clear @s hunger
effect clear @s mining_fatigue
effect clear @s slowness
effect give @s haste 1 3 true

# 마법 시리즈
execute as @s at @s run fill ~3 -64 ~3 ~-3 100 ~-3 oak_log replace oak_leaves