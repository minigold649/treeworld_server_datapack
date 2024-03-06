# 물품 수정시 아래 데이터 수정/복사후 한줄로 만들어 복붙

# [ 건축도구 제조인 ]
# 기본옵션 : 네더라이트 곡괭이 (효율5, 건축 플레이스에 모든 블럭 파괴가능)
# 원목 40개 -> 내구도 50
# 금조각 1개 -> 내구도 100
# 금조각 4개 -> 내구도 500
# 금조각 7개 -> 내구도 1000

# [ Tree 자선단체 대표 ] (자수정위에만 설치가능)
# 금조각 1개 -> 철광석
# 금조각 5개 -> 금광석
# 금조각 10개 -> 다이아광석
# 금조각 20개 -> 에메랄드광석


# 비계 제외 모두 원목 1개 (원목 1개 -> 비계 2개)
    
    # 목제 공통 : 가문비, 자작, 정글, 아카시아, 짙은참나무, 벚나무, 맹그로브, 대나무, 진홍빛, 뒤틀린
    # [ 목제 판매자 1 ] (40가지)
    # 원목, 판자, 계단, 반블럭

    # [ 목제 판매자 2 ] (40가지)
    # 울타리, 울타리문, 문, 다락문

    # [ 색깔블럭 판매자 ] (48가지)
    # 빨강, 주황, 노랑, 연두, 초록, 하늘, 청록, 파랑, 보라, 자홍, 분홍, 하양, 회백색, 회색, 검정, 갈색
    # 양털, 콘크리트, 유광 테라코타

    # [ 일반블럭 판매자 ] (54가지)
    # 블럭, 계단, 반블럭
    # 돌, 석재벽돌, 윤나는 안산암/섬록암/화강암/심층암, 심층암벽돌, 벽돌, 심층암타일, 진흙벽돌, 밀랍칠한 깎인구리, 프리즈머린벽돌, 짙은프리즈머린, 네더벽돌, 붉은네더벽돌, 퍼퍼, 석영, 엔드석재벽돌

    # [ 기타블럭 판매자 ] (38가지)
    # 발광석, 바다랜턴, 버섯불, 잔딧빛/진줏빛/황톳빛 개구리불
    # 마법부여대, 작업대, 가마솥, 화살작업대, 벌통, 벌집, 지도제작대, 과녁, 주크박스, 책장
    # 자석석, 건초더미, 꿀블럭, 벌집조각블럭, 슬라임블럭
    # 독서대, 피뢰침, 사슬, (빨강)침대, 유리판, 횃불, 모닥불, 엔드막대기, 사다리, 종, 랜턴
    # 레드스톤, 돌버튼, 레버, 레드스톤조명, 소리블럭
    # !! 비계 !! (원목 1개 -> 비계 5개)

# 건축도구 전용 Can nbt
# ["iron_ore", "gold_ore", "diamond_ore", "emerald_ore"]

# 블럭 전용 Can nbt
# ["moss_block"]

# 공통 Can nbt (220가지 블럭)
# 목제 : ["spruce_log", "birch_log", "jungle_log", "acacia_log", "dark_oak_log", "cherry_log", "mangrove_log", "bamboo_block", "crimson_stem", "warped_stem", "spruce_planks", "birch_planks", "jungle_planks", "acacia_planks", "dark_oak_planks", "cherry_planks", "mangrove_planks", "bamboo_planks", "crimson_planks", "warped_planks", "spruce_stairs", "birch_stairs", "jungle_stairs", "acacia_stairs", "dark_oak_stairs", "cherry_stairs", "mangrove_stairs", "bamboo_stairs", "crimson_stairs", "warped_stairs", "spruce_slab", "birch_slab", "jungle_slab", "acacia_slab", "dark_oak_slab", "cherry_slab", "mangrove_slab", "bamboo_slab", "crimson_slab", "warped_slab", "spruce_fence", "birch_fence", "jungle_fence", "acacia_fence", "dark_oak_fence", "cherry_fence", "mangrove_fence", "bamboo_fence", "crimson_fence", "warped_fence", "spruce_fence_gate", "birch_fence_gate", "jungle_fence_gate", "acacia_fence_gate", "dark_oak_fence_gate", "cherry_fence_gate", "mangrove_fence_gate", "bamboo_fence_gate", "crimson_fence_gate", "warped_fence_gate", "spruce_door", "birch_door", "jungle_door", "acacia_door", "dark_oak_door", "cherry_door", "mangrove_door", "bamboo_door", "crimson_door", "warped_door", "spruce_trapdoor", "birch_trapdoor", "jungle_trapdoor", "acacia_trapdoor", "dark_oak_trapdoor", "cherry_trapdoor", "mangrove_trapdoor", "bamboo_trapdoor", "crimson_trapdoor", "warped_trapdoor"]
# 색깔블럭 : ["red_wool", "orange_wool", "yellow_wool", "lime_wool", "green_wool", "light_blue_wool", "cyan_wool", "blue_wool", "purple_wool", "magenta_wool", "pink_wool", "white_wool", "light_gray_wool", "gray_wool", "black_wool", "brown_wool", "red_concrete", "orange_concrete", "yellow_concrete", "lime_concrete", "green_concrete", "light_blue_concrete", "cyan_concrete", "blue_concrete", "purple_concrete", "magenta_concrete", "pink_concrete", "white_concrete", "light_gray_concrete", "gray_concrete", "black_concrete", "brown_concrete", "red_glazed_terracotta", "orange_glazed_terracotta", "yellow_glazed_terracotta", "lime_glazed_terracotta", "green_glazed_terracotta", "light_blue_glazed_terracotta", "cyan_glazed_terracotta", "blue_glazed_terracotta", "purple_glazed_terracotta", "magenta_glazed_terracotta", "pink_glazed_terracotta", "white_glazed_terracotta", "light_gray_glazed_terracotta", "gray_glazed_terracotta", "black_glazed_terracotta", "brown_glazed_terracotta"]
# 일반블럭 : ["polished_deepslate", "polished_diorite", "polished_andesite", "polished_granite", "end_stone_bricks", "deepslate_bricks", "prismarine_bricks", "nether_bricks", "red_nether_bricks", "stone_bricks", "mud_bricks", "purpur_block", "quartz_block", "stone", "waxed_cut_copper", "bricks", "deepslate_tiles", "dark_prismarine", "polished_deepslate_stairs", "polished_diorite_stairs", "polished_andesite_stairs", "polished_granite_stairs", "end_stone_brick_stairs", "deepslate_brick_stairs", "prismarine_brick_stairs", "nether_brick_stairs", "red_nether_brick_stairs", "stone_brick_stairs", "mud_brick_stairs", "purpur_stairs", "quartz_stairs", "stone_stairs", "waxed_cut_copper_stairs", "brick_stairs", "deepslate_tile_stairs", "dark_prismarine_stairs", "polished_deepslate_slab", "polished_diorite_slab", "polished_andesite_slab", "polished_granite_slab", "end_stone_brick_slab", "deepslate_brick_slab", "prismarine_brick_slab", "nether_brick_slab", "red_nether_brick_slab", "stone_brick_slab", "mud_brick_slab", "purpur_slab", "quartz_slab", "stone_slab", "waxed_cut_copper_slab", "brick_slab", "deepslate_tile_slab", "dark_prismarine_slab"]
# 기타블럭 : ["glowstone", "sea_lantern", "shroomlight", "verdant_froglight", "pearlescent_froglight", "ochre_froglight", "enchanting_table", "crafting_table", "cauldron", "fletching_table", "beehive", "bee_nest", "cartography_table", "target", "jukebox", "bookshelf", "lodestone", "hay_block", "honey_block", "honeycomb_block", "slime_block", "lectern", "lightning_rod", "chain", "red_bed", "glass_pane", "torch", "campfire", "end_rod", "ladder", "bell", "lantern", "redstone_wire", "stone_button", "lever", "redstone_lamp", "note_block", "scaffolding"]
# 전체 : ["spruce_log", "birch_log", "jungle_log", "acacia_log", "dark_oak_log", "cherry_log", "mangrove_log", "bamboo_block", "crimson_stem", "warped_stem", "spruce_planks", "birch_planks", "jungle_planks", "acacia_planks", "dark_oak_planks", "cherry_planks", "mangrove_planks", "bamboo_planks", "crimson_planks", "warped_planks", "spruce_stairs", "birch_stairs", "jungle_stairs", "acacia_stairs", "dark_oak_stairs", "cherry_stairs", "mangrove_stairs", "bamboo_stairs", "crimson_stairs", "warped_stairs", "spruce_slab", "birch_slab", "jungle_slab", "acacia_slab", "dark_oak_slab", "cherry_slab", "mangrove_slab", "bamboo_slab", "crimson_slab", "warped_slab", "spruce_fence", "birch_fence", "jungle_fence", "acacia_fence", "dark_oak_fence", "cherry_fence", "mangrove_fence", "bamboo_fence", "crimson_fence", "warped_fence", "spruce_fence_gate", "birch_fence_gate", "jungle_fence_gate", "acacia_fence_gate", "dark_oak_fence_gate", "cherry_fence_gate", "mangrove_fence_gate", "bamboo_fence_gate", "crimson_fence_gate", "warped_fence_gate", "spruce_door", "birch_door", "jungle_door", "acacia_door", "dark_oak_door", "cherry_door", "mangrove_door", "bamboo_door", "crimson_door", "warped_door", "spruce_trapdoor", "birch_trapdoor", "jungle_trapdoor", "acacia_trapdoor", "dark_oak_trapdoor", "cherry_trapdoor", "mangrove_trapdoor", "bamboo_trapdoor", "crimson_trapdoor", "warped_trapdoor","red_wool", "orange_wool", "yellow_wool", "lime_wool", "green_wool", "light_blue_wool", "cyan_wool", "blue_wool", "purple_wool", "magenta_wool", "pink_wool", "white_wool", "light_gray_wool", "gray_wool", "black_wool", "brown_wool", "red_concrete", "orange_concrete", "yellow_concrete", "lime_concrete", "green_concrete", "light_blue_concrete", "cyan_concrete", "blue_concrete", "purple_concrete", "magenta_concrete", "pink_concrete", "white_concrete", "light_gray_concrete", "gray_concrete", "black_concrete", "brown_concrete", "red_glazed_terracotta", "orange_glazed_terracotta", "yellow_glazed_terracotta", "lime_glazed_terracotta", "green_glazed_terracotta", "light_blue_glazed_terracotta", "cyan_glazed_terracotta", "blue_glazed_terracotta", "purple_glazed_terracotta", "magenta_glazed_terracotta", "pink_glazed_terracotta", "white_glazed_terracotta", "light_gray_glazed_terracotta", "gray_glazed_terracotta", "black_glazed_terracotta", "brown_glazed_terracotta", "polished_deepslate", "polished_diorite", "polished_andesite", "polished_granite", "end_stone_bricks", "deepslate_bricks", "prismarine_bricks", "nether_bricks", "red_nether_bricks", "stone_bricks", "mud_bricks", "purpur_block", "quartz_block", "stone", "waxed_cut_copper", "bricks", "deepslate_tiles", "dark_prismarine", "polished_deepslate_stairs", "polished_diorite_stairs", "polished_andesite_stairs", "polished_granite_stairs", "end_stone_brick_stairs", "deepslate_brick_stairs", "prismarine_brick_stairs", "nether_brick_stairs", "red_nether_brick_stairs", "stone_brick_stairs", "mud_brick_stairs", "purpur_stairs", "quartz_stairs", "stone_stairs", "waxed_cut_copper_stairs", "brick_stairs", "deepslate_tile_stairs", "dark_prismarine_stairs", "polished_deepslate_slab", "polished_diorite_slab", "polished_andesite_slab", "polished_granite_slab", "end_stone_brick_slab", "deepslate_brick_slab", "prismarine_brick_slab", "nether_brick_slab", "red_nether_brick_slab", "stone_brick_slab", "mud_brick_slab", "purpur_slab", "quartz_slab", "stone_slab", "waxed_cut_copper_slab", "brick_slab", "deepslate_tile_slab", "dark_prismarine_slab", "glowstone", "sea_lantern", "shroomlight", "verdant_froglight", "pearlescent_froglight", "ochre_froglight", "enchanting_table", "crafting_table", "cauldron", "fletching_table", "beehive", "bee_nest", "cartography_table", "target", "jukebox", "bookshelf", "lodestone", "hay_block", "honey_block", "honeycomb_block", "slime_block", "lectern", "lightning_rod", "chain", "red_bed", "glass_pane", "torch", "campfire", "end_rod", "ladder", "bell", "lantern", "redstone_wire", "stone_button", "lever", "redstone_lamp", "note_block", "scaffolding"]

kill @e[type=villager,tag=build]

# Tree 자선단체 대표
summon minecraft:villager -28999992.5 250 -29000006.5 {Rotation: [0f, 0f], CustomName: '[{"text":"Tree 자선단체 대표","color":"gold"}]', Offers: {Recipes: [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "iron_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 1개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "gold_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 5개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "diamond_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 10개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}}, {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, sell: {id: "emerald_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 20개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}}]}, Attributes: [{Name: "generic.max_health", Base: 1024}], Health: 1024, CustomNameVisible: 1, PersistenceRequired: 1, Invulnerable: 1b, VillagerData: {profession: "librarian", type: "jungle", level: 6}, NoAI: 1, Silent: 1,Tags:["build"]}
# [{rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 1b}, sell: {id: "iron_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 1개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 5b}, sell: {id: "gold_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 5개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 10b}, sell: {id: "diamond_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 10개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}},
# {rewardExp: 0b, maxUses: 999999999, buy: {id: "gold_nugget", Count: 20b}, sell: {id: "emerald_ore", Count: 1b, tag: {CanPlaceOn: ["minecraft:amethyst_block"],display:{Name:'[{"text":"기부블럭 (금조각 20개)","italic":false,"bold":true,"color":"aqua"}]',Lore:['{"text":"건축 플레이스에서 사용가능","italic":false,"color":"#abffab"}']}}}}]

# 건축도구 제조인
function wood:build_shop1

# 목제 판매자 1
function wood:build_shop2

# 목제 판매자 2
function wood:build_shop3

# 색깔블럭 판매자
function wood:build_shop4

# 일반블럭 판매자
function wood:build_shop5

# 기타블럭 판매자
function wood:build_shop6