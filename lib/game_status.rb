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
    position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
  end
end

#full
def full?
	@board.all? do |index|
		 index == "X" || index == "O"
		end
end

#draw
def draw?
		if won?
			return false
		elsif full? == false
			return false
		else
			return true
		end
end

#over
def over?
		if won? || draw? == true
			return true
		else
			return false
		end
end

#winner
def winner
	winning_combo = won?
	 if winning_combo
	    return @board[winning_combo[0]]
	 end
end
