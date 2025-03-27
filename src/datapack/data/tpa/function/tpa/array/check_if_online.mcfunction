# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/array/check_if_online","color":"dark_aqua"}]

function tpa:tpa/array/check_if_online_2 with storage tpa:temporary List[-1]
scoreboard players remove #ListSize tpa.Dummy 1
execute if score #ListSize tpa.Dummy matches 1.. run data remove storage tpa:temporary List[-1]
execute if score #ListSize tpa.Dummy matches 1.. run function tpa:tpa/array/check_if_online
