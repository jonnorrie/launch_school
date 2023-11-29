# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
---Problem---
Input: A positive Integer
Output: A positive integer
Rules:
Explicit - Output should be an integer. Output should be the total of adding all digits in input.
Implicit - Output will be a positive integer. Punctuation should be ignored.

---Data Structures---
Input: Integers
Output: Integers
Intermediate: String, array. 

---Algorithm---
High Level: Convert input to string. Split string into an array. Total up array. Return sum of array. 
1. Define a method that takes one argument, an integer.
2. Invoke to_s method on integer. 
3. Invoke split method on string. 
4. Initalize a return variable to 0. 
5. Iterate through array
  1. Add and reassign value at iteration to return variable. 
  2. Return variable.
6. Return variable. 
7. End method. 
=end

def sum(int)
  return_variable = 0
  array = int.to_s.chars
  array.each do |num|
    return_variable += num.to_i
  end   
  return_variable
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45