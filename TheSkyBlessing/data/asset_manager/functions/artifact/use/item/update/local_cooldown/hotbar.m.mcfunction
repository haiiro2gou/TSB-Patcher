#> asset_manager:artifact/use/item/update/local_cooldown/hotbar.m
#
#
#
# @within function
#   asset_manager:artifact/use/item/update/local_cooldown/
#   asset_manager:artifact/use/item/update/local_cooldown/non-hotbar.m

# 設定
    $execute if data storage asset:artifact {SpecificTargetSlot:0b} store result storage indexstorage: _.LocalCoolDown[05].Value int 1 store result storage indexstorage: _.LocalCoolDown[05].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:1b} store result storage indexstorage: _.LocalCoolDown[06].Value int 1 store result storage indexstorage: _.LocalCoolDown[06].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:2b} store result storage indexstorage: _.LocalCoolDown[07].Value int 1 store result storage indexstorage: _.LocalCoolDown[07].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:3b} store result storage indexstorage: _.LocalCoolDown[08].Value int 1 store result storage indexstorage: _.LocalCoolDown[08].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:4b} store result storage indexstorage: _.LocalCoolDown[09].Value int 1 store result storage indexstorage: _.LocalCoolDown[09].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:5b} store result storage indexstorage: _.LocalCoolDown[10].Value int 1 store result storage indexstorage: _.LocalCoolDown[10].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:6b} store result storage indexstorage: _.LocalCoolDown[11].Value int 1 store result storage indexstorage: _.LocalCoolDown[11].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:7b} store result storage indexstorage: _.LocalCoolDown[12].Value int 1 store result storage indexstorage: _.LocalCoolDown[12].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
    $execute if data storage asset:artifact {SpecificTargetSlot:8b} store result storage indexstorage: _.LocalCoolDown[13].Value int 1 store result storage indexstorage: _.LocalCoolDown[13].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LocalCooldown
# リセット
    data remove storage asset:artifact SpecificTargetSlot
