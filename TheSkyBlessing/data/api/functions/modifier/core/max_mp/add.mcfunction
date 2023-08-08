#> api:modifier/core/max_mp/add
#
#
#
# @within function api:modifier/max_mp/add

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax set value []
# 追加する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax append value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax[-1].UUID set from storage api: Argument.UUID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax[-1].Amount set from storage api: Argument.Amount
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax[-1].Operation set from storage api: Argument.Operation
# データの更新
    data modify storage api: Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Base.MPMax
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.MPMax
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MPMax set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: Modifier