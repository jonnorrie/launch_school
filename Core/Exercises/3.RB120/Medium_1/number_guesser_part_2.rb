class GuessingGame

  def initialize(low_num, high_num)
    @guesses = 7
    @low_num = low_num
    @high_num = high_num
    @num = (low_num..high_num).to_a.sample
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
      print "Enter a number between #{@low_num} and #{@high_num}: "
      @guess = gets.chomp.to_i

      if !(@low_num..@high_num).include?(guess)
        print "Invalid guess. "
      else
        break
      end
    end
  end

  def no_more_guesses?
    puts "You have no more guesses. The secret number is #{num}. You lost!" if guesses == 0
    guesses == 0
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



game = GuessingGame.new(501, 1500)
game.play

#You have 10 guesses remaining.
#Enter a number between 501 and 1500: 104
#Invalid guess. Enter a number between 501 and 1500: 1000
#Your guess is too low.

#You have 9 guesses remaining.
#Enter a number between 501 and 1500: 1250
#Your guess is too low.

#You have 8 guesses remaining.
#Enter a number between 501 and 1500: 1375
#Your guess is too high.

#You have 7 guesses remaining.
#Enter a number between 501 and 1500: 80
#Invalid guess. Enter a number between 501 and 1500: 1312
#Your guess is too low.

#You have 6 guesses remaining.
#Enter a number between 501 and 1500: 1343
#Your guess is too low.

#You have 5 guesses remaining.
#Enter a number between 501 and 1500: 1359
#Your guess is too high.

#You have 4 guesses remaining.
#Enter a number between 501 and 1500: 1351
#Your guess is too low.

#You have 3 guesses remaining.
#Enter a number between 501 and 1500: 1355
#That's the number!

#You won!

#game.play
#You have 10 guesses remaining.
#Enter a number between 501 and 1500: 1000
#Your guess is too high.

#You have 9 guesses remaining.
#Enter a number between 501 and 1500: 750
#Your guess is too low.

#You have 8 guesses remaining.
#Enter a number between 501 and 1500: 875
#Your guess is too high.

#You have 7 guesses remaining.
#Enter a number between 501 and 1500: 812
#Your guess is too low.

#You have 6 guesses remaining.
#Enter a number between 501 and 1500: 843
#Your guess is too high.

#You have 5 guesses remaining.
#Enter a number between 501 and 1500: 820
#Your guess is too low.

#You have 4 guesses remaining.
#Enter a number between 501 and 1500: 830
#Your guess is too low.

#You have 3 guesses remaining.
#Enter a number between 501 and 1500: 835
#Your guess is too low.

#You have 2 guesses remaining.
#Enter a number between 501 and 1500: 836
#Your guess is too low.

#You have 1 guess remaining.
#Enter a number between 501 and 1500: 837
#Your guess is too low.

#You have no more guesses. You lost!