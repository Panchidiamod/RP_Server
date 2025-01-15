tp @s ~ ~ ~ ~15 0
execute positioned ^ ^ ^1 facing ~ ~1 ~ run particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^-1 facing ~ ~1 ~ run particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^1 positioned ~ ~1 ~ facing ~ ~1 ~ run particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^-1 positioned ~ ~1 ~ facing ~ ~1 ~ run particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
scoreboard players remove @s tp_shrines.tp_cooldown 1
playsound entity.panda.aggressive_ambient master @a ~ ~ ~ 2 0.1
execute if entity @a[predicate=tp_shrines:activate_shrine,distance=..2] if score @s tp_shrines.tp_cooldown matches 0 run playsound entity.dragon_fireball.explode master @a ~ ~ ~ 2 2
execute if entity @a[predicate=tp_shrines:activate_shrine,distance=..2] if score @s tp_shrines.tp_cooldown matches 0 run particle explosion ~ ~1 ~ 0 0.2 0 0 5
execute if entity @a[predicate=tp_shrines:activate_shrine,distance=..2] if score @s tp_shrines.tp_cooldown matches 0 as @n[predicate=tp_shrines:activate_shrine,distance=..2] run function tp_shrines:shrine/teleport/teleport_disabled
execute if entity @a[predicate=tp_shrines:activate_shrine,distance=..2] if score @s tp_shrines.tp_cooldown matches 0 run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.4 5
particle minecraft:dust_plume ~ ~1 ~ 0 0.3 0 0 1
execute unless entity @a[predicate=tp_shrines:activate_shrine,distance=..2] run scoreboard players remove @s tp_shrines.tp_cooldown 2
execute if score @s tp_shrines.tp_cooldown matches ..0 run kill @s