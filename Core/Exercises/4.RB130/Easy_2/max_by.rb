=begin
---Problem---
define a method that finds the largest element in an array based on the criteria in the block

input:array, block
output: largest element in array based on block criteria

---Algorithm---
define a method that takes an array as an argument

initialize a largest_element variable to nil
initialize a largest_criteria variable to nil

iterate through array
  if largest_criteria is nil or less than block critera, assign largest_criteria to block return and largest_element to current element
end

return largest_element
=end

def max_by(array)
  largest_element = nil
  largest_criteria = nil

  array.each do |el|
    block_return = yield(el)
    if largest_criteria == nil || block_return > largest_criteria
      largest_element = el
      largest_criteria = block_return
    end
  end
  largest_element
end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil