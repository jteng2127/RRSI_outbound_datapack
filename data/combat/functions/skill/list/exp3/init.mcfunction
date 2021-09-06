#parent: combat:skill/init
#技能資料初始化 範例三

scoreboard objectives remove CB.SK.exp3.lvl
scoreboard objectives remove CB.SK.exp3.pro
scoreboard objectives remove CB.SK.exp3.pxp
scoreboard objectives add CB.SK.exp3.lvl dummy {"text": "技能資料:範例三-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp3.pro dummy {"text": "技能資料:範例三-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp3.pxp dummy {"text": "技能資料:範例三-熟練經驗", "color": "light_purple"}

scoreboard players set #exp3 CB.SK.cur_cd 100
