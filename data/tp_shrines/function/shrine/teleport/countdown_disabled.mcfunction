execute if score @s tp_shrines.tp_cooldown matches 30 as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1] at @s run function tp_shrines:shrine/teleport/doubleck_before_disable
execute if score @s tp_shrines.tp_cooldown matches 30 as @n[type=item_display,tag=tp_shrines.shrine,distance=..0.1,tag=!tp_shrines.disabled] run return run function tp_shrines:shrine/teleport/countdown
execute if score @s tp_shrines.tp_cooldown matches 30 run function tp_shrines:shrine/teleport/issue_failed_tp
scoreboard players remove @s tp_shrines.tp_cooldown 1
