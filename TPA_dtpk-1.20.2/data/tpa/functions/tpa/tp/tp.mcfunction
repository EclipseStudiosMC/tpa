# @p[tag=tpa.this_is_requester] --> Player to tp! | @s --> Destination at @s!

# Get player:
tag @s add tpa.this_is_destination
execute as @a[tag=!tpa.this_is_destination] if score @s tpa.want_tp_to = @p[tag=tpa.this_is_destination] tpa.sid run tag @s add tpa.this_is_requester
tag @s remove tpa.this_is_destination

# If petition cancel:
execute if score @p[tag=tpa.this_is_requester] tpa.timer matches 0 run return 0
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run return 0

# Tellraw:
tellraw @s {"text":"Tp done succesfully!","color":"green"}
tellraw @p[tag=tpa.this_is_requester] {"text":"Tp done succesfully!","color":"green"}

# Tp:
tp @p[tag=tpa.this_is_requester] @s
playsound minecraft:entity.enderman.teleport ambient @s
playsound minecraft:entity.enderman.teleport ambient @p[tag=tpa.this_is_requester]

# Reset:
scoreboard players reset @p[tag=tpa.this_is_requester] tpa.want_tp_to
tag @p[tag=tpa.this_is_requester] remove tpa.this_is_requester
scoreboard players reset @s tpa.accept_tp
