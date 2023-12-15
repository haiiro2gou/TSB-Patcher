#> asset:mob/0171.lumberjack_of_blue_forest/attack/5.atribute_remove
#
#
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/4.attribute_effect_time

# 効果削除
    data modify storage api: Argument.UUID set value [I;1,2,171,0]
    function api:modifier/max_health/remove
    tag @s remove 4R.HealthDown
    scoreboard players reset @s 4R.Attribute
