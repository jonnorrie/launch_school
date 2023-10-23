 # Given this data structure, return a new array of the same structure but with the sub 
 # arrays being ordered (alphabetically or numerically as appropriate) in descending order.

# input: nested array
# output: new nested array

# initialize new empty array
# iterate through outer array
 # iterate through each subarray
  # sort subarray from highest to lowest
  # append sorted array to new empty array

def descend (array)
  
  new_array = array.map do |subarray|
    subarray.sort do |a, b|
      b <=> a
    end
  end
end

 arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p descend(arr)