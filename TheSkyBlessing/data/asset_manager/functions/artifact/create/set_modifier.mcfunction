#> asset_manager:artifact/create/set_modifier
#
# 装備時効果の内容をLoreに追加
#
# @within function
#   asset_manager:artifact/create/set_lore
#   asset_manager:artifact/create/set_modifier

#> temp
# @private
    #declare score_holder $AmountFrac
    #declare score_holder $AmountInt

# 変数を用意
    data modify storage asset:temp Modifier set from storage asset:temp Modifiers[-1]
    data modify storage asset:temp Line set value ['{"text":"","color":"green","italic":false}','{"translate":"%s ","color":"white","with":[{"storage":"asset:temp","nbt":"Modifier.Type"}]}','"+"','{"translate":"%s","with":[{"storage":"asset:temp","nbt":"Amount.Int"}]}','""']

# カスタムModifier
    execute if data storage asset:temp Modifier{Type:"attackBase"} run data modify storage asset:temp Line[1] set value '{"text":"攻撃力 ","color":"white"}'
    execute if data storage asset:temp Modifier{Type:"attackFire"} run data modify storage asset:temp Line[1] set value '{"text":"火属性攻撃 ","color":"red"}'
    execute if data storage asset:temp Modifier{Type:"attackMagic"} run data modify storage asset:temp Line[1] set value '{"text":"魔法攻撃 ","color":"dark_purple"}'
    execute if data storage asset:temp Modifier{Type:"attackPhysical"} run data modify storage asset:temp Line[1] set value '{"text":"物理攻撃 ","color":"dark_green"}'
    execute if data storage asset:temp Modifier{Type:"attackThunder"} run data modify storage asset:temp Line[1] set value '{"text":"雷属性攻撃 ","color":"yellow"}'
    execute if data storage asset:temp Modifier{Type:"attackWater"} run data modify storage asset:temp Line[1] set value '{"text":"水属性攻撃 ","color":"aqua"}'
    execute if data storage asset:temp Modifier{Type:"defenseBase"} run data modify storage asset:temp Line[1] set value '{"text":"防御力 ","color":"white"}'
    execute if data storage asset:temp Modifier{Type:"defenseFire"} run data modify storage asset:temp Line[1] set value '{"text":"火属性防御 ","color":"red"}'
    execute if data storage asset:temp Modifier{Type:"defenseMagic"} run data modify storage asset:temp Line[1] set value '{"text":"魔法防御 ","color":"dark_purple"}'
    execute if data storage asset:temp Modifier{Type:"defensePhysical"} run data modify storage asset:temp Line[1] set value '{"text":"物理防御 ","color":"dark_green"}'
    execute if data storage asset:temp Modifier{Type:"defenseThunder"} run data modify storage asset:temp Line[1] set value '{"text":"雷属性防御 ","color":"yellow"}'
    execute if data storage asset:temp Modifier{Type:"defenseWater"} run data modify storage asset:temp Line[1] set value '{"text":"水属性防御 ","color":"aqua"}'
    execute if data storage asset:temp Modifier{Type:"heal"} run data modify storage asset:temp Line[1] set value '{"text":"回復量(与) ","color":"green"}'
    execute if data storage asset:temp Modifier{Type:"receiveHeal"} run data modify storage asset:temp Line[1] set value '{"text":"回復量(受) ","color":"green"}'
    execute if data storage asset:temp Modifier{Type:"maxHealth"} run data modify storage asset:temp Line[1] set value '{"text":"最大体力 ","color":"dark_red"}'
    execute if data storage asset:temp Modifier{Type:"maxMP"} run data modify storage asset:temp Line[1] set value '{"text":"最大MP ","color":"blue"}'
    execute if data storage asset:temp Modifier{Type:"mpRegen"} run data modify storage asset:temp Line[1] set value '{"text":"MP回復 ","color":"blue"}'
# 数値チェック
    execute store result score $AmountFrac Temporary run data get storage asset:temp Modifier.Amount 1000
    execute unless data storage asset:temp Modifier{Operation:"add"} run data modify storage asset:temp Line[4] set value '"%"'
    execute unless data storage asset:temp Modifier{Operation:"add"} run scoreboard players operation $AmountFrac Temporary *= $100 Const
    execute unless score $AmountFrac Temporary matches 0.. run data modify storage asset:temp Line[0] set value '{"text":"","color":"red","italic":false}'
    execute unless score $AmountFrac Temporary matches 0.. run data modify storage asset:temp Line[2] set value '"-"'
    execute unless score $AmountFrac Temporary matches 0.. run scoreboard players operation $AmountFrac Temporary *= $-1 Const
    scoreboard players operation $AmountInt Temporary = $AmountFrac Temporary
    scoreboard players operation $AmountInt Temporary /= $1000 Const
    scoreboard players operation $AmountFrac Temporary %= $1000 Const
    execute store result storage asset:temp Amount.Int int 1 run scoreboard players get $AmountInt Temporary
    execute store result storage asset:temp Amount.Frac int 1000 run scoreboard players get $AmountFrac Temporary
    execute if score $AmountFrac Temporary matches 1.. run data modify storage asset:temp Line[3] set value '{"translate":"%s.%s","with":[{"storage":"asset:temp","nbt":"Amount.Int"},{"storage":"asset:temp","nbt":"Amount.Frac"}]}'
# Lore追加
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/modifier
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]

# リセット
    scoreboard players reset $AmountFrac Temporary
    data modify block 10000 0 10000 Items set value []
    data remove storage asset:temp Line
    data remove storage asset:temp Amount
# 残っていればループ
    data remove storage asset:temp Modifier
    data remove storage asset:temp Modifiers[-1]
    execute if data storage asset:temp Modifiers[0] run function asset_manager:artifact/create/set_modifier
