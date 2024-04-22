#> api:entity/mob/effect/get/size/all
#
# entityに付与されている全てのエフェクトの数を取得します。
#
# @api

# storage呼び出し
    function indexstorage:pull/
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.All int 1 if data storage indexstorage: _.Effects[]
