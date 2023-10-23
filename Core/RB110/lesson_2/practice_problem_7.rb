# Given this code, what would be the final values of a and b?
# Try to work this out without running the code.


a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# => a == 2 This is because we did not reference the original object, the the array `arr`
# => b == [3, 8] This is because we referenced an array within an array, and not the array `arr`