# @p[tag=tpa.this_is_the_end] --> Destination! | @s --> Requester!

# Get player who we want to request tp:
tag @s add tpa.this_is_the_requester
execute as @a[tag=!tpa.this_is_the_requester] if score @s tpa.sid = @p[tag=tpa.this_is_the_requester] tpa.want_tp_to run tag @s add tpa.this_is_the_end
tag @s remove tpa.this_is_the_requester

# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/ask","color":"dark_aqua"}]
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Requester is: ","color":"gold"},{"selector":"@s","color":"dark_aqua"},{"text":" and destination is: ","color":"gold"},{"selector":"@p[tag=tpa.this_is_the_end]","color":"dark_aqua"}]

# Tellraws:
tellraw @s {"text":"Tp requested!","color":"green"}
tellraw @p[tag=tpa.this_is_the_end] ["",{"selector":"@s","color":"green","clickEvent":{"action":"run_command","value":"/trigger tpa.accept_tp"}},{"text":" has asked to teleport to you, accept?","color":"green","clickEvent":{"action":"run_command","value":"/trigger tpa.accept_tp"}}]

# Playsounds:
playsound minecraft:ui.button.click ambient @s
execute as @p[tag=tpa.this_is_the_end] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2

# Scores:
scoreboard players set @s tpa.timer 0

# Tags:
tag @p[tag=tpa.this_is_the_end] remove tpa.this_is_the_end
tag @s add tpa.asked_tp
