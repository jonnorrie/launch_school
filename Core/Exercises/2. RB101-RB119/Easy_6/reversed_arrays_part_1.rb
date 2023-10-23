# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

=begin
input - Array
output - same Array
algorithm

define a Method that takes an array as the only Argument
  iterate over array reversing the order of the elements in place
return array

=end

def reverse!(element_list) # 1, 2, 3, 4
  temp_array = element_list.dup
  counter = 0
      element_list.map! do |el|
        counter -= 1
        el = temp_array[counter]
      end
  element_list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true