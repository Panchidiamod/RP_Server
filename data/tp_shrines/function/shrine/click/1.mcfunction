scoreboard players add @s tp_shrines.slot_1 1
execute if score @s tp_shrines.slot_1 matches 6 run scoreboard players set @s tp_shrines.slot_1 1
function tp_shrines:shrine/update_display_items/start
clear @a barrier[custom_data~{tp_shrines:{slot:1}}]
