#parent: combat:chest_ui/action/open
#切換頁面: 主選單

#前置
function combat:chest_ui/call/click_preprocess
scoreboard players set @s CB.CUI.page 10

#頁面
data merge block ~ ~ ~ {Lock: "CB.CUI.lock", Items: [{Slot: 20b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.skill_point: 1b, CustomModelData: 2, display: {Name: '{"text": "技能點分配", "color": "light_purple", "italic": "false", "bold": "true"}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.set_skill: 1b, CustomModelData: 6, display: {Name: '{"text": "技能調配", "color": "light_purple", "italic": "false", "bold": "true"}'}}}, {Slot: 24b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.ability_point: 1b, CustomModelData: 4, display: {Name: '{"text": "能力點分配", "color": "light_purple", "italic": "false", "bold": "true"}'}}}]}
data merge block ^1 ^ ^ {Lock: "CB.CUI.lock", Items: [{Slot: 12b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.fast_move: 1b, CustomModelData: 7, display: {Name: '{"text": "快速移動", "color": "dark_aqua", "italic": "false", "bold": "true"}'}}}, {Slot: 14b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.set_spawn_point: 1b, CustomModelData: 8, display: {Name: '{"text": "設置重生點", "color": "yellow", "italic": "false", "bold": "true"}'}}}]}
