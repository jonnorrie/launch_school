require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_score(player_score, computer_score)
  system 'clear'
  prompt "Player Score: #{player_score}"
  prompt "Computer Score: #{computer_score}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}}):"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Invalid input. Please choose an open square."
    end
  end

  brd[square] = PLAYER_MARKER
end

def computer_goes_first!(brd)
    brd[5] = COMPUTER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    break if square
  end

  WINNING_LINES.each do |line|
    break if square
    square = find_at_risk_square(line, brd)
    break if square
  end

  if square == nil && brd[5] == ' '
    brd[5] = COMPUTER_MARKER
    return 
  end

  if square == nil
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|

    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(array, seperator = ', ', arg3 = 'or' )
  if array.count <= 2
    array.join(" #{arg3} ")
  else
    string = array.join(seperator)
    string[-2] = " #{arg3} "
    string
  end
end

loop do # 1 to 5 loop
  computer_score = 0
  player_score = 0
  loop do # each game loop
    system 'clear'
    display_score(player_score, computer_score)
    board = initialize_board
    display_board(board)
    prompt "Choose who goes first: Player (p) or Computer (c) or Random (r)"
    who_first = gets.chomp

    if who_first == 'r'
      who_first = ['p', 'c'].sample
    end

    if who_first == 'c'
      prompt "Computer goes first"
      computer_goes_first!(board)
    else
      prompt "Player goes first."
    end
      loop do # moves loop
        display_score(player_score, computer_score)
        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
        
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end

    display_board(board)

    system "clear"
    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end

    display_score(player_score, computer_score)
    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    if player_score == 5
      break
    elsif computer_score == 5
      break
    end

  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
