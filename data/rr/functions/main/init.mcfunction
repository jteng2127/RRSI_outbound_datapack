#root
#主系統初始化

#戰鬥系統初始化
function combat:init
#實體編號識別系統初始化
function entity_id:init

#玩家隊伍
team remove Player
team add Player {"text": "玩家"}
team modify Player collisionRule pushOwnTeam
team modify Player seeFriendlyInvisibles false
team join Player @a