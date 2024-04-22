#> indexstorage:load
#
# #load処理
#
# @within tag/function minecraft:load

#> 初期化されていなければ初期化処理
    execute unless data storage indexstorage: data run function indexstorage:init
