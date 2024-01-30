#> core:patcher/migration/v0.4.11/
#
# v0.4.10 -> v0.4.11
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.11"

#> from: 8639d0fe3943687bb2d43213882d008d6e7e53a0
    scoreboard players operation $BonusHealth Global /= $10000 Const

#> from: 083c76386758c3631daa7bba195dd2734b563e17
    gamerule fallDamage false
