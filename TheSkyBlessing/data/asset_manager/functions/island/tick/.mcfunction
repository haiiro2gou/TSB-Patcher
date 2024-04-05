#> asset_manager:island/tick/
#
#
#
# @within function core:tick/

# マイグレーション
    execute if entity @s[tag=!Patcher.CursedArtifactInit] run function asset_manager:island/patcher/init
# 解呪処理
    execute if entity @s[tag=!CantDispel] if entity @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/
    execute if score @s DispelTime matches 1.. unless entity @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/cancelled
# ボス召喚処理
    execute as @e[type=marker,tag=BossSummonMarker,distance=..2.1] at @s run function asset_manager:island/dispel/boss/summoning_task
# ボス存在時の処理
    execute if score @s TargetBossID matches -2147483648..2147483647 run function asset_manager:island/dispel/boss/watcher
