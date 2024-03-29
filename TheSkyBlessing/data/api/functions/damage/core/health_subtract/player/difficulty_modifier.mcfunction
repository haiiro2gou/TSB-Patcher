#> api:damage/core/health_subtract/player/difficulty_modifier
# @within function api:damage/core/health_subtract/player/

#> Val
# @private
    #declare score_holder $Difficulty

# $Damage(e2) = $Damage(e2) * (1 + ($Difficulty - 2) / 5)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty 2
    scoreboard players add $Difficulty Temporary 6
    scoreboard players operation $Damage Temporary *= $Difficulty Temporary
    scoreboard players operation $Damage Temporary /= $10 Const
    execute if score $Damage Temporary matches 9999999.. run scoreboard players set $Damage Temporary 9999999

# リセット
    scoreboard players reset $Difficulty Temporary
