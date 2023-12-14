#> asset:artifact/0562.heartland/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0562.heartland/trigger/dis_equip/

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# 補正削除
    data modify storage api: Argument.UUID set value [I;1,1,562,6]
    function api:modifier/max_health/remove

# HP回復
    data modify storage lib: Argument.Heal set value 20f
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset