scoreboard players add @s ptt_temp 1
execute unless block ^ ^ ^.1 #ptt:raycast_pass run scoreboard players set @s ptt_temp -1
execute unless block ^ ^ ^.1 #ptt:raycast_pass run function ptt:wand_raycast_hit
execute if score @s ptt_temp matches 0..200 positioned ^ ^ ^.1 if block ~ ~ ~ #ptt:raycast_pass run function ptt:wand_raycast