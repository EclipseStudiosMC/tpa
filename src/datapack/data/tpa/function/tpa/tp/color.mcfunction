# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/color","color":"dark_aqua"}]
execute if score .debug_mode tpa.config matches 1 if score .black tpa.config matches 0 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Black color is included","color":"gold"}]
execute if score .debug_mode tpa.config matches 1 if score .black tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Black color is not included","color":"gold"}]

# Random number:
execute if score .black tpa.config matches 0 store result score color tpa.index run random value 0..15
execute if score .black tpa.config matches 1 store result score color tpa.index run random value 1..15

# Run again if same color:
execute if score color tpa.index = old_color tpa.index run function tpa:tpa/tp/color

# Set color:
execute if score color tpa.index matches 0 run data modify storage tpa:select_option Text.color set value 'black'
execute if score color tpa.index matches 1 run data modify storage tpa:select_option Text.color set value 'dark_blue'
execute if score color tpa.index matches 2 run data modify storage tpa:select_option Text.color set value 'dark_green'
execute if score color tpa.index matches 3 run data modify storage tpa:select_option Text.color set value 'dark_aqua'
execute if score color tpa.index matches 4 run data modify storage tpa:select_option Text.color set value 'dark_red'
execute if score color tpa.index matches 5 run data modify storage tpa:select_option Text.color set value 'dark_purple'
execute if score color tpa.index matches 6 run data modify storage tpa:select_option Text.color set value 'gold'
execute if score color tpa.index matches 7 run data modify storage tpa:select_option Text.color set value 'gray'
execute if score color tpa.index matches 8 run data modify storage tpa:select_option Text.color set value 'dark_gray'
execute if score color tpa.index matches 9 run data modify storage tpa:select_option Text.color set value 'blue'
execute if score color tpa.index matches 10 run data modify storage tpa:select_option Text.color set value 'green'
execute if score color tpa.index matches 11 run data modify storage tpa:select_option Text.color set value 'aqua'
execute if score color tpa.index matches 12 run data modify storage tpa:select_option Text.color set value 'red'
execute if score color tpa.index matches 13 run data modify storage tpa:select_option Text.color set value 'light_purple'
execute if score color tpa.index matches 14 run data modify storage tpa:select_option Text.color set value 'yellow'
execute if score color tpa.index matches 15 run data modify storage tpa:select_option Text.color set value 'white'

# Set color to old:
scoreboard players operation old_color tpa.index = color tpa.index
