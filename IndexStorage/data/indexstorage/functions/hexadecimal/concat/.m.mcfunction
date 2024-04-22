#> indexstorage:hexadecimal/concat/.m
# @input args
#   left : string
#   right : string
# @within function indexstorage:hexadecimal/concat/

$data modify storage indexstorage:core hexadecimal append value "$(left)$(right)"
