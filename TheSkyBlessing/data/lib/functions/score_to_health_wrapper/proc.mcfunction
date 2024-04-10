#> lib:score_to_health_wrapper/proc
#
# そのtick内のHP処理をまとめて処理します。
#
# @within function core:tick/player/post

#> Private
# @private
    #declare score_holder $MaxHealth

# 値がなければ現在値を入れる
    execute unless score @s ScoreToHealth matches -2147483648..2147483647 run function api:data_get/health
    execute unless score @s ScoreToHealth matches -2147483648..2147483647 store result score @s ScoreToHealth run data get storage api: Health 100
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 100
# 回復/ダメージを適用
    scoreboard players operation @s ScoreToHealth += @s ScoreToHPFluc
    scoreboard players operation @s ScoreToHPFluc = @s ScoreToHealth
    scoreboard players operation @s ScoreToHealth > $0 Const
    scoreboard players operation @s ScoreToHealth < $MaxHealth Temporary
    execute if score @s ScoreToHealth matches 1.. unless score @s ScoreToHealth = @s ScoreToHPFluc run scoreboard players reset @s ScoreToHealth
# 1<=体力: ダメージ演出
    execute if score @s ScoreToHPFluc matches ..-1 if score @s ScoreToHealth matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
# 0>=体力: kill処理
    execute if score @s ScoreToHealth matches ..0 run function lib:score_to_health_wrapper/core/die
# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset @s ScoreToHPFluc
