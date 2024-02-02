#> api:modifier/core/attack/thunder/add
#
#
#
# @within function api:modifier/attack/thunder/add

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.Thunder[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.Thunder set value []
# 同じUUIDのModifierを削除する
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.Thunder
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
    function api:modifier/core/common/remove_modifier
# 追加する
    data modify storage api: NewModifiers append value {}
    data modify storage api: NewModifiers[-1].UUID set from storage api: Argument.UUID
    data modify storage api: NewModifiers[-1].Amount set from storage api: Argument.Amount
    data modify storage api: NewModifiers[-1].Operation set from storage api: Argument.Operation
# データの更新
    data modify storage api: Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Base.Attack.Thunder
    data modify storage api: Modifiers set from storage api: NewModifiers
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.Thunder set from storage api: Modifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Attack.Thunder set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: Modifier
    data remove storage api: NewModifiers
