class Player
  attr_reader :name
  attr_accessor :lives, :current_player
  def initialize(name)
    @name = name
    @lives = 3
    @current_player = false
  end
end