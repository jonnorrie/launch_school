# Write a method that takes a string, and returns a new string in which every character is doubled.

=begin
input = string
output = new_string

rules
each letter should be doubled 

algorithm
split string into array
initialize new array variable
iterate through stringarray
  append each letter to new array twice
  join new array

end

return new array

=end
CONSONANTS = %w[b c d f g h j k l m n p q r s t v w x y z]

def double_consonants(string)

new_string = ""
string.each_char do |char|
  if CONSONANTS.include?(char.downcase) == false
    new_string << char
  else
    2.times do |_|
      new_string << char
  end
  end
end
new_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""