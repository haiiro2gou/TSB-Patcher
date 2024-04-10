#> core:patcher/migration/v1.1.6/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.1.6"

#> from: c7d611ff2c5cb54734d3244b65288bc226624b8b (TSB-Asset)
# @private
    scoreboard objectives add BZ.Dimension dummy
