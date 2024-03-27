#> asset_manager:artifact/triggers/equipments/set_effect/parts_count.m
# @input args SetID : int
# @within function asset_manager:artifact/triggers/equipments/set_effect/foreach

$execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items[{tag:{TSB:{EquipID:$(SetID)}}}]
