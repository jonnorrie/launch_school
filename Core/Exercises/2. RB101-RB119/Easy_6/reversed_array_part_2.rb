# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

=begin
input - Array
output - same Array
algorithm

define a Method that takes an array as the only Argument
  iterate over array reversing the order of the elements in place
return array

=end

def reverse(element_list) # 1, 2, 3, 4
  temp_array = element_list.dup
  counter = 0
      new_array = element_list.map do |el|
        counter -= 1
        el = temp_array[counter]
      end
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true