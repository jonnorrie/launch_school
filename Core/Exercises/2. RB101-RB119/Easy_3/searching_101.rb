def prompt(string)
  puts "==>" + " " + string
end

array = []

prompt("Enter the 1st number:")
first = gets.chomp.to_i
array << first

prompt("Enter the 2nd number:")
second = gets.chomp.to_i
array << second

prompt("Enter the 3rd number:")
third = gets.chomp.to_i
array << third

prompt("Enter the 4th number:")
fourth = gets.chomp.to_i
array << fourth

prompt("Enter the 5th number:")
fifth = gets.chomp.to_i
array << fifth

prompt("Enter the last number")
last = gets.chomp.to_i

if array.include?(last)
  puts "The number #{last} appears in #{array}."
else
  puts "The number #{last} does not appear in #{array}."
end