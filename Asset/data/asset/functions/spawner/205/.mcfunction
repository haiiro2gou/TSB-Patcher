#> asset:spawner/205/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:25,Y:48,Z:279}] in overworld positioned 25 48 279 if entity @p[distance=..40] run function asset:spawner/205/register