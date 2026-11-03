execute if predicate {type:"entity_properties",entity:"this",predicate:{components:{"pig/variant":"clifftree:bog"}}} run data merge entity @s {variant:"butterbee:bog"}
execute if predicate {type:"entity_properties",entity:"this",predicate:{components:{"pig/variant":"clifftree:dry"}}} run data merge entity @s {variant:"butterbee:dry"}
execute if predicate {type:"entity_properties",entity:"this",predicate:{components:{"pig/variant":"clifftree:field"}}} run data merge entity @s {variant:"butterbee:field"}
execute if predicate {type:"entity_properties",entity:"this",predicate:{components:{"pig/variant":"clifftree:grove"}}} run data merge entity @s {variant:"butterbee:grove"}
execute if predicate {type:"entity_properties",entity:"this",predicate:{components:{"pig/variant":"clifftree:mire"}}} run data merge entity @s {variant:"butterbee:mire"}
tag @s add butterbee.version.1