# @p[tag=tpa.this_is_requester] --> Player to tp! | @s --> Destination at @s!

# Get player:
tag @s add tpa.this_is_destination
execute as @a[tag=!tpa.this_is_destination] if score @s tpa.want_tp_to = @p[tag=tpa.this_is_destination] tpa.sid run tag @s add tpa.this_is_requester

# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/tp","color":"dark_aqua"}]
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Requester is: ","color":"gold"},{"selector":"@p[tag=tpa.this_is_requester]","color":"dark_aqua"},{"text":" and destination is: ","color":"gold"},{"selector":"@s","color":"dark_aqua"}]

# Cancel:
execute unless entity @p[tag=tpa.this_is_requester] run tellraw @s {"text":"Your tp request got canceled because we couldn't find who requested the tp, ask him to request it again.","color":"red"}
execute unless entity @p[tag=tpa.this_is_requester] run playsound minecraft:entity.villager.no
execute unless entity @p[tag=tpa.this_is_requester] run scoreboard players reset @s tpa.accept_tp
execute unless entity @p[tag=tpa.this_is_requester] run tag @s remove tpa.this_is_destination
execute unless entity @p[tag=tpa.this_is_requester] run return 0

execute if score @p[tag=tpa.this_is_requester] tpa.timer matches 0 run tellraw @s {"text":"Your tp request got canceled because timer ran out.","color":"red"}
execute if score @p[tag=tpa.this_is_requester] tpa.timer matches 0 run playsound minecraft:entity.villager.no
execute if score @p[tag=tpa.this_is_requester] tpa.timer matches 0 run scoreboard players reset @s tpa.accept_tp
execute if score @p[tag=tpa.this_is_requester] tpa.timer matches 0 run return 0

execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Requester score: ","color":"gold"},{"score":{"name":"@p[tag=tpa.this_is_requester]","objective":"tpa.sid"},"color":"dark_aqua"},{"text":" Destination score: ","color":"gold"},{"score":{"name":"@s","objective":"tpa.sid"},"color":"dark_aqua"}]
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run tellraw @s ["",{"text":"Your tp request got canceled because ","color":"red"},{"selector":"@p[tag=tpa.this_is_requester]","color":"red"},{"text":" asked another player before you accepted.","color":"red"}]
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run playsound minecraft:entity.villager.no
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run scoreboard players reset @s tpa.accept_tp
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run tag @s remove tpa.this_is_destination
execute unless score @s tpa.sid = @p[tag=tpa.this_is_requester] tpa.want_tp_to run return 0

# Testing:
# execute if score .companions tpa.config matches 1 as @p[tag=tpa.this_is_requester] on vehicle run tag @s add this.companion_vehicle
# execute if score .companions tpa.config matches 1 run ride @p[tag=tpa.this_is_requester] dismount
# execute if score .companions tpa.config matches 1 run tp @n[tag=this.companion_vehicle] @s
# execute if score .companions tpa.config matches 1 run ride @p[tag=tpa.this_is_requester] mount @n[tag=this.companion_vehicle]
# execute unless entity @e[tag=this.companion_vehicle] run tp @p[tag=tpa.this_is_requester] @s
# tag @e[tag=this.companion_vehicle] remove this.companion_vehicle

# Tp:
execute if score .companions tpa.config matches 1 as @p[tag=tpa.this_is_requester] on vehicle run tp @s @p[tag=tpa.this_is_destination]
tp @p[tag=tpa.this_is_requester] @s
execute if score .companions tpa.config matches 1 as @e run function tpa:tpa/tp/tp_companions
particle minecraft:witch ~ ~ ~ 0.225 0.8 0.225 0 10
playsound minecraft:entity.enderman.teleport ambient @a

# Tellraw:
tellraw @s {"text":"Tp done succesfully!","color":"green"}
tellraw @p[tag=tpa.this_is_requester] {"text":"Tp done succesfully!","color":"green"}

# Reset:
scoreboard players set @p[tag=tpa.this_is_requester] tpa.timer 0
scoreboard players reset @p[tag=tpa.this_is_requester] tpa.want_tp_to
tag @p[tag=tpa.this_is_requester] remove tpa.asked_tp
tag @p[tag=tpa.this_is_requester] remove tpa.this_is_requester
scoreboard players reset @s tpa.accept_tp
tag @s remove tpa.this_is_destination
