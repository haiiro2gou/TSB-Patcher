#> indexstorage:provide/
# @api

# 初期化
    function lib:array/session/open
# 未使用idチェック
    execute unless data storage indexstorage:core UnusedID[-1] store result score @s IndexStorageID run scoreboard players add $StorageIDIndex IndexStorage 1
    execute unless data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage: data append value {}
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage lib: Array set from storage indexstorage:core UnusedID
    execute if data storage indexstorage:core UnusedID[-1] run function lib:array/sort_ascend
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage:core UnusedID set from storage lib: Array
    execute if data storage indexstorage:core UnusedID[-1] store result score @s IndexStorageID run data get storage indexstorage:core UnusedID[0]
    execute if data storage indexstorage:core UnusedID[-1] run data remove storage indexstorage:core UnusedID[0]
# ストレージ割り当て
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s IndexStorageID
    execute if entity @s[type=!player] run function indexstorage:hexadecimal/
    execute if entity @s[type= player] run function lib:get_name/
    execute if entity @s[type= player] run data modify storage indexstorage:core UUIDString set from storage lib: Return.Name
    function indexstorage:provide/.m with storage indexstorage:core m
    tag @s add HasStorage
# リセット
    function lib:array/session/close
    data remove storage indexstorage:core m
