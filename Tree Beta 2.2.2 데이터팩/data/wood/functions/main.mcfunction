# 기타 시스템
bossbar set minecraft:tree players @a
effect give @a resistance infinite 255 true
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:grass_block"}}]
recipe take @a *
execute as @a[scores={tempwood=1..}] run give @s minecraft:oak_log 1
execute as @a[scores={tempwood=1..}] run scoreboard players remove @s tempwood 1
execute as @a[scores={buy=1..}] at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 2
execute as @a[scores={buy=1..}] run scoreboard players reset @s buy
clear @a glass_bottle
execute as @a store result score @s y run data get entity @s Pos[1]

# 파티클
particle minecraft:composter 28999996.5 240.1 28999995.5 0.3 0.05 0.3 0 10 force
particle minecraft:composter 29000000.5 250.1 28999995.5 0.3 0.05 0.3 0 10 force

# 조합해서 나온 도끼 사용 및 오래된 버전 나무 사용
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_axe"}}] run data merge entity @s {Item:{id:"minecraft:wooden_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_axe"}}] run data merge entity @s {Item:{id:"minecraft:stone_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}] run data merge entity @s {Item:{id:"minecraft:golden_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe"}}] run data merge entity @s {Item:{id:"minecraft:iron_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe"}}] run data merge entity @s {Item:{id:"minecraft:diamond_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}] run data merge entity @s {Item:{id:"minecraft:netherite_axe",tag:{CanDestroy:["minecraft:oak_leaves","minecraft:oak_log"]}}}

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_log",Count:1b,tag:{CanPlaceOn:["minecraft:oak_leaves","minecraft:oak_log"]}}}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:1b}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_log",Count:1b,tag:{CanPlaceOn:["minecraft:oak_leaves","minecraft:oak_log"]}}}] run kill @s

# 새로운 사람
scoreboard players add @a new 1
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
execute as @a[scores={wood=100000..},team=newbe] run clear @s
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s new 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s temprank 1
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (1/5)","color":"#abffab"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s ""
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 인챈트 : 효율 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] run tellraw @s {"text":" + 버프 : 신속 1","color":"gray"}
execute as @a[scores={wood=100000..},team=newbe] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=100000..},team=newbe] run scoreboard players set @s wood 0
execute as @a[scores={temprank=1}] run scoreboard players set @s rank 1
execute as @a[scores={wood=200000..},team=1] run clear @s
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s new 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s temprank 2
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (2/5)","color":"#abffab"}
execute as @a[scores={wood=200000..},team=1] run tellraw @s ""
execute as @a[scores={wood=200000..},team=1] run tellraw @s {"text":" + 인챈트 : 효율 2 / 내구성 1","color":"gray"}
execute as @a[scores={wood=200000..},team=1] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=200000..},team=1] run scoreboard players set @s wood 0
execute as @a[scores={temprank=2}] run scoreboard players set @s rank 2
execute as @a[scores={wood=400000..},team=2] run clear @s
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s new 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s temprank 3
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (3/5)","color":"#abffab"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s ""
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 인챈트 : 효율 3 / 내구성 2","color":"gray"}
execute as @a[scores={wood=400000..},team=2] run tellraw @s {"text":" + 버프 : 신속 2","color":"gray"}
execute as @a[scores={wood=400000..},team=2] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=400000..},team=2] run scoreboard players set @s wood 0
execute as @a[scores={temprank=3}] run scoreboard players set @s rank 3
execute as @a[scores={wood=700000..},team=3] run clear @s
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s new 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s temprank 4
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":"환생을 하여 잠제된 능력이 해제되었습니다! (4/5)","color":"#abffab"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s ""
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 인챈트 : 효율 4","color":"gray"}
execute as @a[scores={wood=700000..},team=3] run tellraw @s {"text":" + 나무보급 : 30초에 1개","color":"gray"}
execute as @a[scores={wood=700000..},team=3] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute as @a[scores={wood=700000..},team=3] run scoreboard players set @s wood 0
execute as @a[scores={temprank=4}] run scoreboard players set @s rank 4
execute as @a[scores={wood=1000000..},team=4] run clear @s
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
execute as @a[team=1] run enchant @s efficiency 1
execute as @a[team=1] run effect give @s minecraft:speed infinite 0 true
execute as @a[team=2] run enchant @s efficiency 2
execute as @a[team=2] run enchant @s unbreaking 1
execute as @a[team=2] run effect give @s minecraft:speed infinite 0 true
execute as @a[team=3] run enchant @s efficiency 3
execute as @a[team=3] run enchant @s unbreaking 2
execute as @a[team=3] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=4] run effect give @s minecraft:speed infinite 1 true
execute as @a[team=4] run enchant @s efficiency 4
execute as @a[team=4] run enchant @s unbreaking 2
execute as @a[team=5] run enchant @s efficiency 5
execute as @a[team=5] run enchant @s unbreaking 3
execute as @a[team=5] run effect give @s minecraft:speed infinite 1 true

execute as @a[team=4] run scoreboard players add @s autowood 1
execute as @a[team=5] run scoreboard players add @s autowood 1
execute as @a[scores={autowood=600..},team=4] run give @s minecraft:oak_log 1
execute as @a[scores={autowood=600..},team=4] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[scores={autowood=600..},team=4] run scoreboard players set @s autowood 0
execute as @a[scores={autowood=300..},team=5] run give @s minecraft:oak_log 1
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

# 하늘의 눈 아이템 (꼭대기 tp)
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y >= over y run tellraw @s {"text":"높은 장소에서 이 아이템을 사용할 수 없습니다!","color":"red"}
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y >= over y run scoreboard players set @s endereye 1
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run spreadplayers ~ ~ 0 1 false @s
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] at @s if score @s y < over y run tellraw @s {"text":"꼭대기로 이동!","color":"aqua"}
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,Count:1b}]}] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[scores={endereye=1}] run give @s ender_eye{display:{Name:'[{"text":"하늘의 눈","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 꼭대기로 이동","italic":false,"color":"#abffab"}]']}}
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
execute as @a if score @s fevernow >= @s feverset run scoreboard players set @s fevernow 0
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run give @s minecraft:oak_log 1
execute as @a[scores={fevernow=1..}] at @s if score @s fevertime > 0 num run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1.4
execute as @a[scores={fevernow=1..}] at @s if score @s fevertime > 0 num run title @s actionbar {"text":"+ 원목 2개","color":"yellow","bold":true}
execute as @a[scores={fevernow=1..}] if score @s fevertime > 0 num run scoreboard players remove @s fevernow 1