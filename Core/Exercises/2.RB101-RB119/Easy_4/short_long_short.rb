# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, 
# and the shorter string once again. You may assume that the strings are of different lengths.

string = "cat"
long_string = 'monkey'

def short_long_short(str, str2)
  if str.length > str2.length 
    puts str2 + str + str2
  else
   puts str + str2 + str
  end
end

short_long_short(string, long_string)
