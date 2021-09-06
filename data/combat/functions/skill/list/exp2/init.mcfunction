#parent: combat:skill/init
#技能資料初始化 範例二

scoreboard objectives remove CB.SK.exp2.lvl
scoreboard objectives remove CB.SK.exp2.pro
scoreboard objectives remove CB.SK.exp2.pxp
scoreboard objectives add CB.SK.exp2.lvl dummy {"text": "技能資料:範例二-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp2.pro dummy {"text": "技能資料:範例二-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp2.pxp dummy {"text": "技能資料:範例二-熟練經驗", "color": "light_purple"}

scoreboard players set #exp2 CB.SK.cur_cd 50
