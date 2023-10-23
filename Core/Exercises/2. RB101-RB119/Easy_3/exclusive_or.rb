# input: two arguments
# output: boolean

# only one argument must evaluate as truthy for method to return true
# if both evaluate to true, method must return false

# initialize true_values variable
# create array of parameters
# iterate through array, and add 1 to true_values variable
# if true values variable is greater than 1 or less than 1, return false


def xor?(param1, param2)
  true_value = 0

  [param1, param2].each do |el|
    if el == true
      true_value += 1 
    end
  end

  if true_value > 1 || true_value < 1
    false
  else
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false