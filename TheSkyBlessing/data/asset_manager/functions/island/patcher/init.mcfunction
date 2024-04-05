#> asset_manager:island/patcher/init
# @within function asset_manager:island/tick/

#> tag
# @within function
#   asset_manager:island/tick/
#   asset_manager:island/patcher/init
    #declare tag Patcher.CursedArtifactInit

# 浄化済みなら1加算
    execute if entity @s[tag=DispelledCursedArtifact] run scoreboard players add $Island Global 1
# タグ付与
    tag @s add Patcher.CursedArtifactInit
