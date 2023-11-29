def select(array)
  counter = 0
  output_array = []

  while counter < array.length
    output_array << array[counter] if yield(array[counter])
    counter += 1
  end

  output_array
end

array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }
p select(array) { |num| puts num}
p select(array) { |num| num + 1}   