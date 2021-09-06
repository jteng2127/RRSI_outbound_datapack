#parent: combat:skill/init
#技能資料初始化 範例四

scoreboard objectives remove CB.SK.exp4.lvl
scoreboard objectives remove CB.SK.exp4.pro
scoreboard objectives remove CB.SK.exp4.pxp
scoreboard objectives add CB.SK.exp4.lvl dummy {"text": "技能資料:範例四-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp4.pro dummy {"text": "技能資料:範例四-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp4.pxp dummy {"text": "技能資料:範例四-熟練經驗", "color": "light_purple"}

scoreboard players set #exp4 CB.SK.cur_cd 100
