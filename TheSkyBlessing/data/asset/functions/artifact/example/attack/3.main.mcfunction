#> asset:artifact/example/attack/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/attack/2.check_condition

#> health
# @private
    #declare score_holder $MaxHealth

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run particle dust -1 0 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..70,limit=1] run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 0.6 1.4

# ダメージ処理
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..60] run function asset:artifact/example/attack/4.damage
