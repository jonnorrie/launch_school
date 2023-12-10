=begin
---Problem---
input : array
output : new array of a value where the block returns false, and all values after said element

---Algorithm---
define a method that takes an array as an argument
initialize an output array

iterate through input array with access to index
  if yielding to block with an argument is false
    append all elements with index equal to or greater than current index to output array
      iterate through input array to do so
    break out of iteration
  else
    next
  end
end

return output array
=end

def drop_while(array)
  output_array = []

  array.each_with_index do |el, index1|
    if yield(el) == false
      array.each_with_index do |el2, index2|
        output_array << el2 if index2 >= index1
      end
      break
    end
  end
  output_array
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []