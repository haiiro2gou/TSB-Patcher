#> asset_manager:effect/tick
#
#
#
# @within function core:tick/

# EntityStorage呼び出し
    function indexstorage:pull/
# 必要なデータ取得
    data modify storage asset:effect Effects set from storage indexstorage: _.Effects
    data remove storage indexstorage: _.Effects
# 死亡判定
    execute if entity @s[tag=Death] run tag @s add DeathProcess
    execute if score @s UsedTotem matches 1.. run tag @s add DeathProcess
# 各エフェクトを処理する
    data modify storage asset:effect NextTickEffects set value []
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/foreach
# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
    function indexstorage:pull/
# 元に戻す
    data modify storage indexstorage: _.Effects append from storage asset:effect NextTickEffects[]
# 付与されているエフェクトが何もなければタグを消す
    execute unless data storage indexstorage: _.Effects[0] run tag @s remove HasAssetEffect

# リセット
    scoreboard players reset @s UsedMilk
    scoreboard players reset @s UsedTotem
    tag @s remove DeathProcess
    data remove storage asset:effect NextTickEffects
    data remove storage asset:effect Effects
