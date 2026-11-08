advancement revoke @s only butterbee:technical/breed_variant_select/pig/field

execute as @s[tag=!butterbee.schedule_pig.field] run schedule function butterbee:breed_variant_select/pig/delegate 1t
execute as @s[tag=!butterbee.schedule_pig.field] run return run tag @s add butterbee.schedule_pig.field

tag @s remove butterbee.schedule_pig.field

execute unless predicate {type:"random_chance",chance:0.3} run return fail
execute if predicate {type:"random_chance",chance:0.5} run return run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:field"},distance=..15,type=pig] {variant:"minecraft:temperate"}
data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:field"},distance=..15,type=pig] {variant:"butterbee:grove"}
