#> api:entity/mob/effect/get/size/bad
#
# entityに付与されている悪い効果のエフェクトの数を取得します。
#
# @api

# storage呼び出し
    function indexstorage:pull/
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.Bad int 1 if data storage indexstorage: _.Effects[{IsBadEffect: 1b}]
