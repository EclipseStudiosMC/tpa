# Add:
scoreboard players add .debug_mode tpa.config 1

# Message:
execute if score .debug_mode tpa.config matches 1 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug Mode activated!","color":"gold"}]
execute if score .debug_mode tpa.config matches 2.. run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug Mode deactivated!","color":"gold"}]

# Playsoung:
playsound minecraft:ui.button.click ambient @s

# Reset:
execute if score .debug_mode tpa.config matches 2.. run scoreboard players set .debug_mode tpa.config 0
