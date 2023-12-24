#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown
# @within function
#   asset_manager:artifact/triggers/equipments/update_cooldown/foreach/
#   asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown

#> private
# @private
    #declare score_holder $LCD

# maximize
    execute store result score $LCD Temporary run data get storage asset:temp Triggers[-1].LocalCooldown 1
    scoreboard players operation $Max Temporary > $LCD Temporary

# loop
    scoreboard players reset $LCD Temporary
    data remove storage asset:temp Triggers[-1]
    execute unless data storage asset:temp Triggers[0] run data remove storage asset:temp Triggers
    execute if data storage asset:temp Triggers[0] run function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown