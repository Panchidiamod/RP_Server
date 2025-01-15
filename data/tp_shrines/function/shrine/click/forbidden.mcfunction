item replace block ~ ~ ~ container.17 with minecraft:barrier[minecraft:custom_model_data=819296,minecraft:custom_data={tp_shrines:{kill:1b,slot:-1}},minecraft:hide_tooltip={}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_data":{tp_shrines:{kill:1b,slot:-1}}}}},distance=..5]
clear @a barrier[custom_data~{tp_shrines:{slot:-1}}]
