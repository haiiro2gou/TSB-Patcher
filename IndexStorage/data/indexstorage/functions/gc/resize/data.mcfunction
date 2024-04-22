#> indexstorage:gc/resize/loop
# @within function
#   indexstorage:tick
#   indexstorage:gc/resize/data

# 末尾を削除
    data remove storage indexstorage: data[-1]
# ループ
    scoreboard players remove $ResizeIndex IndexStorage 1
    execute if score $ResizeIndex IndexStorage > $StorageIDIndex IndexStorage run function indexstorage:gc/resize/data
