#> asset:spawner/544/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:23,Y:118,Z:-73}] in overworld positioned 23 118 -73 if entity @p[distance=..40] run function asset:spawner/544/register