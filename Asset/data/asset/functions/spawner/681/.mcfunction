#> asset:spawner/681/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:419,Y:160,Z:93}] in overworld positioned 419 160 93 if entity @p[distance=..40] run function asset:spawner/681/register