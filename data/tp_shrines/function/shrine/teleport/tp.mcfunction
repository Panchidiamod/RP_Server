scoreboard players set @p[predicate=tp_shrines:activate_shrine,distance=..1] tp_shrines.tp_cooldown 50
playsound block.beacon.deactivate master @a ~ ~ ~ 2 1.5
particle flash ~ ~1 ~ 0 0.2 0 0 5
tag @p[predicate=tp_shrines:activate_shrine,distance=..1] add tp_shrines.finish_teleportation
$tp @p[predicate=tp_shrines:activate_shrine,distance=..1] $(tp_location_x) $(tp_location_y) $(tp_location_z) 
