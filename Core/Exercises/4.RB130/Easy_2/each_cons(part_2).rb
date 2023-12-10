
=begin
---Problem---
define a method that takes an array and an integer, and passes the current or more elements into bloc, based on integer

---Algorithm---
define a method that takes an array and an integer as arguments


initialize an array variable to an empty array

iterate through input array
  break if current index + integer is greater than or equal to input array length
  append elements from current index +1 to integer - 1 to array
  yield to block with current element and array passed in
end
  




=end

def each_cons(array, num)

  array.each_with_index do |el, index|
    if index + num > array.size
      break
    else
      temp_array = []
      temp_array << array[index + 1, num - 1]
      yield(el, *temp_array.flatten)
    end
  end
  nil
end


hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }
#-------------------------------------

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }
#-------------------------------------

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }
#-------------------------------------

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }
#-------------------------------------

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}