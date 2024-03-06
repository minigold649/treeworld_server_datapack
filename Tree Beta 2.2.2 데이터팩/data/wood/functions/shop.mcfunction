# 물품 수정시 아래 데이터 수정/복사후 한줄로 만들어 복붙

# [ 나무꾼 물품 ]
# 원목 16 -> 나무도끼
# 원목 32 -> 금도끼
# 원목 64 -> 돌도끼
# 금조각 2 + 돌도끼 -> 철도끼
# 금조각 20 + 철도끼 -> 다이아도끼
# 금조각 4 + 다이아도끼 -> 네더라이트도끼

# [ 약물 제조사 물품 ]
# 금조각 1 -> 성급함 1레벨 10분
# 금조각 2 -> 성급함 1레벨 20분
# 금조각 1 + 원목 32 -> 성급함 2레벨 10분
# 금조각 3 -> 성급함 2레벨 20분
# 금조각 2 -> 야간투시 30분
# 금조각 1 -> 점프강화 2레벨 10분

# [ 사치템 판매자 ]
# 금괴 10 -> 겉날개
# 금조각 1 -> 폭죽 12
# 금괴 1 -> 망원경
# 금괴 1 -> 좀비머리
# 금괴 1 -> 크리퍼머리
# 금괴 1 -> 플레이어머리
# 금괴 1 -> 피글린머리
# 금괴 1 -> 스켈레톤머리
# 금괴 1 -> 위더스켈레톤머리
# 금괴 1 -> 드래곤머리
# 금조각 1 -> 하늘의 눈(꼭대기 tp)
# 금조각 1 -> 엔더진주
# 금조각 4 -> 바람의 힘(주변 나뭇잎 제거)
# 금조각 2 -> 플레이어 추적(랜덤 플레이어 tp)
# 금조각 5 -> 시간변경 (아침)
# 금조각 5 -> 시간변경 (점심)
# 금조각 5 -> 시간변경 (저녁)
# 금조각 6 -> 시간변경 (밤)
# 금조각 10 -> 날씨변경 (비)
# 금조각 10 -> 날씨변경 (맑음)

# [ 화폐 교환 ]
# 원목 64 -> 금조각 1
# 금조각 64 -> 금괴 1
# 금괴 64 -> 금블럭 1
# 금조각 1 -> 원목 64
# 금괴 1 -> 금조각 64
# 금블럭 1 -> 금괴 64

# [ 도구 전문가 ]
# 원목 32 -> 철괭이
# 금조각 3 -> 다이아괭이
# 금조각 4 -> 네더라이트괭이
# 금조각 2 + 철도끼 -> 내구2 철도끼
# 금조각 20 + 다이아도끼 -> 내구2 다이아도끼
# 금조각 25 + 네더라이트도끼 -> 내구2 네더라이트도끼
# 금조각 1 + 철도끼 -> 효율3 철도끼
# 금조각 8 + 다이아도끼 -> 효율3 다이아도끼
# 금조각 10 + 네더라이트도끼 -> 효율3 네더라이트도끼

# [ 요리사 ]
# 원목 16 -> 사과
# 원목 32 -> 빵
# 원목 48 -> 황금당근
# 원목 64 -> 스테이크

kill @e[type=villager]
kill @e[type=text_display]

# 나무꾼
summon minecraft:villager 29000004.5 250 29000000.5 {Rotation: [90f, 0f], CustomName: '[{"text":"나무꾼","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 16b}, sell: {id: "wooden_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "golden_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "stone_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, buyB: {id: "stone_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "toolsmith", type: "plains", level: 6}, NoAI: 1, Silent: 1,}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 16b}, sell: {id: "wooden_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "golden_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "stone_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, buyB: {id: "stone_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}]

# 약물 제조사
summon minecraft:villager 29000004.5 250 29000003.5 {Rotation: [90f, 0f], CustomName: '[{"text":"약물 제조사","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 0, Duration: 12000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 0, Duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, buyB: {id: "oak_log", Count: 32b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 1, Duration: 12000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 3b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 1, Duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 16, Amplifier: 0, Duration: 36000}], CustomPotionColor: 16777215, display: {Name: '[{"text":"야간투시 물약","italic":false,"color":"aqua","bold":true}]'}}}},{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 8, Amplifier: 1, Duration: 12000}], CustomPotionColor: 16716840, display: {Name: '[{"text":"점프강화 물약","italic":false,"color":"aqua","bold":true}]'}}}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "cleric", type: "plains", level: 6}, NoAI: 1, Silent: 1}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 0, Duration: 12000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 0, Duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, buyB: {id: "oak_log", Count: 32b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 1, Duration: 12000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 3b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 3, Amplifier: 1, Duration: 24000}], CustomPotionColor: 8777471, display: {Name: '[{"text":"성급함 물약","italic":false,"color":"aqua","bold":true}]'}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 16, Amplifier: 0, Duration: 36000}], CustomPotionColor: 16777215, display: {Name: '[{"text":"야간투시 물약","italic":false,"color":"aqua","bold":true}]'}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "potion", Count: 1b, tag: {CustomPotionEffects: [{Id: 8, Amplifier: 1, Duration: 12000}], CustomPotionColor: 16716840, display: {Name: '[{"text":"점프강화 물약","italic":false,"color":"aqua","bold":true}]'}}}}]

# 사치템 판매자
summon minecraft:villager 29000004.5 250 28999997.5 {Rotation: [90f, 0f], CustomName: '[{"text":"사치템 판매자","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 10b}, sell: {id: "elytra", Count: 1b, tag: {Unbreakable: 1b}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "firework_rocket", Count: 12b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "spyglass", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "zombie_head", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "creeper_head", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "player_head", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "piglin_head", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "skeleton_skull", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "wither_skeleton_skull", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "dragon_head", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "ender_eye", Count: 1b,tag: {display:{Name:'[{"text":"하늘의 눈","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 꼭대기로 이동","italic":false,"color":"#abffab"}]']}}}},{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "ender_pearl", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, sell: {id: "feather", Count: 1b,tag: {display:{Name:'[{"text":"바람의 힘","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 주변 나뭇잎 제거","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "nether_star", Count: 1b,tag: {display:{Name:'[{"text":"플레이어 추적","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 랜덤 플레이어에게 tp","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (아침)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 아침으로 변경","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (점심)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 점심으로 변경","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (저녁)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 저녁으로 변경","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 6b}, sell: {id: "clock", Count: 1b,tag: {Enchantments:[{}],display:{Name:'[{"text":"시간변경 (밤)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"1개만 왼손에 들어 밤으로 변경","italic":false,"color":"#abffab"}','{"text":"주의 : 밤에는 나무가 자라지 않음","italic":false,"color":"red","bold":true}']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "ghast_tear", Count: 1b,tag: {display:{Name:'[{"text":"날씨변경 (비)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 비오는 날씨로 변경","italic":false,"color":"#abffab"}]']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "sugar", Count: 1b,tag: {display:{Name:'[{"text":"날씨변경 (맑음)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 맑은 날씨로 변경","italic":false,"color":"#abffab"}]']}}}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "cartographer", type: "plains", level: 6}, NoAI: 1, Silent: 1}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 10b}, sell: {id: "elytra", Count: 1b, tag: {Unbreakable: 1b}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "firework_rocket", Count: 12b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "spyglass", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "zombie_head", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "creeper_head", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "player_head", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "piglin_head", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "skeleton_skull", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "wither_skeleton_skull", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "dragon_head", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "ender_eye", Count: 1b,tag: {display:{Name:'[{"text":"하늘의 눈","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 꼭대기로 이동","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "ender_pearl", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, sell: {id: "feather", Count: 1b,tag: {display:{Name:'[{"text":"바람의 힘","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 주변 나뭇잎 제거","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, sell: {id: "nether_star", Count: 1b,tag: {display:{Name:'[{"text":"플레이어 추적","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 랜덤 플레이어에게 tp","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (아침)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 아침으로 변경","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (점심)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 점심으로 변경","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "clock", Count: 1b,tag: {display:{Name:'[{"text":"시간변경 (저녁)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 저녁으로 변경","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 6b}, sell: {id: "clock", Count: 1b,tag: {Enchantments:[{}],display:{Name:'[{"text":"시간변경 (밤)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"1개만 왼손에 들어 밤으로 변경","italic":false,"color":"#abffab"}','{"text":"주의 : 밤에는 나무가 자라지 않음","italic":false,"color":"red","bold":true}']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "ghast_tear", Count: 1b,tag: {display:{Name:'[{"text":"날씨변경 (비)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 비오는 날씨로 변경","italic":false,"color":"#abffab"}]']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "sugar", Count: 1b,tag: {display:{Name:'[{"text":"날씨변경 (맑음)","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"1개만 왼손에 들어 맑은 날씨로 변경","italic":false,"color":"#abffab"}]']}}}}]

# 화폐 교환
summon minecraft:villager 28999996.5 250 29000000.5 {Rotation: [-90f, 0f], CustomName: '[{"text":"화폐 교환","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "gold_nugget", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 64b}, sell: {id: "gold_ingot", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 64b}, sell: {id: "gold_block", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "oak_log", Count: 64b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "gold_nugget", Count: 64b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_block", Count: 1b}, sell: {id: "gold_ingot", Count: 64b}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "nitwit", type: "plains", level: 6}, NoAI: 1, Silent: 1}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "gold_nugget", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 64b}, sell: {id: "gold_ingot", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 64b}, sell: {id: "gold_block", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "oak_log", Count: 64b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_ingot", Count: 1b}, sell: {id: "gold_nugget", Count: 64b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_block", Count: 1b}, sell: {id: "gold_ingot", Count: 64b}}]

# 도구 전문가
summon minecraft:villager 28999996.5 250 29000003.5 {Rotation: [-90f, 0f], CustomName: '[{"text":"도구 전문가","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "iron_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 3b}, sell: {id: "diamond_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, sell: {id: "netherite_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 25b}, buyB: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 8b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, buyB: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "armorer", type: "plains", level: 6}, NoAI: 1, Silent: 1}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "iron_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 3b}, sell: {id: "diamond_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 4b}, sell: {id: "netherite_hoe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 2b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 25b}, buyB: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, buyB: {id: "iron_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "iron_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 8b}, buyB: {id: "diamond_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "diamond_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, buyB: {id: "netherite_axe", Count: 1b, tag: {CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}, sell: {id: "netherite_axe", Count: 1b, tag: {Enchantments:[{id:"minecraft:efficiency",lvl:3}],CanDestroy: ["minecraft:oak_leaves", "minecraft:oak_log"]}}}]

# 요리사
summon minecraft:villager 28999996.5 250 28999997.5 {Rotation: [-90f, 0f], CustomName: '[{"text":"요리사","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 16b}, sell: {id: "apple", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "bread", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 48b}, sell: {id: "golden_carrot", Count: 1b}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "cooked_beef", Count: 1b}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "butcher", type: "plains", level: 6}, NoAI: 1, Silent: 1}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 16b}, sell: {id: "apple", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 32b}, sell: {id: "bread", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 48b}, sell: {id: "golden_carrot", Count: 1b}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "oak_log", Count: 64b}, sell: {id: "cooked_beef", Count: 1b}}]

# 텍스트 디스플레이
summon text_display 29000000.5 251.2 28999995.001 {shadow_radius:0f,billboard:"fixed",Tags:["trashin"],brightness:{sky:10,block:15},text:'[{"text":"쓰레기방\\n","color":"#390870","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:0}
summon text_display 28999996.5 241.25 28999995.001 {shadow_radius:0f,billboard:"fixed",Tags:["trashout"],brightness:{sky:10,block:15},text:'[{"text":"상점\\n","color":"gold","bold":true},{"text":"포탈","color":"#10B00B","bold":true}]',background:0}
summon text_display 29000000.5 242 29000000.5 {shadow_radius:0f,billboard:"center",Tags:["trashmsg"],brightness:{sky:10,block:15},text:'[{"text":"@","color":"dark_red"},{"text":"주의","color":"dark_red","bold":true},{"text":"@\\n","color":"dark_red","bold":false},{"text":"아이템을 던지면 버려집니다.","color":"blue","bold":true}]',background:0}