#Create a hash that expresses the frequency with which each letter occurs in this string:

#input : string
#output : hash



# hash with letter as key and number of times appears in string as value

statement = "The Flintstones Rock"
letters = statement.chars

hash = {}

letters.each do |letter|
  hash[letter] = statement.count(letter) if statement.count(letter) > 0
end

p hash