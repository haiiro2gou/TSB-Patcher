#> asset:artifact/common/trigger/check
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/trigger/check

# validate
    execute unless data storage asset:temp Triggers[0].Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:temp Triggers[0].Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    # execute unless data storage asset:temp Triggers[0].Condition run
    # execute unless data storage asset:temp Triggers[0].AttackInfo run
    execute unless data storage asset:temp Triggers[0].MPCost run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"}]
    # execute unless data storage asset:temp Triggers[0].MPRequire run
    # execute unless data storage asset:temp Triggers[0].CostText run
    # execute unless data storage asset:temp Triggers[0].LocalCooldown run
    # execute unless data storage asset:temp Triggers[0].SpecialCooldown run
    # execute unless data storage asset:temp Triggers[0].DisableCooldownMessage run
    # execute unless data storage asset:temp Triggers[0].DiableMPMessage run

# loop
    data remove storage asset:temp Triggers[0]
    execute if data storage asset:temp Triggers[0] run function asset:artifact/common/trigger/check