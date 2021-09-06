#parent: combat:loop
#技能系統循環指令

#製作者冷卻關閉
scoreboard players set @a[scores= {CB.SK.cd1= 1..}, tag= op.no_cd] CB.SK.cd1 0
scoreboard players set @a[scores= {CB.SK.cd2= 1..}, tag= op.no_cd] CB.SK.cd2 0
scoreboard players set @a[scores= {CB.SK.cd3= 1..}, tag= op.no_cd] CB.SK.cd3 0
scoreboard players set @a[scores= {CB.SK.cd4= 1..}, tag= op.no_cd] CB.SK.cd4 0
scoreboard players set @a[scores= {CB.SK.cd5= 1..}, tag= op.no_cd] CB.SK.cd5 0
scoreboard players set @a[scores= {CB.SK.cd6= 1..}, tag= op.no_cd] CB.SK.cd6 0
scoreboard players set @a[scores= {CB.SK.cd7= 1..}, tag= op.no_cd] CB.SK.cd7 0
scoreboard players set @a[scores= {CB.SK.cd8= 1..}, tag= op.no_cd] CB.SK.cd8 0
scoreboard players set @a[scores= {CB.SK.cur_cd= 1..}, tag= op.no_cd] CB.SK.cur_cd 0

#冷卻
scoreboard players remove @a[scores= {CB.SK.cd1= 1..}] CB.SK.cd1 1
scoreboard players remove @a[scores= {CB.SK.cd2= 1..}] CB.SK.cd2 1
scoreboard players remove @a[scores= {CB.SK.cd3= 1..}] CB.SK.cd3 1
scoreboard players remove @a[scores= {CB.SK.cd4= 1..}] CB.SK.cd4 1
scoreboard players remove @a[scores= {CB.SK.cd5= 1..}] CB.SK.cd5 1
scoreboard players remove @a[scores= {CB.SK.cd6= 1..}] CB.SK.cd6 1
scoreboard players remove @a[scores= {CB.SK.cd7= 1..}] CB.SK.cd7 1
scoreboard players remove @a[scores= {CB.SK.cd8= 1..}] CB.SK.cd8 1
