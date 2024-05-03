#> lib:score_to_health_wrapper/max/
# @within function core:tick/player/post

# データを取得
    function indexstorage:pull/
# 代入処理
    execute store result storage lib: MaxHealth float 0.0001 run scoreboard players get @s ScoreToMaxHealth
    function lib:score_to_health_wrapper/max/modify.m with storage lib:
# リセット
    data remove storage lib: MaxHealth
    scoreboard players reset @s ScoreToMaxHealth
