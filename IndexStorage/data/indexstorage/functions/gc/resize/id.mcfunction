#> indexstorage:gc/resize/id
# @within function
#   indexstorage:tick
#   indexstorage:gc/resize/id

#> Val
# @private
    #declare score_holder $TargetID

# スコアに変換
    execute store result score $TargetID IndexStorage run data get storage indexstorage:core temp[-1]
# 上限値より小さければそのまま戻す
    execute if score $TargetID IndexStorage <= $StorageIDIndex IndexStorage run data modify storage indexstorage:core UnusedID append from storage indexstorage:core temp[-1]
# ループ
    data remove storage indexstorage:core temp[-1]
    scoreboard players reset $TargetID IndexStorage
    execute if data storage indexstorage:core temp[-1] run function indexstorage:gc/resize/id
