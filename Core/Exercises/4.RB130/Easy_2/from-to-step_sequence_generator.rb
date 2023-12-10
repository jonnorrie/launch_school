def step(num1, num2, step_val)
  current_num = num1

  while current_num <= num2
    yield(current_num)
    current_num += step_val
  end

  p current_num
end

step(1, 10, 3) { |value| puts "value = #{value}" }