#> asset:artifact/0562.heartland/trigger/equip/
#
# 装備を装備した時に装備した部位にそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{head:562} run function asset:artifact/0562.heartland/trigger/equip/check_condition