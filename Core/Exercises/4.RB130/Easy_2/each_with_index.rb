=begin
---Problem---
iterate through an array, with access to it's index
input: array, block
output: original array

---Algorithm---
define a method that takes an array as an argument

initialize an index variable to 0

iterate through array
  for each element in array, yield to block, with element and index passed in
  increment index by 1
end

return input array
=end

def each_with_index(array)
index = 0

  array.each do |el|
    yield(el, index)
    index += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]