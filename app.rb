require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/game'

def perform
  game = Game.new
  while game.victory? == false && game.draw? == false
    game.board_game.show
    game.placement(game.player1)
    game.board_game.show
    if game.victory? == false && game.draw? == false
      game.placement(game.player2)
    end
  end
  game.show_result
end

perform

