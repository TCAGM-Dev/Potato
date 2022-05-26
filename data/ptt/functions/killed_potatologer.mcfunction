scoreboard players add @s ptt_potatologer_kills 0

execute if score @s ptt_potatologer_kills matches 0 run function ptt:items/golden_potato
execute if score @s ptt_potatologer_kills matches 1 run function ptt:items/enchanted_potato
execute if score @s ptt_potatologer_kills matches 2 run function ptt:items/potato_wand

scoreboard players add @s ptt_potatologer_kills 1
scoreboard players operation @s ptt_potatologer_kills %= .three ptt_const

advancement revoke @s only ptt:killed_potatologer