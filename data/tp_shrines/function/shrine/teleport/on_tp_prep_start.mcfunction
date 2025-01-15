summon marker ~ ~ ~ {Tags:["tp_shrines.effect_marker"]}
scoreboard players set @n[type=marker,tag=tp_shrines.effect_marker,distance=..3] tp_shrines.tp_cooldown 70
execute as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] store result storage tp_shrines:storage tp_destination_password int 1 run scoreboard players get @s tp_shrines.password
execute as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] run function tp_shrines:shrine/teleport/get_location with storage tp_shrines:storage
function tp_shrines:shrine/teleport/spawn_other_marker with storage tp_shrines:storage