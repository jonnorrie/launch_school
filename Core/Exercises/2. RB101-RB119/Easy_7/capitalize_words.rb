# Write a method that takes a single String argument and returns a new 
# string that contains the original value of the argument with the first 
# character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

=begin
input = String
output = new String

algorithm

split string into array of strings
  iterate through array with each method
  run capitalize method on each word/element in array and mutate
  join elements in array with spaces, and assign to new string variable


=end

 def word_cap(string)
 array = string.split.map! { |word| word.capitalize}.join(" ")
 end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'