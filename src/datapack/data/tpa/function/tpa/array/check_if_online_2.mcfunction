# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/array/check_if_online_2","color":"dark_aqua"}]
$execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Check if ","color":"gold"},{"text":"$(Name)","color":"dark_aqua"},{"text":" is online","color":"gold"}]
$execute if score .debug_mode tpa.config matches 1 unless entity $(Name) run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"$(Name)","color":"dark_aqua"},{"text":" is not online","color":"gold"}]
$execute if score .debug_mode tpa.config matches 1 if entity $(Name) run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"$(Name)","color":"dark_aqua"},{"text":" is online","color":"gold"}]

$execute unless entity $(Name) run function tpa:tpa/array/leave {Name:"$(Name)"}
