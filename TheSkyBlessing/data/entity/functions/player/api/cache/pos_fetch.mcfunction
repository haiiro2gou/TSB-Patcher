#> entity:player/api/cache/pos_fetch
#
# Posデータを汎用Entityから取得します
#
# @within function entity:player/api/cache/pos

# fetch
    execute in overworld run tp @s ~ ~ ~
    data modify storage indexstorage: _.DataCache.Pos.Data set from entity @s Pos
# リセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0