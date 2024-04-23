#> api:data_get/team
#
# 対象のTeamをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Team
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: Team
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Team.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Team.Data set from entity @s Team
# outputのstorageに移す
    data modify storage api: Team set from storage indexstorage: _.DataCache.Team.Data
