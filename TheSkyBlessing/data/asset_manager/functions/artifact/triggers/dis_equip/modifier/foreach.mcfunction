#> asset_manager:artifact/triggers/dis_equip/modifier/foreach
#
# Modifierの適用処理
#
# @within function
#   asset_manager:artifact/triggers/dis_equip/modifier/
#   asset_manager:artifact/triggers/dis_equip/modifier/foreach

#> Private
# @private
    #declare score_holder $WrongSlot

# 初期化
    scoreboard players set $CustomModifier Temporary 0
    data modify storage asset:artifact Modifier set from storage asset:artifact Modifiers[-1]
    data modify storage asset:artifact Modifier.UUID set value [I;1,1,0,0]
    data modify storage asset:artifact Modifier.UUID[2] set from storage asset:artifact NewItems[-1].tag.TSB.ID
    execute store result storage asset:artifact Modifier.UUID[3] int 1 run scoreboard players get $FixedSlotIndex Temporary
    execute store success score $WrongSlot Temporary run data modify storage asset:artifact Modifier.Slot set from storage asset:artifact TargetSlot

# apiに代入
    data modify storage api: Argument.UUID set from storage asset:artifact Modifier.UUID

# カスタムModifierなら各自処理
    execute if score $WrongSlot Temporary matches 0 run function asset_manager:artifact/triggers/dis_equip/modifier/custom_modifier

# バニラのModifierを処理
    execute if score $WrongSlot Temporary matches 0 if score $CustomModifier Temporary matches 0 run data modify storage asset:artifact Modifier.UUID3 set from storage asset:artifact Modifier.UUID[2]
    execute if score $WrongSlot Temporary matches 0 if score $CustomModifier Temporary matches 0 run data modify storage asset:artifact Modifier.UUID4 set from storage asset:artifact Modifier.UUID[3]
    execute if score $WrongSlot Temporary matches 0 if score $CustomModifier Temporary matches 0 run function asset_manager:artifact/triggers/dis_equip/modifier/reshape_uuid.m with storage asset:artifact Modifier
    execute if score $WrongSlot Temporary matches 0 if score $CustomModifier Temporary matches 0 run function asset_manager:artifact/triggers/dis_equip/modifier/generic_modifier.m with storage asset:artifact Modifier

# リセット
    scoreboard players reset $CustomModifier Temporary
    scoreboard players reset $WrongSlot Temporary
    data remove storage api: Argument.UUID
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact Modifiers[-1]

# ループ
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/dis_equip/modifier/foreach
