#> asset_manager:artifact/use/item/update/version
# @within function asset_manager:artifact/use/item/update/

# shulker_boxにデータを放り込む
    data modify storage api: Argument.ID set from storage asset:artifact TargetItems[-1].tag.TSB.ID
    function api:artifact/box/from_id
# RemainingCountを上書き
    execute if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run data modify block 10000 0 10000 Items[0].tag.TSB.RemainingCount set from storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount
# TargetItemsに戻す
    data modify storage asset:artifact TargetItems[-1] set from block 10000 0 10000 Items[0]
# リセット
    data remove block 10000 0 10000 Items
