#> core:patcher/migration/
#
#
#
# @within function core:patcher/load

execute if data storage global Patcher{Version:"v0.0.0"} run function core:patcher/migration/v0.0.1/