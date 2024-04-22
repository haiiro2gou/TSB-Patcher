#> player_manager:lost_item/take
#
# プレイヤーのアイテムを保管するよ
#
# @within core:handler/death

# Inventory -> Temp
    data modify storage player_manager:lost_item Temp set from storage api: Inventory
# Slotを削除
    data remove storage player_manager:lost_item Temp[].Slot
# 消滅の呪い付きアイテムを削除
    data remove storage player_manager:lost_item Temp[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
# UserStorage呼び出し
    function indexstorage:pull/
# IDをIDSetに追加
    execute unless data storage indexstorage: _.LostItems[-1] run data modify storage player_manager:lost_item IDSet append value -2147483648
    execute unless data storage indexstorage: _.LostItems[-1] store result storage player_manager:lost_item IDSet[-1] int 1 run scoreboard players get @s IndexStorageID
# Temp -> UserStorage
    data modify storage indexstorage: _.LostItems append from storage player_manager:lost_item Temp[]
    data remove storage player_manager:lost_item Temp
# 名前の取得
    execute unless data storage indexstorage: _.Name run function lib:get_name/
    execute unless data storage indexstorage: _.Name run data modify storage indexstorage: _.Name set from storage lib: Return.Name
# インベントリclear
    clear @s
