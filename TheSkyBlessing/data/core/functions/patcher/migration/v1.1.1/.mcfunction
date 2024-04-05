#> core:patcher/migration/v1.1.1/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.1.1"

#> from: 34083a5b9fc6e5e2c2b727d14cd4afd3aaf368d0 (TSB-Patcher)
# @private
    scoreboard objectives add GT.Tick dummy
