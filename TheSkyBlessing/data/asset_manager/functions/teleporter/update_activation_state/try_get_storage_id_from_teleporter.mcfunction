#> asset_manager:teleporter/update_activation_state/try_get_storage_id_from_teleporter
#
# IDの一致するテレポーターのIndexStorageIDを検索し、存在するかと、存在する場合はそのIDを返す
#
# @input storage api: Argument.ID : int
# @output score
#   $ IndexStorageID
#   $TeleporterExists Temporary : int @ 0..1
# @within function asset_manager:teleporter/update_activation_state/

# セッション開く
    function lib:array/session/open
# CompareResult = TeleporterISMap.map(v => v.TeleporterID == Argument.ID)
    data modify storage lib: Array append from storage asset:teleporter TeleporterISMap[].TeleporterID
    data modify storage lib: CompareTarget set from storage api: Argument.ID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# IndexStorageID = TeleporterISMap.map(v => v.IndexStorageID).filter((v, i) => CompareResult[i]).head
    data modify storage lib: Array append from storage asset:teleporter TeleporterISMap[].IndexStorageID
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    execute store result score $ IndexStorageID run data get storage lib: Array[0]
# EntityStorage取得
    execute store success score $TeleporterExists Temporary if data storage lib: Array[0]
# リセット
    function lib:array/session/close
