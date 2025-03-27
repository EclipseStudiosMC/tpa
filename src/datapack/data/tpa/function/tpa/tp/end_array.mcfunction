# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/end_array","color":"dark_aqua"}]

# Concatenate strings:
$data modify storage tpa:select_option Text.1 set value '$(1)$(2)'

# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"tpa:select_option Text.1 is: ","color":"gold"},{"nbt":"Text.1","storage":"tpa:select_option","color":"dark_aqua"}]
