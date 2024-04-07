#> asset_manager:island/patcher/init
# @within function core:tick/

#> tag
# @within function
#   core:tick/
#   asset_manager:island/patcher/init
    #declare tag Patcher.CursedArtifactInit

# 浄化済みなら1加算
    execute if entity @s[tag=DispelledCursedArtifact] run scoreboard players add $Island Global 1
# タグ付与
    tag @s add Patcher.CursedArtifactInit
