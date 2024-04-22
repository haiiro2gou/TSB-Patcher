#> api:entity/mob/effect/get/all
#
# Effect一覧を取得する
#
# @input as player
# @api

# storage呼び出し
    function indexstorage:pull/

# エフェクトを取得
    data modify storage api: Return.EffectList set from storage indexstorage: _.Effects
