
=begin
---Problem---
define a method that takes an array, and passes the current and the next element into the block

---Algorithm---
define a method that takes an array as an argument

iterate through array
  yield to block, and pass in current element and next element in array
end

return nil

=end

def each_cons(array)

  array.each_with_index do |el, index|
    break if index == array.size - 1
    yield(el, array[index + 1])
  end
  nil
end


hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }
#-------------------------------------
hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil
#-------------------------------------
hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil