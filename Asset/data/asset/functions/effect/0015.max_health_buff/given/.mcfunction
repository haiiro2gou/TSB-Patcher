#> asset:effect/0015.max_health_buff/given/
#
#
#
# @within function asset:effect/0015.max_health_buff/_/given

# N*5%の基礎攻撃力上昇
    data modify storage api: Argument.UUID set value [I;1,3,15,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add