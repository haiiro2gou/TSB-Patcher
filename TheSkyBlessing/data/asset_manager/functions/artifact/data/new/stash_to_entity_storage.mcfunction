#> asset_manager:artifact/data/new/stash_to_entity_storage
#
# NewをEntityStorageに退避させる
#
# @within function asset_manager:artifact/triggers/

# EntityStorage呼び出し
    function indexstorage:pull/
# 突っ込む
    data modify storage indexstorage: _.ContextStash.Inventory set from storage asset:context New.Inventory
    data modify storage indexstorage: _.ContextStash.SelectedItemSlot set from storage asset:context New.SelectedItemSlot
    data modify storage indexstorage: _.ContextStash.Items set from storage asset:context New.Items
    data modify storage indexstorage: _.ContextStash.id set from storage asset:context New.id
