#> asset:spawner/137/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:25,Y:48,Z:231}] in overworld positioned 25 48 231 if entity @p[distance=..40] run function asset:spawner/137/register