# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

=begin
input = 2 arrays
output = 1 array

iterate through second array
  if array 1 does not already have the current element
    append it to array 1

return array 1
=end

def merge(array_1, array_2)
  array_2.each do |el|
    array_1 << el if array_1.include?(el) == false
  end

  array_1
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]