[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#the return method of the following code is a new array:
# => [1, nil, nil]
# this is again because of the nature of the map method. the map method uses
# the return value of the block during each iteration to append a new value
# to the new array. since 1 is not greater than 1, the else branch is run and
# 1 is returned, but 2 and 3 are both greater than 1, so the if branch is
# executed and puts is called on 2 and 3, but puts returns nil so nil is
# appended to the array twice