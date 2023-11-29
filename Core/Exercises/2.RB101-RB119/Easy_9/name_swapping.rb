# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

=begin
input - String
output - String
algorithm
define a method that takes a string argument
  split the string into an Array
    assign a first name variable to element reference 0
    assign a last name variable to element reference -1 
      interpolate a string that is last name comma first name 
end
=end

def swap_name(str)
  name_array = str.split
    first_name = name_array[0]
    last_name = name_array[-1]
  p "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'