#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/slot
# @input args TargetSlot : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

$execute unless data storage asset:artifact Triggers[{Slot:"$(TargetSlot)",Trigger:"equipping"}] run scoreboard players set $CanUsed Temporary 0
