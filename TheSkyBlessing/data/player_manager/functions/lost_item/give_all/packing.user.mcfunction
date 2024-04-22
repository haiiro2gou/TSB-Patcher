#> player_manager:lost_item/give_all/packing.user
#
# プレイヤーのロストしたアイテムをすべて梱包しChests配列に追加する処理
#
# @within function
#   player_manager:lost_item/give_all/
#   player_manager:lost_item/give_all/packing.user

# IDSetの取り出し
    execute store result score $ IndexStorageID run data get storage player_manager:lost_item IDSet[-1]
    data remove storage player_manager:lost_item IDSet[-1]
# セッション開ける
    function lib:array/session/open
# UserStorage呼び出し
    function indexstorage:pull/from_id
# Arrayに移す
    data modify storage lib: Array set from storage indexstorage: _.LostItems
# Chests構造へ梱包して追加
    execute if data storage lib: Array[0] run function player_manager:lost_item/give_all/packing.chest
# リセット
    function lib:array/session/close
# 明示的にstorageを綺麗にしておく
    data remove storage indexstorage: _.LostItems
# ループ処理
    execute if data storage player_manager:lost_item IDSet[-1] run function player_manager:lost_item/give_all/packing.user
