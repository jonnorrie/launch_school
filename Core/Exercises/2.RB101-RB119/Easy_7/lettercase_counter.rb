# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one represents the number of characters that are uppercase letters, and one represents the number of characters that are neither.

=begin
input - String
output - Hash
algorithm
define a method that takes one argument, a String
  initialize an empty Hash with 3 key value pairs
    set the values to 0, keys to lc/up/n
      iterate though each character of the string Argument
        if conditional on each character to see if it is up/lc/n 
          increment respective key value
            to hash with the key 'lowercase' if character is lowercase, uppercase or neither.
return hash
=end

def letter_case_count(str)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
    str.each_char do |char|
      if ('a'..'z').include?(char)
        hash[:lowercase] += 1
      elsif ('A'..'Z').include?(char)
        hash[:uppercase] += 1
      else
        hash[:neither] += 1
      end
    end  
    hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
