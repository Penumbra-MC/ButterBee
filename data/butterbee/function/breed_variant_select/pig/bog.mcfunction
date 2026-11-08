advancement revoke @s only butterbee:technical/breed_variant_select/pig/bog

execute as @s[tag=!butterbee.schedule_pig.bog] run schedule function butterbee:breed_variant_select/pig/delegate 1t
execute as @s[tag=!butterbee.schedule_pig.bog] run return run tag @s add butterbee.schedule_pig.bog

tag @s remove butterbee.schedule_pig.bog

execute if predicate {type:"random_chance",chance:0.05} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:bog"},distance=..15,type=pig] {variant:"minecraft:cold"}
