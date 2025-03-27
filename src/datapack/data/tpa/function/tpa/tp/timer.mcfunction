# Add 1 to score for timer:
scoreboard players add @s tpa.timer 1

# When timer out:
execute if score @s tpa.timer >= .cancel_at_x_s tpa.timer run tellraw @s {"text":"Your tp request got canceled because timer ran out.","color":"red"}
execute if score @s tpa.timer >= .cancel_at_x_s tpa.timer run scoreboard players set @s tpa.want_tp_to 0
execute if score @s tpa.timer >= .cancel_at_x_s tpa.timer run playsound minecraft:entity.cat.ambient ambient @s
execute if score @s tpa.timer >= .cancel_at_x_s tpa.timer run tag @s remove tpa.asked_tp
execute if score @s tpa.timer >= .cancel_at_x_s tpa.timer run scoreboard players set @s tpa.timer 0
