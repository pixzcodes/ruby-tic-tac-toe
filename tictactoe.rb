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
  def self.game_win?
    unless game_board.any? {|space| space == (1..9)} # check for game tie
      game_tie
    end
    # All the win conditions, couldnt seem to figure out a way to automate this
    # because you need to tell the computer the exact positions anyway
    if game_board[1] && game_board[3] == game_board[5]
      if game_board[1] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[13] && game_board[15] == game_board[17] 
      if game_board[13] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[23] && game_board[25] == game_board[27] 
      if game_board[23] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end

    if game_board[1] && game_board[15] == game_board[27] 
      if game_board[1] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[5] && game_board[15] == game_board[23] 
      if game_board[5] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[1] && game_board[13] == game_board[23]
      if game_board[1] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[3] && game_board[15] == game_board[25]
      if game_board[3] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
    if game_board[5] && game_board[17] == game_board[27]
      if game_board[5] == 'X'
        game_end('Player 1')
      else
        game_end('Player 2')
      end
    end
  end
  private
  def game_end (winner)
    puts "Game Over! #{winner} wins!"
    break
  end
  def game_tie
    puts "Cats game! No one won..."
    break
  end
end

def main 
  puts "Welcome to Tic-Tac-Toe!"
  puts "Player 1 will be X's."
  puts "Player 2 will be O's."
  puts "Choose a space from 1-9 to make a move..."
  player_turn = 'X' # Player 1 starts first
  while true # main game loop
    GameBoard.display_board # Display game board
    input = gets.chomp!
    if input == "quit" # command to quit out early
      puts "Closing..."
      break
    end
    if input.to_i != (1..9)
      puts "Please choose an available space"
    else # NOTE empty else, dont remember what for
      
    end
  end
end
main