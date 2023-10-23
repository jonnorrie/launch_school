#puts "the value of 40 + 2 is " + (40 + 2)
#This results in an error because you can't concatenate a string with an integer


#We can fix this with interpolation:
puts "the value of 40 + 2 is #{40 + 2}"

#Or converting the calculation to a string:
puts "the value of 40 + 2 is " + (40 + 2).to_s