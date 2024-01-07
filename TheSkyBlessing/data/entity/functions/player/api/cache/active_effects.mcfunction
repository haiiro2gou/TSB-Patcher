#> entity:player/api/cache/active_effects
#
# 対象のactive_effectsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: active_effects
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.active_effects.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run function entity:player/api/cache/active_effects_fetch
# outputのstorageに移す
    data modify storage api: active_effects set from storage indexstorage: _.DataCache.active_effects.Data