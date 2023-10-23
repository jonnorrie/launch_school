# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# when you append a value to an array, it references the same object as the origin object. this means if you mutate an object in array_1, this also affects the same reference in array_2, because they are the same object