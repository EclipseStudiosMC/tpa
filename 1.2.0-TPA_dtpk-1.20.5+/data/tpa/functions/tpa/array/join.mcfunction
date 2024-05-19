scoreboard players reset @s tpa.JoinGame

# Playercount Update
scoreboard players add #PlayerCount tpa.Dummy 1
scoreboard players add #PlayerCountPrev tpa.Dummy 1

# Add to online players list
loot insert 29999983 0 29999983 loot tpa:get_head
data modify storage tpa:online_players List append value {Name:"PLACEHOLDER"}
data modify storage tpa:online_players List[-1].Name set from block 29999983 0 29999983 Items[0].components."minecraft:profile".name
item replace block 29999983 0 29999983 container.0 with air
