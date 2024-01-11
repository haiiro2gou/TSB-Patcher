#> entity:mob/init/modify_health
#
#
#
# @within function entity:mob/init/

# 最大値を記録する
    execute store result score @s MobHealthMax run attribute @s generic.max_health get 1
# 付近雑魚のHPマルチ補正をかける
    execute if entity @s[tag=Enemy] run function entity:mob/init/multiply/normal
    execute if entity @s[tag=!Enemy] run scoreboard players operation @s MobHealthMax *= #100 Const
# 現在体力を設定する
    scoreboard players operation @s MobHealth = @s MobHealthMax
# 体力を引き上げて無敵にする
    attribute @s generic.max_health base set 1024
    effect give @s[type=!#entity:mob/undead] instant_health infinite 100 true
    effect give @s[type=#entity:mob/undead] instant_damage infinite 100 true
