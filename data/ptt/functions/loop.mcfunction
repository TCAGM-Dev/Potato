execute as @e[type=armor_stand,tag=ptt_summon_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_place
execute as @e[type=armor_stand,tag=ptt_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_tick

execute as @a[scores={ptt_ate_potato=1..,ptt_was_holding_eptt=1}] run function ptt:ate_eptt

scoreboard players remove @a[scores={ptt_ate_potato=1..}] ptt_ate_potato 1
scoreboard players reset @a ptt_was_holding_eptt
execute as @a[nbt={SelectedItem:{tag:{ptt_enchanted_potato:1b}}}] run scoreboard players set @s ptt_was_holding_eptt 1

execute unless entity @e[type=illusioner,tag=ptt_potatologer] as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] at @s if block ~ ~-1 ~ chiseled_stone_bricks if entity @e[type=item,distance=...4,nbt={Item:{Count:1b,tag:{EntityTag:{Tags:["ptt_summon_poisonous_block"]}}}}] if entity @a[scores={ptt_killed_sacrifice=1..},distance=..3] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ptt_summon_potatologer"]}
scoreboard players remove @a[scores={ptt_killed_sacrifice=1..}] ptt_killed_sacrifice 1
execute as @e[type=armor_stand,tag=ptt_summon_potatologer] at @s run function ptt:potatologer_sequence
execute as @e[type=illusioner,tag=ptt_potatologer] at @s run function ptt:potatologer_tick
execute if entity @e[type=illusioner,tag=ptt_potatologer] run bossbar set ptt:potatologer visible true
execute unless entity @e[type=illusioner,tag=ptt_potatologer] run bossbar set ptt:potatologer visible false