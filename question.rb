class Question 
  attr_accessor :turn
  def initialize(turn)
    @turn = turn
  end
  def game_on
    # get 2 random value for addition
    n1 = rand(1..10)
    n2 = rand(1..10)
    puts "------ NEW TURN ------"
    # ask question to player1 
    puts "Player #{turn}: What is #{n1} + #{n2}?"
    # wait for replay
    print "> "
    answer = $stdin.gets.chomp.to_i
    # check ans is rigth 
    if answer == n1 + n2
      puts 'YES! You are corect'
      return true
    else
      puts 'Seriously? No!'
      return false
    end
  end
end
# q = Question.new(1)
# q.game_on
