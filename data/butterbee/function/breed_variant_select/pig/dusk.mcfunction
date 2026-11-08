advancement revoke @s only butterbee:technical/breed_variant_select/pig/dusk

execute as @s[tag=!butterbee.schedule_pig.dusk] run schedule function butterbee:breed_variant_select/pig/delegate 1t
execute as @s[tag=!butterbee.schedule_pig.dusk] run return run tag @s add butterbee.schedule_pig.dusk

tag @s remove butterbee.schedule_pig.dusk

execute if predicate {type:"random_chance",chance:0.05} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:dusk"},distance=..15,type=pig] {variant:"butterbee:dawn"}
