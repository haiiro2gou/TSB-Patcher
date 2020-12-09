#> asset_manager:sacred_treasure/core/data_put/to_user_storage
#
# ユーザーストレージに神器データを追加する
#
# @input
#   as player
#   storage asset:sacred_treasure Items.Temp.AutoSlot
# @within function asset_manager:sacred_treasure/triggers/use_item.pre

# UserStorage呼び出し
    function oh_its_dat:please
# データ突っ込む
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.AutoSlot set from storage asset:sacred_treasure Items.Temp.AutoSlot
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory set from entity @s Inventory
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem set from entity @s SelectedItem
# リセット
    data remove storage asset:sacred_treasure Items.Temp.AutoSlot