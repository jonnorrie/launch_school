numbers = (1..99).to_a

numbers.each do|num|
  if num.even?
    puts num
  end
end