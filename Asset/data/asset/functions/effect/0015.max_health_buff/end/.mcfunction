#> asset:effect/0015.max_health_buff/end/
#
#
#
# @within function asset:effect/0015.max_health_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,15,0]
    function api:modifier/max_health/remove