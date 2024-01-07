#> core:load/
#
# #load時に実行される処理
#
# @within tag/function minecraft:load

# リリースチェック
    data modify storage global IsProduction set value false

# 初回限定ロード
    execute if data storage global {IsProduction:1b} unless data storage global GameVersion run function core:load/once
    execute if data storage global {IsProduction:0b} run function core:load/once

# マイグレーション
    function core:migration/

# データ登録処理

# 初期化処理
    execute if data storage global {IsProduction:0b}
