execute if data storage butterbee:data_version {version:1} run return fail
execute as @a at @s run execute as @e[distance=..16,tag=!butterbee.version.1,type=#butterbee:mobs_with_variants] at @s run function butterbee:updater/update_mob
schedule function butterbee:updater/loop 10t