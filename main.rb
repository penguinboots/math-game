require './player'
require './question'
require './game'


puts "Player 1, enter your name."
p1 = gets.chomp.capitalize
puts "Thanks, #{p1}"

puts "Player 2, enter your name."
p2 = gets.chomp.capitalize
puts "Thanks, #{p2}"

new_game = Game.new(p1, p2)

new_game.start_game