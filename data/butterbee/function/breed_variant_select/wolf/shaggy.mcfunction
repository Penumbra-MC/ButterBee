advancement revoke @s only butterbee:technical/breed_variant_select/wolf/shaggy

execute as @s[tag=!butterbee.schedule_wolf.shaggy] run schedule function butterbee:breed_variant_select/wolf/delegate 1t
execute as @s[tag=!butterbee.schedule_wolf.shaggy] run return run tag @s add butterbee.schedule_wolf.shaggy

tag @s remove butterbee.schedule_wolf.shaggy

execute unless predicate {type:"random_chance",chance:0.05} run return run advancement grant @s only butterbee:technical/breed_wolf_flag/shaggy
tag @s add butterbee.wolf_variant_selecting
execute if predicate {type:"random_chance",chance:0.5} as @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:shaggy"},distance=..15,type=wolf] at @s run return run function butterbee:breed_variant_select/wolf/set_variant/striped
execute as @n[nbt={Age:-24000,AgeLocked:0b,variant:"butterbee:shaggy"},distance=..15,type=wolf] at @s run function butterbee:breed_variant_select/wolf/set_variant/cloaked
