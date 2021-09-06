#技能升級 範例二

#計算剩餘技能點
scoreboard players operation #left_point CB.SK.point = @s CB.SK.point
execute if score @s CB.SK.exp2.lvl matches 2 run scoreboard players operation #left_point CB.SK.point -= #up3 CB.SK.point
execute if score @s CB.SK.exp2.lvl matches 1 run scoreboard players operation #left_point CB.SK.point -= #up2 CB.SK.point
execute unless score @s CB.SK.exp2.lvl matches 1.. run scoreboard players operation #left_point CB.SK.point -= #up1 CB.SK.point
execute if score #left_point CB.SK.point matches 0.. run tag @s add CB.SK.upgrade_success

#升級/等級MAX
execute if score @s CB.SK.exp2.lvl matches 3 run tag @s remove CB.SK.upgrade_success
execute if score @s CB.SK.exp2.lvl matches 3 run tag @s add CB.SK.level_max
scoreboard players add @s[tag= CB.SK.upgrade_success] CB.SK.exp2.lvl 1

#通知
tellraw @s[tag= CB.SK.level_max] {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "技能等級已達MAX!", "color": "yellow"}]}
execute if score @s[tag= CB.SK.upgrade_success] CB.SK.exp2.lvl matches 3 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "已升級技能: "}, {"text": "範例二 等級MAX", "color": "yellow"}]}
execute if score @s[tag= CB.SK.upgrade_success] CB.SK.exp2.lvl matches 2 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "已升級技能: "}, {"text": "範例二 等級2", "color": "yellow"}]}
execute if score @s[tag= CB.SK.upgrade_success] CB.SK.exp2.lvl matches 1 run tellraw @s {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "已解鎖技能: "}, {"text": "範例二 等級1", "color": "yellow"}]}
#升級失敗
execute if entity @s[tag= !CB.SK.upgrade_success, tag= !CB.SK.level_max] run scoreboard players operation #left_point CB.SK.point *= #-1 CB.SK.point
tellraw @s[tag= !CB.SK.upgrade_success, tag= !CB.SK.level_max] {"text": "", "color": "green", "extra": [{"text": "[系統] ", "color": "gold"}, {"text": "升級失敗: 技能點不足! ", "color": "red"}, {"text": "(還差:", "color": "red"}, {"score": {"name": "#left_point", "objective": "CB.SK.point"}, "color": "red"}, {"text": "點)", "color": "red"}]}

#技能點減少
scoreboard players operation @s[tag= CB.SK.upgrade_success] CB.SK.point = #left_point CB.SK.point

#回復
tag @s remove CB.SK.upgrade_success
tag @s remove CB.SK.level_max
