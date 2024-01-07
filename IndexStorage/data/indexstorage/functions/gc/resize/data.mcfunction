#> indexstorage:gc/resize/loop
# @within function
#   indexstorage:tick
#   indexstorage:gc/resize/data

# 末尾を削除
    data remove storage indexstorage: data[-1]
# ループ
    scoreboard players remove #ResizeIndex Temporary 1
    execute if score #ResizeIndex Temporary > #StorageIDIndex Global run function indexstorage:gc/resize/data
