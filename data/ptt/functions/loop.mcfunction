execute as @e[type=armor_stand,tag=ptt_summon_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_place
execute as @e[type=armor_stand,tag=ptt_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_tick

execute as @a[scores={ptt_ate_potato=1..,ptt_was_holding_eptt=1}] run function ptt:ate_eptt
execute as @a[scores={ptt_ate_potato=1..,ptt_was_holding_wptt=1}] run function ptt:ate_wptt
execute as @a[scores={ptt_ate_potato=1..,ptt_was_holding_gptt=1}] run function ptt:ate_gptt

scoreboard players reset @a ptt_was_holding_eptt
execute as @a[nbt={SelectedItem:{tag:{ptt_enchanted_potato:1b}}}] run scoreboard players set @s ptt_was_holding_eptt 1
scoreboard players reset @a ptt_was_holding_wptt
execute as @a[nbt={SelectedItem:{tag:{ptt_wither_potato:1b}}}] run scoreboard players set @s ptt_was_holding_wptt 1
scoreboard players reset @a ptt_was_holding_gptt
execute as @a[nbt={SelectedItem:{tag:{ptt_golden_potato:1b}}}] run scoreboard players set @s ptt_was_holding_gptt 1

execute unless entity @e[type=illusioner,tag=ptt_potatologer] as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] at @s if block ~ ~-1 ~ chiseled_stone_bricks if entity @e[type=item,distance=...6,nbt={Item:{Count:1b,tag:{EntityTag:{Tags:["ptt_summon_poisonous_block"]}}}}] if entity @e[type=item,distance=...6,nbt={Item:{Count:1b,tag:{ptt_golden_potato:1b}}}] if entity @e[type=item,distance=...6,nbt={Item:{Count:1b,tag:{ptt_wither_potato:1b}}}] if entity @e[type=item,distance=...6,nbt={Item:{Count:1b,tag:{ptt_compressed_bone_block:1b}}}] if entity @e[type=item,distance=...6,nbt={Item:{id:"minecraft:water_bucket",Count:1b}}] if entity @a[scores={ptt_killed_sacrifice=1..},distance=..3] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ptt_summon_potatologer"]}
scoreboard players remove @a[scores={ptt_killed_sacrifice=1..}] ptt_killed_sacrifice 1
execute as @e[type=armor_stand,tag=ptt_summon_potatologer] at @s run function ptt:potatologer_sequence
execute as @e[type=illusioner,tag=ptt_potatologer] at @s run function ptt:potatologer_tick
execute if entity @e[type=illusioner,tag=ptt_potatologer] run bossbar set ptt:potatologer visible true
execute unless entity @e[type=illusioner,tag=ptt_potatologer] run bossbar set ptt:potatologer visible false

#attack1
execute if entity @e[type=illusioner,tag=ptt_potatologer] run scoreboard players remove .attack1 ptt_timer 1
execute if score .attack1 ptt_timer matches ..0 as @e[tag=ptt_phase_1] at @s run function ptt:entities/potatologer_attacks/attack1

#attack2
execute if entity @e[type=illusioner,tag=ptt_potatologer] run scoreboard players remove .attack2 ptt_timer 1
execute if score .attack2 ptt_timer matches ..0 as @e[tag=ptt_phase_2] at @s run function ptt:entities/potatologer_attacks/attack2
execute as @e[type=arrow,tag=ptt_explosive] if data entity @s {inGround:1b} at @s run function ptt:entities/potatologer_attacks/attack2_part2
execute as @e[type=armor_stand,tag=ptt_kill_me,nbt={OnGround:1b}] run kill @s
execute as @e[type=armor_stand,tag=ptt_kill_me] at @s unless entity @e[type=arrow,distance=...9,tag=ptt_explosive] run function ptt:entities/potatologer_attacks/attack2_part2

execute as @a[nbt={SelectedItem:{tag:{ptt_potato_wand:1b}}}] at @s anchored eyes run function ptt:potato_wand_tick

scoreboard players remove @a[scores={ptt_ate_potato=1..}] ptt_ate_potato 1
scoreboard players remove @a[scores={ptt_sneak=1..}] ptt_sneak 1
scoreboard players remove @a[scores={ptt_click_coas=1..}] ptt_click_coas 1