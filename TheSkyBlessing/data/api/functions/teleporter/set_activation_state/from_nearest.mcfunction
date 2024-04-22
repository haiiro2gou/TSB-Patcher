#> api:teleporter/set_activation_state/from_nearest
#
#
#
# @input storage api: Argument.ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
# @api

execute if entity @e[type=marker,tag=Teleporter,distance=..5,limit=1] as @e[type=marker,tag=Teleporter,distance=..5] run function indexstorage:pull/
execute if entity @e[type=marker,tag=Teleporter,distance=..5,limit=1] run data modify storage api: Argument.ID set from storage indexstorage: _.TeleporterData.ID
execute if entity @e[type=marker,tag=Teleporter,distance=..5,limit=1] if data storage api: Argument.ID run function api:teleporter/set_activation_state/from_id
