advancement revoke @s only butterbee:technical/name_nether_chicken
execute as @e[predicate=butterbee:nether_chickens,distance=..16,name=!"Hamlin",type=chicken] run data merge entity @s {variant:"butterbee:nether"}
execute as @e[predicate=butterbee:nether_chickens,distance=..16,name="Hamlin",type=chicken] run data merge entity @s {variant:"butterbee:hamlin"}