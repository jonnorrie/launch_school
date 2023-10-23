# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

=begin
---Problem---
input- array
output - same array modified

-Rules-
Explicit
- array contains at least 2 elements
Implicit
- elements will be sorted from lowest to highest

---Data Structures---
input - array
output - same array
intermediate - same array

---Algorithm---
define a method that takes an array as an argument

start a loop
  initialize a counter to 0
  iterate through array with access to index
    compare current index to next index
    if next index is nil, break
    if next index is greater, swap places and increment counter by 1
  end
  break from loop if counter is 0
end

=end

def bubble_sort!(array)

  loop do
    counter = 0
    array.each_with_index do |el, index|
      if array[index + 1] == nil
        next
      elsif (array[index] <=> array[index + 1]) == 1
        array[index], array[index + 1] = array[index + 1], array[index]
        counter += 1
      end
    end
    p array
    break if counter == 0
  end
  p array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)