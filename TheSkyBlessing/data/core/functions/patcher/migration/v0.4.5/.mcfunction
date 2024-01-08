#> core:patcher/migration/v0.4.5/
#
# v0.4.4 -> v0.4.5
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.5"

#> from: 9bef81b3bc9c025024efa0fa1915a960d04eb151
# @private
    scoreboard objectives add TD.EquipCount dummy
