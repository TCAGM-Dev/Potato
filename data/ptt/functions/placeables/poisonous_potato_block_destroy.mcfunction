summon item ~ ~ ~ {Item:{id:"pufferfish_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Poisonous Potato Block","color":"green","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",Tags:["ptt_summon_poisonous_block"]}}}}
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},sort=nearest,limit=1]
kill @s