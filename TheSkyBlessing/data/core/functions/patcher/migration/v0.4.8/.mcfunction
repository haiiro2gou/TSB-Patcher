#> core:patcher/migration/v0.4.8/
#
# v0.4.7 -> v0.4.8
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.8"

#> from: d5f8b28f00faa135342a0718a5be2dd6dd7af31e
# @private
    scoreboard objectives add InBattleTick dummy

#> from: 7becfd697948bd42e65429cdf454c0e6fc114d2d
# @private
    scoreboard objectives add UsedMilk used:milk_bucket {"text":"牛乳使用チェック"}
    scoreboard objectives add UsedTotem used:totem_of_undying {"text":"トーテム使用チェック"}
    function #asset:effect/load

#> from: c77cb610003d23df1d78d8d90c9322b6dc1378ae
# @private
    scoreboard objectives add OldFallDistance dummy {"text":"1tick前の落下距離 (e1)"}
    gamerule fallDamage false
