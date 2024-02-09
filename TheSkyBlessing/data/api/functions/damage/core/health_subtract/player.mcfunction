#> api:damage/core/health_subtract/player
#
#
#
# @within function api:damage/core/health_subtract/

# 引数として代入
    execute store result storage api: Argument.Fluctuation double -0.01 run scoreboard players get $Damage Temporary
    execute store result storage api: Argument.Attacker int 1 run scoreboard players get $LatestModifiedEntity MobUUID
# 体力の減少を反映させる
    function lib:score_to_health_wrapper/fluctuation
# onAttackのトリガー
    function api:damage/core/trigger_on_damage/
