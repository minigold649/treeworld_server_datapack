kill @e[type=text_display]
kill @e[type=item_display]
kill @e[type=interaction]
kill @e[type=minecraft:armor_stand]
kill @e[type=villager]

# 주민 테그 (아머스탠드)
summon minecraft:armor_stand 28999996.5 250 28999999.5 {Tags:["normal_1"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 29000004.5 250 29000003.5 {Tags:["normal_2"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 29000004.5 250 28999997.5 {Tags:["normal_3"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 28999996.5 250 29000001.5 {Tags:["normal_4"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 28999996.5 250 29000003.5 {Tags:["normal_5"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 28999996.5 250 28999997.5 {Tags:["normal_6"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 29000004.5 250 28999999.5 {Tags:["normal_7"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand 29000004.5 250 29000001.5 {Tags:["normal_8"],Invisible:1b,Marker:1b}

summon minecraft:armor_stand -29000006.5 250 -29000006.5 {Tags:["build_1"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999992.5 250 -29000006.5 {Tags:["build_2"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -29000004.5 250 -29000006.5 {Tags:["build_3"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -29000002.5 250 -29000006.5 {Tags:["build_4"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -29000000.5 250 -29000006.5 {Tags:["build_5"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999998.5 250 -29000006.5 {Tags:["build_6"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999996.5 250 -29000006.5 {Tags:["build_7"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999994.5 250 -29000006.5 {Tags:["build_8"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -29000008.5 250 -28999999.5 {Tags:["build_9"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999992.5 250 -28999997.5 {Tags:["build_10"],Invisible:1b,Marker:1b}
summon minecraft:armor_stand -28999990.5 250 -28999999.5 {Tags:["build_11"],Invisible:1b,Marker:1b}

summon minecraft:armor_stand -29000001.5 250 29000000.5 {Tags:["playG_1"],Invisible:1b,Marker:1b}

# 준비중 (텍스트 디스플레이)
summon text_display 29000000.5 251.2 28999995.001 {shadow_radius:0f,billboard:"fixed",Tags:["nonononononononon"],brightness:{sky:10,block:15},text:'[{"text":"준비중\\n","color":"dark_red","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:0}

# 도박장 
# (텍스트/아이템 디스플레이)
summon text_display 29000002.5 251.2 29000005.999 {shadow_radius:0f,billboard:"fixed",Tags:["gamein"],brightness:{sky:10,block:15},text:'[{"text":"도박장\\n","color":"#ab6100","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:0,Rotation:[180f, 0f]}
summon text_display -29000003.5 251.5 29000000.5 {shadow_radius:0f,billboard:"center",Tags:["gameout"],brightness:{sky:10,block:15},text:'[{"text":"상점\\n","color":"gold","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:-1778384896}
# - 자라나라 나무!
summon text_display -28999997.001 252.5 29000025.46 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2f,2f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTreeT1"],brightness:{sky:10,block:15},text:'[{"text":"자라나라 나무!\\n","color":"aqua","bold":true}]',background:0,Rotation:[90f, 0f]}
summon text_display -28999997.001 251.7 29000025.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTreeT2"],brightness:{sky:10,block:15},text:'[{"text":"설명\\n","color":"#ffabff","bold":true}]',background:0,Rotation:[90f, 0f]}
summon text_display -28999997.001 250.9 29000025.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTreeT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[90f, 0f]}
# - 트리룰렛
summon text_display -29000025.999 252.5 29000014.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2f,2f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullT1"],brightness:{sky:10,block:15},text:'[{"text":"트리룰렛\\n","color":"aqua","bold":true}]',background:0,Rotation:[-90f, 0f]}
summon text_display -29000025.999 251.7 29000014.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullT2"],brightness:{sky:10,block:15},text:'[{"text":"설명\\n","color":"#ffabff","bold":true}]',background:0,Rotation:[-90f, 0f]}
summon text_display -29000025.999 250.9 29000014.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[-90f, 0f]}

summon text_display -29000019.1 250.001 29000014.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum10"],brightness:{sky:10,block:15},text:'[{"text":"10","color":"gold","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000016.1 250.001 29000017.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum5"],brightness:{sky:10,block:15},text:'[{"text":"5","color":"green","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000016.1 250.001 29000011.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum5"],brightness:{sky:10,block:15},text:'[{"text":"5","color":"green","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000013.1 250.001 29000014.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum5"],brightness:{sky:10,block:15},text:'[{"text":"5","color":"green","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000013.1 250.001 29000013.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000013.1 250.001 29000015.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000019.1 250.001 29000013.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000019.1 250.001 29000015.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000015.1 250.001 29000017.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000017.1 250.001 29000017.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000015.1 250.001 29000011.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000017.1 250.001 29000011.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum1"],brightness:{sky:10,block:15},text:'[{"text":"1","color":"dark_purple","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000018.1 250.001 29000016.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum3"],brightness:{sky:10,block:15},text:'[{"text":"3","color":"aqua","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000014.1 250.001 29000016.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum3"],brightness:{sky:10,block:15},text:'[{"text":"3","color":"aqua","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000014.1 250.001 29000012.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum3"],brightness:{sky:10,block:15},text:'[{"text":"3","color":"aqua","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000018.1 250.001 29000012.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2.5f,2.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTnum3"],brightness:{sky:10,block:15},text:'[{"text":"3","color":"aqua","bold":true}]',background:0,Rotation:[-90f, -90f]}

summon text_display -29000022.087 250.001 29000013.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000022.087 250.001 29000015.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000010.087 250.001 29000013.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000010.087 250.001 29000015.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000015.087 250.001 29000020.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000017.087 250.001 29000020.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000015.087 250.001 29000008.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000017.087 250.001 29000008.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000019.087 250.001 29000009.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000011.087 250.001 29000011.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000013.087 250.001 29000019.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon text_display -29000021.087 250.001 29000017.537 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[3f,3f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTrullTx"],brightness:{sky:10,block:15},text:'[{"text":"x","color":"dark_red","bold":true}]',background:0,Rotation:[-90f, -90f]}
summon minecraft:item_display -29000022.5 250.001 29000014.5 {Tags:["GTrullItem1"],item:{id:"minecraft:gold_ingot",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.8f,0.8f,0f]}}
summon minecraft:item_display -29000010.5 250.001 29000014.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000016.5 250.001 29000020.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000016.5 250.001 29000008.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000011.5 250.001 29000017.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000019.5 250.001 29000019.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000013.5 250.001 29000009.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000021.5 250.001 29000011.5 {Tags:["GTrullItem2"],item:{id:"minecraft:gold_nugget",Count:1b},Rotation:[-90f,-90f]}
summon minecraft:item_display -29000022.5 250.001 29000016.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000022.5 250.001 29000012.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000010.5 250.001 29000016.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000010.5 250.001 29000012.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000014.5 250.001 29000020.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000018.5 250.001 29000020.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000014.5 250.001 29000008.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000018.5 250.001 29000008.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000021.5 250.001 29000018.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000021.5 250.001 29000010.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000011.5 250.001 29000018.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000011.5 250.001 29000010.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000020.5 250.001 29000019.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000020.5 250.001 29000009.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000012.5 250.001 29000019.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
summon minecraft:item_display -29000012.5 250.001 29000009.5 {Tags:["GTrullItem3"],item:{id:"minecraft:oak_log",Count:1b},Rotation:[-90f,-90f], transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[0.6f,0.6f,0f]}}
# - 트리머신
summon text_display -29000005.999 252.5 29000030.53 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2f,2f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTmaT1"],brightness:{sky:10,block:15},text:'[{"text":"트리머신\\n","color":"aqua","bold":true}]',background:0,Rotation:[-90f, 0f]}
summon text_display -29000005.999 251.7 29000030.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTmaT2"],brightness:{sky:10,block:15},text:'[{"text":"설명\\n","color":"#ffabff","bold":true}]',background:0,Rotation:[-90f, 0f]}
summon text_display -29000005.999 250.9 29000030.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTmaT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[-90f, 0f]}
# - 나무의 길
summon text_display -28999997.001 252.5 29000044.45 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[2f,2f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTroadT1"],brightness:{sky:10,block:15},text:'[{"text":"나무의 길\\n","color":"aqua","bold":true}]',background:0,Rotation:[90f, 0f]}
summon text_display -28999997.001 251.7 29000044.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTroadT2"],brightness:{sky:10,block:15},text:'[{"text":"설명\\n","color":"#ffabff","bold":true}]',background:0,Rotation:[90f, 0f]}
summon text_display -28999997.001 250.9 29000044.5 {transformation:{left_rotation:[0f,0f,0f,1f], translation:[0f,0f,0f], right_rotation:[0f,0f,0f,1f], scale:[1.5f,1.5f,0f]}, shadow_radius:0f,billboard:"fixed",Tags:["GTroadT3"],brightness:{sky:10,block:15},text:'[{"text":"시작\\n","color":"dark_green","bold":true}]',background:0,Rotation:[90f, 0f]}
# (인터렉션) ------------------------------
# - 자라나라 나무!
summon minecraft:interaction -28999996.65 252.1 29000025.5 {Tags:["GTreeInter1"],width:0.8f,height:0.4f}
summon minecraft:interaction -28999996.65 251.3 29000025.5 {Tags:["GTreeInter2"],width:0.8f,height:0.4f}
# - 트리룰렛
summon minecraft:interaction -29000026.35 252.1 29000014.5 {Tags:["GTrullInter1"],width:0.8f,height:0.4f}
summon minecraft:interaction -29000026.35 251.3 29000014.5 {Tags:["GTrullInter2"],width:0.8f,height:0.4f}
# - 트리머신
summon minecraft:interaction -29000006.35 252.1 29000030.5 {Tags:["GTmaInter1"],width:0.8f,height:0.4f}
summon minecraft:interaction -29000006.35 251.3 29000030.5 {Tags:["GTmaInter2"],width:0.8f,height:0.4f}
# - 나무의 길
summon minecraft:interaction -28999996.65 252.1 29000044.5 {Tags:["GTroadInter1"],width:0.8f,height:0.4f}
summon minecraft:interaction -28999996.65 251.3 29000044.5 {Tags:["GTroadInter2"],width:0.8f,height:0.4f}
# (아머스탠드) ------------------------------
# - 자라나라 나무!
summon minecraft:armor_stand -28999987.5 250 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTreeAr1"]}
# - 트리룰렛
summon minecraft:armor_stand -29000022.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullAr1"]}
summon minecraft:armor_stand -29000019.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullAr2"]}

summon minecraft:armor_stand -29000019.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn1"]}
summon minecraft:armor_stand -29000019.5 250 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn2"]}
summon minecraft:armor_stand -29000018.5 250 29000012.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn3"]}
summon minecraft:armor_stand -29000017.5 250 29000011.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn4"]}
summon minecraft:armor_stand -29000016.5 250 29000011.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn5"]}
summon minecraft:armor_stand -29000015.5 250 29000011.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn6"]}
summon minecraft:armor_stand -29000014.5 250 29000012.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn7"]}
summon minecraft:armor_stand -29000013.5 250 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn8"]}
summon minecraft:armor_stand -29000013.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn9"]}
summon minecraft:armor_stand -29000013.5 250 29000015.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn10"]}
summon minecraft:armor_stand -29000014.5 250 29000016.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn11"]}
summon minecraft:armor_stand -29000015.5 250 29000017.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn12"]}
summon minecraft:armor_stand -29000016.5 250 29000017.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn13"]}
summon minecraft:armor_stand -29000017.5 250 29000017.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn14"]}
summon minecraft:armor_stand -29000018.5 250 29000016.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn15"]}
summon minecraft:armor_stand -29000019.5 250 29000015.5 {Marker:1b,Invisible:1b,Tags:["GTrullArIn16"]}

summon minecraft:armor_stand -29000022.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut1"]}
summon minecraft:armor_stand -29000022.5 250 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut2"]}
summon minecraft:armor_stand -29000022.5 250 29000012.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut3"]}
summon minecraft:armor_stand -29000021.5 250 29000011.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut4"]}
summon minecraft:armor_stand -29000021.5 250 29000010.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut5"]}
summon minecraft:armor_stand -29000020.5 250 29000009.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut6"]}
summon minecraft:armor_stand -29000019.5 250 29000009.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut7"]}
summon minecraft:armor_stand -29000018.5 250 29000008.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut8"]}
summon minecraft:armor_stand -29000017.5 250 29000008.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut9"]}
summon minecraft:armor_stand -29000016.5 250 29000008.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut10"]}
summon minecraft:armor_stand -29000015.5 250 29000008.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut11"]}
summon minecraft:armor_stand -29000014.5 250 29000008.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut12"]}
summon minecraft:armor_stand -29000013.5 250 29000009.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut13"]}
summon minecraft:armor_stand -29000012.5 250 29000009.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut14"]}
summon minecraft:armor_stand -29000011.5 250 29000010.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut15"]}
summon minecraft:armor_stand -29000011.5 250 29000011.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut16"]}
summon minecraft:armor_stand -29000010.5 250 29000012.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut17"]}
summon minecraft:armor_stand -29000010.5 250 29000013.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut18"]}
summon minecraft:armor_stand -29000010.5 250 29000014.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut19"]}
summon minecraft:armor_stand -29000010.5 250 29000015.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut20"]}
summon minecraft:armor_stand -29000010.5 250 29000016.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut21"]}
summon minecraft:armor_stand -29000011.5 250 29000017.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut22"]}
summon minecraft:armor_stand -29000011.5 250 29000018.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut23"]}
summon minecraft:armor_stand -29000012.5 250 29000019.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut24"]}
summon minecraft:armor_stand -29000013.5 250 29000019.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut25"]}
summon minecraft:armor_stand -29000014.5 250 29000020.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut26"]}
summon minecraft:armor_stand -29000015.5 250 29000020.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut27"]}
summon minecraft:armor_stand -29000016.5 250 29000020.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut28"]}
summon minecraft:armor_stand -29000017.5 250 29000020.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut29"]}
summon minecraft:armor_stand -29000018.5 250 29000020.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut30"]}
summon minecraft:armor_stand -29000019.5 250 29000019.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut31"]}
summon minecraft:armor_stand -29000020.5 250 29000019.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut32"]}
summon minecraft:armor_stand -29000021.5 250 29000018.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut33"]}
summon minecraft:armor_stand -29000021.5 250 29000017.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut34"]}
summon minecraft:armor_stand -29000022.5 250 29000016.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut35"]}
summon minecraft:armor_stand -29000022.5 250 29000015.5 {Marker:1b,Invisible:1b,Tags:["GTrullArOut36"]}

# 건축 플레이스 
# (텍스트 디스플레이)
summon text_display 28999998.5 251.2 29000005.999 {shadow_radius:0f,billboard:"fixed",Tags:["buildin"],brightness:{sky:10,block:15},text:'[{"text":"건축 플레이스\\n","color":"#78eeae","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:0,Rotation:[180f, 0f]}
summon text_display -28999999.5 251.5 -28999993.5 {shadow_radius:0f,billboard:"center",Tags:["buildout"],brightness:{sky:10,block:15},text:'[{"text":"상점\\n","color":"gold","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:-1778384896}
summon text_display -28999994.5 251.5 -28999993.5 {shadow_radius:0f,billboard:"center",Tags:["buildT1"],brightness:{sky:10,block:15},text:'[{"text":"초록색 땅 : 일반 건축지역\\n","color":"dark_green","bold":true},{"text":"보라색 땅 : 기부블럭 설치지역","color":"#9a50fa","bold":true}]',background:-1778384896}
summon text_display -29000004.5 251.5 -28999993.5 {shadow_radius:0f,billboard:"center",Tags:["buildT2"],brightness:{sky:10,block:15},text:'[{"text":"규칙\\n","color":"gold","bold":true},{"text":"(1) 나무 경계선 넘기면서 건축하는 행위 자제\\n","color":"aqua","bold":false},{"text":"(2) 다른분들의 건축물 함부로 손상금지","color":"aqua","bold":false}]',background:-1778384896}
# (인터렉션) [보호막] ------------------------------
summon minecraft:interaction -28999999.5 254 -28999999.5 {Tags:["NoBuild"],width:5f,height:1f}
summon minecraft:interaction -29000005.5 254 -29000005.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999999.5 254 -29000005.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999993.5 254 -29000005.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999993.5 254 -28999999.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999993.5 254 -28999993.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -29000005.5 254 -28999999.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -29000005.5 254 -28999993.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999999.5 254 -28999993.5 {Tags:["NoBuild"],width:7f,height:1f}
summon minecraft:interaction -28999993.5 254 -28999993.5 {Tags:["NoBuild"],width:7f,height:1f}

summon minecraft:interaction -28999989.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}

summon minecraft:interaction -29000009.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -29000009.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999990.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -28999990.0 {Tags:["NoBuild"],width:2f,height:5f}

summon minecraft:interaction -29000007.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000005.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000003.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000001.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999999.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999997.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999995.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999993.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999991.0 250 -29000010.0 {Tags:["NoBuild"],width:2f,height:5f}

summon minecraft:interaction -29000010.0 250 -29000007.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -29000005.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -29000003.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -29000001.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999999.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999997.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999995.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999993.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000010.0 250 -28999991.0 {Tags:["NoBuild"],width:2f,height:5f}

summon minecraft:interaction -28999992.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999994.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999996.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999998.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000000.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000002.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000004.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000006.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -29000008.0 250 -28999989.0 {Tags:["NoBuild"],width:2f,height:5f}

summon minecraft:interaction -28999989.0 250 -28999992.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -28999994.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -28999996.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -28999998.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -29000000.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -29000002.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -29000004.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -29000006.0 {Tags:["NoBuild"],width:2f,height:5f}
summon minecraft:interaction -28999989.0 250 -29000008.0 {Tags:["NoBuild"],width:2f,height:5f}