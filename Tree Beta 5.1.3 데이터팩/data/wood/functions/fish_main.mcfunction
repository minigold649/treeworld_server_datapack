kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cod"}}]

# 보상
execute as @a[scores={fish=1..}] store result score @s fish_R run random value 1..10000
execute as @a[scores={fish=1..}] run title @s subtitle ""
execute as @a[scores={fish=1..}] run title @s times 10 50 5
# 10% : 1000 / 1% : 100 / 0.1% : 10 / 0.01% : 1 -----------------------------------
execute as @a[scores={fish_R=1..2}] if score @s fish matches 1 run give @s gold_block 1
execute as @a[scores={fish_R=1..2}] if score @s fish matches 1 run title @s title {"text":"✯ 금블럭 ✯","color":"gold"}
execute as @a[scores={fish_R=3..30}] if score @s fish matches 1 run give @s gold_ingot 1
execute as @a[scores={fish_R=3..30}] if score @s fish matches 1 run title @s title {"text":"금괴","color":"aqua"}
execute as @a[scores={fish_R=31..275}] if score @s fish matches 1 run give @s gold_nugget 1
execute as @a[scores={fish_R=31..275}] if score @s fish matches 1 run title @s title {"text":"금조각","color":"aqua"}
execute as @a[scores={fish_R=276..1775}] if score @s fish matches 1 run give @s oak_log 1
execute as @a[scores={fish_R=276..1775}] if score @s fish matches 1 run title @s title {"text":"원목","color":"aqua"}

execute as @a[scores={fish_R=1776..2275}] if score @s fish matches 1 run give @s iron_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 2개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=1776..2275}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (철)","color":"aqua"}
execute as @a[scores={fish_R=2276..2575}] if score @s fish matches 1 run give @s lapis_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 4개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=2276..2575}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (청금석)","color":"aqua"}
execute as @a[scores={fish_R=2576..2775}] if score @s fish matches 1 run give @s gold_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 8개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=2576..2775}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (금)","color":"aqua"}
execute as @a[scores={fish_R=2776..2925}] if score @s fish matches 1 run give @s redstone_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 16개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=2776..2925}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (레드스톤)","color":"aqua"}
execute as @a[scores={fish_R=2926..3025}] if score @s fish matches 1 run give @s diamond_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 32개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=2926..3025}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (다이아몬드)","color":"aqua"}
execute as @a[scores={fish_R=3026..3075}] if score @s fish matches 1 run give @s emerald_ore{CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 64개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}','{"text":"주의 : 본인이 설치한 기부블럭은 금조각 못 얻음","italic":false,"color":"red","bold":true}']}} 1
execute as @a[scores={fish_R=3026..3075}] if score @s fish matches 1 run title @s title {"text":"기부블럭 (에메랄드)","color":"aqua"}

execute as @a[scores={fish_R=3076..3515}] if score @s fish matches 1 run give @s name_tag{display:{Name:'[{"text":"도박티켓","color":"dark_green","italic":false,"bold":true}]'}} 1
execute as @a[scores={fish_R=3076..3515}] if score @s fish matches 1 run title @s title {"text":"도박티켓","color":"aqua"}
execute as @a[scores={fish_R=3516..3520}] if score @s fish matches 1 run give @s elytra{Unbreakable:1b} 1
execute as @a[scores={fish_R=3516..3520}] if score @s fish matches 1 run title @s title {"text":"✯ 겉날개 ✯","color":"gold"}

execute as @a[scores={fish_R=3521..3870}] if score @s fish matches 1 run give @s potion{custom_potion_effects: [{id: "minecraft:haste", amplifier: 0, duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}} 1
execute as @a[scores={fish_R=3521..3870}] if score @s fish matches 1 run title @s title {"text":"성급함 물약 1레벨","color":"aqua"}
execute as @a[scores={fish_R=3871..4170}] if score @s fish matches 1 run give @s potion{custom_potion_effects: [{id: "minecraft:haste", amplifier: 1, duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}} 1
execute as @a[scores={fish_R=3871..4170}] if score @s fish matches 1 run title @s title {"text":"성급함 물약 2레벨","color":"aqua"}

execute as @a[scores={fish_R=4171..4370}] if score @s fish matches 1 run give @s spyglass 1
execute as @a[scores={fish_R=4171..4370}] if score @s fish matches 1 run title @s title {"text":"망원경","color":"aqua"}
execute as @a[scores={fish_R=4371..4420}] if score @s fish matches 1 run give @s zombie_head 1
execute as @a[scores={fish_R=4371..4420}] if score @s fish matches 1 run title @s title {"text":"좀비머리","color":"aqua"}
execute as @a[scores={fish_R=4421..4470}] if score @s fish matches 1 run give @s creeper_head 1
execute as @a[scores={fish_R=4421..4470}] if score @s fish matches 1 run title @s title {"text":"크리퍼머리","color":"aqua"}
execute as @a[scores={fish_R=4471..4520}] if score @s fish matches 1 run give @s player_head 1
execute as @a[scores={fish_R=4471..4520}] if score @s fish matches 1 run title @s title {"text":"플레이어머리","color":"aqua"}
execute as @a[scores={fish_R=4521..4570}] if score @s fish matches 1 run give @s piglin_head 1
execute as @a[scores={fish_R=4521..4570}] if score @s fish matches 1 run title @s title {"text":"피글린머리","color":"aqua"}
execute as @a[scores={fish_R=4571..4620}] if score @s fish matches 1 run give @s dragon_head 1
execute as @a[scores={fish_R=4571..4620}] if score @s fish matches 1 run title @s title {"text":"드래곤머리","color":"aqua"}
execute as @a[scores={fish_R=4621..4670}] if score @s fish matches 1 run give @s skeleton_skull 1
execute as @a[scores={fish_R=4621..4670}] if score @s fish matches 1 run title @s title {"text":"스켈레톤해골","color":"aqua"}
execute as @a[scores={fish_R=4671..4720}] if score @s fish matches 1 run give @s wither_skeleton_skull 1
execute as @a[scores={fish_R=4671..4720}] if score @s fish matches 1 run title @s title {"text":"위더스켈레톤해골","color":"aqua"}

execute as @a[scores={fish_R=4721..5220}] if score @s fish matches 1 run give @s ender_eye{display:{Name:'[{"text":"하늘의 눈","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 꼭대기로 이동","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=4721..5220}] if score @s fish matches 1 run title @s title {"text":"하늘의 눈","color":"aqua"}
execute as @a[scores={fish_R=5221..5720}] if score @s fish matches 1 run give @s ender_pearl 1
execute as @a[scores={fish_R=5221..5720}] if score @s fish matches 1 run title @s title {"text":"엔더진주","color":"aqua"}
execute as @a[scores={fish_R=5721..5920}] if score @s fish matches 1 run give @s feather{display:{Name:'[{"text":"바람의 힘","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 주변 나뭇잎 제거","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=5721..5920}] if score @s fish matches 1 run title @s title {"text":"바람의 힘","color":"aqua"}
execute as @a[scores={fish_R=5921..6070}] if score @s fish matches 1 run give @s netherite_scrap{display:{Name:'[{"text":"나무의 힘","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 주변 나뭇잎을 나무로 변환","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=5921..6070}] if score @s fish matches 1 run title @s title {"text":"나무의 힘","color":"aqua"}
execute as @a[scores={fish_R=6071..6470}] if score @s fish matches 1 run give @s nether_star{display:{Name:'[{"text":"플레이어 추적","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 랜덤 플레이어에게 tp","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=6071..6470}] if score @s fish matches 1 run title @s title {"text":"플레이어 추적","color":"aqua"}
execute as @a[scores={fish_R=6471..6670}] if score @s fish matches 1 run give @s clock{display:{Name:'[{"text":"시간변경 (아침)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 아침으로 변경","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=6471..6670}] if score @s fish matches 1 run title @s title {"text":"시간변경 (아침)","color":"aqua"}
execute as @a[scores={fish_R=6671..6870}] if score @s fish matches 1 run give @s clock{display:{Name:'[{"text":"시간변경 (점심)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 점심으로 변경","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=6671..6870}] if score @s fish matches 1 run title @s title {"text":"시간변경 (점심)","color":"aqua"}
execute as @a[scores={fish_R=6871..7070}] if score @s fish matches 1 run give @s clock{display:{Name:'[{"text":"시간변경 (저녁)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 저녁으로 변경","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=6871..7070}] if score @s fish matches 1 run title @s title {"text":"시간변경 (저녁)","color":"aqua"}
execute as @a[scores={fish_R=7071..7250}] if score @s fish matches 1 run give @s clock{Enchantments:[{id:"unbreaking"}],display:{Name:'[{"text":"시간변경 (밤)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"1개만 왼손에 들어 밤으로 변경","italic":false,"color":"#abffab"}','{"text":"주의 : 밤에는 나무가 자라지 않음","italic":false,"color":"red","bold":true}']},HideFlags:1} 1
execute as @a[scores={fish_R=7071..7250}] if score @s fish matches 1 run title @s title {"text":"시간변경 (밤)","color":"aqua"}
execute as @a[scores={fish_R=7251..7400}] if score @s fish matches 1 run give @s ghast_tear{display:{Name:'[{"text":"날씨변경 (비)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 비오는 날씨로 변경","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=7251..7400}] if score @s fish matches 1 run title @s title {"text":"날씨변경 (비)","color":"aqua"}
execute as @a[scores={fish_R=7401..7550}] if score @s fish matches 1 run give @s sugar{display:{Name:'[{"text":"날씨변경 (맑음)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 맑은 날씨로 변경","italic":false,"color":"#abffab"}]']}} 1
execute as @a[scores={fish_R=7401..7550}] if score @s fish matches 1 run title @s title {"text":"날씨변경 (맑음)","color":"aqua"}

execute as @a[scores={fish_R=7551..8050}] if score @s fish matches 1 run give @s golden_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"],Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
execute as @a[scores={fish_R=7551..8050}] if score @s fish matches 1 run title @s title {"text":"금도끼 (효율5)","color":"aqua"}
execute as @a[scores={fish_R=8051..8350}] if score @s fish matches 1 run give @s iron_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]} 1
execute as @a[scores={fish_R=8051..8350}] if score @s fish matches 1 run title @s title {"text":"철도끼","color":"aqua"}
execute as @a[scores={fish_R=8351..8590}] if score @s fish matches 1 run give @s diamond_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]} 1
execute as @a[scores={fish_R=8351..8590}] if score @s fish matches 1 run title @s title {"text":"다이아몬드도끼","color":"aqua"}
execute as @a[scores={fish_R=8591..8690}] if score @s fish matches 1 run give @s netherite_axe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]} 1
execute as @a[scores={fish_R=8591..8690}] if score @s fish matches 1 run title @s title {"text":"네더라이트도끼","color":"aqua"}
execute as @a[scores={fish_R=8691..8990}] if score @s fish matches 1 run give @s netherite_hoe{CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]} 1
execute as @a[scores={fish_R=8691..8890}] if score @s fish matches 1 run title @s title {"text":"네더라이트괭이","color":"aqua"}

execute as @a[scores={fish_R=8891..9040}] if score @s fish matches 1 run give @s trident{Enchantments:[{id:"minecraft:riptide",lvl:1s}]} 1
execute as @a[scores={fish_R=8891..9040}] if score @s fish matches 1 run title @s title {"text":"삼지창 (급류1)","color":"aqua"}
execute as @a[scores={fish_R=9041..9090}] if score @s fish matches 1 run give @s trident{Enchantments:[{id:"minecraft:riptide",lvl:2s}]} 1
execute as @a[scores={fish_R=9041..9090}] if score @s fish matches 1 run title @s title {"text":"삼지창 (급류2)","color":"aqua"}
execute as @a[scores={fish_R=9091..9099}] if score @s fish matches 1 run give @s trident{Enchantments:[{id:"minecraft:riptide",lvl:3s}]} 1
execute as @a[scores={fish_R=9091..9099}] if score @s fish matches 1 run title @s title {"text":"삼지창 (급류3)","color":"aqua"}
execute as @a[scores={fish_R=9100..9199}] if score @s fish matches 1 run give @s fire_charge{display:{Name:'[{"text":"도끼에너지","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"1개만 왼손에 들어 주변나무 폭발","italic":false,"color":"#abffab"}']}} 1
execute as @a[scores={fish_R=9100..9199}] if score @s fish matches 1 run title @s title {"text":"도끼에너지","color":"aqua"}

execute as @a[scores={fish_R=9200..9299}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:yearn_goat_horn"} 1
execute as @a[scores={fish_R=9200..9299}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (갈망)","color":"aqua"}
execute as @a[scores={fish_R=9300..9399}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:call_goat_horn"} 1
execute as @a[scores={fish_R=9300..9399}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (소집)","color":"aqua"}
execute as @a[scores={fish_R=9400..9499}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:dream_goat_horn"} 1
execute as @a[scores={fish_R=9400..9499}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (꿈결)","color":"aqua"}
execute as @a[scores={fish_R=9500..9599}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:admire_goat_horn"} 1
execute as @a[scores={fish_R=9500..9599}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (동경)","color":"aqua"}
execute as @a[scores={fish_R=9600..9699}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:seek_goat_horn"} 1
execute as @a[scores={fish_R=9600..9699}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (수색)","color":"aqua"}
execute as @a[scores={fish_R=9700..9799}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:feel_goat_horn"} 1
execute as @a[scores={fish_R=9700..9799}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (감각)","color":"aqua"}
execute as @a[scores={fish_R=9800..9899}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:sing_goat_horn"} 1
execute as @a[scores={fish_R=9800..9899}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (노래)","color":"aqua"}
execute as @a[scores={fish_R=9900..9999}] if score @s fish matches 1 run give @s goat_horn{instrument:"minecraft:ponder_goat_horn"} 1
execute as @a[scores={fish_R=9900..9999}] if score @s fish matches 1 run title @s title {"text":"염소뿔 (고민)","color":"aqua"}
execute as @a[scores={fish_R=10000}] if score @s fish matches 1 run give @s enchanted_golden_apple 1
execute as @a[scores={fish_R=10000}] if score @s fish matches 1 run title @s title {"text":"✯ 마법이 부여된 황금사괔ㅋㅋㅋ ✯","color":"gold"}

execute as @a[scores={fish=1..}] run scoreboard players set @s fish 0