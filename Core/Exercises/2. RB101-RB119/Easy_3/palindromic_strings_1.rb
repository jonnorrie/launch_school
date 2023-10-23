# input: string
# output: boolean


# rules:  - return true if string is a palindrome
        # - case, spaces and punctuation matters

# string == string.reverse

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?('level') == true