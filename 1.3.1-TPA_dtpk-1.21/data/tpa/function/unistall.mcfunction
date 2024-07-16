scoreboard objectives remove TPA
scoreboard objectives remove tpa.accept_tp
scoreboard objectives remove tpa.config
scoreboard objectives remove tpa.Dummy
scoreboard objectives remove tpa.index
scoreboard objectives remove tpa.JoinGame
scoreboard objectives remove tpa.sid
scoreboard objectives remove tpa.timer
scoreboard objectives remove tpa.want_tp_to

data remove storage tpa:online_players List
data remove storage tpa:index index
data remove storage tpa:select_option Text

setblock 29999983 0 29999983 air

playsound minecraft:entity.player.levelup ambient @s
tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Datapack unistalled succesfully!","color":"green"}]
tellraw @s ["",{"text":"[TPA] ","color":"yellow"},{"text":"Thanks for using it!","color":"gold"}]
