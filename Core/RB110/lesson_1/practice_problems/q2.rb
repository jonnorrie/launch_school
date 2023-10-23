['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# the count method will return the number of elements in an array, and when
# given a block as we have in this example, it narrows the elements counted
# down to elements where the block given returns a truthy value.
# this is found in the Ruby documentation.
# This example will return the integer 2, because the block tests for elements
# with strings less than 4 characters in length. 