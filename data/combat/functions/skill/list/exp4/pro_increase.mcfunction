#parent: combat:skill/list/exp4/cast
#熟練等級提升 範例四

#升級
execute if score @s CB.SK.exp4.pro matches 2 run scoreboard players set @s CB.SK.exp4.pro 3
execute if score @s CB.SK.exp4.pro matches 1 run scoreboard players set @s CB.SK.exp4.pro 2
execute unless score @s CB.SK.exp4.pro matches 1.. run scoreboard players set @s CB.SK.exp4.pro 1

#通知
execute if score @s CB.SK.exp4.pro matches 3 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例四 熟練MAX", "color": "yellow"}]}
execute if score @s CB.SK.exp4.pro matches 2 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例四 熟練2", "color": "yellow"}]}
execute if score @s CB.SK.exp4.pro matches 1 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例四 熟練1", "color": "yellow"}]}
