#> core:tick/player/pre
#
#
#
# @within function core:tick/

#> private
# @private
    #declare score_holder $Difficulty

function player_manager:manage_tag/

function player_manager:pos_fix_and_calc_diff

function world_manager:chunk_io_protect/

function player_manager:in_battle_tick_score

execute if score $Difficulty Global matches 9 run scoreboard players set $Set Lib 1
execute if score $Difficulty Global matches 9 run function lib:score_to_health_wrapper/set
execute if score $Difficulty Global matches 9 run attribute @s generic.max_health modifier add 3-0-1-0-900000000 "Spelunker Mode" -0.999 multiply
execute unless score $Difficulty Global matches 9 run attribute @s generic.max_health modifier remove 3-0-1-0-900000000
