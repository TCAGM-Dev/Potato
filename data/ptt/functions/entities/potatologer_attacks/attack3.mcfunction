tellraw @a[distance=..20] {"text": "Lightnatus Potatus", "bold": true, "italic": false, "color": "aqua"}
execute at @a[distance=1.5..20,gamemode=!creative] run summon lightning_bolt ~ ~ ~
execute at @a[distance=1.5..20,gamemode=!creative] run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~
scoreboard players set .attack3 ptt_timer 300