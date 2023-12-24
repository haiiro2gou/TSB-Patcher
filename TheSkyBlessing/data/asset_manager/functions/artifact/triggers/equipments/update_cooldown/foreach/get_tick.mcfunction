#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_tick
# @within function
#   asset_manager:artifact/triggers/equipments/update_cooldown/foreach/

$execute store result score $LatestUsedTick Temporary run data get storage asset:artifact ItemData[-1].Triggers[{LocalCooldown:$(MaxLCD)}].LatestUseTick
data remove storage asset:temp MaxLCD