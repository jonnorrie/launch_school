#Write code that changes the array below so that all of the names are 
#shortened to just the first three characters. Do not create a new array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0

loop do
  break if counter >= flintstones.length
  flintstones[counter] = flintstones[counter][0, 3]
  counter += 1
end
p flintstones
#-------------------
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end
p flintstones