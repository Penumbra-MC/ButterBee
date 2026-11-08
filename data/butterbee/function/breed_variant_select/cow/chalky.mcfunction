advancement revoke @s only butterbee:technical/breed_variant_select/cow/chalky

execute as @s[tag=!butterbee.schedule_cow.chalky] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.chalky] run return run tag @s add butterbee.schedule_cow.chalky

tag @s remove butterbee.schedule_cow.chalky

execute if predicate {type:"random_chance",chance:0.5} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:chalky"},distance=..15,type=cow] {variant:"butterbee:chalky_alt"}
