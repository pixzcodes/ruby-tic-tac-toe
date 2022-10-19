class GameBoard 
  game_board = [ # the OG game board
    "\n", 1, '|', 2, '|', 3, "\n",
    '-', '-', '-', '-','-', "\n",
    4, '|', 5, '|', 6, "\n",
    '-', '-', '-', '-', '-', "\n",
    7, '|', 8, '|', 9
  ]
  def self.new_move (marker, position) # makes a new move on the board
    game_board.each_with_index do |element, index|
      if element === position
        game_board[index] = marker
      end
    end
    puts game_board.join(' ')
  end
  def self.display_board # Displays the game board
    game_board.join(' ')
  end
end

def main 
  puts "Welcome to Tic-Tac-Toe!"
  puts "Player 1 will be X's."
  puts "Player 2 will be O's."
  puts "Choose a space from 1-9 to make a move..."
  while true # main game loop
    GameBoard.display_board # Display game board
    input = gets.chomp!
    if input == "quit" # command to quit out early
      puts "Closing..."
      break
    end
    unless input.to_i == (1..9)
      puts "Please choose an available space"
    end
  end
end
main