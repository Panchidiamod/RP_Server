execute if score @s tp_shrines.tp_cooldown matches 30 as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] store result storage tp_shrines:storage tp_destination_password int 1 run scoreboard players get @s tp_shrines.password
execute if score @s tp_shrines.tp_cooldown matches 30 as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] run function tp_shrines:shrine/teleport/get_location with storage tp_shrines:storage
execute if score @s tp_shrines.tp_cooldown matches 30 unless data storage tp_shrines:storage {tp_location_x:"none"} run function tp_shrines:shrine/teleport/on_tp_prep_start
execute if score @s tp_shrines.tp_cooldown matches 30 if data storage tp_shrines:storage {tp_location_x:"none"} run function tp_shrines:shrine/teleport/issue_failed_tp

scoreboard players remove @s tp_shrines.tp_cooldown 1