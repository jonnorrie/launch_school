items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(array_of_items)
  puts "Let's start gathering food."
  puts yield(array_of_items)
  puts "Nice selection of food we have gathered!"
end

gather(items) {|array| "#{array.join(', ')}"}