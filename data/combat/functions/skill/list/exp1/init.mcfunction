#parent: combat:skill/init
#技能資料初始化 範例一

scoreboard objectives remove CB.SK.exp1.lvl
scoreboard objectives remove CB.SK.exp1.pro
scoreboard objectives remove CB.SK.exp1.pxp
scoreboard objectives add CB.SK.exp1.lvl dummy {"text": "技能資料:範例一-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp1.pro dummy {"text": "技能資料:範例一-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp1.pxp dummy {"text": "技能資料:範例一-熟練經驗", "color": "light_purple"}

scoreboard players set #exp1 CB.SK.cur_cd 100
