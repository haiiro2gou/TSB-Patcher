#> asset:artifact/0166.blessing_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0166.blessing_armor/trigger/dis_equip/

data modify storage api: Argument.UUID set value [I;1,1,166,5]
function api:modifier/max_health/remove