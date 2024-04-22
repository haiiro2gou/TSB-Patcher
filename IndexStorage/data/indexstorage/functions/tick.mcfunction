#> indexstorage:tick
#
# #tick処理
#
# @within tag/function minecraft:tick

#> Val
# @private
    #declare score_holder $CurrentTime
    #declare score_holder $LatestGC

# 現在時刻を取得
    execute store result storage indexstorage:core Time int 1 run time query gametime
# 前回GCからの経過時間を取得
    execute store result score $CurrentTime IndexStorage run data get storage indexstorage:core Time
    execute store result score $LatestGC IndexStorage run data get storage indexstorage:core LatestGC 1
    scoreboard players operation $LatestGC IndexStorage -= $CurrentTime IndexStorage
    scoreboard players operation $LatestGC IndexStorage *= $-1 Const
# (#GCDuration)tick経過していたらgcループを発火
    # 存在しないデータを削除
        execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run scoreboard players set $GCIndex IndexStorage -1
        execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run function indexstorage:gc/main/loop
    # 配列のリサイズ
        # 現存するエンティティの中のIDの最大値を取得
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run scoreboard players operation $ResizeIndex IndexStorage = $StorageIDIndex IndexStorage
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run scoreboard players set $StorageIDIndex IndexStorage -1
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run scoreboard players operation $StorageIDIndex IndexStorage > * IndexStorageID
        # データの整理
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage if score $ResizeIndex IndexStorage > $StorageIDIndex IndexStorage run function indexstorage:gc/resize/data
        # 削除済みIDの整理
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run data modify storage indexstorage:core temp set from storage indexstorage:core UnusedID
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage run data modify storage indexstorage:core UnusedID set value []
            execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage if data storage indexstorage:core temp[-1] run function indexstorage:gc/resize/id
    # 実行時刻を記録
        execute if score $LatestGC IndexStorage >= $GCInterval IndexStorage store result storage indexstorage:core LatestGC int 1 run scoreboard players get $CurrentTime IndexStorage
# リセット
    data remove storage indexstorage:core temp
    scoreboard players reset $CurrentTime IndexStorage
    scoreboard players reset $LatestGC IndexStorage
    scoreboard players reset $GCIndex IndexStorage
    scoreboard players reset $ResizeIndex IndexStorage
