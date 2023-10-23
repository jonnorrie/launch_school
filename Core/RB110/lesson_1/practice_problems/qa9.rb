#Write your own version of the rails titleize implementation.  
#This method in Ruby on Rails creates a string that has each word 
#capitalized as it would be in a title.

# input: string
# output: new string

# initialize counter variable
# initialize empty string
  # start loop
  # if counter is equal to the length of string, break
  # if string[counter - 1] is a space, new string << capitalize string[counter]
  # else, new string << string[counter]

def titleize(string)
  new_string = ""

  counter = 0

  loop do
    break if counter >= string.length

    if string[counter - 1] == " "
      new_string << string[counter].upcase
    elsif counter == 0
      new_string << string[counter].upcase
    else
      new_string << string[counter]
    end

    counter += 1
  end
  new_string
end

string = "the flintstones rock"

p titleize(string)

#-----------------------

p string.split.map { |word| word.capitalize}.join(' ')
p string.split