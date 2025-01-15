execute as @a[tag=tp_shrines.finish_teleportation] at @s run function tp_shrines:shrine/teleport/finish_teleportation
execute as @a[tag=tp_shrines.finish_teleportation_disabled] at @s run function tp_shrines:shrine/teleport/finish_teleportation_disabled
execute as @e[type=item_frame,tag=tp_shrines.place_shrine] at @s run function tp_shrines:shrine/place
execute as @e[type=item_display,tag=tp_shrines.shrine] run function tp_shrines:shrine/as
execute as @a[predicate=tp_shrines:activate_shrine,scores={tp_shrines.tp_cooldown=1..50}] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1,tag=!tp_shrines.disabled] run function tp_shrines:shrine/teleport/countdown
execute as @a[predicate=tp_shrines:activate_shrine,scores={tp_shrines.tp_cooldown=2..50}] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1,tag=tp_shrines.disabled] run function tp_shrines:shrine/teleport/countdown_disabled
execute as @a[predicate=!tp_shrines:activate_shrine,scores={tp_shrines.tp_cooldown=0..29}] run scoreboard players set @s tp_shrines.tp_cooldown 30
execute as @a[predicate=!tp_shrines:on_barrel] run scoreboard players set @s tp_shrines.tp_cooldown 30
execute as @a[predicate=tp_shrines:activate_shrine,scores={tp_shrines.tp_cooldown=0}] at @s if dimension minecraft:overworld align xyz positioned ~0.5 ~-0.5 ~0.5 as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] positioned ~ ~1 ~ run function tp_shrines:shrine/teleport/start
