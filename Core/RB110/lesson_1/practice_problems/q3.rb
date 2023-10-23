[1, 2, 3].reject do |num|
  puts num
end

# This will return [1, 2, 3] because the reject method does the
# opposite of select. it will append the elements from the current array for
# which the return value is nil or false, and as the block will always
# return nil due to the puts method, all elements will be appended to the new array
