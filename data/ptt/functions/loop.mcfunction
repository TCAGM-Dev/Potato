execute as @e[type=armor_stand,tag=ptt_summon_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_place
execute as @e[type=armor_stand,tag=ptt_poisonous_block] at @s run function ptt:placeables/poisonous_potato_block_tick

execute as @a[scores={ptt_ate_potato=1..,ptt_was_holding_eptt=1}] run function ptt:ate_eptt

scoreboard players remove @a[scores={ptt_ate_potato=1..}] ptt_ate_potato 1
scoreboard players reset @a ptt_was_holding_eptt
execute as @a[nbt={SelectedItem:{tag:{ptt_enchanted_potato:1b}}}] run scoreboard players set @s ptt_was_holding_eptt 1