print "Please write word or multiple words: "
input = gets.chomp

counter = 0
char = 0

loop do
  if counter >= input.length
    break
  elsif input[counter] != " "
    char += 1
  end
  counter += 1
end

puts "There are #{char} characters in '#{input}'"
#-----------------------------------------------

print "Please write word or multiple words: "
input = gets.chomp
number_of_characters = input.delete(" ").size
puts "There are #{number_of_characters} characters in '#{input}'"