tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"Reloading...","color":"yellow"}]

# Scoreboards:
scoreboard objectives add TPA trigger
scoreboard objectives add tpa.Dummy dummy
scoreboard objectives add tpa.JoinGame minecraft.custom:minecraft.leave_game
scoreboard objectives add tpa.index dummy
scoreboard objectives add tpa.sid dummy
scoreboard objectives add tpa.want_tp_to trigger
scoreboard objectives add tpa.timer dummy
scoreboard objectives add tpa.accept_tp trigger
scoreboard objectives add tpa.config dummy

# Set Shulker Box:
forceload add 29999983 29999983
setblock 29999983 0 29999983 shulker_box

# Reset list:
data remove storage tpa:online_players List
execute as @a run function tpa:tpa/array/join

# Scoreboard tweaks:
scoreboard players set cancel_at_x_s tpa.timer 600
execute unless score .black tpa.config matches 0..1 run scoreboard players set .black tpa.config 0

tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"Datapack reloaded succesfully!","color":"green"}]
tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"Teletransportation Accept","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/tpa"}},{"text":" - ","color":"gold"},{"text":"By ","color":"blue"},{"text":"Eclipse Studios","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}}]
tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"Don't forget to follow us!","color":"light_purple"}]
tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"Discord","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/X2NTE7hkq8"}},{"text":" • ","color":"black"},{"text":"YouTube","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"GitHub","underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"Modrinth","underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/EclipseStudios"}}]
tellraw @a [{"text":"[TPA] ","color":"yellow"},{"text":"[Settings]","color":"gold","clickEvent":{"action":"run_command","value":"/function tpa:tpa/gamerule/select"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s
