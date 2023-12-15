#> asset:artifact/0563.heartland/trigger/equip/
#
# 装備を装備した時に装備した部位にそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{chest:563} run function asset:artifact/0563.heartland/trigger/equip/check_condition