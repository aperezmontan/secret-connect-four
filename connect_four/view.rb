class View
  class << self
  def welcome
    puts "WELCOME TO CONNECT FOUR !!"
  end

  def player1
    puts "Player 1, what's your name?"
  end

  def player2
    puts "Player 2, what's your name?"
  end

  def battle_start(player1, player2)
    puts "#{player1.name} & #{player2.name} get ready for battle!!!"
  end

  def display(board)
    board.to_s
  end

  def move
    puts "where do you want to move?"
    #{player.name}
  end

  def illegal_move
    puts "Sorry, that move can't be made. Please choose another column."
  end
end
end
