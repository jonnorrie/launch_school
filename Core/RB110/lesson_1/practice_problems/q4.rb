['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => {"a" => "ant", "b" => "bear", "c" => "cat"}
# the each_with_object method uses a collection object as an argument, and returns that.
# within the block, we have assigned the key in the new hash given as our argument
# as the first letter of each string element in the array, and we use each element as its corresponding 
# value.