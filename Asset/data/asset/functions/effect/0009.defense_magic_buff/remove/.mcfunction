#> asset:effect/0009.defense_magic_buff/remove/
#
#
#
# @within function asset:effect/0009.defense_magic_buff/_/remove

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,9,0]
    function api:modifier/defense/magic/remove