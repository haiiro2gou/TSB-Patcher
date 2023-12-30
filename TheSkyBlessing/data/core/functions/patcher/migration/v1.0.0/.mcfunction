#> core:patcher/migration/v1.0.0/
#
# v0.3.0 -> v1.0.0
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.0.0"

#> from: b7ad7bbc2b03ff7e37f623ebb79cf419b27ea8e3
# @private
    function #asset:effect/load

#> from: c73cd8b46d07a6aa78951c6990f62dd1085a53ae
# @private
    scoreboard objectives add UsedMilk used:milk_bucket {"text":"牛乳使用チェック"}
    scoreboard objectives add UsedTotem used:totem_of_undying {"text":"トーテム使用チェック"}

#> from: de40850bf163c2c52dc00addfc2d1f1bd87e1a32
# @private
    scoreboard players operation $BonusHealth Global = $MaxHealth Global
    scoreboard players operation $BonusHealth Global %= $10^4 Const
    scoreboard players operation $BonusMP Global = $MaxMP Global
    scoreboard players operation $BonusMP Global -= $100 Const
    scoreboard players reset $MaxHealth Global
    scoreboard players reset $MaxMP Global