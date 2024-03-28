#> asset_manager:artifact/triggers/equipments/update_effect/foreach
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/foreach

# 要素を拾う
    data modify storage asset:artifact Equip.SetID set from storage asset:artifact Equip.Old.IDList[-1]

# セット効果を更新
    data modify storage api: Argument.ID set from storage asset:artifact Equip.SetID
    function asset_manager:artifact/triggers/equipments/update_effect/parts_count.m with storage asset:artifact Equip
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
    execute unless data storage api: Argument{Stack:0} run data modify storage asset:artifact Equip.New.IDList append from storage asset:artifact Equip.SetID
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id

# リセット&ループ
    data remove storage api: Argument.Stack
    data remove storage asset:artifact Equip.SetID
    data remove storage asset:artifact Equip.Old.IDList[-1]
    execute if data storage asset:artifact Equip.Old.IDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/foreach
