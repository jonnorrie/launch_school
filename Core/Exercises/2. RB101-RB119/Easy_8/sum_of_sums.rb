# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


=begin
input = Array
output = sum of the sums of each leading subsequence for that Array

algorithm

define a method that takes an array as an Argument

initialize a result variable set to 0
initialize counter to 0
  start loop
    iterate through array with each with index 
      add element to result
      break if index = counter
      end

    counter + 1
    break if counter = array length
  end
end


=end



def sum_of_sums(array)
  result = 0
  counter = 0
 
  loop do
   break if counter == array.length
   array.each_with_index do |el, index|
     result += el
     break if index == counter
   end
   counter += 1
   
   end
  p result
 end
 
 p sum_of_sums([3, 5, 2]) ==  21
 p sum_of_sums([1, 5, 7, 3]) == 36
 p sum_of_sums([4]) == 4
 p sum_of_sums([1, 2, 3, 4, 5]) == 35
 