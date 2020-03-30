class Turn
  puts "----- NEW TURN -----"
  q = Question.new
  puts q.question
  answer = gets.chomp.to_i

  def check_answer
    if answer == q.correct
      puts "YES! You are correct!"
    else
      self.lives -= 1
      puts "Seriously? No!"
  end
end