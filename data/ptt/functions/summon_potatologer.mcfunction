function ptt:entities/potatologer
kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{Count:1b,tag:{EntityTag:{Tags:["ptt_summon_poisonous_block"]}}}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{Count:1b,tag:{ptt_golden_potato:1b}}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{Count:1b,tag:{ptt_wither_potato:1b}}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{Count:1b,tag:{ptt_compressed_bone_block:1b}}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:water_bucket",Count:1b}},sort=nearest,limit=1]
kill @s
particle lava ~ ~ ~ 0 0 0 0 50 force
playsound entity.wither.spawn hostile @a ~ ~ ~