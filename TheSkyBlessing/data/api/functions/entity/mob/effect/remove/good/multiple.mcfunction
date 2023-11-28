#> api:entity/mob/effect/remove/multiple
#
# entityに付与されている良い効果のエフェクトのうち、ClearLv を満たすものを全て削除します
#
# @input storage api:
#   Argument.ClearLv : int
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
# 呼び出し

# リセット
    data remove storage api: Argument.ClearLv
