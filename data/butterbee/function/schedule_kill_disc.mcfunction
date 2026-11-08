advancement revoke @s only butterbee:technical/kill_chicken_jockey_rider

execute at @n[distance=..64,predicate=butterbee:ridden_by_killed_zombie,type=minecraft:chicken] if dimension minecraft:the_nether run summon item ~ ~1 ~ {Age:-200,PickupDelay:8,Invulnerable:1b,Item:{id:"minecraft:music_disc_lava_chicken",count:1}}
tag @s add butterbee.schedule.lava_chicken_void

schedule function butterbee:kill_disc 1t