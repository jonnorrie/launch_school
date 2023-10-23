# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

=begin
input = 2 arrays
output = 1 array

algorithm 

create a method that takes two arguments
initialize new array

  iterate through array 1
    for each element in array 1, iterate through array 2
      multiply element from array 1 by array 2, and append result to new array
    end
  end

invoke sort method on new array
return new array
end

=end

def multiply_all_pairs(array_1, array_2)
  new_array = []
  
  array_1.each do |el_1|
    array_2.each do |el_2|
      new_array << el_1 * el_2
    end
  end
  new_array.sort!
  p new_array

end



p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]