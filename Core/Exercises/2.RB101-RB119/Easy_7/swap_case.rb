# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

#You may not use String#swapcase; write your own version of this method.

=begin
input - string
output - new string
algorithm
define a method that takes one argument, a string
  within method, iterate over each character
    during iteration, evaluate if character is uppercase
      if true then alter to lowercase and 
        (a..z) == char.downcase, char.upcase, char.downcase
=end

def swapcase(str)
  new_string = str.chars.map! { |el| ('a'..'z').include?(el) ? el.upcase : el.downcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'