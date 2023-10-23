# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

=begin
input array of strings
output array of strings

algorithm

iterate through Array
  use delete method to remove vowels from each word

return the array

=end

def remove_vowels(array)
  array.each {|word| word.delete!(%(a e i o u A E I O U)) }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']