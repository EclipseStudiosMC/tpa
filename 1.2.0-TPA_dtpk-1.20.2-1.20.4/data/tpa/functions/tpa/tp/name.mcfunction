# Form part of the tellraw:
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run data modify storage tpa:select_option Text.2 set value '{"text":"[$(Name)] ","color":"$(color)","clickEvent":{"action":"run_command","value":"/trigger tpa.want_tp_to set $(player_id)"}}'
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run function tpa:tpa/tp/concatenate with storage tpa:select_option Text
