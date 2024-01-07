#> indexstorage:tick
# @within tag/function minecraft:tick

#> Val
# @private
    #declare score_holder #CurrentTime
    #declare score_holder #LatestGC

# 前回GCからの経過時間を取得
    execute store result score #CurrentTime Temporary run data get storage global Time 1
    execute store result score #LatestGC Temporary run data get storage indexstorage:core LatestGC 1
    scoreboard players operation #LatestGC Temporary -= #CurrentTime Temporary
    scoreboard players operation #LatestGC Temporary *= #-1 Const

# (#GCDuration)tick経過していたらgcループを発火
    # 存在しないデータを削除
        execute if score #LatestGC Temporary >= #GCInterval Global run scoreboard players set #GCIndex Temporary -1
        execute if score #LatestGC Temporary >= #GCInterval Global run function indexstorage:gc/main/loop
    # 配列のリサイズ
        # 現存するエンティティの中のIDの最大値を取得
            execute if score #LatestGC Temporary >= #GCInterval Global run scoreboard players operation #ResizeIndex Temporary = #StorageIDIndex Global
            execute if score #LatestGC Temporary >= #GCInterval Global run scoreboard players set #StorageIDIndex Global -1
            execute if score #LatestGC Temporary >= #GCInterval Global run scoreboard players operation #StorageIDIndex Global > * IndexStorageID
        # データの整理
            execute if score #LatestGC Temporary >= #GCInterval Global if score #ResizeIndex Temporary > #StorageIDIndex Global run function indexstorage:gc/resize/data
        # 削除済みIDの整理
            execute if score #LatestGC Temporary >= #GCInterval Global run data modify storage indexstorage:core temp set from storage indexstorage:core UnusedID
            execute if score #LatestGC Temporary >= #GCInterval Global run data modify storage indexstorage:core UnusedID set value []
            execute if score #LatestGC Temporary >= #GCInterval Global if data storage indexstorage:core temp[-1] run function indexstorage:gc/resize/id
    # 実行時刻を記録
        execute if score #LatestGC Temporary >= #GCInterval Global store result storage indexstorage:core LatestGC int 1 run scoreboard players get #CurrentTime Temporary

# リセット
    data remove storage indexstorage:core temp
    scoreboard players reset #CurrentTime Temporary
    scoreboard players reset #LatestGC Temporary
    scoreboard players reset #GCIndex Temporary
    scoreboard players reset #ResizeIndex Temporary
