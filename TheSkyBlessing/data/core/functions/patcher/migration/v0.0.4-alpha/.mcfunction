#> core:patcher/migration/v0.0.4-alpha/
#
#
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.0.4-alpha"

#> from: b7ad7bbc2b03ff7e37f623ebb79cf419b27ea8e3
# @private
    function #asset:effect/load

#> from: c73cd8b46d07a6aa78951c6990f62dd1085a53ae
# @private
    scoreboard objectives add UsedMilk used:milk_bucket {"text":"牛乳使用チェック"}
    scoreboard objectives add UsedTotem used:totem_of_undying {"text":"トーテム使用チェック"}