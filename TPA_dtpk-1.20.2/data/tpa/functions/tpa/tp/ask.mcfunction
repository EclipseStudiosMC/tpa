# @s is the requester and (Name) is the person who we are asking!

# Tellraws:
tellraw @s {"text":"Tp requested!","color":"green"}
$tellraw $(Name) ["",{"selector":"@s","color":"green","clickEvent":{"action":"run_command","value":"/function tpa:tpa/tp/tp {Owner:$(Owner)}"}},{"text":" has asked to teleport to you, accept?","color":"green","clickEvent":{"action":"run_command","value":"/function tpa:tpa/tp/tp {Owner:$(Owner)}"}}]

# Playsounds:
playsound minecraft:ui.button.click ambient @s
$execute as $(Name) at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 100 2

# Scores:
$scoreboard players operation @s tpa.want_tp_to = $(Name) tpa.sid
scoreboard players set @s tpa.timer 0
