tp @s ~ ~ ~ ~15 0
execute positioned ^ ^ ^1 facing ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^-1 facing ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^1 positioned ~ ~1 ~ facing ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
execute positioned ^ ^ ^-1 positioned ~ ~1 ~ facing ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0
scoreboard players remove @s tp_shrines.tp_cooldown 1
execute if score @s tp_shrines.tp_cooldown matches 50.. run playsound minecraft:block.beacon.ambient block @a ~ ~2 ~ 5 2
execute unless entity @a[predicate=tp_shrines:activate_shrine,distance=..2] unless entity @s[tag=tp_shrines.other_marker] run scoreboard players remove @s tp_shrines.tp_cooldown 2
execute if score @s tp_shrines.tp_cooldown matches ..0 run kill @s