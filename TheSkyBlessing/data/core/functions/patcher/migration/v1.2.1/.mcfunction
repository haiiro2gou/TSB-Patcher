#> core:patcher/migration/v1.2.1/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.2.1"

#> from: 5193c806a1cf7a6237eb8eabfb55f64f6dbfa0f5
# @private
    #declare storage asset:teleporter
    data modify storage asset:teleporter TeleporterISMap set from storage asset:teleporter TeleportOMDMap
    data remove storage asset:teleporter TeleporterOMDMap
