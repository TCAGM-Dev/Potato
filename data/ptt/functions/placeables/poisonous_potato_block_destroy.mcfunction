summon item ~ ~ ~ {Item:{id:"minecraft:pufferfish_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Poisonous Potato Block","color":"green","italic":false}'},CustomModelData:496304,EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ptt_summon_poisonous_block"]}}}}
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},sort=nearest,limit=1]
kill @e[type=glow_item_frame,tag=ptt_poisonous_potato_block,sort=nearest,limit=1]
kill @s