#parent: combat:action/is_shift_hit
#Shift+左鍵 導向

#重新召喚偵測器
function entity_id:call/search
tag @e[type= minecraft:bat, nbt= {HurtTime: 10s}, tag= left_click_detector, tag= prepared, tag= EID.target_bind_id] add clicked
tp @e[type= minecraft:bat, tag= left_click_detector, tag= clicked, tag= EID.target_bind_id] ~ -64 ~
kill @e[type= minecraft:bat, tag= left_click_detector, tag= clicked, tag= EID.target_bind_id]
tag @e[type= minecraft:bat, tag= left_click_detector, tag= not_prepared, tag= EID.target_bind_id] add prepared
tag @e[type= minecraft:bat, tag= left_click_detector, tag= not_prepared, tag= EID.target_bind_id] remove not_prepared
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[type= minecraft:bat, tag= left_click_detector, tag= prepared, tag= EID.target_bind_id] ~ ~-0.45 ~ 
execute anchored eyes positioned ^ ^ ^ run summon minecraft:bat ~ 255 ~ {Team: "Player", Tags: ["left_click_detector", "not_prepared", "EID.get_bind"], Invulnerable: 0b, NoGravity: 1b, NoAI: 1b, Silent: 1b, PersistenceRequired: 1b, AbsorptionAmount: 2147483647f, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 2147483647, ShowParticles: 0b}]}
#	綁定編號
function entity_id:call/bind

#切換技能
function combat:skill/action/shift_skill
