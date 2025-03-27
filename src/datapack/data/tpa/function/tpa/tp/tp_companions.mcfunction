# @p[tag=tpa.this_is_requester] --> Leasher! | @s --> Any entity!

# Tp:
tag @s add tpa.companion_this
execute on leasher if entity @s[tag=tpa.this_is_requester] run tp @n[tag=tpa.companion_this] @s
tag @s remove tpa.companion_this
