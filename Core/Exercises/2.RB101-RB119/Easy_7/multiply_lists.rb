# Write a method that takes two Array arguments in which each Array 
# contains a list of numbers, and returns a new Array that contains 
# the product of each pair of numbers from the arguments that have the 
# same index. You may assume that the arguments contain the same number 
# of elements.

=begin
input - two seperate arrays
output - a new single Array
algorithm
define a method that takes two arguments, exp to be arrays
  initialize a new array  within Method
  initialize a counter to 0
    iterate over arr1, multiplying the current iteration with value at arr2 index counter
        append result to new Array
          increase and reassing counter by 1
    end iteration method
  return new Array
end method 
=end

def multiply_list(arr1, arr2)
  new_array = arr1.zip(arr2).map {|a, b| (a * b) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]