=begin

---Problem---
define a method that takes an array and an object, and yields to a block

input: array, object
output: object passed in

---Algorithm---

define a method that takes an array, and another object

iterate through array
  yield to block with element and object passed in
end

return object
=end

def each_with_object(array, object)

  array.each do |el|
    yield(el, object)
  end

  object
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}