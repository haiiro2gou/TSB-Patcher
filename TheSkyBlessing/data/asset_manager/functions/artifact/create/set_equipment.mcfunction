#> asset_manager:artifact/create/set_equipment
#
# 装備セットによる効果を設定する
#
# @within function asset_manager:artifact/create/set_lore

# IDから効果を抜き取る
    function asset_manager:common/context_id/stash
    data modify storage asset:context id set from storage asset:artifact EquipID
    function #asset:effect/register
    function asset_manager:common/context_id/pop

# 空行セパレータ
    data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 名前をLoreに組み込む
    data modify storage asset:artifact Item.tag.display.Lore append from storage asset:effect Name
# 説明文をLoreに組み込む
    execute if data storage asset:effect Description[0] run data modify storage asset:artifact Item.tag.display.Lore append from storage asset:effect Description[]

# リセット
    data remove storage asset:artifact Line
    data remove storage asset:effect ExtendsSafe
    data remove storage asset:effect ID
    data remove storage asset:effect Name
    data remove storage asset:effect Description
    data remove storage asset:effect Duration
    data remove storage asset:effect Stack
    data remove storage asset:effect DurationOperation
    data remove storage asset:effect StackOperation
    data remove storage asset:effect MaxDuration
    data remove storage asset:effect MaxStack
    data remove storage asset:effect IsBadEffect
    data remove storage asset:effect ProcessOnDied
    data remove storage asset:effect RequireClearLv
    data remove storage asset:effect Field
