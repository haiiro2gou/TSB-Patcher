#> entity:player/api/cache/portal_cooldown
#
# 対象のPortalCooldownをstorageに軽量に取得します。
#
# @input as player
# @output storage api: PortalCooldown
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.PortalCooldown.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.PortalCooldown.Data set from entity @s PortalCooldown
# outputのstorageに移す
    data modify storage api: PortalCooldown set from storage indexstorage: _.DataCache.PortalCooldown.Data
