#> common:lib/array/_index.d
# @private

#>
# @within function common:lib/array/**
    #declare score_holder #Index
    #declare score_holder #ListSize
    #declare score_holder #Argument.Index

#> Picks処理用
# @within function
#   common:lib/array/picks
#   common:lib/array/core/picks
    #declare score_holder #Prev
    #declare score_holder #Cur

#> Compare処理用
# @within function common:lib/array/**compare*
#declare score_holder #Temp

#> sum処理用
# @within function common:lib/array/**sum
#declare score_holder #isNumeric

#> 算術処理用
# @within function
#   common:lib/array/**math/*
    #declare score_holder #Sum
    #declare score_holder #Mul
    #declare score_holder #Temp
    #declare score_holder #Temp2