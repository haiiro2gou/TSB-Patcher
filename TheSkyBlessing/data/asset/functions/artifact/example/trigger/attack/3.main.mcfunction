#> asset:artifact/example/trigger/attack/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/trigger/attack/2.check_condition

#> health
# @private
    #declare score_holder $Health

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run particle dust -1 0 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 0.6 1.4
# ダメージ
    scoreboard players operation $Health Temporary = @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] MobHealth
    scoreboard players operation $Health Temporary /= $10 Const
    execute store result storage api: Argument.Damage float 0.01 run scoreboard players get $Health Temporary
# ダメージ/その他の設定
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6,limit=1] run function api:damage/

# リセット
    scoreboard players reset $Health Temporary