tag @s remove tp_shrines.disabled
execute store result storage tp_shrines:storage old_password int 1 run scoreboard players get @s tp_shrines.password
function tp_shrines:shrine/update_display_items/remove_old with storage tp_shrines:storage
tag @s remove tp_shrines.location_1
tag @s remove tp_shrines.location_2
$data merge storage tp_shrines:storage {temp_password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}
$scoreboard players set @s tp_shrines.password $(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)
$data modify storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].temp set value 1
$execute if data storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1 if data storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_2 run return run tag @s add tp_shrines.disabled
$execute if data storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1 run function tp_shrines:shrine/update_display_items/set_location_2 with storage tp_shrines:storage
$execute unless data storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1 run function tp_shrines:shrine/update_display_items/set_location_1 with storage tp_shrines:storage
