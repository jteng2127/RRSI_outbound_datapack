#parent: combat:skill/list/exp3/cast
#熟練等級提升 範例三

#升級
execute if score @s CB.SK.exp3.pro matches 2 run scoreboard players set @s CB.SK.exp3.pro 3
execute if score @s CB.SK.exp3.pro matches 1 run scoreboard players set @s CB.SK.exp3.pro 2
execute unless score @s CB.SK.exp3.pro matches 1.. run scoreboard players set @s CB.SK.exp3.pro 1

#通知
execute if score @s CB.SK.exp3.pro matches 3 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例三 熟練MAX", "color": "yellow"}]}
execute if score @s CB.SK.exp3.pro matches 2 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例三 熟練2", "color": "yellow"}]}
execute if score @s CB.SK.exp3.pro matches 1 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能熟練等級提升: "}, {"text": "範例三 熟練1", "color": "yellow"}]}
