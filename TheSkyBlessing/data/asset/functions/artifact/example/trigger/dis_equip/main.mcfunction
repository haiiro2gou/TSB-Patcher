#> asset:artifact/example/trigger/dis_equip/main
# @within function asset:artifact/example/trigger/dis_equip/

# 演出
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,65535,7]
    function api:modifier/attack/base/remove
    data modify storage api: Argument.UUID set value [I;1,1,65535,7]
    function api:modifier/defense/base/remove
    data modify storage api: Argument.UUID set value [I;1,1,65535,7]
    function api:modifier/max_health/remove
    data modify storage api: Argument.UUID set value [I;1,1,65535,7]
    function api:modifier/max_mp/remove

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:artifact/example/trigger/add_modifier