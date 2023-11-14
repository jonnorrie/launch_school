class GuessingGame

  def initialize
    @guesses = 7
    @num = (1..100).to_a.sample
    @guess = nil
  end

  def play
    system 'clear'
    loop do
      remaining_guesses
      enter_guess
      break if correct_guess? || no_more_guesses?
    end
  end

  private

  attr_accessor :guesses, :num, :guess

  def remaining_guesses
    puts "You have #{guesses} guesses remaining."
  end

  def enter_guess
    loop do
      print "Enter a number between 1 and 100: "
      @guess = gets.chomp.to_i

      if !(1..100).include?(guess)
        print "Invalid guess. "
      else
        break
      end
    end
  end

  def no_more_guesses?
    puts "You have no more guesses. You lost!" if guesses == 0
  end

  def correct_guess?
    if guess > num
      puts "Your guess is too high."
      puts ""
      @guesses -= 1
      false
    elsif guess < num
      puts "Your guess is too low."
      puts ""
      @guesses -= 1
      false
    elsif guess == num
      puts "That's the number!"
      puts ""
      puts "You won!"
      true
    end
  end

end



game = GuessingGame.new
game.play

#You have 7 guesses remaining.
#Enter a number between 1 and 100: 104
#Invalid guess. Enter a number between 1 and 100: 50
#Your guess is too low.

#You have 6 guesses remaining.
#Enter a number between 1 and 100: 75
#Your guess is too low.

#You have 5 guesses remaining.
#Enter a number between 1 and 100: 85
#Your guess is too high.

#You have 4 guesses remaining.
#Enter a number between 1 and 100: 0
#Invalid guess. Enter a number between 1 and 100: 80

#You have 3 guesses remaining.
#Enter a number between 1 and 100: 81
#That's the number!

#You won!

#game.play

#You have 7 guesses remaining.
#Enter a number between 1 and 100: 50
#Your guess is too high.

#You have 6 guesses remaining.
#Enter a number between 1 and 100: 25
#Your guess is too low.

#You have 5 guesses remaining.
#Enter a number between 1 and 100: 37
#Your guess is too high.

#You have 4 guesses remaining.
#Enter a number between 1 and 100: 31
#Your guess is too low.

#You have 3 guesses remaining.
#Enter a number between 1 and 100: 34
#Your guess is too high.

#You have 2 guesses remaining.
#Enter a number between 1 and 100: 32
#Your guess is too low.

#You have 1 guess remaining.
#Enter a number between 1 and 100: 32
#Your guess is too low.

#You have no more guesses. You lost!