advancement revoke @s only butterbee:technical/breed_variant_select/cow/frigid_light

execute as @s[tag=!butterbee.schedule_cow.frigid_light] run schedule function butterbee:breed_variant_select/cow/delegate 1t
execute as @s[tag=!butterbee.schedule_cow.frigid_light] run return run tag @s add butterbee.schedule_cow.frigid_light

tag @s remove butterbee.schedule_cow.frigid_light

execute if predicate {type:"random_chance",chance:0.3} run data merge entity @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:frigid_light"},distance=..15,type=cow] {variant:"butterbee:frigid_dark"}
