#> entity:player/api/cache/selected_item_fetch
#
#
#
# @within function entity:player/api/cache/selected_item

item replace entity 0-0-0-0-1 weapon.mainhand from entity @s weapon.mainhand
data modify storage api: Temp set from entity 0-0-0-0-1 HandItems[0]
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.SelectedItem.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.SelectedItem.Data

item replace entity 0-0-0-0-1 weapon.mainhand with air
data remove storage api: Temp
data remove storage api: SelectedItem
