# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# => [4, 5, 3, 6]

# because not enough arguments have been given in the invocation of the method
# c is given it's default value from the paramter line in the method
# definition, and d is given the remaining value of 6.