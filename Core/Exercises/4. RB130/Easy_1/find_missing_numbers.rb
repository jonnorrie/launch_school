def missing(array)
  output_array = []
  max = array.max - 1
  min = array.min + 1

  (min..max).each do |num|
    output_array << num if !array.include?(num)
  end
  
  output_array
end

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []