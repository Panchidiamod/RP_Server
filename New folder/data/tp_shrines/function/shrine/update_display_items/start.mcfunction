tag @n[type=player,predicate=tp_shrines:has_gui_item,distance=..5] add tp_shrines.this
execute store result storage tp_shrines:storage slot_1 int 1 run scoreboard players get @s tp_shrines.slot_1
function tp_shrines:shrine/update_display_items/1 with storage tp_shrines:storage
execute store result storage tp_shrines:storage slot_2 int 1 run scoreboard players get @s tp_shrines.slot_2
function tp_shrines:shrine/update_display_items/2 with storage tp_shrines:storage
execute store result storage tp_shrines:storage slot_3 int 1 run scoreboard players get @s tp_shrines.slot_3
function tp_shrines:shrine/update_display_items/3 with storage tp_shrines:storage
execute store result storage tp_shrines:storage slot_4 int 1 run scoreboard players get @s tp_shrines.slot_4
function tp_shrines:shrine/update_display_items/4 with storage tp_shrines:storage
execute store result storage tp_shrines:storage slot_5 int 1 run scoreboard players get @s tp_shrines.slot_5
function tp_shrines:shrine/update_display_items/5 with storage tp_shrines:storage
function tp_shrines:shrine/update_display_items/construct_password with storage tp_shrines:storage
tag @a remove tp_shrines.this