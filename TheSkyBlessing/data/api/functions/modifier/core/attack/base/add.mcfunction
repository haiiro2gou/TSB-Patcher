#> api:modifier/core/attack/base/add
#
#
#
# @within function api:modifier/attack/base/add

# UserStorage呼び出し
    function indexstorage:pull/
# 無ければ入れる
    execute unless data storage indexstorage: _.Modifiers.Modifier.Attack.Base[0] run data modify storage indexstorage: _.Modifiers.Modifier.Attack.Base set value []
# 同じUUIDのModifierを削除する
    data modify storage api: Modifiers set from storage indexstorage: _.Modifiers.Modifier.Attack.Base
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
    function api:modifier/core/common/remove_modifier
    data modify storage api: Modifiers set from storage api: NewModifiers
# 新しいModifierを追加する
    data modify storage api: Modifiers append value {}
    data modify storage api: Modifiers[-1].UUID set from storage api: Argument.UUID
    data modify storage api: Modifiers[-1].Amount set from storage api: Argument.Amount
    data modify storage api: Modifiers[-1].Operation set from storage api: Argument.Operation
    data modify storage indexstorage: _.Modifiers.Modifier.Attack.Base set from storage api: Modifiers
# データを更新
    data modify storage api: Base set from storage indexstorage: _.Modifiers.Base.Attack.Base
    function api:modifier/core/common/update_modifier/
    data modify storage indexstorage: _.Modifiers.Attack.Base set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: Modifier
    data remove storage api: NewModifiers
