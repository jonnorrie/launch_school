# Given the following data structure and without modifying the original array, use the map 
# method to return a new array identical in structure to the original but where the value 
# of each integer is incremented by 1.

# input: array
# output: new array

# iterate through outer array with map, set equal to new array
# iterate through each hash, and increase the value by 1


def increment(array)
  new_array = array.map do |hash|
    keys = hash.keys
    counter = 0

    loop do
      if counter == keys.length
        break
      end
      hash[keys[counter]] += 1
      counter += 1
    end
    hash
  end

  new_array
end


arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# => [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

p arr

p increment(arr)
