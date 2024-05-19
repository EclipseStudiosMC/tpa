playsound minecraft:ui.button.click ambient @s
scoreboard players add .black tpa.config 1
execute if score .black tpa.config matches 2.. run scoreboard players set .black tpa.config 0

execute if score .black tpa.config matches 1 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Setting currently on!","color":"gold"}]
execute if score .black tpa.config matches 0 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Setting currently off!","color":"gold"}]
