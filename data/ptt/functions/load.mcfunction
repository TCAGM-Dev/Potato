scoreboard objectives add ptt_temp dummy
scoreboard objectives add ptt_const dummy
scoreboard players set .hundred ptt_const 100
scoreboard objectives add ptt_ate_potato minecraft.used:minecraft.potato
scoreboard objectives add ptt_was_holding_eptt dummy
scoreboard objectives add ptt_was_holding_wptt dummy
scoreboard objectives add ptt_was_holding_gptt dummy
scoreboard objectives add ptt_compat_check dummy
execute store success score .aw ptt_compat_check run function advancedweapons:test_installed
scoreboard objectives add ptt_killed_sacrifice dummy
scoreboard objectives add ptt_potatologer_summon dummy

bossbar add ptt:potatologer {"text":"Potatologer"}
bossbar set ptt:potatologer max 100