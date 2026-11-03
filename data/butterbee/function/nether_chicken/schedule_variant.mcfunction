advancement revoke @s only butterbee:technical/breed_hamlin_chick
execute as @s[tag=!butterbee.scheduled_nether_chick] run schedule function butterbee:nether_chicken/schedule_variant 1t
execute as @s[tag=!butterbee.scheduled_nether_chick] run return run tag @s add butterbee.scheduled_nether_chick
execute at @a[tag=butterbee.scheduled_nether_chick] run execute as @e[predicate=butterbee:nether_chickens,distance=..16,name=!"Hamlin",type=chicken] run data merge entity @s {variant:"butterbee:nether"}
tag @s remove butterbee.scheduled_nether_chick