class FixedArray

  def initialize(length)
    @length = length
    @array = [nil] * length
  end

  def [](index)
    @array.fetch(index)

  end

  def []=(index, new_element)
    self[index]

    @array[index] = new_element
  end

  def to_a
    @array.dup
  end

  def to_s
    to_a.to_s
  end

end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil #True
puts fixed_array.to_a == [nil] * 5 # True

fixed_array[3] = 'a'
puts fixed_array[3] == 'a' # True
puts fixed_array.to_a == [nil, nil, nil, 'a', nil] # True

fixed_array[1] = 'b'
puts fixed_array[1] == 'b' # True
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil] # True

fixed_array[1] = 'c'
puts fixed_array[1] == 'c' # True
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil] # True

fixed_array[4] = 'd'
puts fixed_array[4] == 'd' # True
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd'] # True
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]' # True

puts fixed_array[-1] == 'd' # True
puts fixed_array[-4] == 'c' # True

begin
 fixed_array[6]
 puts false
rescue IndexError
 puts true
end

begin
 fixed_array[-7] = 3
 puts false
rescue IndexError
 puts true
end

begin
 fixed_array[7] = 3
 puts false
rescue IndexError
 puts true
end