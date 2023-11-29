# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


=begin
input = an array
output = nested array with 2 arrays 

algorithm

initialize new array
run times method for length / 2 if even
run times method for (length /2) +1 if odd
prepend return value from array.shift to new array

initialize large array with new array and original array
return large array

=end

def halvsies(array)
  new_array = []
  if array.length.even?
    (array.length/2).times do |_|
      new_array << array.shift
    end
  else
    ((array.length/2) + 1).times do |_|
    new_array << array.shift
    end
  end
  large_array = [new_array, array]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 10, 23, 500, 60, 42, 8]) ==  [[1, 10, 23, 500], [60, 42, 8]]