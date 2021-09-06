#parent: combat:skill/init
#技能資料初始化 範例六

scoreboard objectives remove CB.SK.exp6.lvl
scoreboard objectives remove CB.SK.exp6.pro
scoreboard objectives remove CB.SK.exp6.pxp
scoreboard objectives add CB.SK.exp6.lvl dummy {"text": "技能資料:範例六-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp6.pro dummy {"text": "技能資料:範例六-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp6.pxp dummy {"text": "技能資料:範例六-熟練經驗", "color": "light_purple"}

scoreboard players set #exp6 CB.SK.cur_cd 100
