a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id


# a will ouput a different id from b, but c will have the same id as a