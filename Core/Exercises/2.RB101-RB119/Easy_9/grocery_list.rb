# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

=begin
---problem---
input: nested Array
output: array

 ---data structure -- 
 array

 algorithm---
initialize new_array
iterate through parameter array, appending index 0 for index1 amount of times

return array
=end

def buy_fruit(array)
  new_array = []
  array.each { |sub_array| sub_array[1].times { |_| new_array << sub_array[0]}}
  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]