# @s is the requester!

# Get player who we want to request tp:
tag @s add tpa.this_is_the_requester
execute as @a[tag=!tpa.this_is_the_requester] if score @s tpa.sid = @p[tag=tpa.this_is_the_requester] tpa.want_tp_to run tag @s add tpa.this_is_the_end
tag @s remove tpa.this_is_the_requester

# Tellraws:
tellraw @s {"text":"Tp requested!","color":"green"}
tellraw @p[tag=tpa.this_is_the_end] ["",{"selector":"@s","color":"green","clickEvent":{"action":"run_command","value":"/trigger tpa.accept_tp"}},{"text":" has asked to teleport to you, accept?","color":"green","clickEvent":{"action":"run_command","value":"/trigger tpa.accept_tp"}}]

# Playsounds:
playsound minecraft:ui.button.click ambient @s
execute as @p[tag=tpa.this_is_the_end] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 100 2

# Scores:
scoreboard players set @s tpa.timer 0

# Tags:
tag @p[tag=tpa.this_is_the_end] remove tpa.this_is_the_end
tag @s add tpa.asked_tp
