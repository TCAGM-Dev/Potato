tellraw @a[distance = ..20] {"text": "Poisonium Potatus", "bold": true, "italic": false, "color": "00FF00"}
execute at @a[distance = ..20] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.000 1.000 0.000 1",Radius:3f,Duration:60,Potion:"minecraft:strong_poison"}
effect give @a[distance = ..20] poison 5 2 true