# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/end_array","color":"dark_aqua"}]

# Tellraws:
tellraw @s {"text":"Who do you want to tp to?","color":"green"}
$tellraw @s $(1)

# Remove tag:
tag @s remove tpa.not_this_option
