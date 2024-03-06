item replace entity @s weapon.offhand with minecraft:air
give @s minecraft:amethyst_shard{display:{Name:'[{"text":"환생 조각","color":"#abcdef","italic":false,"bold":true}]',Lore:['{"text":"왼손에 들고있는 상태로 오른손에 도끼를 들어 인챈트","color":"#abffab","bold":true,"italic":false}']}}
tellraw @s {"text":"- 인챈트 완료 -","color":"dark_aqua"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1