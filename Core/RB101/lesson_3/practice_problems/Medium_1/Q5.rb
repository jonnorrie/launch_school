limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit # this limit varible is not available in this method
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit) # The limit variable needs to be explicitely passed to the method
puts "result is #{result}"