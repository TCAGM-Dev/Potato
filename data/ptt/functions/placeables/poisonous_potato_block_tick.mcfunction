execute align xyz positioned ~ ~.05 ~ as @e[dx=0,type=!#ptt:not_mob] run effect give @s poison 10 0
execute unless block ~ ~ ~ raw_iron_block run function ptt:placeables/poisonous_potato_block_destroy