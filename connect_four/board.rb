class Board

  attr_accessor :game_board

  attr_reader :winner, :display_board

  def initialize
    @display_board = Array.new(6) {Array.new(7," ")}
    @game_board = Array.new(42, nil)
    # @game_board = [nil,nil,nil,"O","O","O","O"]
  end

  def legal_move?(column)
    move_column = column.to_i - 1
    (game_board[0*7+move_column] == nil) && move_column <= game_board.length
  end

  def execute_move(column, player)
    move_column = column.to_i - 1
    row = 5
    until game_board[row*7+move_column] == nil
      row -= 1
    end
    game_board[row*7+move_column] = player.piece_color
    p game_board
    n = 0
    display_board.each{|row|
      row.each{|column|
        column = game_board[n]
        n += 1
      }
    }
  end

  def winner
    false
  end

  # def status
  #   @game_board.select
  # end

  def self.to_s
    p "1 2 3 4 5 6 7"
    game_board.each{|row|
      p row
    }
  end


end
