print "How much is the bill? "
bill = gets.chomp.to_i

print "What is the tip percentage? "
tip_per = gets.chomp.to_f / 100

tip_amount = (bill * tip_per.round(2))
#tip_amount = format('%2f', tip_amount)
puts "The tip is #{format('%.2f', tip_amount)}"

total = bill + tip_amount
puts "The total is #{format('%.2f', total)}"