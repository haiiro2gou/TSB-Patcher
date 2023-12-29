#> core:patcher/migration/
#
#
#
# @within function core:patcher/load

execute if data storage global Patcher{Version:"v0.0.0"} run function core:patcher/migration/v0.0.1/
execute if data storage global Patcher{Version:"v0.0.1"} run function core:patcher/migration/v0.0.2/
execute if data storage global Patcher{Version:"v0.0.2"} run function core:patcher/migration/v0.0.3/
execute if data storage global Patcher{Version:"v0.0.3"} run function core:patcher/migration/v0.0.4/