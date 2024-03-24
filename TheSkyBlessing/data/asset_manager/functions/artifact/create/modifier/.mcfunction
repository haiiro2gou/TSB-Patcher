#> asset_manager:artifact/create/modifier/
#
# 装備時効果の内容をLoreに追加
#
# @within function
#   asset_manager:artifact/create/set_lore
#   asset_manager:artifact/create/modifier/

# 移し替え
    data modify storage asset:temp Modifier set from storage asset:temp Modifiers[-1]

# 空行を用意
    data modify storage asset:artifact Item.tag.display.Lore append value '""'
# Modifier

# Lore一括追加
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []

# 残っていればループ
    data remove storage asset:temp Modifier
    data remove storage asset:temp Modifiers[-1]
    execute if data storage asset:temp Modifiers[0] run function asset_manager:artifact/create/modifier/
