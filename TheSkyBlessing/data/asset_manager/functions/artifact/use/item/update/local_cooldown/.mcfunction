#> asset_manager:artifact/use/item/update/local_cooldown/
#
#
#
# @within function asset_manager:artifact/use/item/update/

function indexstorage:pull/
execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run data modify storage asset:artifact SpecificTargetSlot set from storage asset:artifact TargetItems[-1].Slot
execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/use/item/update/local_cooldown/hotbar.m with storage asset:artifact
execute unless data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/use/item/update/local_cooldown/non-hotbar.m with storage asset:artifact
