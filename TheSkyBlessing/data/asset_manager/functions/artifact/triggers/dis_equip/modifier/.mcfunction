#> asset_manager:artifact/triggers/dis_equip/modifier/
#
# 装備した神器のmodifierを適用する
#
# @within function
#   asset_manager:artifact/triggers/dis_equip/
#   asset_manager:artifact/triggers/dis_equip/modifier/

# indexをとる
    scoreboard players add $SlotIndex Temporary 1

# 装備のModifierを取得
    execute if data storage asset:artifact NewItems[-1].tag.TSB.Modifiers[0] run data modify storage asset:artifact Modifiers set from storage asset:artifact NewItems[-1].tag.TSB.Modifiers
    execute if data storage asset:artifact NewItems[-1].tag.TSB.Modifiers[0] run function asset_manager:artifact/triggers/dis_equip/modifier/foreach

# リセット
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact NewItems[-1]

# ループ
    execute unless data storage asset:artifact NewItems[0] run scoreboard players reset $SlotIndex Temporary
    execute if data storage asset:artifact NewItems[0] run function asset_manager:artifact/triggers/dis_equip/modifier/
