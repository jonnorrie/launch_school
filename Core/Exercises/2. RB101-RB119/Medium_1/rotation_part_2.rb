# Write a method that can rotate the last n digits of a number. For example:

=begin
---Problem---
Input: An integer
Output: An Integer
Rules: 
Explicit - Rotation must be performed according to the input element. 
Implicit - Start of rotion to be 'n' from the end of the input integer. 

---Examples---
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

---Data Structures---
Input: Integer
Output: Integer
Intermediate: Array made up of the longer integer. 

---Algorithm---
High Level - Convert the input integer into an array. Convert the second input integer into its negative counterpart and store in a variable. Concatenate element at location specified by original input to the end.
1. Define a method that takes two arguments, both integers. 
  1. Convert the integer into an array and store in variable. 
  2. Convert the second input into a negative, store in variable. 
  3. Delete at the index of the second input variable. Store this in variable. 
  4. Concatenate the variable from 3. to the end of array. 
  5. Return the array. 
2. End method. 
=end

def rotate_rightmost_digits(number, int)
  array = number.to_s.chars
  neg_int = int - (int * 2)
  array << array.delete_at(neg_int)
  array.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917