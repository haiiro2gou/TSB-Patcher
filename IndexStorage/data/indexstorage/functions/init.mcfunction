#> indexstorage:init
#
# IndexStorageの初期化
#
# @within function indexstorage:load

#> ストレージの初期化
# @public
    #declare storage indexstorage:
    #declare tag HasStorage
    scoreboard objectives add IndexStorageID dummy {"text":"IndexStorage: Storage ID"}
    scoreboard objectives add IndexStorage dummy {"text":"IndexStorage: Score for Calcuration"}
    data modify storage indexstorage: data set value []
    data modify storage indexstorage:core UnusedID set value [I;]
    scoreboard players set #StorageIDIndex IndexStorage -1
    scoreboard players set #GCInterval IndexStorage 600
