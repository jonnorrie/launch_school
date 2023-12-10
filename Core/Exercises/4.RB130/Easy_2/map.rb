=begin
---Problem---
an array map method which yields to a block, and returns a new array with the same number of elements

input array
output new array

Rules
can use each, each_with_object, each_with_index, reduce, loop, for, while, or until to iterate

---Algorithm---
define method that takes an array as an argument
initialize an output array

iterate through input array
  for each element, append the return value of yielding to the output array
end

return output array

=end

def map(array)

output_array = []

array.each do |el|
  output_array << yield(el)
end

output_array
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]