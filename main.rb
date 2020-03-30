require "./lib/player.rb"
require "./lib/question.rb"
require "./lib/turn.rb"
require "./lib/game.rb"

#get player names
puts "Please enter Player 1's name:"
p1name = gets.chomp

puts "Please enter Player 2's name:"
p2name = gets.chomp

game = Game.new(p1name, p2name)

game.start
