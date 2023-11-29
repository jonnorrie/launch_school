# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60  'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

=begin
input - three integers
output - string
algorithm
define a method that takes three arguments, integers
  initialize a hash that uses ranges scores as the keys and letter grades as values
    variable(float) set to return value of integers added and divided by 3
      iterate through the hash
        if iteration includes variable return value
      end iteration
end Method
=end

def get_grade(num1, num2, num3)
  hash = {(0..59) => 'F', (60..69) => 'D', (70..79) => 'C', (80..89) => 'B', (90..100) => 'A'}
  average_score = ((num1 + num2 + num3)/ 3)
    hash.each do |k, v|
      return v if k.include?(average_score)
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"