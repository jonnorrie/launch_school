# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
input - a String
output - the same String
rules -
return the same String
only words longer than 4 letters reversed
only letters and Spaces
algorithm
define a method that takes one argument, expected to be a String
  split the string into an Array
    iterate over each array element
      if conditional based on equal to or over 5 letters
        if true then reverse String
        else next
      end if conditional
    end iteration
  join the array into a string seperated by a space and return
end the method
=end

require 'pry'

def reverse_words(str)
  new_string = str.split.map do |word|
    if word.length > 4
      word.reverse
    else 
      word
    end
  end
  new_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
