# If petition cancel:
$execute if score $(Owner) tpa.timer matches 0 run return 0
$execute unless score @s tpa.sid = $(Owner) tpa.want_tp_to run return 0

# Tellraw:
tellraw @s {"text":"Tp done succesfully!","color":"green"}
$tellraw $(Owner) {"text":"Tp done succesfully!","color":"green"}

# Tp:
$tp $(Owner) @s
playsound minecraft:entity.enderman.teleport ambient @s
$playsound minecraft:entity.enderman.teleport ambient $(Owner)

# Reset scores:
$scoreboard players reset $(Owner) tpa.want_tp_to
scoreboard players reset @s tpa.want_tp_to
