advancement revoke @s only butterbee:technical/breed_variant_select/cow/soot_alt

execute as @s[tag=!butterbee.schedule_cow.soot_alt] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.soot_alt] run return run tag @s add butterbee.schedule_cow.soot_alt

tag @s remove butterbee.schedule_cow.soot_alt

execute if predicate {type:"random_chance",chance:0.5} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:soot_alt"},distance=..15,type=cow] {variant:"butterbee:soot"}
