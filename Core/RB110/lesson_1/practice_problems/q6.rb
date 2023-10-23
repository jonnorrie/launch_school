['ant', 'bear', 'caterpillar'].pop.size

# the return value is the integer 11.
# this is because we call the #pop method on our array, and we chain the
# size method to the return value of that. therefore we are calling the size
# method on the string "caterpillar", which will return 11