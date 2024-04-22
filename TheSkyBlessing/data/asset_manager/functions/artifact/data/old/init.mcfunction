#> asset_manager:artifact/data/old/init
#
# EntityStorageに退避された1tick前のデータをOldに突っ込む
#
# @within function asset_manager:artifact/triggers/

# 初期化
    data remove storage asset:context Old
# EntityStorage呼び出し
    function indexstorage:pull/
# 突っ込む
    data modify storage asset:context Old.Inventory set from storage indexstorage: _.ContextStash.Inventory
    data modify storage asset:context Old.SelectedItemSlot set from storage indexstorage: _.ContextStash.SelectedItemSlot
    data modify storage asset:context Old.Items set from storage indexstorage: _.ContextStash.Items
    data modify storage asset:context Old.id set from storage indexstorage: _.ContextStash.id
# EntityStorageから削除
    data remove storage indexstorage: _.ContextStash
