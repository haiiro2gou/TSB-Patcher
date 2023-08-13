#> asset:artifact/0207.life_is_transitory/trigger/equip/main
#
# 装備を装備した時のメイン処理
#
# @within function asset:artifact/0207.life_is_transitory/trigger/equip/

data modify storage api: Argument set value {Amount:-0.99d,Operation:"multiply",UUID:[I;1,1,207,2]}
function api:modifier/max_health/add