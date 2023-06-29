#> core:patcher/load
# @within function core:load

# ⚠️ リリース時のみtrueにすること。 これをtrueにした場合、ワールドに不可逆的な登録処理が発生します。 ⚠️
    data modify storage global Patcher.IsProduction set value false

# 初回限定ロード
    execute if data storage global {Patcher:{IsProduction:1b}} unless data storage global Patcher.Version run function core:patcher/load_once_pre
    execute if data storage global {Patcher:{IsProduction:0b}} run function core:patcher/load_once_pre

# マイグレーション
    function core:patcher/migration/