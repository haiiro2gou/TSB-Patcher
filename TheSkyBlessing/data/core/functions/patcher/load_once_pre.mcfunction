#> core:patcher/load_once_pre
#
# #load時に一回のみ実行される前処理群
#
# @within function core:patcher/load

# TheSkyBlessing本体の後にロードするように
    execute if data storage global {GameVersion:"v0.1.6"} run function core:patcher/load_once
    execute if data storage global GameVersion unless data storage global {GameVersion:"v0.1.6"} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"TheSkyBlessing v0.1.6を使用してください。","color":"white"}]