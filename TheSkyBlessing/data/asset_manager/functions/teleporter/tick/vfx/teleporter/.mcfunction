#> asset_manager:teleporter/tick/vfx/teleporter/
#
#
#
# @within function asset_manager:teleporter/tick/global

# rotate
    tp @s ~ ~ ~ ~2 ~
# get entity storage
    function indexstorage:pull/
# show particle
    execute if data storage indexstorage: _.TeleporterData{ActivationState:"Activate"} positioned ~ ~0.05 ~ run function asset_manager:teleporter/tick/vfx/teleporter/active/
    execute if data storage indexstorage: _.TeleporterData{ActivationState:"VisibleDeactivate"} positioned ~ ~0.05 ~ run function asset_manager:teleporter/tick/vfx/teleporter/deactive/
