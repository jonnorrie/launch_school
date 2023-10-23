def multisum(num)
  total = 0
  range = (1..num)
  range.each do |el|
    if el % 3 == 0 || el % 5 == 0
      total += el 
    end
  end
  total
end

p multisum(20) == 98
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168