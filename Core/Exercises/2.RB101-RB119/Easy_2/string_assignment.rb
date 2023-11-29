name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

#prints Alice, Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#prints BOB, BOB
#this is because upcase! modified name, which is pointing to the same string as save_name