#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/trigger.m
# @input args TargetSlot : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

execute if data storage asset:artifact {TargetSlot:"mainhand",Triggers:[{Trigger:"onClick",Slot:"auto"}]} run data modify storage asset:artifact CopiedModifiers[{Slot:"auto"}].Slot set value "mainhand"
execute if data storage asset:artifact {TargetSlot:"mainhand",Triggers:[{Trigger:"onClick",Slot:"auto"}]} run data modify storage asset:artifact Triggers[{Trigger:"onClick",Slot:"auto"}].Slot set value "mainhand"
execute if data storage asset:artifact {TargetSlot:"mainhand",Triggers:[{Trigger:"itemUse",Slot:"auto"}]} run data modify storage asset:artifact CopiedModifiers[{Slot:"auto"}].Slot set value "mainhand"
execute if data storage asset:artifact {TargetSlot:"mainhand",Triggers:[{Trigger:"itemUse",Slot:"auto"}]} run data modify storage asset:artifact Triggers[{Trigger:"itemUse",Slot:"auto"}].Slot set value "mainhand"
execute if data storage asset:artifact {TargetSlot:"offhand",Triggers:[{Trigger:"itemUse",Slot:"auto"}]} run data modify storage asset:artifact CopiedModifiers[{Slot:"auto"}].Slot set value "offhand"
execute if data storage asset:artifact {TargetSlot:"offhand",Triggers:[{Trigger:"itemUse",Slot:"auto"}]} run data modify storage asset:artifact Triggers[{Trigger:"itemUse",Slot:"auto"}].Slot set value "offhand"
$execute unless data storage asset:artifact Triggers[{Slot:"$(TargetSlot)"}] run scoreboard players set $CanUsed Temporary 0
