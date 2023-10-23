# How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']

arr = arr.map do |el|
  el.to_i
end

return_value = arr.sort do |a, b|
  b <=> a
end

p return_value