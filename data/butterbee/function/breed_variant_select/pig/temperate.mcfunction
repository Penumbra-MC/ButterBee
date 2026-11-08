advancement revoke @s only butterbee:technical/breed_variant_select/pig/temperate

execute as @s[tag=!butterbee.schedule_pig.temperate] run schedule function butterbee:breed_variant_select/pig/delegate 1t
execute as @s[tag=!butterbee.schedule_pig.temperate] run return run tag @s add butterbee.schedule_pig.temperate

tag @s remove butterbee.schedule_pig.temperate

execute unless predicate {type:"random_chance",chance:0.3} run return fail
execute if predicate {type:"random_chance",chance:0.5} run return run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"minecraft:temperate"},distance=..15,type=pig] {variant:"butterbee:field"}
data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"minecraft:temperate"},distance=..15,type=pig] {variant:"butterbee:grove"}
