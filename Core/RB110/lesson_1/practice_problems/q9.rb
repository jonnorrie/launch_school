{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# the return value of map will be an array as follows:
# [nil, "bear"]
# this is because the map method returns an aray wheh called on hashes with the return
# value of the block used for each element. since the length of "bear" is greater than 3, the return
# value is "bear", as indicated by the if statement in the block. but since 
# the length of 'ant' is not greater than 3, we do not proceed with the if
# statement, and nil is returned as a result