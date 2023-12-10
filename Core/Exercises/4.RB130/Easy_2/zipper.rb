=begin
Problem

input - two arrays of the same length
output a single array of two element arrays

----Data Structures---

intput - arrays
output - array


---Algorithm---

define a method that takes two arrays as arguments

initialize an output array variable to an empty array

iterate through array1 with index
  for each element in array1, create a new array, append current element and element in array 2 at the same index to new array
  append new array to output_array
end

return output_array

=end

def zip(array_1, array_2)
  output_array = []
  
  array_1.each_with_index do |el, index|
    output_array << [el, array_2[index]]
  end

  p output_array
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]