scoreboard objectives add ptt_temp dummy
scoreboard objectives add ptt_const dummy
scoreboard players set .hundred ptt_const 100
scoreboard players set .three ptt_const 3
scoreboard players set .two ptt_const 2
scoreboard objectives add ptt_ate_potato minecraft.used:minecraft.potato
scoreboard objectives add ptt_sneak minecraft.custom:sneak_time
scoreboard objectives add ptt_click_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ptt_was_holding_eptt dummy
scoreboard objectives add ptt_was_holding_wptt dummy
scoreboard objectives add ptt_was_holding_gptt dummy
scoreboard objectives add ptt_compat_check dummy
execute store success score .aw ptt_compat_check run function advancedweapons:test_installed
scoreboard objectives add ptt_killed_sacrifice dummy
scoreboard objectives add ptt_potatologer_summon dummy
scoreboard objectives add ptt_timer dummy
scoreboard objectives add ptt_wand_mana dummy
scoreboard players set @a ptt_wand_mana 100
scoreboard objectives add ptt_potatologer_kills dummy

scoreboard players set .attack1 ptt_timer 200
scoreboard players set .attack2 ptt_timer 275
scoreboard players set .attack3 ptt_timer 400

bossbar add ptt:potatologer {"text":"Potatologer"}
bossbar set ptt:potatologer max 100

tellraw @a [{"text":"Potatoes+","color":"gold"},{"text":" by ","color":"white"},{"text":"TCAGM","color":"gold"},{"text":" and ","color":"white"},{"text":"Tech Guy","color":"gold"},{"text":" has successfully loaded!","color":"white"}]