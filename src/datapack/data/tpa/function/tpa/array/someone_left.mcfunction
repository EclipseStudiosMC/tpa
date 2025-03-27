# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/array/someone_left","color":"dark_aqua"}]
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Storage \"tpa:online_players\" contains: ","color":"gold"},{"nbt":"List","storage":"tpa:online_players","color":"dark_aqua"}]

# Remove offline players from the list
data modify storage tpa:temporary List set from storage tpa:online_players List
execute store result score #ListSize tpa.Dummy if data storage tpa:temporary List[]
function tpa:tpa/array/check_if_online
scoreboard players reset #ListSize
data remove storage tpa:temporary List

# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Storage \"tpa:online_players\" contains: ","color":"gold"},{"nbt":"List","storage":"tpa:online_players","color":"dark_aqua"}]
