#> asset_manager:artifact/create/set_lore
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    function asset_manager:artifact/create/lore_append
# 装備時効果
    data modify storage asset:temp Modifiers set from storage asset:artifact Modifiers
    execute if data storage asset:temp Modifiers[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
    execute if data storage asset:temp Modifiers[0] run function asset_manager:artifact/create/modifier/
    data remove storage asset:temp Modifiers
# スキル設定
    data modify storage asset:temp Triggers set from storage asset:artifact Triggers
    execute if data storage asset:temp Triggers[0] run function asset_manager:artifact/create/trigger/
    data remove storage asset:temp Triggers
# 使える神
    function asset_manager:artifact/create/set_god
