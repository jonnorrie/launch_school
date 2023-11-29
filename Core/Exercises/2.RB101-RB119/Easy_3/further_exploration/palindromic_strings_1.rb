# input: array or string
# output: boolean


# rules:  - return true if array is a palindrome
        # - case, spaces and punctuation matters

# string == string.reverse

def palindrome?(object)
  object == object.reverse
end

p palindrome?([1, 2, 2, 1])
p palindrome?([1, 2, 3, 4])
p palindrome?("madam")
p palindrome?("hahaha")