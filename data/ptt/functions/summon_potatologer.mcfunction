function ptt:entities/potatologer
kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{Count:1b,tag:{EntityTag:{Tags:["ptt_summon_poisonous_block"]}}}},sort=nearest,limit=1]
kill @s
particle lava ~ ~ ~ 0 0 0 0 50 force
playsound entity.wither.spawn hostile @a ~ ~ ~