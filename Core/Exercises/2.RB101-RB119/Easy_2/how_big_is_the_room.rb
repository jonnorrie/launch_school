def conversion(area_m)
  area_m * 10.7639
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area = length*width

puts "The area of the room is #{area.to_f} square meters (#{conversion(area)})."