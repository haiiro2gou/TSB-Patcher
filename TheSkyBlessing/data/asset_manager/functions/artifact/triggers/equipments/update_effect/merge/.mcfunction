#> asset_manager:artifact/triggers/equipments/update_effect/merge/
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/merge/

# 一つ抽出
    data modify storage asset:artifact Equip.TargetID set from storage asset:artifact Equip.IDList[-1]

# それぞれ一致しているか確認する
    scoreboard players set $UniqueID Temporary 1
    data modify storage asset:artifact Equip.CopiedIDList set from storage asset:artifact Equip.Old.IDList
    execute if data storage asset:artifact Equip.CopiedIDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/merge/foreach
# 一致していないIDなら登録
    execute if score $UniqueID Temporary matches 1 run data modify storage asset:artifact Equip.Old.IDList append from storage asset:artifact Equip.TargetID

# リセット&ループ
    scoreboard players reset $UniqueID Temporary
    data remove storage asset:artifact Equip.TargetID
    data remove storage asset:artifact Equip.IDList[-1]
    execute if data storage asset:artifact Equip.IDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/merge/
