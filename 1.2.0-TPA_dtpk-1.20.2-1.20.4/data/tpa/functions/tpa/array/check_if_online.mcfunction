function tpa:tpa/array/check_if_online_2 with storage tpa:temporary List[-1]
scoreboard players remove #ListSize tpa.Dummy 1
execute if score #ListSize tpa.Dummy matches 1.. run data remove storage tpa:temporary List[-1]
execute if score #ListSize tpa.Dummy matches 1.. run function tpa:tpa/array/check_if_online