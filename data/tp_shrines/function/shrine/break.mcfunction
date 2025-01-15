execute store result storage tp_shrines:storage old_password int 1 run scoreboard players get @s tp_shrines.password
function tp_shrines:shrine/update_display_items/remove_old with storage tp_shrines:storage
execute as @n[type=item,nbt={Item:{id:"minecraft:barrel",count:1}},distance=..2] run loot replace entity @s container.0 loot tp_shrines:block/teleportation_shrine
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_data":{tp_shrines:{kill:1b}}}}},distance=..5]
execute if block ~ ~-1 ~ hopper[enabled=false] run setblock ~ ~-1 ~ hopper[enabled=true]
kill @s