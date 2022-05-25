tellraw @a[distance=..20] {"text": "Explodium Potatus", "bold": true, "italic": false, "color": "red"}
title @a[distance=..20,gamemode=!creative] actionbar {"text": "Warning: Potato Incoming", "bold": true, "italic": true, "color": "red"}
execute at @a[distance=..20,gamemode=!creative] run summon arrow ~ ~15 ~ {Tags:["ptt_explosive"],Passengers:[{id:"armor_stand",ArmorItems:[{},{},{},{Count:1,id:"minecraft:potato"}],Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["ptt_kill_me"]}],Invulnerable:1b,Silent:1b}
scoreboard players set .attack2 ptt_timer 275