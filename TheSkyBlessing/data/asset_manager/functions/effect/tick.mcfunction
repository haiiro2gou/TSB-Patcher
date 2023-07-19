#> asset_manager:effect/tick
#
#
#
# @within function core:tick/

# EntityStorage呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    data modify storage asset:effect Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
# アイテム使用チェック
    execute if score @s UsedMilk matches 1.. run tag @s add ClearEffect
    execute if score @s UsedTotem matches 1.. run tag @s add ClearEffect
# 各エフェクトを処理する
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/foreach
# 付与されているエフェクトが何もなければタグを消す
    execute unless data storage asset:effect NextTickEffects[0] run tag @s remove HasAssetEffect
# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
    function oh_my_dat:please
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage asset:effect NextTickEffects

# リセット
    scoreboard players reset @s UsedMilk
    scoreboard players reset @s UsedTotem
    tag @s remove ClearEffect
    data remove storage asset:effect NextTickEffects
    data remove storage asset:effect Effects