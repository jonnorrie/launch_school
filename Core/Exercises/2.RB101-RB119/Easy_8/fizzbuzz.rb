# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".


=begin
input = 2 integers

output = Array

rules: print all numbers between first number and second numbers
print fizz if divisible by 3, buzz if diuvisble by 5, fizzbuzz if sivisble by both


algorithm

define a method that takes two integers as arguments
initialize a range from first number to second number, and call map method on it
  if num is div by 3, return fuzz
  if num is div 5, return buzz, 
  if both, return fizzbuzz
  else return num
  end

  return array

=end

def fizzbuzz(num_1, num_2)
  array = (num_1..num_2).map do |num|

    if num % 3 == 0 && num % 5 == 0
      "FizzBuzz"
    elsif num % 3 == 0 
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end

  array.join (", ")
end




p fizzbuzz(1, 15) #-> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz