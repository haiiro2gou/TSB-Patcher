#> api:entity/mob/effect/get/all
#
# Effect一覧を取得する
#
# @input as player
# @output storage api:
#   Return.Effects : Component[]
# @api

# storage呼び出し
    function oh_my_dat:please

# エフェクトを取得
    data modify storage api: Return.Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects