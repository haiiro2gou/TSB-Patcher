#> asset_manager:artifact/create/trigger/
#
# Trigger関連の情報をLoreに追加する
#
# @within function
#   asset_manager:artifact/create/set_lore
#   asset_manager:artifact/create/trigger/

#> Private
# @private
    #declare score_holder $Secret

# move
    data modify storage asset:artifact Trigger set from storage asset:artifact CopiedTriggers[0]
    execute store result score $Secret Temporary run data get storage asset:artifact Trigger.Secret

# exec
    execute unless score $Secret Temporary matches 1 run function asset_manager:artifact/create/trigger/entry

# loop
    scoreboard players reset $Secret Temporary
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact CopiedTriggers[0]
    execute if data storage asset:artifact CopiedTriggers[0] run function asset_manager:artifact/create/trigger/
