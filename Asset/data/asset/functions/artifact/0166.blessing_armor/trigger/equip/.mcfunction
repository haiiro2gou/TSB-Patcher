#> asset:artifact/0166.blessing_armor/trigger/equip/
#
# 装備を装備した時に装備した部位にそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{chest:166} run function asset:artifact/0166.blessing_armor/trigger/equip/main