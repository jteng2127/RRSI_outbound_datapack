#施放技能 範例二 等級3

summon minecraft:mooshroom ~ ~ ~ {Type: "brown", DeathLootTable: "minecraft:empty", Passengers: [{id: "minecraft:mooshroom", Type: "red", DeathLootTable: "minecraft:empty", Passengers: [{id: "minecraft:mooshroom", Type: "brown", DeathLootTable: "minecraft:empty", Passengers: [{id: "minecraft:mooshroom", Type: "red", DeathLootTable: "minecraft:empty", Passengers: [{id: "minecraft:mooshroom", Type: "brown", DeathLootTable: "minecraft:empty", Passengers: [{id: "minecraft:shulker", NoAI: 1b, DeathLootTable: "minecraft:empty"}]}]}]}]}]}
playsound minecraft:entity.mooshroom.convert master @a ~ ~ ~ 3 1
