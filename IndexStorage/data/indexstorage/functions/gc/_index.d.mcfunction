#> indexstorage:gc/_index.d
# @private

#> GC main
# @within function
#   indexstorage:tick
#   indexstorage:gc/main/loop
    #declare score_holder $GCIndex

#> GC resize
# @within function
#   indexstorage:tick
#   indexstorage:gc/resize/data
    #declare score_holder $ResizeIndex
