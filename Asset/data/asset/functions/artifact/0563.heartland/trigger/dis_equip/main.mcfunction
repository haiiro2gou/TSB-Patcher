#> asset:artifact/0563.heartland/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0563.heartland/trigger/dis_equip/

data modify storage api: Argument.UUID set value [I;1,1,563,5]
function api:modifier/max_health/remove