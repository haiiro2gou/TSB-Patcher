#> core:patcher/migration/v1.2.0/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.2.0"

#> from: 5193c806a1cf7a6237eb8eabfb55f64f6dbfa0f5
# @private
    #declare storage player_manager:lost_item
    data modify storage player_manager:lost_item IDSet set from storage oh_my_dat: IDSet
    data remove storage oh_my_dat: IDSet
