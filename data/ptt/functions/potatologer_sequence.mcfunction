function ptt:pentagram
execute if score @s ptt_potatologer_summon matches 1200.. run function ptt:summon_potatologer
execute if score @s ptt_potatologer_summon matches 1000.. run particle lava ~ ~ ~ 1 0 1.5 0 1 force
execute if score @s ptt_potatologer_summon matches 800 run playsound item.firecharge.use hostile @a ~ ~ ~
execute if score @s ptt_potatologer_summon matches 800.. run particle smoke ~ ~ ~ 1 0 1.5 0 5 force
execute if score @s ptt_potatologer_summon matches 400.. run particle smoke ~ ~ ~ 1 0 1.5 0 5 force
scoreboard players add @s ptt_potatologer_summon 1
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}},distance=...6] run kill @s
execute unless entity @e[type=item,nbt={Item:{Count:1b,tag:{EntityTag:{Tags:["ptt_summon_poisonous_block"]}}}},distance=...6] run kill @s
execute unless entity @e[type=item,nbt={Item:{Count:1b,tag:{ptt_golden_potato:1b}}},distance=...6] run kill @s
execute unless entity @e[type=item,nbt={Item:{Count:1b,tag:{ptt_wither_potato:1b}}},distance=...6] run kill @s
execute unless entity @e[type=item,nbt={Item:{Count:1b,tag:{ptt_compressed_bone_block:1b}}},distance=...6] run kill @s
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:water_bucket",Count:1b}},distance=...6] run kill @s