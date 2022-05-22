tag @s add self
scoreboard players set @s ptt_temp 0
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:0}}}] positioned ^ ^ ^.1 run function ptt:wand_raycast
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:1}}}] positioned ^ ^ ^.1 run function ptt:wand_raycast
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:2}}}] at @e[distance=1.25..10,type=!#ptt:not_mob,tag=!self] run summon lightning_bolt ~ ~ ~
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:2}}}] at @e[distance=1.25..10,type=!#ptt:not_mob,tag=!self] run playsound entity.lightning_bolt.impact player @a ~ ~ ~
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:2}}}] if entity @e[distance=1.25..10,type=!#ptt:not_mob,tag=!self] run scoreboard players set @s ptt_temp -1
execute if score @s ptt_temp matches ..-1 run scoreboard players remove @s ptt_wand_mana 40
tag @s remove self