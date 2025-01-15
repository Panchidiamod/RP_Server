$data modify storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1 set value [1,2,3]
$data modify storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1[0] set from block ~ ~ ~ x
execute store result score %temp tp_shrines.temp run data get block ~ ~ ~ y
scoreboard players add %temp tp_shrines.temp 1
$execute store result storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1[1] int 1 run scoreboard players get %temp tp_shrines.temp 
$data modify storage tp_shrines:storage shrines[{password:$(slot_1)$(slot_2)$(slot_3)$(slot_4)$(slot_5)}].location_1[2] set from block ~ ~ ~ z
tag @s add tp_shrines.location_1