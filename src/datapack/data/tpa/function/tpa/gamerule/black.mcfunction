playsound minecraft:ui.button.click ambient @s
scoreboard players add .black tpa.config 1
execute if score .black tpa.config matches 2.. run scoreboard players set .black tpa.config 0

execute if score .black tpa.config matches 1 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Remove the black color activated!","color":"gold"}]
execute if score .black tpa.config matches 0 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Remove the black color off!","color":"gold"}]
