[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# the block's return value will be determined for each element in the array
# first will return true, then false, then true again. it is determined by
# the last evaluated line in the block which is num.odd? if the number passed
# in is odd, it will return true, if not, it will return false.
# the return value of any? in this code will output true, because it is simply
# testing if the block will return true for any of the elements passed in,
# which it does.
# the output on the other hand will be 1, because when any? finds even just
# one instance of the block returning true, it will stop iterating.