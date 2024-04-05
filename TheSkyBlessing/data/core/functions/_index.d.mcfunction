#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

#> Global Vars - Islands
# @within function
#   core:patcher/load_once
#   asset_manager:island/dispel/successful
#   asset_manager:island/patcher/init
#   lib:message/common/*
    #declare score_holder $Island
    #declare score_holder $IslandTotal

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する
#> Global Vars - Private
# @within
#   function
#       core:load_once
#       api:global_vars/get_difficulty
#       player_manager:god/change_difficulty/**
#       world_manager:force_difficulty
#   predicate
#       api:global_vars/difficulty/**
    #declare score_holder $Difficulty

#> DeathTag
# @public
    #declare tag Death

#> RespawnTag
# @within function
#   core:handler/respawn*
#   asset_manager:effect/*
    #declare tag InRespawnEvent

#> DistributedIntervalGroup
# @within function **6_distributed_interval
    #declare score_holder $DistributeGroup
