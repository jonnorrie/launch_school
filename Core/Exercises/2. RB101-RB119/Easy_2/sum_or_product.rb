integer = ""
loop do

  puts "Please enter an integer greater than 0"
  integer = gets.chomp.to_i

  if integer.integer? && integer > 0
    break
  else
    puts "Not a valid integer"
  end
end

loop do
  puts "Enter 's' to compute the sum, and 'p' to compute the product."
  operation = gets.chomp

  iteration = 0
  array = (1..integer).to_a

  if operation == 's'
    sum = 0
    while iteration < array.size
      sum = sum + array.at(iteration)
      iteration += 1
    end
    puts "The sum of the integers between 1 and #{integer} is #{sum}"
    break
  elsif operation == 'p'
    product = 1
    while iteration < array.size
      product *= array.at(iteration)
      iteration += 1
    end
    puts "The product of the integers between 1 and #{integer} is #{product}"
    break
  else
    puts "Unknown operation"
  end
end