# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATIONS = [[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]]

def position_taken?(board, index)
      if board[index] == "" || board[index] == " "
      return false
end

def won?
  WIN_COMBINATIONS.detect do |combo|
    position_taken?(combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
  end
end

#full
def full?
	board.all? do |index|
		 index == "X" || index == "O"
		end
end

#draw
def draw?(board)
  if won?(board) == nil && full?(board) == true
    true
  else
    false
  end
end

#over
def over?(board)
  if won?(board) != nil || full?(board) ==true || draw?(board) == true
    true
  else
    false
  end
end

#winner
def winner(board)
  if won?(board) != nil
    winning_board = won?(board)
    return board[winning_board[0]]
  else
    nil
  end
end