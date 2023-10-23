# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# input = array
# output = hash

# hash keys are names/ elements and values are positions in array

# initialize empty hash
# initialize counter variable
# start loop
  # if counter is equal to length of array, break
  # assign hash key as element with index equal to counter, and set value as counter
# return hash

# method 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
counter = 0

loop do

  break if counter >= flintstones.length
  hash[flintstones[counter]] = counter
  counter += 1

end

p hash

#method 2

hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash

