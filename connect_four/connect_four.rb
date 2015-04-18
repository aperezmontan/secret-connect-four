require_relative 'view'
require_relative 'player'
require_relative 'board'
require 'pry'

class Connect_Four
  attr_accessor :game
  def initialize
    @game = Board.new
  end

  def welcome
    View.welcome
    View.player1
    @player1 = Player.new(gets.chomp, "red")
    View.player2
    @player2 = Player.new(gets.chomp, "yellow")
    View.battle_start(@player1,@player2)
    board_game
    move
  end

  def board_game
    View.display(game)
  end

  def move
    player = @player1
    View.move
    column_of_move = gets.chomp
    # binding pry
    until game.legal_move?(column_of_move)
      View.illegal_move
      column_of_move = gets.chomp
    end
    p game.execute_move(column_of_move, player)
    @player1,@player2 = @player2,@player1
    if game.winner
      #player wins and game ends
    else
      move
    end
  end
end

game = Connect_Four.new
game.welcome

