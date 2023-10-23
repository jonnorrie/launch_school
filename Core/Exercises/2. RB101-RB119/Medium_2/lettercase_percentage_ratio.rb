# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

=begin
---Problem---
input - string
output - hash of prercentages
-Rules-
Explicit
- assume input string will have uppercase and lowercase characters, as well as non alphabetic characters
- output has will have three pairs
- values in hash are to be in a float format
- assume string will have at least one characters
Implicit
- spaces are counted as non alphabetic

---Data Structures---
input - string
output - hash
intermediate - hash

---Algorithm---
define a method that takes a string as an argument
initialize a range of uppercase and lowercase characters
initialize an hash will default value of 0

iterate through the string
  increment each hash value for uppercase, lowercase or neither
end

reassign each hash value to the result of the value divided by the length of the string, then times 100.0
convert values to a float

return the hash
=end

def letter_percentages(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}

  downcase = ("a".."z").to_a
  upcase = ("A".."Z").to_a

  string.each_char do |char|
    if downcase.include?(char)
      hash[:lowercase] += 1
    elsif upcase.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash.each do |k, v|
     hash[k]= (v.to_f/string.length.to_f) * 100.0
  end

  p hash

end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }