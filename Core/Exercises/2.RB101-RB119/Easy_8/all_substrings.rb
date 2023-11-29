# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

=begin
define a method that takes one argument, a String
initialize a new array 
  begin a loop
    break condition if string size is 0
      invoke leading substrings method
  append return value to new array
    slice off the first character of String
      continue loop
  end loop 
  return new array
=end

require 'pry'

def substrings(str)
  new_array = []
   loop do 
    break if str.length == 0
    new_array << leading_substrings(str)
    str.slice!(0)
    #binding.pry
  end
  new_array.flatten
end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]