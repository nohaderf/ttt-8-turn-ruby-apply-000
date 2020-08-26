board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end 


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, user = "X")
  board[index] = user
end

def turn(board)
<<<<<<< HEAD
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
   move(board, index, user = "X")
   display_board(board)
  else
    turn(board)
  end
end

=======
  puts "Please enter 1-9"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) 
    move(board, index, user= "X")
  else
    "Please enter 1-9"
end
>>>>>>> 9278e55b2b03cac96bca8d3231214446627ce32a
