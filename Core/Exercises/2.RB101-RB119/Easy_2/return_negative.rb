def negative(num)
  puts num > 0? num - (num*2) : num
end

puts "Enter a number"
input = gets.chomp.to_i

negative(input)