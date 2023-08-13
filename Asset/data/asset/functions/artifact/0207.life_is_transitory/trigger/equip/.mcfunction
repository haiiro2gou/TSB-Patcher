#> asset:artifact/0207.life_is_transitory/trigger/equip/
#
# 装備を装備した時に装備した部位にそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{offhand:207} run function asset:artifact/0207.life_is_transitory/trigger/equip/main