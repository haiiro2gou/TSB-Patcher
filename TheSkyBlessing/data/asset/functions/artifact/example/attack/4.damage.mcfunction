#> asset:artifact/example/attack/4.damage
#
# ダメージ処理
#
# @within function asset:artifact/example/attack/3.main

# ダメージ
    execute store result storage api: Argument.Damage float 1.0 run function api:mob/get_max_health
# ダメージ/その他の設定
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DamageType set value "Projectile"
    data modify storage api: Argument.FixedDamage set value 1b
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
