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
execute if data storage global Patcher{Version:"v0.4.4"} run function core:patcher/migration/v0.4.5/
execute if data storage global Patcher{Version:"v0.4.5"} run function core:patcher/migration/v0.4.6/
execute if data storage global Patcher{Version:"v0.4.6"} run function core:patcher/migration/v0.4.7/
execute if data storage global Patcher{Version:"v0.4.7"} run function core:patcher/migration/v0.4.8/
execute if data storage global Patcher{Version:"v0.4.8"} run function core:patcher/migration/v0.4.9/
execute if data storage global Patcher{Version:"v0.4.9"} run function core:patcher/migration/v0.4.10/
execute if data storage global Patcher{Version:"v0.4.10"} run function core:patcher/migration/v0.4.11/
execute if data storage global Patcher{Version:"v0.4.11"} run function core:patcher/migration/v0.4.12/
execute if data storage global Patcher{Version:"v0.4.12"} run function core:patcher/migration/v0.4.13/
execute if data storage global Patcher{Version:"v0.4.13"} run function core:patcher/migration/v0.4.14/
execute if data storage global Patcher{Version:"v0.4.14"} run function core:patcher/migration/v0.4.15/
execute if data storage global Patcher{Version:"v0.4.15"} run function core:patcher/migration/v0.4.16/
