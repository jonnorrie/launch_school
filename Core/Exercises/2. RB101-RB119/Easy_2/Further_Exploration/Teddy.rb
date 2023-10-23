age = (20..200).to_a

puts "What is your name?"
name = gets.chomp

if name.empty?
  puts "Okay, since you didn't enter a name, we'll call you Teddy."
  name = "Teddy"
end

puts "#{name} is #{age.sample} old!"
