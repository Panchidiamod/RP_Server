data modify storage tp_shrines:storage tp_location_x set value "none"

$execute if entity @s[tag=tp_shrines.location_1] run data modify storage tp_shrines:storage tp_location_x set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_2[0]
$execute if entity @s[tag=tp_shrines.location_1] run data modify storage tp_shrines:storage tp_location_y set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_2[1]
$execute if entity @s[tag=tp_shrines.location_1] run data modify storage tp_shrines:storage tp_location_z set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_2[2]

$execute if entity @s[tag=tp_shrines.location_2] run data modify storage tp_shrines:storage tp_location_x set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_1[0]
$execute if entity @s[tag=tp_shrines.location_2] run data modify storage tp_shrines:storage tp_location_y set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_1[1]
$execute if entity @s[tag=tp_shrines.location_2] run data modify storage tp_shrines:storage tp_location_z set from storage tp_shrines:storage shrines[{password:$(tp_destination_password)}].location_1[2]

