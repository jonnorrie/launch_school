# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.shift(1)
end

p numbers

# This code is removing the first element in the array after we output it
# this means, we started the first iteration on the first element (1), but
# removed it before the iteration was over. this makes the next number the first 
# in the array by the time the iteration ends (2). When the next loop begins,
# we are then on 3, because we ended on 2. Therefore, this will only output:
# 1 and 3. 

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers

# This code is removing the last element after each iteration. This means
# we will only get to iterate through 2 times before we reach the end of the array
# 4 wil be removed when 1 is output, and 3 will be removed when 2 is ouput.
