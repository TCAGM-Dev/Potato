execute if score @s ptt_click_coas matches 1.. unless score @s ptt_sneak matches 1.. run function ptt:use_potato_wand
execute if score @s ptt_click_coas matches 1.. if score @s ptt_sneak matches 1.. run function ptt:scroll_potato_wand
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:0}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Poisonium Potatus","color": "green"}]
execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:1}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Explodium Potatus","color": "red"}]
#execute if entity @s[nbt={SelectedItem:{tag:{ptt_current_spell:2}}}] run title @s actionbar [{"text":"Spell: "},{"text":"Poisonium Potatus","color": "lime"}]