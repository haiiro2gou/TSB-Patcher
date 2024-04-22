#> api:entity/mob/effect/get/size/good
#
# entityに付与されている良い効果のエフェクトの数を取得します。
#
# @api

# storage呼び出し
    function indexstorage:pull/
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.Good int 1 if data storage indexstorage: _.Effects[{IsBadEffect: 0b}]
