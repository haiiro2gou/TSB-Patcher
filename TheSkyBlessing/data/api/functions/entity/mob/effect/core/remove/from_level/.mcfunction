#> api:entity/mob/effect/core/remove/from_level/
#
#
#
# @within function api:entity/mob/effect/remove/from_level

# storage呼び出し
    function oh_my_dat:please
# effect id抽出
    data modify storage asset:effect IDList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID

# ループ
    function api:entity/mob/effect/core/remove/from_level/loop

# リセット
    data remove storage asset:effect IDList