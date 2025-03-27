# Add:
scoreboard players add .companions tpa.config 1

# Message:
execute if score .companions tpa.config matches 1 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Also tp companions activated!","color":"gold"}]
execute if score .companions tpa.config matches 2.. run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Also tp companions deactivated!","color":"gold"}]

# Playsoung:
playsound minecraft:ui.button.click ambient @s

# Reset:
execute if score .companions tpa.config matches 2.. run scoreboard players set .companions tpa.config 0
