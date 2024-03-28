#> asset_manager:artifact/triggers/equipments/update_effect/
#
# セット効果を更新する
#
# @within function asset_manager:artifact/triggers/*equip/

# 今の装備を取得する
    data modify storage asset:artifact Equip.Items set value []
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.mainhand
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.offhand
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.feet
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.legs
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.chest
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.head
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[0]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[1]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[2]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[3]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[4]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[5]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[6]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[7]
    data modify storage asset:artifact Equip.Items append from storage asset:context Items.hotbar[8]
# 装備セットIDを取得
    data modify storage asset:artifact Equip.IDList append from storage asset:artifact Equip.Items[].tag.TSB.EquipID

# 自分の抱える装備セットデータを取得
    function oh_my_dat:please
    data modify storage asset:artifact Equip.Old.IDList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipIDList
# 既存のセットと合体
    execute if data storage asset:artifact Equip.IDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/merge/

# それぞれ部位数チェック
    data modify storage asset:artifact Equip.New.IDList set value []
    function asset_manager:artifact/triggers/equipments/update_effect/foreach

# チェック後のセットIDのリストを戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipIDList set from storage asset:artifact Equip.New.IDList

# リセット
    data remove storage asset:artifact Equip
