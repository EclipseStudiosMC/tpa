# Check:
$scoreboard players set .temp tpa.timer $(add)
scoreboard players operation .temp_ tpa.timer = cancel_at_x_s tpa.timer
scoreboard players operation .temp_ tpa.timer += .temp tpa.timer

execute if score .temp_ tpa.timer matches ..-1 run playsound entity.villager.no
execute if score .temp_ tpa.timer matches ..-1 run tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"The timer can't be negative!","color":"red"}]
execute if score .temp_ tpa.timer matches ..-1 run return 0

# Add:
scoreboard players operation cancel_at_x_s tpa.timer += .temp tpa.timer

# Ticks to seconds:
scoreboard players operation .timer_s tpa.timer = cancel_at_x_s tpa.timer
scoreboard players operation .timer_s tpa.timer /= .20 tpa.consts

# Message:
tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"[-10s] ","color":"gold","clickEvent":{"action":"run_command","value":"/function tpa:tpa/gamerule/timer {add:-200}"}},{"text":"[-1s] ","color":"gold","clickEvent":{"action":"run_command","value":"/function tpa:tpa/gamerule/timer {add:-20}"}},{"score":{"name":".timer_s","objective":"tpa.timer"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":" [1s] ","color":"gold","clickEvent":{"action":"run_command","value":"/function tpa:tpa/gamerule/timer {add:20}"}},{"text":"[10s]","color":"gold","clickEvent":{"action":"run_command","value":"/function tpa:tpa/gamerule/timer {add:200}"}}]
playsound minecraft:ui.button.click ambient @s
