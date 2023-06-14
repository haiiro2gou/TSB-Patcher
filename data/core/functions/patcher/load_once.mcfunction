#> core:patcher/load_once
#
# #load時に一回のみ実行される前処理群
#
# @within function core:patcher/load_once_pre

#> バージョン情報の設定
    data modify storage global Patcher.Version set value "v0.0.1"
    tellraw @a [{"text":"================================","color":"gold"}]
    tellraw @a [{"text":"TSB-Patcher ","color":"green"},{"nbt":"Patcher.Version","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @a [{"text":""}]
    tellraw @a [{"text":"Thanks for installation!"}]
    tellraw @a [{"text":"================================","color":"gold"}]
