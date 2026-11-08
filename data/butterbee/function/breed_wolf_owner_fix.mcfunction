advancement revoke @s only butterbee:technical/breed_wolf
tag @s add butterbee.schedule.breed_wolf
execute as @s[tag=butterbee.schedule.breed_wolf] run return run schedule function butterbee:breed_wolf_owner_fix 1t

execute as @p[tag=butterbee.schedule.breed_wolf] at @s run data modify entity @n[nbt={Age:-24000,AgeLocked:0b},distance=..15,type=wolf] Owner set from entity @s UUID
tag @a remove butterbee.schedule.breed_wolf