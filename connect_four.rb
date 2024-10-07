require_relative 'lib/game'
require_relative 'lib/player'

puts "Welcome to Connect Four!"
puts "Enter name for Player 1: "
name1 = gets.chomp
puts "Enter name for Player 2: "
name2 = gets.chomp

player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')
game = Game.new(player1, player2)
game.play
