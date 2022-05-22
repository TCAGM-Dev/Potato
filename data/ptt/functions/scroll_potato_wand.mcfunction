execute store result score @s ptt_temp run data get entity @s SelectedItem.tag.ptt_current_spell
scoreboard players add @s ptt_temp 1
execute store result storage ptt:potato_wand current_spell int 1 run scoreboard players operation @s ptt_temp %= .two ptt_const
item modify entity @s weapon.mainhand ptt:set_current_spell