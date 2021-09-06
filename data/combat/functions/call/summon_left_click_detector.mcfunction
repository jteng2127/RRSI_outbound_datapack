#parent: combat:action/shift
#召喚左鍵偵測器

tag @s add CB.left_click_detecting
#召喚
summon minecraft:bat ~ ~ ~ {Team: "Player", Tags: ["left_click_detector", "prepared", "EID.get_bind"], Invulnerable: 0b, NoGravity: 1b, NoAI: 1b, Silent: 1b, PersistenceRequired: 1b, AbsorptionAmount: 2147483647f, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:bat ~ 255 ~ {Team: "Player", Tags: ["left_click_detector", "prepared", "EID.get_bind"], Invulnerable: 0b, NoGravity: 1b, NoAI: 1b, Silent: 1b, PersistenceRequired: 1b, AbsorptionAmount: 2147483647f, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:bat ~ 255 ~ {Team: "Player", Tags: ["left_click_detector", "not_prepared", "EID.get_bind"], Invulnerable: 0b, NoGravity: 1b, NoAI: 1b, Silent: 1b, PersistenceRequired: 1b, AbsorptionAmount: 2147483647f, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 2147483647, ShowParticles: 0b}]}
#	綁定編號
function entity_id:call/bind
