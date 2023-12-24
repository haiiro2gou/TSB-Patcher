#> asset:artifact/example/trigger/add_modifier
# @within function asset:artifact/example/trigger/*/*main

#> modifier multiplier
# @private
    #declare score_holder $Count

# 補正を削除
    data modify storage api: Argument.ID set value [I;1,1,65535,7]
    function api:modifier/attack/base/remove
    data modify storage api: Argument.ID set value [I;1,1,65535,7]
    function api:modifier/defense/base/remove
    data modify storage api: Argument.ID set value [I;1,1,65535,7]
    function api:modifier/max_health/remove
    data modify storage api: Argument.ID set value [I;1,1,65535,7]
    function api:modifier/max_mp/remove

# 個数
    execute store result score $Count Temporary run data get storage asset:context New.Items.hotbar[{tag:{TSB:{ID:65535}}}]
# 補正を追加
    # 基礎攻撃力 N*5%
        data modify storage api: Argument.ID set value [I;1,1,65535,7]
        execute store result storage api: Argument.Amount double 0.05 run scoreboard players get $Count Temporary
        data modify storage api: Argument.Operation set value "multiply"
        execute unless data storage api: Argument{Amount:0.0d} run function api:modifier/attack/base/add
    # 基礎防御力 N*5%
        data modify storage api: Argument.ID set value [I;1,1,65535,7]
        execute store result storage api: Argument.Amount double 0.05 run scoreboard players get $Count Temporary
        data modify storage api: Argument.Operation set value "multiply"
        execute unless data storage api: Argument{Amount:0.0d} run function api:modifier/defense/base/add
    # 最大体力 N*2.5%
        data modify storage api: Argument.ID set value [I;1,1,65535,7]
        execute store result storage api: Argument.Amount double 0.025 run scoreboard players get $Count Temporary
        data modify storage api: Argument.Operation set value "multiply"
        execute unless data storage api: Argument{Amount:0.0d} run function api:modifier/max_health/add
    # 最大魔力 N*2.5%
        data modify storage api: Argument.ID set value [I;1,1,65535,7]
        execute store result storage api: Argument.Amount double 0.025 run scoreboard players get $Count Temporary
        data modify storage api: Argument.Operation set value "multiply"
        execute unless data storage api: Argument{Amount:0.0d} run function api:modifier/max_mp/add

# リセット
    scoreboard players reset $Count Temporary
    data remove storage api: Argument