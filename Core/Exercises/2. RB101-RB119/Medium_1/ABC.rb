# A collection of spelling blocks has two letters per block, as shown in this list:

# Copy Code
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=begin
---Problem---
- Input: A string. 
- Output: Boolean
- Rules:
  - Explicit:
    - To return true argument must not use two letters from same spelling block. 
  - Implicit:
    - Case irrelevent.

---Examples---

---Data Structures---
- Input: String
- Output: Boolean
- Intermediate: Array

---Algorithm---
1. Define a method that takes a string argument.
2. Initiailize a nested array that contains all spelling blocks in a nested array as individual elements.
3. Iterate over the array.
  3a. If argument includes both elements in iteration, return false.
  3b. If not next.
4. End itertion.
5. End method.
=end

def block_word?(string)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],['V', 'I'], ['L', 'Y'], ['Z', 'M']]

  blocks.each do |sub_array|
    return false if string.include?(sub_array[0]) && string.include?(sub_array[1])
  end
  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true