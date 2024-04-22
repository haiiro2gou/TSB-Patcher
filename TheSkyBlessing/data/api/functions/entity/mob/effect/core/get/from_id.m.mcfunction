#> api:entity/mob/effect/core/get/from_id.m
# @input args
#   ID : int
#       欲しいエフェクトのID
# @within function api:entity/mob/effect/get/from_id

data remove storage api: Return.Effect
function indexstorage:pull/
$data modify storage api: Return.Effect set from storage indexstorage: _.Effects[{ID:$(ID)}]
