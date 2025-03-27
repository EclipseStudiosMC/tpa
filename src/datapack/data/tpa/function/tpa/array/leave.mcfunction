# Remove offline player from list
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/array/leave","color":"dark_aqua"}]
$data remove storage tpa:online_players List[{Name:"$(Name)"}]
