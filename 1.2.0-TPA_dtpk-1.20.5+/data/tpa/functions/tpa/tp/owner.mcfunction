# Get owner:
loot insert 29999983 0 29999983 loot tpa:get_head
data modify storage tpa:select_option Text.Owner set value "PLACEHOLDER"
data modify storage tpa:select_option Text.Owner set from block 29999983 0 29999983 Items[0].components."minecraft:profile".name
item replace block 29999983 0 29999983 container.0 with air
