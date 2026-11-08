advancement revoke @s only butterbee:technical/breed_variant_select/cow/temperate_alt

execute as @s[tag=!butterbee.schedule_cow.temperate_alt] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.temperate_alt] run return run tag @s add butterbee.schedule_cow.temperate_alt

tag @s remove butterbee.schedule_cow.temperate_alt

execute if predicate {type:"random_chance",chance:0.5} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:temperate_alt"},distance=..15,type=cow] {variant:"minecraft:temperate"}
