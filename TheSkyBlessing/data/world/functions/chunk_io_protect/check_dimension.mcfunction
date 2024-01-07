#> world:chunk_io_protect/check_dimension
#
#
#
# @within function world:chunk_io_protect/

#> Val
# @private
    #declare score_holder #DimensionChange

# ディメンションを取得する
    function entity:player/api/cache/dimension
# 1tick前のデータと比較しつつ、データを退避する
    execute store success score #DimensionChange Temporary run data modify storage indexstorage: _.Stash.Dimension set from storage api: Dimension
# ディメンションが変わっている場合はタグを付与する
    execute if score #DimensionChange Temporary matches 1 run tag @s add IsNeedsUpdate
# リセット
    scoreboard players reset #DimensionChange Temporary