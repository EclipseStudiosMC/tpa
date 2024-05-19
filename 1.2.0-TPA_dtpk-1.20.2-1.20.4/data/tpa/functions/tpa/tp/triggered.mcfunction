# Check if player is alone:
execute store result score .online_players TPA run data get storage tpa:online_players List
execute if score .online_players TPA matches ..1 run function tpa:tpa/tp/alone
execute if score .online_players TPA matches ..1 run return 0

# Playsounds:
execute if entity @s[tag=!tpa.not_this_option] run playsound minecraft:entity.player.levelup ambient @s

# Reset arrays:
execute if entity @s[tag=!tpa.not_this_option] run data remove storage tpa:select_option Text
execute if entity @s[tag=!tpa.not_this_option] run data modify storage tpa:select_option Text.1 set value '[""'

# Cancel if no more players:
execute store result score n tpa.index run data get storage tpa:online_players List
$data merge storage tpa:index {index:{id:$(id)}}
execute store result score @s tpa.index run data get storage tpa:index index.id
execute if score n tpa.index = @s tpa.index run return 0

# Get Owner:
execute if entity @s[tag=!tpa.not_this_option] run function tpa:tpa/tp/owner

# Add/Remove tag:
tag @s add tpa.not_this_option
tag @s remove tpa.asked_tp

# Reset score:
scoreboard players set @s TPA 0

# Get random color:
function tpa:tpa/tp/color

# Get id:
$data modify storage tpa:select_option Text.Name set string storage tpa:online_players List[$(id)].Name
function tpa:tpa/tp/get_id with storage tpa:select_option Text

# Get players:
function tpa:tpa/tp/name with storage tpa:select_option Text

scoreboard players add @s tpa.index 1
execute store result storage tpa:index index.id int 1 run scoreboard players get @s tpa.index
function tpa:tpa/tp/triggered with storage tpa:index index

# Tellraw:
execute if entity @s[tag=tpa.not_this_option] run data modify storage tpa:select_option Text.2 set value ']'
execute if entity @s[tag=tpa.not_this_option] run function tpa:tpa/tp/end_array with storage tpa:select_option Text
execute if entity @s[tag=tpa.not_this_option] run function tpa:tpa/tp/select_option with storage tpa:select_option Text
