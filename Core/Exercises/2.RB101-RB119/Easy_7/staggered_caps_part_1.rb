# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

=begin
input = string
output = new string

al gor ithm

convert string into array of letters and save to new variable
  iterate through array
    if array index is even, capitalize. if odd, downcase
    end
  end
  join letters back into a new string
end


=end

def staggered_case(string)
  array = string.chars
  new_array = []
  array.each_with_index{ |letter, index| index.even? ? new_array << letter.upcase : new_array << letter.downcase}
  p new_string = new_array.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'