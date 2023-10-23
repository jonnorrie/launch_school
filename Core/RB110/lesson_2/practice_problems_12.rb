# without using the Array#to_h method, write some code that will return a hash where the key 
# is the first item in each sub array and the value is the second item.

# input: nested array
# output: new hash

# initialize new empty hash
# iterate though array
  # iterate though sub array
    # assign hash key as first element in array, and value as second element
# return new hash

def hash(array)
  new_hash = {}

  array.each do|subarray|
    new_hash[subarray[0]] = subarray[1]
  end
end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

p hash(arr)