# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

=begin

input - String
output - new string
algorithmyyyygm - 

iterate over string with each char with index 
  initialize new variable to the value of index plus 1
  use if comparison to compare that variable with the current iteration
  delete if current iteration is equal to new variable
  otherwise move on to next iteration
end

=end

def crunch(str)
  string = ''
  str.each_char.with_index do |char, index|
    next_char = str[index + 1]

    if char != next_char
      string << char
    else
      next
    end
  end
  string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''