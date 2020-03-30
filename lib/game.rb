# initialize new turn
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
    loop do
      # check if any player is out of lives and end the game
      if @players[0].lives == 0
        puts "----- GAME OVER -----"
        puts "#{@players[1].name} wins with #{@players[1].lives} remaining lives!"
        break
      elsif @players[1].lives == 0
        puts "----- GAME OVER -----"
        puts "#{@players[0].name} wins with #{@players[0].lives} remaining lives!"
        break
      else
        for player in @players
          next_turn = Turn.new(player)
          if player.lives == 0
            # break out of loop and start do loop if player.lives = 0 (ends game)
            break
          end
        end
      end
    end
  end
end