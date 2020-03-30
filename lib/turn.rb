class Turn
  def initialize(player)
    puts "----- NEW TURN -----"
    q = Question.new
    puts q.question
    @correct = q.correct
    @answer = gets.chomp.to_i
    check_answer(player)
  end

  # decrement lives if answer is wrong
  def check_answer(player)
    # @answer = gets.chomp.to_i
    if @answer == @correct
      puts "YES! You are correct!"
      # player.current_player = false
    else
      puts "Seriously? No!"
      player.lives -= 1
      puts "#{player.name} lives remainining: #{player.lives}"
    end
  end
end