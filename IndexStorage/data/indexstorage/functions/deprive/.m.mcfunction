#> indexstorage:deprive/.m
# @input args
#   id : int
# @within function
#   indexstorage:gc/exec.m
#   indexstorage:deprive/

#> Val
# @private
    #declare score_holder #UnusedCount
    #declare score_holder #MergedUnusedCount

# 削除済みかチェック
    execute store result score #UnusedCount Temporary if data storage indexstorage:core UnusedID[]
    data modify storage indexstorage:core temp set from storage indexstorage:core UnusedID
    $execute store result score #MergedUnusedCount Temporary run data modify storage indexstorage:core temp[] set value $(id)

# 削除済みidに登録
    execute unless data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage:core UnusedID append from storage indexstorage:core temp[-1]
    execute if data storage indexstorage:core UnusedID[-1] if score #UnusedCount Temporary = #MergedUnusedCount Temporary run data modify storage indexstorage:core UnusedID append from storage indexstorage:core temp[-1]

# 削除
    $data modify storage indexstorage: data[$(id)] set value {}

# リセット
    scoreboard players reset #UnusedCount Temporary
    scoreboard players reset #MergedUnusedCount Temporary
    data remove storage indexstorage:core temp
