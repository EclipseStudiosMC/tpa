# Join Game
execute as @a[scores={tpa.JoinGame=1..}] run function tpa:tpa/array/join

# Playercount Check
execute store result score #PlayerCount tpa.Dummy if entity @a
execute if score #PlayerCount tpa.Dummy < #PlayerCountPrev tpa.Dummy run function tpa:tpa/array/someone_left
scoreboard players operation #PlayerCountPrev tpa.Dummy = #PlayerCount tpa.Dummy

# Trigger:
execute if score .debug_mode tpa.config matches 1 as @a[scores={TPA=1..}] run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"selector":"@s","color":"dark_aqua"},{"text":" triggered \"TPA\"","color":"gold"}]
execute as @a[scores={TPA=1..}] run function tpa:tpa/tp/triggered {"id":"0"}

# Scoreboards tweaks:
scoreboard players enable @a TPA
scoreboard players enable @a tpa.want_tp_to
scoreboard players enable @a tpa.accept_tp

# Timer:
execute as @a[scores={tpa.want_tp_to=1..}] at @s run function tpa:tpa/tp/timer

# Sid:
execute as @a unless score @s tpa.sid matches 1.. run function tpa:tpa/sid/apply

# Ask:
execute as @a[scores={tpa.want_tp_to=1..},tag=!tpa.asked_tp] at @s run function tpa:tpa/tp/ask

# Accept tp:
execute as @a[scores={tpa.accept_tp=1..}] at @s run function tpa:tpa/tp/tp
