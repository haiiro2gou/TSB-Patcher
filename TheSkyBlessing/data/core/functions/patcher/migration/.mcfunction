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
execute if data storage global Patcher{Version:"v1.1.4"} run function core:patcher/migration/v1.1.5/
execute if data storage global Patcher{Version:"v1.1.5"} run function core:patcher/migration/v1.1.6/
execute if data storage global Patcher{Version:"v1.1.6"} run function core:patcher/migration/v1.1.7/
execute if data storage global Patcher{Version:"v1.1.7"} run function core:patcher/migration/v1.1.8/
execute if data storage global Patcher{Version:"v1.1.8"} run function core:patcher/migration/v1.1.9/

execute if data storage global Patcher{Version:"v1.1.9"} run function core:patcher/migration/v1.2.0/
execute if data storage global Patcher{Version:"v1.2.0"} run function core:patcher/migration/v1.2.1/

execute if data storage global Patcher{Version:"v1.2.1"} run function core:patcher/migration/v1.3.0/
execute if data storage global Patcher{Version:"v1.3.0"} run function core:patcher/migration/v1.3.1/
execute if data storage global Patcher{Version:"v1.3.1"} run function core:patcher/migration/v1.3.2/
execute if data storage global Patcher{Version:"v1.3.2"} run function core:patcher/migration/v1.3.3/
