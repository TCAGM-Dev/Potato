summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ptt_poisonous_block"]}
summon glow_item_frame ~ ~ ~ {NoGravity:1b,Silent:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["ptt_poisonous_potato_block"],Item:{id:"minecraft:pufferfish_spawn_egg",Count:1b,tag:{CustomModelData:496304,EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ptt_summon_poisonous_block"]}}}}
setblock ~ ~ ~ raw_iron_block
kill @s