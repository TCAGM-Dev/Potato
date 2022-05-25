execute store result score @s ptt_temp run data get entity @s SelectedItem.Count
execute if score @s ptt_temp matches ..0 run item replace entity @s weapon.mainhand with potato{display:{Name:'{"text":"Enchanted Potato","color":"yellow","italic":false}'},ptt_enchanted_potato:1b,Enchantments:[{}]}
scoreboard players add @s ptt_temp 1
execute if score @s ptt_temp matches 2.. run item modify entity @s weapon.mainhand ptt:set_count
effect give @s saturation 1 4 true