#> asset:artifact/0561.solitariness/trigger/equip/main
#
# 装備を装備した時のメイン処理
#
# @within function asset:artifact/0561.solitariness/trigger/equip/

data modify storage api: Argument set value {Amount:4.0d,Operation:"add",UUID:[I;1,1,561,3]}
function api:modifier/max_health/add