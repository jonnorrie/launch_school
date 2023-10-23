# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

=begin
input = array of integers
output = string

Algorithm

initialize an integer variable to 1

iterate through array
  multiply current element by varible and save answer to variable
end

divide variable by array length
convert variable to float
round float to 3 decimal places

print string with flot interpolated

=end


def show_multiplicative_average(array)
  result = 1
  array.each do |num|
    result *= num
  end

  result = (result.to_f) / (array.length)
  result = format("%.3f", result)
  "The result is #{result}"
end

p show_multiplicative_average([3, 5])                 == "The result is 7.500"
p show_multiplicative_average([6])                    == "The result is 6.000"
p show_multiplicative_average([2, 5, 7, 11, 13, 17])  == %(The result is 28361.667)
