#> asset:artifact/0563.heartland/trigger/equip/main
#
# 装備を装備した時のメイン処理
#
# @within function asset:artifact/0563.heartland/trigger/equip/check_condition

data modify storage api: Argument set value {Amount:4.0d,Operation:"add",UUID:[I;1,1,563,5]}
function api:modifier/max_health/add