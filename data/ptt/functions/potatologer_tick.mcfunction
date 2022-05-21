execute store result score @s ptt_temp run data get entity @s Health
execute if score @s ptt_temp matches 201..300 run bossbar set ptt:potatologer color green
execute if score @s ptt_temp matches 101..200 run bossbar set ptt:potatologer color yellow
execute if score @s ptt_temp matches ..200 run tag @s add ptt_phase_2
execute if score @s ptt_temp matches 1..100 run bossbar set ptt:potatologer color red
execute if score @s ptt_temp matches ..100 run tag @s add ptt_phase_3
scoreboard players remove @s ptt_temp 1
execute store result bossbar ptt:potatologer value run scoreboard players operation @s ptt_temp %= .hundred ptt_const
bossbar set ptt:potatologer players @a[distance=..75]
