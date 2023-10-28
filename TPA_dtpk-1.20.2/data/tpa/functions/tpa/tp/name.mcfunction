# Form part of the tellraw:
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run data modify storage tpa:select_option Text.2 set value '{"text":"[$(Name)] ","color":"$(color)","clickEvent":{"action":"run_command","value":"/function tpa:tpa/tp/ask {Name:$(Name),Owner:$(Owner)}"}}'
$execute as $(Name) unless entity @s[tag=tpa.not_this_option] run function tpa:tpa/tp/concatenate with storage tpa:select_option Text
