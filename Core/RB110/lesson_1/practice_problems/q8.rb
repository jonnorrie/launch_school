arr = [1, 2, 3, 4, 5]
arr.take(2)
# the take method works by returning an array with the number of elements indicated
# by the argument passed in. in this ase, 2 is the argument, so we will take
# the first 2 arguments, [1, 2]. this is non destructive, as indicated by the
# Ruby documentation. if we return the original array after we run the take
# method on it, we will still have the full original array returned.