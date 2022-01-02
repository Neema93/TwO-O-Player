class Game
  attr_accessor :turn, :player1, :player2
  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end
end
g=Game.new
puts g.turn