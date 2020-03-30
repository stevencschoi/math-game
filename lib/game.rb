class Game
  def initialize
    @p1 = Player.new
    @p2 = Player.new
  end

  if Player1.lives == 0
    puts "Game over! #{p2.name} wins with a score of #{p2.score}."
  elsif Player2.lives == 0
    puts "Game over! #{p1.name} wins with a score of #{p2.score}."
  end
