#> asset_manager:artifact/data/migrate
# @within function asset_manager:artifact/*/

data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers append value {}

data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].Slot set from storage asset:artifact TargetItems[0].tag.TSB.Slot
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].Trigger set from storage asset:artifact TargetItems[0].tag.TSB.Trigger
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].Condition set from storage asset:artifact TargetItems[0].tag.TSB.Condition
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].AttackInfo set from storage asset:artifact TargetItems[0].tag.TSB.AttackInfo
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].MPCost set from storage asset:artifact TargetItems[0].tag.TSB.MPCost
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].MPRequire set from storage asset:artifact TargetItems[0].tag.TSB.MPRequire
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].CostText set from storage asset:artifact TargetItems[0].tag.TSB.CostText
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].LocalCooldown set from storage asset:artifact TargetItems[0].tag.TSB.LocalCooldown
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].SpecialCooldown set from storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].DisableCooldownMessage set from storage asset:artifact TargetItems[0].tag.TSB.DisableCooldownMessage
data modify storage asset:artifact TargetItems[0].tag.TSB.Triggers[0].DisableMPMessage set from storage asset:artifact TargetItems[0].tag.TSB.DisableMPMessage

data remove storage asset:artifact TargetItems[0].tag.TSB.Slot
data remove storage asset:artifact TargetItems[0].tag.TSB.Trigger
data remove storage asset:artifact TargetItems[0].tag.TSB.Condition
data remove storage asset:artifact TargetItems[0].tag.TSB.AttackInfo
data remove storage asset:artifact TargetItems[0].tag.TSB.MPCost
data remove storage asset:artifact TargetItems[0].tag.TSB.MPRequire
data remove storage asset:artifact TargetItems[0].tag.TSB.CostText
data remove storage asset:artifact TargetItems[0].tag.TSB.LocalCooldown
data remove storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown
data remove storage asset:artifact TargetItems[0].tag.TSB.DisableCooldownMessage
data remove storage asset:artifact TargetItems[0].tag.TSB.DisableMPMessage

data modify storage api: Argument.ID set from storage asset:artifact TargetItems[0].tag.TSB.ID
execute unless data storage asset:artifact {TargetSlot:"auto"} run data modify storage api: Argument.Slot set from storage asset:artifact TargetSlot
execute if data storage asset:artifact {TargetSlot:"auto"} run data modify storage api: Argument.Slot set from storage asset:context Items.AutoSlot
function api:artifact/replace/from_id