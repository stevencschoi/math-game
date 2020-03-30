# set player 1 to current_player
# initialize next turn
#   print question
#   accept user answer
#   check answer
#     if answer is wrong, lives -= 1
#   check if current_player lives = 0
#     if not, switch current_player
#     if yes, game over

class Game
  # make two players
  def initialize(player1, player2)
    @p1 = Player.new(player1)
    @p2 = Player.new(player2)
    @players = [@p1, @p2]
  end

  def start
  # --- Loop over game sequence until current_player has 0 lives
  # puts @players
    # loop do
    #   if player.lives = 0
    #     puts "Game over! algdjdjlgad"
    #     break
    #   else
    for player in @players
      if player.lives == 0
        puts "Game over! #{player.name} lost!"
        break
      else
        next_turn = Turn.new(player)
      end
    # end
    # if player.lives != 0
    #   self.start
    end
    #   end
    # end
  # if @p1.lives == 0
  #   puts "Game over! #{@p2.name} wins with remaining lives #{@p2.lives}/3."
  # elsif @p2.lives == 0
  #   puts "Game over! #{@p1.name} wins with remaining lives #{@p1.lives}/3."
  # end
  end
end