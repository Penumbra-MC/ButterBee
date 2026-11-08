advancement revoke @s only butterbee:technical/breed_variant_select/cow/frigid_dark

execute as @s[tag=!butterbee.schedule_cow.frigid_dark] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.frigid_dark] run return run tag @s add butterbee.schedule_cow.frigid_dark

tag @s remove butterbee.schedule_cow.frigid_dark

execute if predicate {type:"random_chance",chance:0.3} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:frigid_dark"},distance=..15,type=cow] {variant:"butterbee:frigid_light"}
