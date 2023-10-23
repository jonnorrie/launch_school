# use a combination of methods, including either the select or reject method, to
# return a new array identical in structure to the original but containing only the 
# integers that are multiples of 3.

# input: array
# output new_array

# iterate through array, save to new variable
  # iterate through each subarray
    # if element is multiple of 3, select
    # else remove from array
# return new array

def mult_3(array)
  new_array = array.map do|sub_array|
    sub_array.select do|el|
      el % 3 == 0
    end
  end
end


p arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

p mult_3(arr)