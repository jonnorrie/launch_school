# #In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

def calculate_length(num)
  counter = 0
  if num == 0
    counter = 1
  end
  
  while num > 0
    num /= 10
    counter += 1
  end
  counter
end 

def add_to_string(current_num, string)
  string_conversion = {1 => '1', 
  2 => '2',
  3 => '3',
  4 => '4', 
  5 => '5',
  6 => '6',
  7 => '7', 
  8 => '8',
  9 => '9', 
  0 => '0'}
  
  string << string_conversion[current_num]
  string
end

def isolate_current_number(changed_num)
  current_int = changed_num / (10 ** (calculate_length(changed_num) - 1))
  current_int
end

def remove_current_int(current, changing_num)
  result = changing_num - (current * (10 ** (calculate_length(changing_num) - 1)))
  result
end

def integer_to_string(int) # main method
  string = ""
  changing_int = int
  
  calculate_length(int).times do |iteration|

    
    current_int = changing_int / (10 ** (calculate_length(changing_int) - 1))

    current_int = isolate_current_number(changing_int)

    changing_int = remove_current_int(current_int,changing_int)

    string = add_to_string(current_int, string)
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end