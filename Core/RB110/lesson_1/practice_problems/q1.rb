[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# the return value of the select method will be [1, 2, 3] because the
# select method iterates through the array calling the method, and depending
# on the truthy or falsey return value of the method block, will append the current element 
# into a new array. the last line of the block is the string 'hi', which 
# has a truthy value, and therefore every element will be appended to the new array