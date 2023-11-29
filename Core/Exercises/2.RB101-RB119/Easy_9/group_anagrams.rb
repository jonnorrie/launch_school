# Given the array...

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)

=begin
---Problem---
Input: An array of strings
Output: A sub array 
Rules:
Explicit: Will return seperate arrays each containing a group of strings that are anagrams of each other.
Implicit: No duplicates. Seperate arrays for different anagrams.

---Examples---
See test cases.

---Data Structures---
Input: Array
Output: More than one array.

---Algorithm---
High Level: 
init outer array
method
init new Array
iterate over arg
  



=end
require "pry"

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

until words.empty?
  new_array = []
  new_array << words.shift
  words.each do |word| # appends anagrams to new array
    new_array << word if new_array[0].chars.sort.join == word.chars.sort.join
  end
  new_array.each do |anagram| # deletes anagrams from words array
    words.each do |word|
      words.delete(word) if new_array.include?(word)
    end
  end
  p new_array
end