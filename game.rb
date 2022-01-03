# game start here 
class Game
  # set variable 
  attr_accessor :turn, :player1, :player2
  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end
  # update turn value 
  def change_turn(turn)
    # change turn first player to another one
    if turn == 1
      @turn = 2
    else 
      @turn = 1
    end
    # agin send another game
    game_start
  end
  # method for when game done 
  def game_done
    # check who done lives 
    if @player1 == 0
      puts "player2 wins with a score #{@player2}/3"
    else
      puts "player1 wins with a score #{@player1}/3"
    end
    puts "----GAME OVER----"
    puts "Good Buy!"
  end
  # update lives when player fail 
  def change_lives(turn)
    # change player lives
    if turn == 1
      @player1 -= 1
    else
      @player2 -= 1
    end
    # check no lives then game done
    if @player1 == 0 || @player2 == 0
      game_done
    else
      game_start
    end
  end
  # game start from here 
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
