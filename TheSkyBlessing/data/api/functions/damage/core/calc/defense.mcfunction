#> api:damage/core/calc/defense
#
# 防御による軽減を計算します
#
# @within function api:damage/core/calc/

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB1
    #declare score_holder $CalcB2
    #declare score_holder $CalcC

# $CalcA(e2) = $defensePoints(e2) / 5
    scoreboard players operation $CalcA Temporary = $defensePoints Temporary
    scoreboard players operation $CalcA Temporary /= $5 Const
# $CalcB2(e2) = $toughness(e2) / 4 + 2 * e2
    scoreboard players operation $CalcB2 Temporary = $toughness Temporary
    scoreboard players operation $CalcB2 Temporary /= $4 Const
    scoreboard players add $CalcB2 Temporary 200
# $CalcB1(e2) = $Damage(e2) * e2 / $CalcB2(e2)
    scoreboard players operation $CalcB1 Temporary = $Damage Temporary
    scoreboard players operation $CalcB1 Temporary *= $100 Const
    scoreboard players operation $CalcB1 Temporary /= $CalcB2 Temporary
# $CalcB(e2) = $defensePoints(e2) - $CalcB1(e2)
    scoreboard players operation $CalcB Temporary = $defensePoints Temporary
    scoreboard players operation $CalcB Temporary -= $CalcB1 Temporary
# $CalcC(e3) = min(max($CalcA(e2), $CalcB(e2)), 20 * e2) * e1 / 25
    scoreboard players operation $CalcC Temporary = $CalcA Temporary
    scoreboard players operation $CalcC Temporary > $CalcB Temporary
    scoreboard players operation $CalcC Temporary < $2000 Const
    scoreboard players operation $CalcC Temporary *= $4 Const
    scoreboard players operation $CalcC Temporary /= $10 Const
# $Damage(e2) = $Damage(e2) * $CalcC(e3) / e3
    scoreboard players operation $Damage Temporary /= $10 Const
    scoreboard players operation $Damage Temporary *= $CalcC Const
    scoreboard players operation $Damage Temporary /= $100 Const

# リセット
    scoreboard players reset $CalcA Temporary
