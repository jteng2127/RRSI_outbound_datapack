#parent: combat:skill/init
#技能資料初始化 範例五

scoreboard objectives remove CB.SK.exp5.lvl
scoreboard objectives remove CB.SK.exp5.pro
scoreboard objectives remove CB.SK.exp5.pxp
scoreboard objectives add CB.SK.exp5.lvl dummy {"text": "技能資料:範例五-等級", "color": "light_purple"}
scoreboard objectives add CB.SK.exp5.pro dummy {"text": "技能資料:範例五-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK.exp5.pxp dummy {"text": "技能資料:範例五-熟練經驗", "color": "light_purple"}

scoreboard players set #exp5 CB.SK.cur_cd 100
