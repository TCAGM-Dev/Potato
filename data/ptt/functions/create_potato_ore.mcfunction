setblock ~ ~ ~ stone
summon marker ~-1 ~ ~ {Tags:["ptt_potato_ore_attempt"]}
summon marker ~1 ~ ~ {Tags:["ptt_potato_ore_attempt"]}
summon marker ~ ~-1 ~ {Tags:["ptt_potato_ore_attempt"]}
summon marker ~ ~1 ~ {Tags:["ptt_potato_ore_attempt"]}
summon marker ~ ~ ~-1 {Tags:["ptt_potato_ore_attempt"]}
summon marker ~ ~ ~1 {Tags:["ptt_potato_ore_attempt"]}
execute as @e[type=marker,tag=ptt_potato_ore_attempt] at @s if block ~ ~ ~ stone if predicate ptt:is_replaceable run scoreboard players set @s ptt_temp 1
execute as @e[type=marker,tag=ptt_potato_ore_attempt,scores={ptt_temp=1},sort=random,limit=1] at @s run function ptt:potato_ore
kill @e[type=marker,tag=ptt_potato_ore_attempt]
kill @s
setblock ~ ~ ~ air