# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"Now excecuting: ","color":"gold"},{"text":"tpa:tpa/tp/owner","color":"dark_aqua"}]

# Get owner:
loot insert 29999983 0 29999983 loot tpa:get_head
data modify storage tpa:select_option Text.Owner set value "PLACEHOLDER"
data modify storage tpa:select_option Text.Owner set from block 29999983 0 29999983 Items[0].components."minecraft:profile".name
item replace block 29999983 0 29999983 container.0 with air

# Debug:
execute if score .debug_mode tpa.config matches 1 run tellraw @a ["",{"text":"[TPA] ","color":"yellow"},{"text":"Debug: ","color":"blue"},{"text":"tpa:select_option Text.Owner is: ","color":"gold"},{"nbt":"Text.Owner","storage":"tpa:select_option","color":"dark_aqua"}]
