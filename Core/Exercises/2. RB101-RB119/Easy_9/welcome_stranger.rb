# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

=begin
input - an array and a hash
output - a string
algorithm
define a method that takes two arguments
  interpolate within a string a sentence including all required data
end method 
=end

def greetings(array, hash)
  puts "Hello, #{array.join(' ')}! Nice to have a #{hash.values.join(' ')} around."
  end
  
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  #== "Hello, John Q Doe! Nice to have a Master Plumber around."