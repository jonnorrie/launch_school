# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

=begin

---Problem---
input = Array
output = new array
Rules- Explicit - first element must move to the end
- original array should not be modified
implicit- elements must maintain object type?

---Data Structures---
input = array
output = new array
intermediate = 

--- Al Gor Ithm---
duplicate input array
append return value of new array.shift
end

=end

def rotate_array(array)
  new_array = array.dup
  new_array << new_array.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true