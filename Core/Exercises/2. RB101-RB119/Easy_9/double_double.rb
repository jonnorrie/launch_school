# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

=begin
input - a number
output - a number
rules
if odd number of digits, double the number
if even and a double number (repeated), return the number
if even and unique, double number
algorithm
define a method that takes one argument, a number
  convert integer into an Array and save result to a new variable
    test for odd number of digits
      if true then double the input number and return out of method
      if even number of digits
        new variable set to slice! array length / 2
        evaluate new variable for equality with array
          if equal return the original input num
          if not equal double the input num and return
end 
=end

def twice(int)
  int_array = int.to_s.chars
    if int_array.size.odd?
    return (int * 2)
    else
      integer_half = int_array.slice!(0, (int_array.length / 2))
      if integer_half == int_array
        return int
      else
        return (int * 2)
      end
    end
end

p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10