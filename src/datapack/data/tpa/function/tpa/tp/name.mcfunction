# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/name","color":"dark_aqua"}]
$execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Name is: ","color":"gold"},{"text":"$(Name)","color":"dark_aqua"}]
$execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Color is: ","color":"gold"},{"text":"$(color)","color":"dark_aqua"}]
$execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Id is: ","color":"gold"},{"text":"$(player_id)","color":"dark_aqua"}]

# Form part of the tellraw:
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run data modify storage tpa:select_option Text.2 set value '{"text":"[$(Name)] ","color":"$(color)","click_event":{"action":"run_command","command":"/trigger tpa.want_tp_to set $(player_id)"}}'
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run function tpa:tpa/tp/concatenate with storage tpa:select_option Text
