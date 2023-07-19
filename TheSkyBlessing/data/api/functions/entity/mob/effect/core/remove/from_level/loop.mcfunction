#> api:entity/mob/effect/core/remove/from_level/loop
#
#
#
# @within function
#   api:entity/mob/effect/core/remove/from_level/
#   api:entity/mob/effect/core/remove/from_level/loop

# 先頭取り出し
    data modify storage api: Argument.ID set from storage asset:effect IDList[0]

# 任せる
    function api:entity/mob/effect/remove/from_id

# 残っていたら再帰
    data remove storage asset:effect IDList[0]
    execute if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/from_level/loop