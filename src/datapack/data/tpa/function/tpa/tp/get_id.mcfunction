# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/get_id","color":"dark_aqua"}]

# Get $(Name) id:
$execute store result storage tpa:select_option Text.player_id int 1 run scoreboard players get $(Name) tpa.sid

# Debug:
$execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"The id of: ","color":"gold"},{"text":"$(Name)","color":"dark_aqua"},{"text":" is: ","color":"gold"},{"nbt":"Text.player_id","storage":"tpa:select_option","color":"dark_aqua"}]
