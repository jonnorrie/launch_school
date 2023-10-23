# get loan amount
# get annual percentage rate
# loan duration

# calculate monthly interest rate
# calculate loan duration in months

# calculate monthly payment

  puts "Welcome to the Loan Calculator."

  puts "Please enter your name."
  print "Name: "
  name = gets.chomp

  puts "Hello, #{name}."
#main loop
loop do

  #Loan input loop
  loan_amount = ""
  loop do
    puts "How much are you looking to loan?"
    print "Loan amount: $"
    loan_amount = gets.chomp
    
    if loan_amount.to_i < 0 || loan_amount.empty?
      puts "Please enter a valid positive number."
    else
      loan_amount = format('%.2f', loan_amount.to_f)
      break
    end
  end

  #APR input loop
  monthly_interest = ""
  loop do
    puts "What is the APR (Annual Percentage Rate)?"
    print "APR: "
    apr = gets.chomp.to_f

    if apr > 0
      monthly_interest = (apr/100) / 12
      break
    else
      puts "Please enter a valid APR."
    end
  end

  #loan duration input loop
  loan_duration = ""
  loop do
    puts "Is your loan duration in months (m) or years (y)?"
    print "Answer: "
    loan_duration = gets.chomp.downcase

    if ['years', 'y'].include?(loan_duration)
      puts "How many years?"
      print "Years: "
      loan_duration = gets.chomp.to_i * 12
      puts "How many additional months?"
      print "Additional months: "
      loan_duration += gets.chomp.to_i
      break
    elsif ['m', 'months'].include?(loan_duration)
      puts "How many months"
      print "Months: "
      loan_duration = gets.chomp.to_i
      break
    else
      puts "Please enter only months (m) or years (y)"
    end
  end

  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration)))
  monthly_payment = format('%.2f', monthly_payment)
  puts "For a loan of $#{loan_amount} at #{apr}% APR, and a repayment period of #{loan_duration} months, your monthly payment will be $#{monthly_payment}"

  puts "Would you like to calculate a new loan, #{name}? Yes (y) or no (n)"
  print "Answer: "
  repeat = gets.chomp.downcase
  if ['y', 'yes'].include?(repeat)
    next
  else
    puts "Thank you for using the Mortgage Calculator!"
    puts "Good bye!"
    break
  end
end