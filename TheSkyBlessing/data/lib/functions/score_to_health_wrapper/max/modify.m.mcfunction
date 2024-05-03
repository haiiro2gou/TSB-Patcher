#> lib:score_to_health_wrapper/max/modify.m
# @input args MaxHealth : float
# @within function lib:score_to_health_wrapper/max/

$attribute @s generic.max_health base set $(MaxHealth)
effect give @s instant_health 1 254 true
