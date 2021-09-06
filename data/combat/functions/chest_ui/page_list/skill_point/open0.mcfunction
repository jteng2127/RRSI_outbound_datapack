#parent: combat:chest_ui/page_list/menu/detect, combat:chest_ui/page_list/skill_point/detect0
#切換頁面: 技能點分配 第0頁

#前置
function combat:chest_ui/call/click_preprocess
scoreboard players set @s CB.CUI.page 20

#頁面
data merge block ~ ~ ~ {Items: [{Slot:0b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b, CustomModelData: 22, display: {Name: '{"text": "回到主選單"}'}}}, {Slot: 12b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 12, display: {Name: '{"text": ""}'}}}, {Slot: 19b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 13, display: {Name: '{"text": ""}'}}}, {Slot: 23b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 14, display: {Name: '{"text": ""}'}}}, {Slot: 25b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 12, display: {Name: '{"text": ""}'}}}, {Slot: 26b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 12, display: {Name: '{"text": ""}'}}}]}
data merge block ^1 ^ ^ {Items: [{Slot: 21b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.last_page: 1b, CustomModelData: 9, display: {Name: '{"text": "上一頁"}'}}}, {Slot: 23b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.next_page: 1b, CustomModelData: 10, display: {Name: '{"text": "下一頁"}'}}}, {Slot: 25b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.skill_points: 1b, CustomModelData: 3, display: {Name: '{"text": "剩餘技能點"}'}}}, {Slot: 26b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.reset_skill: 1b, CustomModelData: 11, display: {Name: '{"text": "重置技能點"}'}}}, {Slot: 3b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b, CustomModelData: 12, display: {Name: '{"text": ""}'}}}]}

#技能圖標
function entity_id:call/reverse_search
execute as @p[tag= EID.target_id] run function combat:chest_ui/page_list/skill_point/icon0

execute store result block ^1 ^ ^ Items[{Slot: 25b}].Count byte 1 run scoreboard players get @p[tag= EID.target_id] CB.SK.point
