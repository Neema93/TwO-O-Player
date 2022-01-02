class Game
  attr_accessor :turn, :player1, :player2
  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end
  def change_turn(turn)
    # if turn == 1
    #   @turn = 2
    # else 
    #   @turn = 1
    # end
    # game_start
  end
  def change_lives(turn)

  end

  def game_start
    puts "Player 1: #{@player1}/3 lives. Player 2: #{@player2}/3 lives."
    # start the game with question
    question = Question.new(turn)
    if(!question.game_on)
      # question is not rigth then change lives
      change_lives(turn)
    else
      # question is rigth then change turn
      change_turn(turn)
    end
  end
end
# g=Game.new
# puts g.game_start