tellraw @a[distance = ..20] {"text": "Explodium Potatus", "bold": true, "italic": false, "color": "FFFF00"}
title @a[distance = ..20] actionbar {"text": "Warning potato tnt incoming from the sky", "bold": true, "italic": true, "color": "FF0000"}
execute at @a[distance = ..20] run summon arrow ~ ~7 ~ {Tags:["explosive"],Passengers:[{id:"armor_stand",ArmorItems:[{},{},{},{Count:1,id:"minecraft:potato"}],Invulnerable:1b}],Invulnerable:1b}