# Remove offline players from the list
data modify storage tpa:temporary List set from storage tpa:online_players List
execute store result score #ListSize tpa.Dummy if data storage tpa:temporary List[]
function tpa:tpa/array/check_if_online
scoreboard players reset #ListSize
data remove storage tpa:temporary List