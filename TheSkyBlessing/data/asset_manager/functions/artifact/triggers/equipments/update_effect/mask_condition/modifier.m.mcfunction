#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier.m
# @input args TargetSlot : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

$data modify storage asset:artifact Modifiers append from storage asset:artifact CopiedModifiers[{Slot:"$(TargetSlot)"}]
data modify storage asset:artifact Modifiers[].ID set from storage asset:artifact CopiedItemData[-1].ID
