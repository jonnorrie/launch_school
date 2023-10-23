puts "What is your age"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
retire_year = current_year + retire
time_left = retire - age

puts "It is #{current_year}. You will retire in #{retire_year}."
puts "You only have #{time_left} years of work left to do!"
puts "If you're lucky, they might even throw in a pizza party!"