advancement revoke @s only butterbee:technical/breed_variant_select/wolf/black

execute as @s[tag=!butterbee.schedule_wolf.black] run schedule function butterbee:breed_variant_select/wolf/delegate 1t
execute as @s[tag=!butterbee.schedule_wolf.black] run return run tag @s add butterbee.schedule_wolf.black

tag @s remove butterbee.schedule_wolf.black

execute unless predicate {type:"random_chance",chance:0.025} run return run advancement grant @s only butterbee:technical/breed_wolf_flag/black
tag @s add butterbee.wolf_variant_selecting
execute as @n[nbt={Age:-24000,AgeLocked:0b,variant:"minecraft:black"},distance=..15,type=wolf] at @s run function butterbee:breed_variant_select/wolf/set_variant/chestnut
