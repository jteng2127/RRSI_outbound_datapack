#parent: combat:skill/list/../request
#施放失敗: 冷卻中!

scoreboard players operation #time_left CB.SK.cur_cd = @s CB.SK.cur_cd
scoreboard players operation #time_left CB.SK.cur_cd /= #20 CB.SK.cur_cd
scoreboard players add #time_left CB.SK.cur_cd 1

title @s actionbar [{"text": "施放失敗: 冷卻中! ", "color": "dark_red", "bold": "true"}, {"text": "剩餘:", "color": "red", "bold": "true"}, {"score": {"name": "#time_left", "objective": "CB.SK.cur_cd"}, "color": "dark_blue", "bold": "true"}, {"text": "秒", "color": "blue", "bold": "true"}]

tag @s add cast_request_fail
