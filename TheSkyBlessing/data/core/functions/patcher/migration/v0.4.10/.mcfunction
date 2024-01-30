#> core:patcher/migration/v0.4.10/
#
# v0.4.9 -> v0.4.10
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.10"

#> from: fdb9ac10e144238cab2c97baccd0f127bec1ade6
    scoreboard players operation $BonusHealth Global = $MaxHealth Global
    scoreboard players remove $BonusHealth Global 200000
    scoreboard players operation $BonusMP Global = $MaxMP Global
    scoreboard players remove $BonusMP Global 100
    scoreboard players reset $MaxHealth Global
    scoreboard players reset $MaxMP Global
