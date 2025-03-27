# Reset @a:
tellraw @s {"text":"Resetting everything...","color":"green"}

data remove storage tpa:online_players List
execute as @a run function tpa:tpa/array/join

scoreboard players set @a TPA 0
scoreboard players set @a tpa.accept_tp 0
scoreboard players reset @a tpa.index
scoreboard players set @a tpa.timer 0
scoreboard players set @a tpa.want_tp_to 0

tag @e remove tpa.this_is_the_requester
tag @e remove tpa.this_is_the_end
tag @e remove tpa.asked_tp
tag @e remove tpa.companion_this
tag @e remove tpa.this_is_destination
tag @e remove tpa.this_is_requester
tag @e remove tpa.not_this_option

tellraw @s {"text":"Successful!","color":"green"}
playsound minecraft:entity.player.levelup ambient @s
