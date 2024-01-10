#> entity:player/tick/pre
#
# プレイヤー前処理
#
# @within function core:tick/

# タグ更新
    tag @s[tag=PlayerShouldInvulnerable] remove PlayerShouldInvulnerable
    tag @s[gamemode=!adventure,gamemode=!survival] add PlayerShouldInvulnerable

# 座標の差分を取得
    function entity:player/pos_diff/calc
# チャンク保護
    function world:chunk_io_protect/

# インベントリ取得
    function entity:player/api/cache/inventory

# フラグ別条件チェック
# 条件を満たしたものは対象Entityの処理キューに追加される
