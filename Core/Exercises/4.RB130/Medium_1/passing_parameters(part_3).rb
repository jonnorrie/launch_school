items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end


gather(items) do |*first3, el4|
  puts first3.join(', ')
  puts el4
end

gather(items) do |first, *next_2, last|
  puts first
  puts next_2.join(', ')
  puts last
end

gather(items) do |first, *all_else|
  puts first
  puts all_else.join(', ')
end

gather(items) do |first, second, third, last|
  puts first
  puts second
  puts third
  puts last
end