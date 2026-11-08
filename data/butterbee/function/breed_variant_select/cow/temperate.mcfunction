advancement revoke @s only butterbee:technical/breed_variant_select/cow/temperate

execute as @s[tag=!butterbee.schedule_cow.temperate] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.temperate] run return run tag @s add butterbee.schedule_cow.temperate

tag @s remove butterbee.schedule_cow.temperate

execute if predicate {type:"random_chance",chance:0.5} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"minecraft:temperate"},distance=..15,type=cow] {variant:"butterbee:temperate_alt"}
