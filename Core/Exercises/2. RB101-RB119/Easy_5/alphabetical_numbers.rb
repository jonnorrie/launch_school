# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen


=begin

P
input = Array
output = new_array

Data Structure = Hash

Aglorithm

create hash with integers as keys, and strings as values
initialize new array
iterate over original Array
  for each element in original array, pass its value from hash into new Array

sort new Array

iterate through new array, and reassign element with it's key value from Hash

return new array

=end

def alphabetic_number_sort(array)
  new_array = []

  hash = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

  array.each do |el|
    new_array << hash[el]
  end

  new_array.sort!

  new_new_array = new_array.map do |value|
    hash.key(value)
  end

  new_new_array

end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0]