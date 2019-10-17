require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/game'

game = Game.new

def perform
while 
game.board_game.show
game.placement(game.player1)
game.board_game.show
game.victory?
game.placement(game.player2)
game.board_game.show
game.victory?
end






