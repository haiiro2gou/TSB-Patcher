#> core:patcher/migration/v0.0.3/
#
#
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.0.3"

#> from: e5c883e76c6e66dac6ddbc23c81fcc57a7120c99
# @private
    #declare storage asset:trader
    #declare tag Trader
    data remove storage asset:trader DPR
    kill @e[type=villager,tag=Trader]