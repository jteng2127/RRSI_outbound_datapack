#parent: combat:chest_ui/page_list/skill_point/open0
#技能點分配 設置技能圖標 第0頁
#玩家執行 執行位置為箱子位置標記

execute unless score @s CB.SK.exp1.lvl matches 1.. run data modify block ~ ~ ~ Items append value {Slot: 18b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b, CustomModelData: 1001, display: {Name: '{"text": "範例 未解鎖"}'}}}
execute if score @s CB.SK.exp1.lvl matches 1 run data modify block ~ ~ ~ Items append value {Slot: 18b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b, CustomModelData: 2001, display: {Name: '{"text": "範例一 等級1"}'}}}
execute if score @s CB.SK.exp1.lvl matches 2 run data modify block ~ ~ ~ Items append value {Slot: 18b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b, CustomModelData: 2001, display: {Name: '{"text": "範例一 等級2"}'}}}
execute if score @s CB.SK.exp1.lvl matches 3 run data modify block ~ ~ ~ Items append value {Slot: 18b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b, CustomModelData: 3001, display: {Name: '{"text": "範例一 等級3"}'}}}

execute unless score @s CB.SK.exp2.lvl matches 1.. run data modify block ~ ~ ~ Items append value {Slot: 11b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b, CustomModelData: 1002, display: {Name: '{"text": "範例二 未解鎖"}'}}}
execute if score @s CB.SK.exp2.lvl matches 1 run data modify block ~ ~ ~ Items append value {Slot: 11b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b, CustomModelData: 2002, display: {Name: '{"text": "範例二 等級1"}'}}}
execute if score @s CB.SK.exp2.lvl matches 2 run data modify block ~ ~ ~ Items append value {Slot: 11b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b, CustomModelData: 2002, display: {Name: '{"text": "範例二 等級2"}'}}}
execute if score @s CB.SK.exp2.lvl matches 3 run data modify block ~ ~ ~ Items append value {Slot: 11b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b, CustomModelData: 3002, display: {Name: '{"text": "範例二 等級3"}'}}}

execute unless score @s CB.SK.exp3.lvl matches 1.. run data modify block ~ ~ ~ Items append value {Slot: 13b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b, CustomModelData: 1003, display: {Name: '{"text": "範例三 未解鎖"}'}}}
execute if score @s CB.SK.exp3.lvl matches 1 run data modify block ~ ~ ~ Items append value {Slot: 13b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b, CustomModelData: 2003, display: {Name: '{"text": "範例三 等級1"}'}}}
execute if score @s CB.SK.exp3.lvl matches 2 run data modify block ~ ~ ~ Items append value {Slot: 13b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b, CustomModelData: 2003, display: {Name: '{"text": "範例三 等級2"}'}}}
execute if score @s CB.SK.exp3.lvl matches 3 run data modify block ~ ~ ~ Items append value {Slot: 13b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b, CustomModelData: 3003, display: {Name: '{"text": "範例三 等級3"}'}}}

execute unless score @s CB.SK.exp6.lvl matches 1.. run data modify block ~ ~ ~ Items append value {Slot: 24b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b, CustomModelData: 1006, display: {Name: '{"text": "範例六 未解鎖"}'}}}
execute if score @s CB.SK.exp6.lvl matches 1 run data modify block ~ ~ ~ Items append value {Slot: 24b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b, CustomModelData: 2006, display: {Name: '{"text": "範例六 等級1"}'}}}
execute if score @s CB.SK.exp6.lvl matches 2 run data modify block ~ ~ ~ Items append value {Slot: 24b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b, CustomModelData: 2006, display: {Name: '{"text": "範例六 等級2"}'}}}
execute if score @s CB.SK.exp6.lvl matches 3 run data modify block ~ ~ ~ Items append value {Slot: 24b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b, CustomModelData: 3006, display: {Name: '{"text": "範例六 等級3"}'}}}

execute unless score @s CB.SK.exp4.lvl matches 1.. run data modify block ^1 ^ ^ Items append value {Slot: 2b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b, CustomModelData: 1004, display: {Name: '{"text": "範例四 未解鎖"}'}}}
execute if score @s CB.SK.exp4.lvl matches 1 run data modify block ^1 ^ ^ Items append value {Slot: 2b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b, CustomModelData: 2004, display: {Name: '{"text": "範例四 等級1"}'}}}
execute if score @s CB.SK.exp4.lvl matches 2 run data modify block ^1 ^ ^ Items append value {Slot: 2b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b, CustomModelData: 2004, display: {Name: '{"text": "範例四 等級2"}'}}}
execute if score @s CB.SK.exp4.lvl matches 3 run data modify block ^1 ^ ^ Items append value {Slot: 2b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b, CustomModelData: 3004, display: {Name: '{"text": "範例四 等級3"}'}}}

execute unless score @s CB.SK.exp5.lvl matches 1.. run data modify block ^1 ^ ^ Items append value {Slot: 4b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b, CustomModelData: 1005, display: {Name: '{"text": "範例五 未解鎖"}'}}}
execute if score @s CB.SK.exp5.lvl matches 1 run data modify block ^1 ^ ^ Items append value {Slot: 4b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b, CustomModelData: 2005, display: {Name: '{"text": "範例五 等級1"}'}}}
execute if score @s CB.SK.exp5.lvl matches 2 run data modify block ^1 ^ ^ Items append value {Slot: 4b, id: "minecraft:barrier", Count: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b, CustomModelData: 2005, display: {Name: '{"text": "範例五 等級2"}'}}}
execute if score @s CB.SK.exp5.lvl matches 3 run data modify block ^1 ^ ^ Items append value {Slot: 4b, id: "minecraft:barrier", Count: 1b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b, CustomModelData: 3005, display: {Name: '{"text": "範例五 等級3"}'}}}
