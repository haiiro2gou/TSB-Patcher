#> asset:artifact/0166.blessing_armor/trigger/equip/main
#
# 装備を装備した時のメイン処理
#
# @within function asset:artifact/0166.blessing_armor/trigger/equip/

data modify storage api: Argument set value {Amount:0.20d,Operation:"multiply_base",UUID:[I;1,1,166,5]}
function api:modifier/max_health/add