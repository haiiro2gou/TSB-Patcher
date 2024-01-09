#> core:tick/check_item_meta/inventory
#
# インベントリ内のアイテムのItemMetaDataをチェックします
#
# @within function core:tick/player/post

#> Temp
# @private
    #declare storage core:temp

# 負荷軽減のためstorageに代入する
    function api:data_get/inventory
    data modify storage core:temp MetaData set from storage api: Inventory[].tag.TSB.ItemMetaData
# 各MetaData処理
    execute if data storage core:temp {MetaData:["BanPossession"]} run clear @a #lib:all{TSB:{ItemMetaData:["BanPossession"]}}
    execute if data storage core:temp {MetaData:["ArtifactBoughtFromTrader"]} run function asset_manager:trader/resolve_artifact/
# (暫定)旧時代のアイテムを置き換える
    data remove block 10000 0 10000 Items
    execute store result storage core:temp OldItemCount int 1 run clear @s stick{display:{Name:'{"italic":false,"color":"aqua","text":"シャード"}'},TSB:{Shard:1b,ShardRarity:1b}} 64
    loot insert 10000 0 10000 loot common:sacred_shard/lv-1
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    execute store result storage core:temp OldItemCount int 1 run clear @s stick{display:{Name:'{"italic":false,"color":"aqua","text":"ハイシャード"}'},TSB:{Shard:1b,ShardRarity:2b}} 64
    loot insert 10000 0 10000 loot common:sacred_shard/lv-2
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    execute store result storage core:temp OldItemCount int 1 run clear @s stick{display:{Name:'{"italic":false,"color":"aqua","text":"アウレシャード"}'},TSB:{Shard:1b,ShardRarity:3b}} 64
    loot insert 10000 0 10000 loot common:sacred_shard/lv-3
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    execute store result storage core:temp OldItemCount int 1 run clear @s stick{display:{Name:'{"italic":false,"color":"aqua","text":"ミスティカシャード"}'},TSB:{Shard:1b,ShardRarity:4b}} 64
    loot insert 10000 0 10000 loot common:sacred_shard/lv-4
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    execute store result storage core:temp OldItemCount int 1 run clear @s nether_star{display:{Name:'{"italic":false,"color":"yellow","text":"小さな星のかけら"}'},Currency:1b} 64
    loot insert 10000 0 10000 loot common:currency/
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    execute store result storage core:temp OldItemCount int 1 run clear @s nether_star{display:{Name:'{"italic":false,"color":"yellow","text":"大きな星のかけら"}'},Currency:2b} 64
    loot insert 10000 0 10000 loot common:currency/high
    data modify block 10000 0 10000 Items[-1].Count set from storage core:temp OldItemCount
    loot give @s mine 10000 0 10000 debug_stick
# リセット
    data remove storage core:temp MetaData
    data remove storage core:temp OldItemCount
