setblock ~ ~ ~ barrel{CustomName:'{"fallback":"Teleportation Shrine","translate":"item.tp_shrines.teleportation_shrine"}'}
item replace block ~ ~ ~ container.17 with minecraft:barrier[minecraft:custom_model_data=819296,minecraft:custom_data={tp_shrines:{kill:1b,slot:-1}},minecraft:hide_tooltip={}]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},Tags:["tp_shrines.shrine"],item:{id:"minecraft:item_frame",count:1,components:{"minecraft:custom_model_data":819291}}}

execute unless dimension minecraft:overworld run item replace entity @n[type=item_display,distance=..2] container.0 with minecraft:item_frame[minecraft:custom_model_data=819292]

execute as @n[type=item_display,distance=..2] at @s run function tp_shrines:shrine/init
kill @s