# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

=begin
input - a String
output - an array of strings
algorithm - 

define a method that takes a string as an argument

initialize new empty string variable
initialize new array variable

iterate through string with each_char method
  new string += char
  append new string string to new array
end
return new_array

=end

def leading_substrings(str)
  new_string = ""
  new_string.object_id
  new_array = []

  str.each_char do |char|
    new_string += char
    new_array << new_string
  end
  p new_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']