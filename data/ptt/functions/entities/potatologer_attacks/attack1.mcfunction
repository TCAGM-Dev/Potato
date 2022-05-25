tellraw @a[distance=..20] {"text": "Poisonium Potatus", "bold": true, "italic": false, "color": "green"}
execute at @a[distance=..20,gamemode=!creative] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.000 1.000 0.000 1",Radius:3f,Duration:60,WaitTime:20,Potion:"minecraft:poison"}
scoreboard players set .attack1 ptt_timer 200