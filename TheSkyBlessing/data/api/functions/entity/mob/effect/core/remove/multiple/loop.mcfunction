#> api:entity/mob/effect/core/remove/multiple/loop
#
#
#
# @within function
#   api:entity/mob/effect/core/remove/multiple/
#   api:entity/mob/effect/core/remove/multiple/loop

# 先頭を取り出す
    data modify storage api: Argument.ID set from storage asset:effect IDList[0]
# IDで除去を試みる
    function api:entity/mob/effect/remove/from_id
# 残っていたら再帰
    data remove storage asset:effect IDList[0]
    execute if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/multiple/loop
