#> asset_manager:artifact/triggers/equipments/set_effect/foreach
# @within function
#   asset_manager:artifact/triggers/equipments/set_effect/update
#   asset_manager:artifact/triggers/equipments/set_effect/foreach

# 要素を拾う
    data modify storage asset:artifact Equip.SetID set from storage asset:artifact Equip.IDList[-1]

# セット効果を更新
    data modify storage api: Argument.ID set from storage asset:artifact Equip.SetID
    function asset_manager:artifact/triggers/equipments/set_effect/parts_count.m with storage asset:artifact Equip
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute if data storage api: Argument{Stack:0} run data remove storage api: Argument.Stack
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give

# リセット&ループ
    data remove storage asset:artifact Equip.IDList[-1]
    execute if data storage asset:artifact Equip.IDList[0] run function asset_manager:artifact/triggers/equipments/set_effect/foreach
