#> api:data_get/pos_fetch
#
# Posデータを汎用Entityから取得します
#
# @within function api:data_get/pos

# fetch
    execute in overworld run tp @s ~ ~ ~
    data modify storage indexstorage: _.DataCache.Pos.Data set from entity @s Pos
# リセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0
