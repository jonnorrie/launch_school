VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock')
end

def display_winning_move(first, second)
  if first == 'rock' && second == 'scissors'
    prompt('Rock crushes Scissors')
  elsif first == 'rock' && second == 'lizard'
    prompt('Rock crushes Lizard')
  elsif first == 'paper' && second == 'rock'
    prompt('Paper covers Rock')
  elsif first == 'paper' && second == 'spock'
    prompt('Paper disproves Spock')
  elsif first == 'scissors' && second == 'paper'
    prompt('Scissors cuts Paper')
  elsif first == 'scissors' && second == 'lizard'
    prompt('Scissors decapitates Lizard')
  elsif first == 'lizard' && second == 'spock'
    prompt('Lizard poisons Spock')
  elsif first == 'lizard' && second == 'paper'
    prompt('Lizard eats Paper')
  elsif first == 'spock' && second == 'scissors'
    prompt('Spock smashes Scissors')
  elsif first == 'spock' && second == 'rock'
    prompt('Spock vaporizes Rock')
  end
end

def display_results(player, computer)
  if win?(player, computer)
    display_winning_move(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    display_winning_move(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

prompt("Lets play Rock-Paper-Scissors-Lizard-Spock!")
prompt("Do you want to go over the rules before we start?")
answer = gets().chomp()

if answer.downcase == ('y' || 'yes')
  prompt("It's easy, really")
  prompt('Scissors cuts Paper')
  prompt('Paper covers Rock')
  prompt('Rock crushes Lizard')
  prompt('Lizard poisons Spock')
  prompt('Spock smashes Scissors')
  prompt('Scissors decapitates Lizard')
  prompt('Lizard eats Paper')
  prompt('Paper disproves Spock')
  prompt('Spock vaporizes Rock')
  prompt('And naturally...')
  prompt('Rock crushes Scissors')
  puts ''
  prompt("We'll play first to 3.")
end

player_score = 0
computer_score = 0
loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    puts("")

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  
  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("You: #{player_score}, Computer: #{computer_score}")

  if player_score == 3
    prompt("You are first to 3!")
    break
  elsif computer_score == 3
    prompt("Computer beat you to 3!")
    break
  end

  #prompt("Do you want to play again?")
  #answer = Kernel.gets().chomp()
  #break unless answer.downcase().start_with?('y')
end

puts("")
prompt("Thanks for playing!")