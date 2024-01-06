#> core:patcher/migration/
#
#
#
# @within function core:patcher/load

execute if data storage global Patcher{Version:"v0.0.2"} run function core:patcher/migration/v0.2.0/
execute if data storage global Patcher{Version:"v0.0.3"} run function core:patcher/migration/v0.2.1/
execute if data storage global Patcher{Version:"v0.0.4"} run function core:patcher/migration/v0.3.0/

execute if data storage global Patcher{Version:"v0.0.0"} run function core:patcher/migration/v0.0.1/

execute if data storage global Patcher{Version:"v0.0.1"} run function core:patcher/migration/v0.2.0/
execute if data storage global Patcher{Version:"v0.2.0"} run function core:patcher/migration/v0.2.1/

execute if data storage global Patcher{Version:"v0.2.1"} run function core:patcher/migration/v0.3.0/
execute if data storage global Patcher{Version:"v0.3.0"} run function core:patcher/migration/v0.3.1/

execute if data storage global Patcher{Version:"v0.3.1"} run function core:patcher/migration/v0.4.0/
execute if data storage global Patcher{Version:"v0.4.0"} run function core:patcher/migration/v0.4.1/
execute if data storage global Patcher{Version:"v0.4.1"} run function core:patcher/migration/v0.4.2/
execute if data storage global Patcher{Version:"v0.4.2"} run function core:patcher/migration/v0.4.3/
execute if data storage global Patcher{Version:"v0.4.3"} run function core:patcher/migration/v0.4.4/
