# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

array = flintstones.select do|el|
  el.include?("Be")
end
  
p array