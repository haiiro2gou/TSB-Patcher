#> asset:artifact/common/give
#
# 神器を入手します
#
# @input storage asset:artifact
#   ID : int
#   Item : ItemID
#   Name : TextComponent
#   Lore : TextComponent[]
#   RemainingCount? : int
#   RemainingCountMax? : int
#   Triggers : Component[]
#   ├ Slot : Slot
#   ├ Trigger : Trigger
#   ├ Condition? : TextComponent
#   ├ EnableDuplication? : boolean
#   ├ AttackInfo? : Component
#   ├ MPCost : int
#   ├ MPRequire? : int
#   ├ CostText? : TextComponent
#   ├ LocalCooldown? : int
#   ├ SpecialCooldown? : int
#   ├ DisableCooldownMessage? : boolean
#   └ DisableMPMessage? : boolean
#   DisableBreakSound? : boolean
#   CanUsedGod : God[]
#   EquipID? : int
#   Modifiers : Component[]
#   ├ Type : string
#   ├ Slot : Slot
#   ├ Amount : double
#   └ Operation : "add" | "multiply_base" | "multiply"
#   CustomNBT? : Component
# @output item 神器
# @within function asset:artifact/*/give/2.give

#> Inv
# @private
    #declare score_holder $InvSize

# Triggerの並列化
    execute unless data storage asset:artifact Triggers[0] run function asset:artifact/common/trigger/migrate
# AttributeModifierの内部化
    execute unless data storage asset:artifact Modifiers[0] if data storage asset:artifact CustomNBT.AttributeModifiers[0] run function asset:artifact/common/modifier/migrate

# storage検証
    execute unless data storage asset:artifact ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:artifact Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red"}]
    execute unless data storage asset:artifact Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage asset:artifact Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    # execute unless data storage asset:artifact RemainingCount run
    execute unless data storage asset:artifact RemainingCountMax if data storage asset:artifact RemainingCount run data modify storage asset:artifact RemainingCountMax set from storage asset:artifact RemainingCount
    # execute unless data storage asset:artifact Triggers[0] run
    execute if data storage asset:artifact Triggers[0] run data modify storage asset:temp Triggers set from storage asset:artifact Triggers
    execute if data storage asset:artifact Triggers[0] run function asset:artifact/common/trigger/check
    execute if data storage asset:artifact Triggers[0] run data remove storage asset:temp Triggers
    # execute unless data storage asset:artifact DisableBreakSound run
    execute unless data storage asset:artifact CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red"}]
    # execute unless data storage asset:artifact EquipID run
    # execute unless data storage asset:artifact Modifiers[0] run
    execute if data storage asset:artifact Modifiers[0] run data modify storage asset:temp Modifiers set from storage asset:artifact Modifiers
    execute if data storage asset:artifact Modifiers[0] run function asset:artifact/common/modifier/check
    execute if data storage asset:artifact Modifiers[0] run data remove storage asset:temp Modifiers
    # execute unless data storage asset:artifact CustomNBT run
# 各データ設定
    function asset_manager:artifact/create/set_data
# 神器排出
    execute unless data storage asset:context Type run data modify storage asset:context Type set value "give"
    # execute if data storage asset:context {Type:"box"} // 何もする必要がない
    execute if data storage asset:context {Type:"drop"} run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"drop",Important:true} as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"give"} run function api:inventory/get_size
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"replace"} run function asset:artifact/common/replace

# リセット
    scoreboard players reset $InvSize Lib
    data remove storage asset:context Type
    data remove storage asset:artifact ID
    data remove storage asset:artifact Item
    data remove storage asset:artifact Name
    data remove storage asset:artifact Lore
    data remove storage asset:artifact RemainingCount
    data remove storage asset:artifact RemainingCountMax
    data remove storage asset:artifact Triggers
    data remove storage asset:artifact DisableBreakSound
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact EquipID
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact CustomNBT
