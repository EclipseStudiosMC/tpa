# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/alone","color":"dark_aqua"}]

# Run if player tried to TPA but they were alone:
tellraw @a {"text":"You must be playing with someone else!","color":"green"}
playsound minecraft:entity.villager.no ambient @s
scoreboard players set @s TPA 0
