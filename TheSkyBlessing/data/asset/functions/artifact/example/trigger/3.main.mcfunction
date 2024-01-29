#> asset:artifact/example/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/trigger/2.check_condition

#> health
# @private
    #declare score_holder $Health
    #declare score_holder $Count

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run particle dust 100000000 100000000 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run playsound entity.lightning_bolt.impact player @a
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:2147483647}}}]
# ダメージ
    scoreboard players operation $Health Temporary = @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] MobHealth
    scoreboard players operation $Count Temporary *= $5 Const
    scoreboard players operation $Count Temporary += $10 Const
    scoreboard players operation $Health Temporary *= $Count Temporary
    execute store result storage api: Argument.Damage float 0.0001 run scoreboard players get $Health Temporary
# ダメージ/その他の設定
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run function api:damage/
    function api:damage/reset
