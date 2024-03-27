#> asset_manager:artifact/triggers/equipments/set_effect/update
#
# セット効果を更新する
#
# @within function asset_manager:artifact/triggers/*equip/

# 存在する装備セット数を取得する
    data modify storage asset:artifact Equip.IDList append from storage asset:context New.Items[].tag.TSB.EquipID

# セット毎に更新処理を行う
    execute if data storage asset:artifact Equip.IDList[0] run function asset_manager:artifact/triggers/equipments/set_effect/foreach

# リセット
    data remove storage asset:artifact Equip
