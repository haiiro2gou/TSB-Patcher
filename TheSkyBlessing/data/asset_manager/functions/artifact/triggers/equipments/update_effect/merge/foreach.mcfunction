#> asset_manager:artifact/triggers/equipments/update_effect/merge/foreach
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/merge/
#   asset_manager:artifact/triggers/equipments/update_effect/merge/foreach

#> Private
# @private
    #declare score_holder $DifferentID

# 一つ抽出
    data modify storage asset:artifact Equip.CopiedID set from storage asset:artifact Equip.CopiedIDList[-1]

# 一致しているかチェック
    execute store success score $DifferentID Temporary run data modify storage asset:artifact Equip.CopiedID set from storage asset:artifact Equip.TargetID
    execute if score $DifferentID Temporary matches 0 run scoreboard players set $UniqueID Temporary 0

# リセット&ループ
    scoreboard players reset $DifferentID Temporary
    data remove storage asset:artifact Equip.CopiedID
    data remove storage asset:artifact Equip.CopiedIDList[-1]
    execute if data storage asset:artifact Equip.CopiedIDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/merge/foreach
