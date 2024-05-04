#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player/

# 共通Join処理
    function core:handler/join
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Rejoin
# indexstorageの更新
    function indexstorage:pull/
    function lib:get_name/
    data modify storage indexstorage: _.UUIDString set from storage lib: Return.Name
# Reset
    scoreboard players reset @s RejoinEvent
