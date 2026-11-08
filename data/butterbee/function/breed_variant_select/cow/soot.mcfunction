advancement revoke @s only butterbee:technical/breed_variant_select/cow/soot

execute as @s[tag=!butterbee.schedule_cow.soot] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.soot] run return run tag @s add butterbee.schedule_cow.soot

tag @s remove butterbee.schedule_cow.soot

execute if predicate {type:"random_chance",chance:0.5} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:soot"},distance=..15,type=cow] {variant:"butterbee:soot_alt"}
