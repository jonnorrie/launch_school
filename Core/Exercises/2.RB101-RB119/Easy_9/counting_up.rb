# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

=begin
input = integer
output = array

algorithm

define a method that takes an integer as an argument
initialize ana array
create an range from 1 to num and iterate through
  for each num in range, append current num to array
  end
end

return array

=end

def sequence(num)
  (1..num).to_a
  end
  
  p sequence(5) == [1, 2, 3, 4, 5]
  p sequence(3) == [1, 2, 3]
  p sequence(1) == [1]