#> api:entity/mob/effect/core/remove/multiple/
#
#
#
# @within function api:entity/mob/effect/remove/multiple

# storage呼び出し
    function oh_my_dat:please
# effect id抽出
    data modify storage asset:effect IDList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID
# ループに入れる
    function api:entity/mob/effect/core/remove/multiple/loop
# リセット
    data remove storage asset:effect IDList
