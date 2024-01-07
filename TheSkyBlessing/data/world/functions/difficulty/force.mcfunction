#> world:difficulty/force
#
# ピースフルを拒絶する
#
# @within function core:tick/

#> Val
# @private
    #declare score_holder #Difficulty

# 難易度を取得
    execute unless score #Difficulty Global matches 4.. store result score #Difficulty Global run difficulty
# ピースフルをイージーに変える
    execute if score #Difficulty Global matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度をピースフルにすることは出来ません。"}]
    execute if score #Difficulty Global matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度はイージーに変更されました。"}]
    execute if score #Difficulty Global matches 0 run difficulty easy
