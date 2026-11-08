advancement revoke @s only butterbee:technical/breed_cat
tag @s add butterbee.schedule.breed_cat
execute as @s[tag=butterbee.schedule.breed_cat] run return run schedule function butterbee:breed_cat_owner_fix 1t

execute as @p[tag=butterbee.schedule.breed_cat] at @s run data modify entity @n[nbt={Age:-24000,AgeLocked:0b},distance=..15,type=cat] Owner set from entity @s UUID
tag @a remove butterbee.schedule.breed_cat