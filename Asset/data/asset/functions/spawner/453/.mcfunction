#> asset:spawner/453/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:248,Y:168,Z:101}] in overworld positioned 248 168 101 if entity @p[distance=..40] run function asset:spawner/453/register