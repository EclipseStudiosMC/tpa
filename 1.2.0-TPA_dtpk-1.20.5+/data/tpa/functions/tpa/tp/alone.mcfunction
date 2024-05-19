# Run if player tried to TPA but they were alone:
tellraw @a {"text":"You must be playing with someone else!","color":"green"}
playsound minecraft:entity.villager.no ambient @s
scoreboard players set @s TPA 0
