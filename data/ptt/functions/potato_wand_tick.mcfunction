execute if score @s ptt_click_coas matches 1.. unless score @s ptt_sneak matches 1.. if score @s ptt_wand_mana matches 40.. run function ptt:use_potato_wand
execute if score @s ptt_click_coas matches 1.. if score @s ptt_sneak matches 1.. run function ptt:scroll_potato_wand
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:0}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Poisonium Potatus","color":"green"},{"text":"   Mana: ","color":"light_purple"},{"score":{"name":"@s","objective":"ptt_wand_mana"},"color":"light_purple"},{"text":"/100","color":"light_purple"}]
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:1}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Explodium Potatus","color":"red"},{"text":"   Mana: ","color":"light_purple"},{"score":{"name":"@s","objective":"ptt_wand_mana"},"color":"light_purple"},{"text":"/100","color":"light_purple"}]
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:2}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Lightnatus Potatus","color":"aqua"},{"text":"  Mana: ","color":"light_purple"},{"score":{"name":"@s","objective":"ptt_wand_mana"},"color":"light_purple"},{"text":"/100","color":"light_purple"}]
scoreboard players add @s[scores={ptt_wand_mana=..99}] ptt_wand_mana 1