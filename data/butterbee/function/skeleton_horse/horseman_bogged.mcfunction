tag @s add butterbee.horseman_horse
team join butterbee.horseman @s
attribute @s minecraft:movement_speed base set 0.25
particle flash{color:[0.678,0.878,0.212,1.00]} ~ ~ ~ 0 0 0 0 0 normal
particle dust_color_transition{from_color:[0.467,0.631,0.282],to_color:[0.000,0.000,0.000],scale:2} ~ ~0.25 ~ 0.5 0.5 0.5 0.6 200 normal
particle dust_color_transition{from_color:[0.467,0.631,0.282],to_color:[0.000,0.000,0.000],scale:2} ~ ~1 ~ 0.25 0.5 0.25 0.6 200 normal
loot replace entity @s armor.body loot butterbee:skeleton_horse/bogged_overlay
execute on passengers at @s run function butterbee:skeleton_horse/dismount_rider
summon bogged ~ ~ ~ {attributes:[{base:32,id:"minecraft:follow_range"}],Team:"butterbee.horseman",PersistenceRequired:1b,Tags:["butterbee.horseman"],equipment:{head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:enchantments":{"protection":10,"binding_curse":1,"vanishing_curse":1,"butterbee:incubation_curse":1},"minecraft:unbreakable":{}}},mainhand:{id:"minecraft:bow",count:1,components:{"enchantments":{"minecraft:power":3}}}},drop_chances:{mainhand:0.085,head:0.085},CanPickUpLoot:0b,DeathLootTable:"butterbee:horseman/bogged"}
ride @n[distance=..1,tag=butterbee.horseman,type=minecraft:bogged] mount @s
playsound butterbee:entity.skeleton_horseman.transform hostile @a ~ ~ ~
execute as @n[tag=!butterbee.horseman_horse,distance=..32,type=minecraft:skeleton_horse] at @s run function butterbee:skeleton_horse/horseman_parched