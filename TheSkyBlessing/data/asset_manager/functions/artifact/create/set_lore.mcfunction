#> asset_manager:artifact/create/set_lore
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    function asset_manager:artifact/create/lore_append
# 0~7 スキル設定
    data modify storage asset:temp Triggers set from storage asset:artifact Triggers
    function asset_manager:artifact/create/trigger_loop
    data remove storage asset:temp Triggers
# 8 使える神
    function asset_manager:artifact/create/set_god
# Lore一括追加
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []