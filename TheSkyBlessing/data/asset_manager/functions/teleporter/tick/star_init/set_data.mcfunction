#> asset_manager:teleporter/tick/star_init/set_data
#
#
#
# @within function asset_manager:teleporter/tick/star_init/summon

# ユーザーIDをコピー
    scoreboard players operation @s TPStarFromUserID = @p[tag=this] UserID
# ユーザーデータ取得
    function indexstorage:pull/
# 座標データ
    data modify storage indexstorage: _.TPStarData.TargetPos set from storage asset:teleporter TargetTeleporter.Pos
# 色データ
    execute if data storage asset:teleporter TargetTeleporter.Data{Color:"white"} run tag @s add TPStar.White
    execute if data storage asset:teleporter TargetTeleporter.Data{Color:"aqua"} run tag @s add TPStar.Aqua
# 初期化タグ削除
    tag @s remove TPStarInit
