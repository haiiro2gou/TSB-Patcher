#> core:patcher/migration/
#
#
#
# @within function core:patcher/load

execute if data storage global Patcher{Version:"v1.0.0"} run function core:patcher/migration/v1.0.1/

execute if data storage global Patcher{Version:"v1.0.1"} run function core:patcher/migration/v1.1.0/
execute if data storage global Patcher{Version:"v1.1.0"} run function core:patcher/migration/v1.1.1/
execute if data storage global Patcher{Version:"v1.1.1"} run function core:patcher/migration/v1.1.2/
execute if data storage global Patcher{Version:"v1.1.2"} run function core:patcher/migration/v1.1.3/
execute if data storage global Patcher{Version:"v1.1.3"} run function core:patcher/migration/v1.1.4/
