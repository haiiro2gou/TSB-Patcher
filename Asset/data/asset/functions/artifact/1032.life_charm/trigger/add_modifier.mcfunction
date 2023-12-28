#> asset:artifact/1032.life_charm/trigger/add_modifier
#
# 補正を追加する
#
# @within function
#   asset:artifact/1032.life_charm/trigger/3.main
#   asset:artifact/1032.life_charm/trigger/dis_equip/main

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,1032,7]
    function api:modifier/max_health/remove

# 2.5×N% 最大体力が上昇
    data modify storage api: Argument.UUID set value [I;1,1,1032,7]
    execute store result storage api: Argument.Amount double 0.025 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1032}}}]
    data modify storage api: Argument.Operation set value "multiply_base"
    execute unless data storage api: Argument{Amount: 0.0d} run function api:modifier/max_health/add

# リセット
    data remove storage api: Argument