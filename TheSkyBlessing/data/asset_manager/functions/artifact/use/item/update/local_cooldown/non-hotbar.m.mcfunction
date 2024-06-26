#> asset_manager:artifact/use/item/update/local_cooldown/non-hotbar.m
#
#
#
# @within function asset_manager:artifact/use/item/update/local_cooldown/

execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} store result storage asset:artifact SpecificTargetSlot byte 1 run data get storage asset:context SelectedItemSlot
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function asset_manager:artifact/use/item/update/local_cooldown/hotbar.m with storage asset:artifact
$execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} store result storage indexstorage: _.LocalCoolDown[0].Value int 1 store result storage indexstorage: _.LocalCoolDown[0].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
$execute if data storage asset:artifact {TargetDefaultSlot:"feet"} store result storage indexstorage: _.LocalCoolDown[1].Value int 1 store result storage indexstorage: _.LocalCoolDown[1].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
$execute if data storage asset:artifact {TargetDefaultSlot:"legs"} store result storage indexstorage: _.LocalCoolDown[2].Value int 1 store result storage indexstorage: _.LocalCoolDown[2].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
$execute if data storage asset:artifact {TargetDefaultSlot:"chest"} store result storage indexstorage: _.LocalCoolDown[3].Value int 1 store result storage indexstorage: _.LocalCoolDown[3].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
$execute if data storage asset:artifact {TargetDefaultSlot:"head"} store result storage indexstorage: _.LocalCoolDown[4].Value int 1 store result storage indexstorage: _.LocalCoolDown[4].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
