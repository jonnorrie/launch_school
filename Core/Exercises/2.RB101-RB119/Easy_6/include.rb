# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

=begin

input = array, search value
output = boolean

algorithm

iterate through array
  if search value is same as current element
    return true
return false
=end

def include?(array, search)
  array.each do |el|
    return true if search == el
  end
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false